Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDB6EE11A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWpjUC7yQVBzqNRWdm19r124YwGX0MmkUcbHh6tMtpM=; b=Vdi5hJ/+U6pk8e
	DtNJxdd+ybXE9rGO4Qe8CfjfeF3RBQxdDKxQlqPqCvde4mJ4RCorWKMC9b0vDmr0XFrjo85FtHgNg
	lbG5OnfABoBNbvSufiC6uKDisK+1ngwIy7ydSl88bNLdIZ2ch7Xn1jguIKrx3Qx/pyfQiN2Q4iOPL
	2VGYGuvOFckgZ2fGNlppAwmj+aTmzrjSAbEqullzQ9iCZZpf1kCCTaMT4G/IcI9CYpvdcWRPoIaOJ
	sUbKRF8VhhFYCqwiXg4KOyWUodrIk556+RNpxjFyBYjgtA/n3vaRY1eKEVfGsf/VsiFo36Jd/ktJN
	2hkZSxtqHRN/Pb7UXjWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcPB-00064b-HX; Mon, 04 Nov 2019 13:28:25 +0000
Received: from smtprelay0200.hostedemail.com ([216.40.44.200]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcP5-00063L-2f
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:28:20 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id C13FB182CED2A;
 Mon,  4 Nov 2019 13:28:17 +0000 (UTC)
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, rostedt@goodmis.org,
 :::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:541:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1566:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2553:2559:2563:2682:2685:2859:2895:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3743:3865:3867:3868:3870:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4362:5007:6248:6261:6742:7875:9025:9040:10004:10400:10848:10967:11232:11657:11658:11914:12043:12114:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:14777:21080:21433:21627:30054:30070:30090:30091,
 0,
 RBL:146.247.46.6:@goodmis.org:.lbl8.mailshell.net-62.8.41.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: rain90_db18710e4e53
X-Filterd-Recvd-Size: 1789
Received: from grimm.local.home (unknown [146.247.46.6])
 (Authenticated sender: rostedt@goodmis.org)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Mon,  4 Nov 2019 13:28:13 +0000 (UTC)
Date: Mon, 4 Nov 2019 08:28:10 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 2/8] module/ftrace: handle patchable-function-entry
Message-ID: <20191104082810.70f1b72a@grimm.local.home>
In-Reply-To: <20191031130022.GB3477@blommer>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-3-mark.rutland@arm.com>
 <20191030150302.GA965@suse.de> <20191031090231.GA3340@blommer>
 <20191031114223.GA11684@suse.de> <20191031130022.GB3477@blommer>
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_052819_189716_BB47A2D0 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.200 listed in list.dnswl.org]
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
 catalin.marinas@arm.com, Torsten Duwe <duwe@suse.de>, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, "James E.J.
 Bottomley" <James.Bottomley@hansenpartnership.com>, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com,
 Jessica Yu <jeyu@kernel.org>, amit.kachhap@arm.com, svens@stackframe.org,
 Helge Deller <deller@gmx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 31 Oct 2019 13:00:22 +0000
Mark Rutland <mark.rutland@arm.com> wrote:

> Sure. I've folded the above into this patch, and pushed out an updated branch:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/ftrace-with-regs

Just to keep this change in lore, can you at a minimum reply to this
patch's thread with the new update?

Thanks!

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
