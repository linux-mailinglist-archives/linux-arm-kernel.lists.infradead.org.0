Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CA4704CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0UFT5DmI4G2BYung+nmLCecbsM8Faq88d4eEl3/+zw=; b=sv4mNhZPtejSjW
	y8HAhs+fiWVuFOD2Z0UFROr9grXZifSOm3KfTYutXixwLpOWnhvTp+KrczbGVIeG7jSoQ3FoiLbTQ
	e/u+Q7TrNBIiiB85qYb77lsgDkgPtdwsr8UkP5Mv8IFeCJrpLw00La9Jw6w9m+t6p3hqoZN7aqbHY
	MHQ5EGUmTXx+xeOkdaunHRQX6vfPsdIBYXGht30SmDXr75CTHB3ug7eIVL2BsYH9kzix1P4arTlWc
	8os3E4sYe5HyUQ1nBVrc1Bl06GLgrYDiVkmneYFpzJeSTaGZso28v5PLwN23kDnEiE0Fsi23DwIMX
	qPn7W21UzPevuaSrbE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpakP-0006bi-KK; Mon, 22 Jul 2019 16:01:09 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpajh-00055v-Ed
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:00:28 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 2E862634C87;
 Mon, 22 Jul 2019 18:58:15 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hpaha-0000Qa-Eg; Mon, 22 Jul 2019 18:58:14 +0300
Date: Mon, 22 Jul 2019 18:58:14 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
Message-ID: <20190722155814.GC1263@valkosipuli.retiisi.org.uk>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
 <20190722111225.GA2695@azazel.net>
 <20190722122438.GA1908@aptenodytes>
 <45555499-57f3-a315-6f84-f878c3aa0130@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45555499-57f3-a315-6f84-f878c3aa0130@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_090026_473073_0327FC11 
X-CRM114-Status: GOOD (  32.31  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devel@driverdev.osuosl.org, Jeremy Sowden <jeremy@azazel.net>,
 maxime.ripard@bootlin.com, gregkh@linuxfoundation.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 07:14:08PM +0530, Nishka Dasgupta wrote:
> On 22/07/19 5:54 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Mon 22 Jul 19, 12:12, Jeremy Sowden wrote:
> > > On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
> > > > Typecast as bool the return value of cedrus_find_format in
> > > > cedrus_check_format as the return value of cedrus_check_format is
> > > > always treated like a boolean value.
> > > > 
> > > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > > ---
> > > > Changes in v2:
> > > > - Add !! to the returned pointer to ensure that the return value is
> > > >    always either true or false, and never a non-zero value other than
> > > >    true.
> > > > 
> > > >   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > index e2b530b1a956..b731745f21f8 100644
> > > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
> > > >   static bool cedrus_check_format(u32 pixelformat, u32 directions,
> > > >   				unsigned int capabilities)
> > > >   {
> > > > -	return cedrus_find_format(pixelformat, directions, capabilities);
> > > > +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
> > > >   }
> > > 
> > > I think the original was fine.  The return value of cedrus_find_format
> > > will be automatically converted to bool before being returned from
> > > cedrus_check_format since that is the return-type of the function, and
> > > the result of converting any non-zero value to bool is 1.
> > 
> > Okay I was a bit unsure about that and wanted to play it on the safe side
> > without really looking it up, but that gave me the occasion to verify.
> > 
> >  From what I could find (from my GNU system's /usr/include/unistring/stdbool.h):
> > 
> >     Limitations of this substitute, when used in a C89 environment:
> > 
> >         - In C99, casts and automatic conversions to '_Bool' or 'bool' are
> >           performed in such a way that every nonzero value gets converted
> >           to 'true', and zero gets converted to 'false'.  This doesn't work
> >           with this substitute.  With this substitute, only the values 0 and 1
> >           give the expected result when converted to _Bool' or 'bool'.
> > 
> > So since the kernel is built for C89 (unless I'm mistaken), I don't think the
> > compiler provides any guarantee about bool values being converted to 1 when
> > they are non-zero. As a result, I think it's best to be careful.
> > 
> > However, I'm not sure I really see what cocinelle was unhappy about. You
> > mentionned single-line functions, but I don't see how that can be a problem.
> 
> It's not a problem per se. I'm just working on a cleanup project for which I
> went through all of staging replacing single-line functions with what they
> were calling. In some cases that makes it easier to figure out what a
> particular function call does, since the called function actually does
> something itself instead of just calling a different function?
> This function was also flagged as one such potentially-removable function by
> Coccinelle; but in order to do the same replacement that I'd done in other
> staging drivers, I thought I would do something about the type mismatch
> first, especially since find_format doesn't appear to be used anywhere else.
> However, now I won't remove check_format and replace it with find_format as
> I'd originally planned, since you've said that isn't necessary here. That
> leaves the return type issue.
> 
> 
> > So in the end, I think we should keep the !! and drop the (bool) cast if there's
> > no particular warning about it.
> 
> Should I send a version 3 that does this?

bool was introduced in C99. Converting a non-zero value to boolean will
yield true as a result. Please keep the code as-is; it's much easier to
read that way.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
