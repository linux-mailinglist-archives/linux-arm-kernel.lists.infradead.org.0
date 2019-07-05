Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475FC606FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MHjfwVA6ozfFazW8+IJQQRIMAj95MoTqfUQkgr27LE=; b=n3f8GDShUmX5nI
	wDqPWiDeGzY1c3p/FVkaL75rJ2RfsRuPqRiAZkLpe3xds6qZevJeG25Z5mdLdUdfIQhYSm83rJTuL
	Nt4hRt3QTE3gE+U7SPZ3F4/bAGHxlg+TFDUTu2h0ai6icFwMZmO3pjkYMsF20HuY8QRuXSB7KBeXw
	ZfhST1Bvr4zbhJWOCHAdLVAX8OZY1sRUkPlOnaWhBnn7rHyIsqYb+91ai9NZTwXyRc+VNwY5Z6/0V
	j6qJS5L8/jCNKtv0VGeexLeHO8hAuwIUnzxr1UhKuwXdE7EEKlO6uSoc5PqayHl1w+WaH477W6ViS
	ziU8s/SC80NJ0va02f2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOj3-0000kE-Ex; Fri, 05 Jul 2019 13:58:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLRQ-0003ll-EF
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 10:27:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AqLezy8yu+p4LgSOFzbldePnRb/H3oHZCVdGxBbZVXo=; b=njbh5zTqSPT/lF85msp0YDeRo
 b01ySwhJ6woquwOraN/bTnw6f1n+XR3UVp1eR6jqhOdmMhRhTdfrQZI+bx6vr1HITzV/0SgtkLm5B
 Xy83h5dTQZRhO/FzMq+NimU5YZo2G91vSlDHOVHZd1bv6W0Jwm4iZBtworrrX7yb1fArH2JJLFf7U
 WADCWAmEdovdFDn6eAnmHKAu8LX5EgyFeVDXzTrEyB+CmwSSE7+ZFUqthgVqu2DeO4REg60Dhfytt
 Pp/6PeUFYKCS2v9PKlFJLPtDYoa6oeNF1i7k33PpUvWSOnQyJxlCF2NIXLB4g4z1x7Nzo7zlUBLap
 15N1WvFZQ==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLR9-000178-F6
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:27:28 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 58E1A1C0005;
 Fri,  5 Jul 2019 10:26:50 +0000 (UTC)
Date: Fri, 5 Jul 2019 12:26:50 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 2/2] staging: media: sunxi: Replace function
 cedrus_check_format()
Message-ID: <20190705102650.GB1645@aptenodytes>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
 <20190703081317.22795-2-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703081317.22795-2-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed 03 Jul 19, 13:43, Nishka Dasgupta wrote:
> Remove function cedrus_check_format as all it does is call
> cedrus_find_format.
> Rename cedrus_find_format to cedrus_check_format to maintain
> compatibility with call sites.
> Issue found with Coccinelle.

Maybe we could have a !! or a bool cast to make coccinelle happy here?

Cheers,

Paul

> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 0ec31b9e0aea..d5cc9ed04fd2 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
>  	return container_of(file->private_data, struct cedrus_ctx, fh);
>  }
>  
> -static bool cedrus_find_format(u32 pixelformat, u32 directions,
> -			       unsigned int capabilities)
> +static bool cedrus_check_format(u32 pixelformat, u32 directions,
> +				unsigned int capabilities)
>  {
>  	struct cedrus_format *fmt;
>  	unsigned int i;
> @@ -76,12 +76,6 @@ static bool cedrus_find_format(u32 pixelformat, u32 directions,
>  	return false;
>  }
>  
> -static bool cedrus_check_format(u32 pixelformat, u32 directions,
> -				unsigned int capabilities)
> -{
> -	return cedrus_find_format(pixelformat, directions, capabilities);
> -}
> -
>  static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
>  {
>  	unsigned int width = pix_fmt->width;
> -- 
> 2.19.1
> 

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
