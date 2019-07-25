Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3133742D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 03:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNhktnm52102KI76U6leSA/C8ga+pbrrPb/g9QOSyVQ=; b=a/OC3BlcXX//rF
	sdFynmEVf/fQy/xRgsrcRLtCdzO3gf3tc/CApwvQeWWOwSK8FoqCynD9ocvG6bEnPJlvV8FwaiIx7
	mooWX7kRD22B/FQAG//FOCM71pUWk7x1JJkoUwHlQvZgHr3/uLXIcmL5RACZdBbLtriB+0MIyvwBu
	ZAjjK/JMlPJDHl47UKd6NLlw/2cjUT2Xu2ymotqYSITBTMPhuMf0qE5dek5bM9fPe5yR4nRW96I22
	sQkQiGmu64YYinXjVTedSI04kQg0jInew8Tng/HV+vpqJ/7aqIdHsu14dkOL4H/gRXeuJNaaUu0Dp
	EXob9LaXilVQL6YRKBtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqSP1-0005Js-DS; Thu, 25 Jul 2019 01:18:39 +0000
Received: from smtprelay0084.hostedemail.com ([216.40.44.84]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqSOo-0005Is-62
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 01:18:27 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 5FF5818026238;
 Thu, 25 Jul 2019 01:18:21 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:2911:3138:3139:3140:3141:3142:3352:3622:3867:3872:4321:4425:5007:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13069:13161:13229:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21611:21627:30054:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: rain11_48b2601630360
X-Filterd-Recvd-Size: 2496
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf02.hostedemail.com (Postfix) with ESMTPA;
 Thu, 25 Jul 2019 01:18:19 +0000 (UTC)
Message-ID: <4e5bc8d61436024a30a8fb6a1516e29e23a75ede.camel@perches.com>
Subject: Re: [PATCH 03/12] drm: aspeed_gfx: Fix misuse of GENMASK macro
From: Joe Perches <joe@perches.com>
To: Andrew Jeffery <andrew@aj.id.au>, Andrew Morton
 <akpm@linux-foundation.org>,  Joel Stanley <joel@jms.id.au>
Date: Wed, 24 Jul 2019 18:18:18 -0700
In-Reply-To: <4f6709f8-381f-415c-8569-798b074b66c5@www.fastmail.com>
References: <cover.1562734889.git.joe@perches.com>
 <cddd7ad7e9f81dec1e86c106f04229d21fc21920.1562734889.git.joe@perches.com>
 <2a0c5ef5c7e20b190156908991e4c964a501d80a.camel@perches.com>
 <4f6709f8-381f-415c-8569-798b074b66c5@www.fastmail.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_181826_295806_2509C11F 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.84 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-aspeed@lists.ozlabs.org, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-07-25 at 10:40 +0930, Andrew Jeffery wrote:
> 
> On Thu, 25 Jul 2019, at 02:46, Joe Perches wrote:
> > On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
> > > Arguments are supposed to be ordered high then low.
> > > 
> > > Signed-off-by: Joe Perches <joe@perches.com>
> > > ---
> > >  drivers/gpu/drm/aspeed/aspeed_gfx.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx.h b/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > > index a10358bb61ec..095ea03e5833 100644
> > > --- a/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > > +++ b/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > > @@ -74,7 +74,7 @@ int aspeed_gfx_create_output(struct drm_device *drm);
> > >  /* CTRL2 */
> > >  #define CRT_CTRL_DAC_EN			BIT(0)
> > >  #define CRT_CTRL_VBLANK_LINE(x)		(((x) << 20) & CRT_CTRL_VBLANK_LINE_MASK)
> > > -#define CRT_CTRL_VBLANK_LINE_MASK	GENMASK(20, 31)
> > > +#define CRT_CTRL_VBLANK_LINE_MASK	GENMASK(31, 20)
> 
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

This hardly needs a review, it needs to be applied.
There's a nominal git tree for aspeed here:

T:	git git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git

But who's going to do apply this?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
