Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE33DADAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3ySnv9d8x3ME1aDi3JEbrO3SjP8m+vHFxvddpQJsII=; b=bMChGE42Szvbdg
	te7GDsaNjzz94GERUtRF/wjRzZURUBuE6q5C+vkBqt79y5W6CPPSy+qtiK5l5kTgY4ajgroCkme48
	ySuBGeOrq/quS7RSQYxy76v8q1VRtVdilOENt2yLkewfWfKMij3FVSgxApv4jrV2+O8DgDly1wTYG
	dCca2i7mbUVArNeftHoCCJaqjDbYxpCHylrh+SvvDRZpxEzt+fY20NkFAaPXyhuy/OLbN1rSvk+SO
	2XjCrfrMM6VO7bH/evRVzPDrv25bCkk4WHQxcadZ872UKkvQ2531cePheWO9x/+m+2i8V8UsXqocf
	WPCbZkKqbRe3ACcakZYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5NJ-0007ql-G8; Thu, 17 Oct 2019 12:59:29 +0000
Received: from [179.95.49.118] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5Lp-0006o4-7D; Thu, 17 Oct 2019 12:57:57 +0000
Date: Thu, 17 Oct 2019 09:57:51 -0300
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v8 3/3] media: cedrus: Add HEVC/H.265 decoding support
Message-ID: <20191017095751.5a229051@coco.lan>
In-Reply-To: <20190927143411.141526-4-paul.kocialkowski@bootlin.com>
References: <20190927143411.141526-1-paul.kocialkowski@bootlin.com>
 <20190927143411.141526-4-paul.kocialkowski@bootlin.com>
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tomasz Figa <tfiga@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, 27 Sep 2019 16:34:11 +0200
Paul Kocialkowski <paul.kocialkowski@bootlin.com> escreveu:

> This introduces support for HEVC/H.265 to the Cedrus VPU driver, with
> both uni-directional and bi-directional prediction modes supported.
> 
> Field-coded (interlaced) pictures, custom quantization matrices and
> 10-bit output are not supported at this point.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---

...

> +		unsigned int ctb_size_luma =
> +			1 << log2_max_luma_coding_block_size;

Shifts like this is a little scary. "1" constant is signed. So, if
log2_max_luma_coding_block_size is 31, the above logic has undefined
behavior. Different archs and C compilers may handle it on different
ways.

> +#define VE_DEC_H265_LOW_ADDR_PRIMARY_CHROMA(a) \
> +	(((a) << 24) & GENMASK(31, 24))

Same applies here and on other similar macros. You need to enforce
(a) to be unsigned, as otherwise the behavior is undefined.

Btw, this is a recurrent pattern on this file. I would define a
macro, e. g. something like:

	#define MASK_BITS_AND_SHIFT(v, high, low) \
		((UL(v) << low) & GENMASK(high, low))

And use it for all similar patterns here.

The best would be to include such macro at linux/bits.h, although some
upstream discussion is required.

So, for now, let's add it at this header file, but work upstream
to have it merged there.


Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
