Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D7014C3B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 00:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfWtMkJY1p4cJTdJHUtJ4sfC3cufnl56t47jiZ99dOU=; b=S5/rjQIjd8WhFI
	v4mbIYeTohSOvQJ1V64+rwMVy5o8wMFbOSPDUWUXJlRUAVYQcWn62i5CGvPZc7f27NTNM8nroU1vx
	qVpIgZ+jDF6Ir3rN+7POMVOlWEYrF6J/D/fuC6VjwORNO+mym2TWBXX0bWm9I/HGfnueCj9xm79U0
	ZjtbMzZMP2BhtRAKOgf6ARsOW3u+CFogOE3dLBYX3iXzx/tUYQMMMgEjXVp5aMxJz/zZbQ5Hph40f
	EkpmtsvPL0mgHo69ZlUKJ5S3EUGLB5n2P9le89F8oZQ8lXI58tFjcUjLAfa9SPTqCj1x1eNBzKYwN
	jB3/Y5PDhFjuo2qWDNUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwabu-0003XC-Kt; Tue, 28 Jan 2020 23:49:34 +0000
Received: from smtprelay0013.hostedemail.com ([216.40.44.13]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwabl-0003Vf-0l
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 23:49:26 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id DF2BE40D6;
 Tue, 28 Jan 2020 23:49:19 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2729:2828:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4225:4321:5007:6691:7576:7903:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12297:12555:12663:12740:12760:12895:13095:13161:13229:13439:14181:14659:14721:21080:21433:21627:21990:30034:30054:30070:30080:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: baby58_342707bfef54f
X-Filterd-Recvd-Size: 3762
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Tue, 28 Jan 2020 23:49:18 +0000 (UTC)
Message-ID: <60cd544bfba4251cf656f377c20ccf8b470a92dc.camel@perches.com>
Subject: Re: [PATCH][next][V2] i2c: xiic: fix indentation issue
From: Joe Perches <joe@perches.com>
To: Colin Ian King <colin.king@canonical.com>, Peter Rosin
 <peda@axentia.se>,  Dan Carpenter <dan.carpenter@oracle.com>, Michal Simek
 <michal.simek@xilinx.com>, Johan Hovold <johan@kernel.org>
Date: Tue, 28 Jan 2020 15:48:13 -0800
In-Reply-To: <3b287fb5-e344-c13a-2803-09c2958b9b0d@canonical.com>
References: <20200127102303.44133-1-colin.king@canonical.com>
 <2dd84ab2-a7a3-fdd8-6bd6-07f1b3d5cd00@xilinx.com>
 <20200127120535.GC1847@kadam>
 <89661e5e-7662-81a5-ec36-57367825de5e@canonical.com>
 <35ed6501-3b26-36a9-d332-d4ed3366ebd8@axentia.se>
 <3b287fb5-e344-c13a-2803-09c2958b9b0d@canonical.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_154925_185577_1158F127 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.13 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.13 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-01-28 at 23:10 +0000, Colin Ian King wrote:
> On 28/01/2020 21:45, Peter Rosin wrote:
> > On 2020-01-27 13:08, Colin Ian King wrote:
> > > On 27/01/2020 12:05, Dan Carpenter wrote:
> > > > On Mon, Jan 27, 2020 at 12:03:02PM +0100, Michal Simek wrote:
> > > > > On 27. 01. 20 11:23, Colin King wrote:
> > > > > > From: Colin Ian King <colin.king@canonical.com>
> > > > > > 
> > > > > > There is a statement that is indented one level too deeply, remove
> > > > > > the extraneous tab.
> > > > > > 
> > > > > > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> > > > > > ---
> > > > > > V2: fix type in commit message
> > > > > > ---
> > > > > >  drivers/i2c/busses/i2c-xiic.c | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
> > > > > > index b17d30c9ab40..90c1c362394d 100644
> > > > > > --- a/drivers/i2c/busses/i2c-xiic.c
> > > > > > +++ b/drivers/i2c/busses/i2c-xiic.c
> > > > > > @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
> > > > > >  		xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
> > > > > >  		if (time_after(jiffies, timeout)) {
> > > > > >  			dev_err(i2c->dev, "Failed to clear rx fifo\n");
> > > > > > -				return -ETIMEDOUT;
> > > > > > +			return -ETIMEDOUT;
> > > > > >  		}
> > > > > >  	}
> > > > > >  
> > > > > > 
> > > > > 
> > > > > As was suggested by Peter you should also add Fixes: <sha1> ("patch
> > > > > subject")
> > > > > 
> > > > 
> > > > It's not really a bugfix, it's just a cleanup.
> > > 
> > > I'm surprised i wasn't asked for a bug number too.
> > 
> > Very funny.
> 
> Apologies for being flippant. I didn't mean to offend. My bad #1.
> 
> > I realize that you, the three complainers (Johan, Dan and Colin), together
> > have almost 10000 commits. So, I feel a bit outranked.
> > 
> > However, this ridicule is unfair.

It's not unfair.

In _no_ sense is a whitespace only change a valid reason
to use a "Fixes:" tag.

A whitespace only coding-style issue is _not_ a bug.

From submitting-patches:

If your patch fixes a bug in a specific commit, e.g. you found an issue using
``git bisect``, please use the 'Fixes:' tag with the first 12 characters of
the SHA-1 ID, and the one line summary.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
