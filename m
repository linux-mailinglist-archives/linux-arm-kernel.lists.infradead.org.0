Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81036B959
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 11:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdOdC2HQoMNwR107H6eiTOeFF9VDeo0oyUHIS1XP+b0=; b=cosnXpDxFACjDi
	/6nBssYuA+zbnbT4wjy4OVpIh/dKgGZ1iZ5wWbgzaM7lfvxIW8wLg46VERmM/gP+uIWuEGXc2+mfZ
	8ZTf48N0e9qx7Du0fCCuXRLwgYZpug4j36o4pxrN+Oqhp/9A8e9Qz+z5JaDWDzXmSLN9QXEJ6npys
	sS9LbsNzISBjxw3jY84oXDRHoYRnorG3JT6YoU/AfLI2Ah85QdoTixjC5DAnyWjgKLTDqqiXJg5YS
	FBRZfKPD70d+hIIMhaj94kBfxMBVRTglp7LvX7/0QjuSuU4q8GdFAooKATMWrzR0LR+z+zOLGks51
	fR7QdpPQ5YuJ84qLRFUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngKj-0002cX-RP; Wed, 17 Jul 2019 09:34:46 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngK3-0002Gk-9K
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 09:34:05 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A14BAC000D;
 Wed, 17 Jul 2019 09:33:48 +0000 (UTC)
Date: Wed, 17 Jul 2019 11:33:48 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 2/2] staging: media: sunxi: Replace function
 cedrus_check_format()
Message-ID: <20190717093348.GB26951@aptenodytes>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
 <20190703081317.22795-2-nishkadg.linux@gmail.com>
 <20190705102650.GB1645@aptenodytes>
 <1c5bd5a6-757e-2bce-6adf-6dafbf6956a6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c5bd5a6-757e-2bce-6adf-6dafbf6956a6@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_023403_844429_776111BB 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri 05 Jul 19, 17:43, Nishka Dasgupta wrote:
> On 05/07/19 3:56 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Wed 03 Jul 19, 13:43, Nishka Dasgupta wrote:
> > > Remove function cedrus_check_format as all it does is call
> > > cedrus_find_format.
> > > Rename cedrus_find_format to cedrus_check_format to maintain
> > > compatibility with call sites.
> > > Issue found with Coccinelle.
> > 
> > Maybe we could have a !! or a bool cast to make coccinelle happy here?
> 
> Coccinelle didn't flag the type mismatch, just the single-line functions. I
> could add the bool cast then?

Looks like I failed to follow-up on this in due time, sorry.

Yes a bool cast would definitely be welcome :)

Cheers,

Paul

> Thanking you,
> Nishka
> 
> > Cheers,
> > 
> > Paul
> > 
> > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > ---
> > >   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 10 ++--------
> > >   1 file changed, 2 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > index 0ec31b9e0aea..d5cc9ed04fd2 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
> > >   	return container_of(file->private_data, struct cedrus_ctx, fh);
> > >   }
> > > -static bool cedrus_find_format(u32 pixelformat, u32 directions,
> > > -			       unsigned int capabilities)
> > > +static bool cedrus_check_format(u32 pixelformat, u32 directions,
> > > +				unsigned int capabilities)
> > >   {
> > >   	struct cedrus_format *fmt;
> > >   	unsigned int i;
> > > @@ -76,12 +76,6 @@ static bool cedrus_find_format(u32 pixelformat, u32 directions,
> > >   	return false;
> > >   }
> > > -static bool cedrus_check_format(u32 pixelformat, u32 directions,
> > > -				unsigned int capabilities)
> > > -{
> > > -	return cedrus_find_format(pixelformat, directions, capabilities);
> > > -}
> > > -
> > >   static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
> > >   {
> > >   	unsigned int width = pix_fmt->width;
> > > -- 
> > > 2.19.1
> > > 
> > 
> 

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
