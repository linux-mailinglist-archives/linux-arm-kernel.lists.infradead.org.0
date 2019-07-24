Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048E67370F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 20:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1ECUbsaXemiDR74Ie0PZIxBGVzJYjJo4NohHOT0KEY=; b=uOYMP6IfBYJtz2
	7zfer9rSYivkIb4G0R9dAq39KpxnGnnq8Q0uUvNbN/Ab4uqq6vHS3TMk75FwehYvFVzGy891GxsCI
	N1y5oArWw79T2ZAeaJ8tJJ6gcT8QQu+Kzn2ABTxJ/YOfZQnvkI7G1YYNtHoz0TnWx2mCCN7cuh2wM
	oysxGMEW0EPxmiVQX1JTLSevp++nsGz4mxV0CIYP5j2QsY8K4IoZRgNzm7UpTmHi1THcXLFyO9aio
	IVtL8xdknewnVuWpK4V5GFqB/nuUc8jSItFUBoKlNJ7Gwjp61CZv6rIUS7JE8MyhZpXFIaj/Vtej1
	99W2+0Yuu7J+g+xB8Wxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMQu-0008Tp-Ic; Wed, 24 Jul 2019 18:56:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMQh-0008TH-0E
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 18:56:00 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2806821841;
 Wed, 24 Jul 2019 18:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563994558;
 bh=GgYLktbjTBkYgCVChbyiHJpTl/bxCXYku5nBzDfyRt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P46Ee79rSFjOLHYBUUJBdY4ZA61cUWKAhuv3XpnLO9i4YCjbOQ3H3RZV/FBWMPv3Z
 PewBY6bD3voCVZiedzT/hCGgmVklm6wnH77NkjKB/Xa4hr7CKeR/W9D4pH/b0ViGkr
 LdvvfGcrfM1LToBhB1GlwpfaW8eJ4YupAZ/UGk6Q=
Date: Wed, 24 Jul 2019 20:55:56 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 11/12] staging: media: cedrus: Fix misuse of GENMASK macro
Message-ID: <20190724185556.GA5486@kroah.com>
References: <cover.1562734889.git.joe@perches.com>
 <cd543a5f26b031a0bbd3baa55e1f15813f59f107.1562734889.git.joe@perches.com>
 <be536d37a3b58557cdacd33943915d397bcb5037.camel@perches.com>
 <20190724183522.GA30299@kroah.com>
 <90a8807311ba434a63c9ab6331396d7094492323.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90a8807311ba434a63c9ab6331396d7094492323.camel@perches.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_115559_062576_D25F57FE 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 11:39:03AM -0700, Joe Perches wrote:
> On Wed, 2019-07-24 at 20:35 +0200, Greg Kroah-Hartman wrote:
> > On Wed, Jul 24, 2019 at 10:09:44AM -0700, Joe Perches wrote:
> > > On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
> > > > Arguments are supposed to be ordered high then low.
> > > > 
> > > > Signed-off-by: Joe Perches <joe@perches.com>
> > > > ---
> > > >  drivers/staging/media/sunxi/cedrus/cedrus_regs.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > > index 3e9931416e45..ddd29788d685 100644
> > > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > > > @@ -110,7 +110,7 @@
> > > >  #define VE_DEC_MPEG_MBADDR			(VE_ENGINE_DEC_MPEG + 0x10)
> > > >  
> > > >  #define VE_DEC_MPEG_MBADDR_X(w)			(((w) << 8) & GENMASK(15, 8))
> > > > -#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(0, 7))
> > > > +#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(7, 0))
> > > >  
> > > >  #define VE_DEC_MPEG_CTRL			(VE_ENGINE_DEC_MPEG + 0x14)
> > > 
> > > Greg?  ping?
> > >  
> > > 
> > 
> > I am not the maintainer of drivers/staging/media, that is Mauro.
> 
> Maybe you want:
> ---
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f7dc5bad396a..2fb95ad6ebef 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15312,6 +15312,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>  L:	devel@driverdev.osuosl.org
>  S:	Supported
>  F:	drivers/staging/
> +X:	drivers/staging/media/
>  

Not really, it's nice to see the patches flow by :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
