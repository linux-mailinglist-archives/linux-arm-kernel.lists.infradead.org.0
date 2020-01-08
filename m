Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABAB1344B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWj5thQmXGM86CuRBjVhF0W98E6xPL2l/ppmwqvKv4o=; b=DaHPKobdH7W860
	8dfgqnsFpHyZ9RRvlzEaA99GdSfzApUa33EluPW8JfxuHowh6rQMYXjCmgErlGR320WYRJBE5Ftf5
	VX5ycGGk6W8N+3q2Y1Mb0JQjNB4jN8Amu241xswe5JhKINY7Gs2czn3wUSQ84hLHdbb7yPcNFXTgg
	VyudncQgecMLJxZIxe9Tvb5rTqBHV1UgztRkRBbqkWn5Ua/UwFDvfGR2eYZFg20b4a4maihAAsLo5
	jzlKrZ8Tv03uqgP1/WPlEbl9GYqle6yzQ79pFTzbJuslOk1OqpGuCJlpTg1sYPQO8dVU+yQdUjHKS
	Ew7nRWpFo3lzglrpzDWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipC4L-0002UK-V8; Wed, 08 Jan 2020 14:12:21 +0000
Received: from 177.206.132.169.dynamic.adsl.gvt.net.br ([177.206.132.169]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipC4B-0002T4-CD; Wed, 08 Jan 2020 14:12:12 +0000
Date: Wed, 8 Jan 2020 15:11:57 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 1/4] media: uapi: hevc: Add scaling matrix control
Message-ID: <20200108151157.17cf9774@kernel.org>
In-Reply-To: <20191213160428.54303-2-jernej.skrabec@siol.net>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-2-jernej.skrabec@siol.net>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, hverkuil@xs4all.nl, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, 13 Dec 2019 17:04:25 +0100
Jernej Skrabec <jernej.skrabec@siol.net> escreveu:

> HEVC has a scaling matrix concept. Add support for it.

> +struct v4l2_ctrl_hevc_scaling_matrix {
> +	__u8	scaling_list_4x4[6][16];
> +	__u8	scaling_list_8x8[6][64];
> +	__u8	scaling_list_16x16[6][64];
> +	__u8	scaling_list_32x32[2][64];
> +	__u8	scaling_list_dc_coef_16x16[6];
> +	__u8	scaling_list_dc_coef_32x32[2];
> +};

I never looked at HEVC spec, but the above seems really weird.

Please correct me if I am wrong, but each of the above matrixes
is independent, and the driver will use just one of the above on
any specific time (for a given video output node), right?

If so, why would userspace be forced to update lots of matrixes, if would
likely use just one at a given time?

IMO, the proper way would be, instead, to use an uAPI like:

/*
 * Actually, as this is uAPI, we will use a fixed size integer type, like
 *  unsigned int
 */
enum hevc_scaling_matrix_type {
	HEVC_SCALING_MATRIX_4x4,
	HEVC_SCALING_MATRIX_8x8,
...
	HEVC_SCALING_MATRIX_DC_COEF_32x32,
};

struct v4l2_ctrl_hevc_scaling_matrix {
	__u32	scaling_type 		/* as defined by enum hevc_scaling_matrix_type */

	union {
		__u8	scaling_list_4x4[6][16];
		__u8	scaling_list_8x8[6][64];
		__u8	scaling_list_16x16[6][64];
		__u8	scaling_list_32x32[2][64];
		__u8	scaling_list_dc_coef_16x16[6];
		__u8	scaling_list_dc_coef_32x32[2];
	};
};

And let the core use a default for each scaling matrix, if userspace doesn't
set it.



Cheers,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
