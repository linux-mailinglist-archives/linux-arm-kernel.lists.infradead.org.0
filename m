Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA506FF8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 14:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yd/1apRjdGV9IzoeSWjxahSRnioU5iPid+/aV44t7OM=; b=hY3Ir56CSV6P0i
	dptUQaiT4Lix2jzIKmKGabFuTpdoTKcnzY03UACsCX3PL8PDuootAu2VGce7wBmiCCIbFvRm3STLy
	/8CkV0qq58Fbel9JcvKWE9O+VeO7QrSD5DlRDY4o7Va/KLKZqKIzIyVh2QYffDXWBeOW2xufb4Gd0
	qvPjmCjGFKRYQGFQP3DkSM/CzmJA0pjV07P/lwKxgVH4pkCEai7Js7vGxlk0N/JRVxduSEcg/SqQD
	QyFbqbCwjEyhI99q2FV5pSG7NFkSEUAWHkCMPPYRPa7rNC1uLyi8RVUdzS7i8eP4NVANP8f0xZxUf
	PfSXFwMLVwEuhXjtJzzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpXNW-0006ws-GC; Mon, 22 Jul 2019 12:25:18 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpXN5-0006vV-Vd
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 12:24:54 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id C6615100005;
 Mon, 22 Jul 2019 12:24:38 +0000 (UTC)
Date: Mon, 22 Jul 2019 14:24:38 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
Message-ID: <20190722122438.GA1908@aptenodytes>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
 <20190722111225.GA2695@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722111225.GA2695@azazel.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_052452_172007_A059904D 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
 gregkh@linuxfoundation.org, wens@csie.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon 22 Jul 19, 12:12, Jeremy Sowden wrote:
> On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
> > Typecast as bool the return value of cedrus_find_format in
> > cedrus_check_format as the return value of cedrus_check_format is
> > always treated like a boolean value.
> >
> > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > ---
> > Changes in v2:
> > - Add !! to the returned pointer to ensure that the return value is
> >   always either true or false, and never a non-zero value other than
> >   true.
> >
> >  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > index e2b530b1a956..b731745f21f8 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
> >  static bool cedrus_check_format(u32 pixelformat, u32 directions,
> >  				unsigned int capabilities)
> >  {
> > -	return cedrus_find_format(pixelformat, directions, capabilities);
> > +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
> >  }
> 
> I think the original was fine.  The return value of cedrus_find_format
> will be automatically converted to bool before being returned from
> cedrus_check_format since that is the return-type of the function, and
> the result of converting any non-zero value to bool is 1.

Okay I was a bit unsure about that and wanted to play it on the safe side
without really looking it up, but that gave me the occasion to verify.

From what I could find (from my GNU system's /usr/include/unistring/stdbool.h):

   Limitations of this substitute, when used in a C89 environment:

       - In C99, casts and automatic conversions to '_Bool' or 'bool' are
         performed in such a way that every nonzero value gets converted
         to 'true', and zero gets converted to 'false'.  This doesn't work
         with this substitute.  With this substitute, only the values 0 and 1
         give the expected result when converted to _Bool' or 'bool'.

So since the kernel is built for C89 (unless I'm mistaken), I don't think the
compiler provides any guarantee about bool values being converted to 1 when
they are non-zero. As a result, I think it's best to be careful.

However, I'm not sure I really see what cocinelle was unhappy about. You
mentionned single-line functions, but I don't see how that can be a problem.

So in the end, I think we should keep the !! and drop the (bool) cast if there's
no particular warning about it.

What do you think?

Cheers,

Paul

> >  static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
> > --
> > 2.19.1

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
