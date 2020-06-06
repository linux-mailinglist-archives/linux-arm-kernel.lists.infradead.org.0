Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405C61F0692
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 14:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Saf3Lnprk0looPrQtVUSOCXkANwsVAeCuUiuKL5Or1w=; b=qFB7xODAwGqWW8
	qvLxiYZX/VlaPLWjDutryF3werB0+Ni/xSSzk+trGbBFoxQqlfSCH68MLRh88HU4xY3jhp2wa8i9r
	xwAi4MBiJrvz5oPCdt38Yhkwzr4m0jccoDrqfV/DTvU7TN3aAtChR1SdcVPrgt26N7NLE1jloKw2w
	4JK+/Ji77TC/dKAro1jR0GD2M4a5q01LqxlqgR3e5VighhgFRpibX77da9y9VEQeU8KmtJ7XsPy1u
	5/K/8UL9ehonIn8EWtAbwGP4fs4yVpO43gQ6WCvwSOwjslKmdSA1C2qqSbjq0mXLeYo+xpZCRhGnN
	oM3s2Dlx7SVVv64VpgQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYDa-0005oH-QU; Sat, 06 Jun 2020 12:46:34 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhYDP-0005ng-9H
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 12:46:25 +0000
Received: by mail-ej1-x641.google.com with SMTP id z5so13141828ejb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 06 Jun 2020 05:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIiB9wvX9JqQxrAQEQ3KjZ3Kb+hdGI9GFJ+OCHkh9og=;
 b=de2zzi92V7UV3Gre9gbtutLsXA4WJD3hagaFTOKIH8+eS1vYOtUvDoc/XuwBKh4uQP
 e9NiTKyJQPAG9XeY7Rb95UJiNMz/puFFss53KYpUZquETFzmPrRLWv1gSQShuX7HfVsW
 zRhdYKruBxFscBPt0xwRigKPtgTOnXuUJcggq8VxCD21zEyrV8VZhcXJh/U8W9eLOLpB
 2052nsmQu7wB6O5n20l06RPz/IIVUwfICrBH3J2aN4c/BF6GrVj4xPecrDc6DKNmbJdy
 UzOKWZD0ylddth/9F83ZyRPCWoSDLqrEpXczRrevS3FSgmPNj+sG5BJUBIbEFCQG1lbs
 x2Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIiB9wvX9JqQxrAQEQ3KjZ3Kb+hdGI9GFJ+OCHkh9og=;
 b=oz1fT2BIaSdQ5xPLHa/0zlcC0SBa19YY1kXGN5JL+cgTLnrVc84TXpqYKx++dc1y1x
 2tVQzOOKRnyyWiYMBh+qWEA8DbDUAegEg7K/1TP2tWxHEpM0vwYqL2x5UoxTFUu/8c3t
 kuGyWpjYBDk4uxutYKhi364mwfqv9BuPfXY3lNUz1SO3B2Ewb5ubsZCUMUjzP1RAMrY9
 iaRlDDfqOPzsMHVbVxqs0pECosdjT0L5N9WIo0NsId85t0E8olgbbMPI3dPXlwYL+kVN
 yIlgvxSoCXZHRv6ioqKt92ARrIwY93Jl/vUGYDQBUnB00fjnXreEM4MkD2TjRFVMFNAB
 GlSQ==
X-Gm-Message-State: AOAM533YW+2A0BQ9ixrnW5wawjcXnMrXZOLYPnEYBbEq3faVfs4uyRia
 Aa4xmAdzquNmJeH6G3ytqtwXNbbuHC+a3J8TBqkPqA==
X-Google-Smtp-Source: ABdhPJyPvvoYluZBC3s7eE4x/0+LkycVv8WiYm6kXWtzdvr1YayZBLWOHgcV1e/KPcoA+621WfgYDoiYIFKCEkD9dzU=
X-Received: by 2002:a17:906:d216:: with SMTP id
 w22mr12635147ejz.420.1591447581711; 
 Sat, 06 Jun 2020 05:46:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
In-Reply-To: <20200604185745.23568-1-jernej.skrabec@siol.net>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 6 Jun 2020 09:46:10 -0300
Message-ID: <CAAEAJfDFMzMkDkN7zzNvkwsmYzgQPNGkP=dhW7neycYYRBJzHA@mail.gmail.com>
Subject: Re: [PATCH 0/3] media: uapi: cedrus: Fix decoding interlaced H264
 content
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_054623_500575_F5BB7C84 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jernej,

On Thu, 4 Jun 2020 at 15:55, Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> Currently H264 interlaced content it's not properly decoded on Cedrus.
> There are two reasons for this:
> 1. slice parameters control doesn't provide enough information
> 2. bug in frame list construction in Cedrus driver
>
> As described in commit message in patch 1, references stored in
> reference lists should tell if reference targets top or bottom field.
> However, this information is currently not provided. Patch 1 adds
> it in form of flags which are set for each reference. Patch 2 then
> uses those flags in Cedrus driver.
>
> Frame list construction is fixed in patch 3.
>
> This solution was extensively tested using Kodi on LibreELEC with A64,
> H3, H5 and H6 SoCs in slightly different form (flags were transmitted
> in MSB bits in index).
>

So, if I understand correctly the field needs to be passed per-reference,
and the current per-DPB entry is not good?

If you could point at the userspace code for this, it would be interesting
to take a look.

> Note: I'm not 100% sure if flags for both, top and bottom fields are
> needed. Any input here would be welcome.
>

Given enum v4l2_field is already part of the uAPI, perhaps it makes
sense to just reuse that for the field type? Maybe it's an overkill,
but it would make sense to reuse the concepts and types that
already exist.

We can still add a reserved field to make this new reference type
extensive.

Thanks,
Ezequiel


> Please take a look.
>
> Best regards,
> Jernej
>
> Jernej Skrabec (3):
>   media: uapi: h264: update reference lists
>   media: cedrus: h264: Properly configure reference field
>   media: cedrus: h264: Fix frame list construction
>
>  .../media/v4l/ext-ctrls-codec.rst             | 40 ++++++++++++++++++-
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 27 +++++++------
>  include/media/h264-ctrls.h                    | 12 +++++-
>  3 files changed, 62 insertions(+), 17 deletions(-)
>
> --
> 2.27.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
