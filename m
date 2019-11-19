Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E16102E0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 22:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LB3IXgIRuuFo38AOAbZSnb5U7DYgeW9IqOEDbN4Z/nQ=; b=m5seWy+HJNa+aK
	z6bQdf236EVELw/XYHXQig3gW4A3TnRHQwAVYdwurn5z3uXh3gBgVL7hNlUAIQm3ma98z5fMg8LMz
	n7DtAKfTgHrbPnvVe2CMgAxVEtluzYhCwPbYBPTNcdoli1V2XjmE27wC0Q3oTV2JYhao0tIOdz0aN
	/qaq2boffhoLD+oY5CNgUh2IpKq2jwVNmJsgqgm/lrVxpKypVfm9VZSjxaBfwDQLyZe/8Qe8MJuJA
	UDn3X8Nz/SwEX2LdA+YTkf05crBgKrQoVTdgJWDBZrdV38f+pgNAazaFScn2f4su8bODCE/3DBrph
	n6LYngF8Z5WVEJkKjMOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXAne-00073M-0M; Tue, 19 Nov 2019 21:12:38 +0000
Received: from smtprelay0081.hostedemail.com ([216.40.44.81]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXAnW-00072I-GX
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 21:12:31 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id D30B3180A5AED;
 Tue, 19 Nov 2019 21:12:24 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2538:2553:2559:2562:2693:2828:2911:3138:3139:3140:3141:3142:3165:3353:3622:3865:3866:3867:3870:3871:3872:3874:4321:4425:5007:6742:7903:10004:10400:10848:11232:11473:11658:11914:12043:12050:12297:12740:12760:12895:13069:13072:13311:13357:13439:13846:14096:14097:14181:14659:14721:14777:14819:21080:21433:21450:21451:21627:21740:21819:30003:30022:30054:30067:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:3, LUA_SUMMARY:none
X-HE-Tag: scene39_893a14c56c12e
X-Filterd-Recvd-Size: 2870
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Tue, 19 Nov 2019 21:12:22 +0000 (UTC)
Message-ID: <1e9719feb8c650ea90dec41850fe9058eef59862.camel@perches.com>
Subject: Re: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
From: Joe Perches <joe@perches.com>
To: Robert Richter <rrichter@marvell.com>
Date: Tue, 19 Nov 2019 13:12:00 -0800
In-Reply-To: <20191119202328.cqfzf5a4svn23h5a@rric.localdomain>
References: <20191119165549.14570-1-rrichter@marvell.com>
 <20191119165549.14570-4-rrichter@marvell.com>
 <64ace55545c028bc39b08370074aafd32e8fc5f5.camel@perches.com>
 <20191119185012.2fekd6f5gbpflpqe@rric.localdomain>
 <cb41a8956be6cf11e9d25c1790eeb8c935b9ab29.camel@perches.com>
 <20191119202328.cqfzf5a4svn23h5a@rric.localdomain>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_131230_613761_86FF5B5E 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.81 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "soc@kernel.org" <soc@kernel.org>, arm soc <arm@kernel.org>,
 George Cherian <gcherian@marvell.com>, Will Deacon <will@kernel.org>,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-11-19 at 20:23 +0000, Robert Richter wrote:
> Joe,
> 
> thanks for your review.
> 
> On 19.11.19 11:56:53, Joe Perches wrote:
> > Maybe make that change globally in all the files other
> > than MAINTAINERS as well eventually.
> > 
> > arch/arm64/mm/numa.c:6: * Author: Ganapatrao Kulkarni <gkulkarni@cavium.com>
> > arch/mips/cavium-octeon/octeon-usb.c:551:MODULE_AUTHOR("David Daney <david.daney@cavium.com>");
> > arch/mips/include/asm/octeon/cvmx-coremask.h:6: * Copyright (c) 2016  Cavium Inc. (support@cavium.com).
> 
> [...]
> 
> This is a bit past the scope of this patch.

Yup, completely agree, as it seems I understated with "eventually".

>  I will leave that change to the driver's maintainers.

Fine by me.  btw:  There's also entries for @caviumnetworks.com
so those might change one day too.

> I also think that authorship does not
> change even if the author's email address changed or vanished later. I
> am not sure on the general handling of MODULE_AUTHOR(), should that
> always contain a valid email address? Seems not the case. I don't
> think somebody actually sends an email to the author, it is more to
> better identify the author.

Changelog identifies the author, MODULE_AUTHOR is actually
available via modinfo -a, which shows email if entered,
but that may also be rarely used in practice.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
