Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB37DEE19D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WaVDiIZmmztjCEr3nV8N0R30oVK2jD9dhjt5Ekv+5Fo=; b=cB8PdmlacDBWi9
	1Z6m8WzItWeFnOpVqJX/t18N7jiWiGMr1NFF/8v2sYHcwh/AYLh+FjUID0djlY+PNe/Y6iTPALTBA
	mcP/6Oq3Tg1RvLSjuPRSaSKT/lc2OKVdmsTn1QmVMfiAbVDFdd72f/6WNuCZZHLF0ohX4h7p4gtXI
	lDDdexNDh5MpQ5JcjRbFSOomdOHXOE0nfOD3kyA76mWsS4WcjWlAfW/8Pr1pLM827mXTDzYwXRtvU
	oHK7+OBzdn2Gh80Lk6JhcmWgmKr9QuTm2cMztJ6WXBzOplD995/A6Zk/RGMUK96XmBrODGnLzMvLx
	e4NBIUrzxwSH/TO0MN/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcnd-0001aw-Sc; Mon, 04 Nov 2019 13:53:41 +0000
Received: from smtprelay0158.hostedemail.com ([216.40.44.158]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcnT-0001aF-FC
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:53:32 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 5DE2B181D304D;
 Mon,  4 Nov 2019 13:53:29 +0000 (UTC)
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, rostedt@goodmis.org,
 :::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:541:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:3138:3139:3140:3141:3142:3350:3622:3865:3866:3867:3868:3870:3872:3873:3874:5007:6261:6742:7875:9040:10004:10400:10967:11232:11658:11914:12297:12663:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30070:30090:30091,
 0,
 RBL:146.247.46.6:@goodmis.org:.lbl8.mailshell.net-62.8.41.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: air76_580e2771dcc23
X-Filterd-Recvd-Size: 1758
Received: from grimm.local.home (unknown [146.247.46.6])
 (Authenticated sender: rostedt@goodmis.org)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Mon,  4 Nov 2019 13:53:24 +0000 (UTC)
Date: Mon, 4 Nov 2019 08:53:21 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191104085321.7636be56@grimm.local.home>
In-Reply-To: <20191104133836.GF45140@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-2-mark.rutland@arm.com>
 <20191104081620.732320a8@grimm.local.home>
 <20191104133836.GF45140@lakrids.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_055331_579235_2A5D8A4C 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.158 listed in list.dnswl.org]
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, James.Bottomley@HansenPartnership.com,
 takahiro.akashi@linaro.org, will@kernel.org, mingo@redhat.com,
 james.morse@arm.com, jeyu@kernel.org, amit.kachhap@arm.com,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 Nov 2019 13:38:36 +0000
Mark Rutland <mark.rutland@arm.com> wrote:

> > Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>  
> 
> Thanks!
> 
> Just to check, are you happy if this were to go via the arm64 tree with
> the rest of the patches?

Yes, if I wasn't I would have said something. But I guess I should have
been explicit and stated that I'm fine with it going in your tree. My
current updates should not conflict with this.

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
