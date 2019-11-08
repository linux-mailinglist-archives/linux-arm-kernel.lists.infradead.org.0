Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927A2F3D96
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 02:46:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqVyuMjdsGI3scOrTae9+L/3OA+H8zcYmT5Ug4dyBXg=; b=DaCynt8hjILip6
	En3IjOUDZwi8pQc4F+lGgd5DXmmrDkJ2zN2WobYBu53kbVQd1ZIzllDgZ5aCDifo4fKjgOeFbA9L5
	hxukl5i3/NWQUZp4DQlHEIaYB1uyptDO6mOCWPCWp9MjnS/sISS15Du0BvG0WkDko5niTZRjCzIz7
	olJNRoz+IIokS1TzI1iLFxqNhqHjaY1GNvwJCkjTVsuW9rjvpcWsclmDHc4bOry2XaEBx9GCqOH9/
	iulzAIfmAem6w/T3sZuMq9pAv/bbrDSaD6LDCOYMx/a0egGGUKOAHcyUFEVVb4yZuJDvVZsSJ4BeH
	mg2v0nYD1aWa5wg4kszQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iStMK-00019k-D4; Fri, 08 Nov 2019 01:46:44 +0000
Received: from smtprelay0228.hostedemail.com ([216.40.44.228]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iStMD-00019E-0f
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 01:46:38 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 564B2100E7B44;
 Fri,  8 Nov 2019 01:46:30 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2692:2731:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:5007:6691:6742:7514:10004:10400:11232:11658:11914:12297:12663:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21324:21451:21627:30054:30090:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: cough96_558de86610607
X-Filterd-Recvd-Size: 2341
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Fri,  8 Nov 2019 01:46:27 +0000 (UTC)
Message-ID: <2367894118ccee058ed451927412d7c1a33864bd.camel@perches.com>
Subject: Re: [PATCH] phy: allwinner: Fix GENMASK misuse
From: Joe Perches <joe@perches.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Rikard Falkeborn
 <rikard.falkeborn@gmail.com>
Date: Thu, 07 Nov 2019 17:46:14 -0800
In-Reply-To: <20191107233914.GW25745@shell.armlinux.org.uk>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191107204645.13739-1-rikard.falkeborn@gmail.com>
 <20191107233914.GW25745@shell.armlinux.org.uk>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_174637_128345_D3A575BA 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.228 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: megous@megous.com, mark.rutland@arm.com, arnd@arndb.de,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, kishon@ti.com,
 paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, tglx@linutronix.de, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-11-07 at 23:39 +0000, Russell King - ARM Linux admin wrote:
> On Thu, Nov 07, 2019 at 09:46:45PM +0100, Rikard Falkeborn wrote:
> > Arguments are supposed to be ordered high then low.
> > 
> > Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> > ---
> > Spotted while trying to add compile time checks of GENMASK arguments.
> > Patch has only been compile tested.
> 
> My feeling, personally, is that GENMASK() really isn't worth the pain
> it causes.  Can we instead get rid of this thing and just use easier
> to understand and less error-prone hex masks please?
> 
> I don't care what anyone else says, personally I'm going to stick with
> using hex masks as I find them way easier to get right first time than
> a problematical opaque macro - and I really don't want the effort of
> finding out that I've got the arguments wrong when I build it.  It's
> just _way_ easier and less error prone to use a hex mask straight off.

I agree, but there are already more than 8000 uses of this rather
silly (and perhaps backwards argument order) macro in the kernel.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
