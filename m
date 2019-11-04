Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B339EE0C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:12:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qL7svEGq3tjfEZrjIRuzXkSCvOOPyaif6PezKy1a3A=; b=TXpHdRzUSn2fMS
	I5Lo5W7cqmp+5jpHKUOn5V3A527Xg+/coxwaCpFKyTRFqi0+1yGec61t2WFevRDxrWY8qrW0Esoi6
	Hrpn171bM84aNdFXv2qC4mqvNErT56OjOkYmiZMzYWlmtb4orStBLjyCGaOkPJxRCMKueg10/GPSX
	OzxZg2NYnSP9EXWEL3gwYQRZh8QMWVDN/bARXkRmL9g+pmXui8T0hF+Bm885oCqPsL8jAAhEEIlRw
	OUZKVChlSYYsRCEdWiG/ARjexInk3iFixag9pXULFKQMjhx+s0mNsTmt/+I76vVK/wjxrH4RMgxOp
	uQ3uoU+YXe6Q94b7/GlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRc9x-0004N9-Bm; Mon, 04 Nov 2019 13:12:41 +0000
Received: from smtprelay0136.hostedemail.com ([216.40.44.136]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRc9V-0004B4-Mc
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:12:15 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id AA5684DBD;
 Mon,  4 Nov 2019 13:11:43 +0000 (UTC)
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, rostedt@goodmis.org,
 :::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:541:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2693:2895:3138:3139:3140:3141:3142:3352:3622:3743:3865:3866:3867:3870:3871:3872:3874:5007:6119:6261:6742:7875:9108:10004:10400:10848:10967:11026:11232:11658:11914:12043:12297:12663:12740:12760:12895:13069:13311:13357:13439:13618:14181:14659:14721:21080:21627:30054:30070:30090:30091,
 0,
 RBL:146.247.46.6:@goodmis.org:.lbl8.mailshell.net-62.14.41.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: bat51_e8cae9c64d2a
X-Filterd-Recvd-Size: 1974
Received: from grimm.local.home (unknown [146.247.46.6])
 (Authenticated sender: rostedt@goodmis.org)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Mon,  4 Nov 2019 13:11:39 +0000 (UTC)
Date: Mon, 4 Nov 2019 08:11:36 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCHv2 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191104081136.645e9b1a@grimm.local.home>
In-Reply-To: <daad0785-a33f-3cfb-cf0f-657b6c677257@arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-2-mark.rutland@arm.com>
 <daad0785-a33f-3cfb-cf0f-657b6c677257@arm.com>
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_051213_864364_D2680270 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.136 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, jthierry@redhat.com,
 linux-parisc@vger.kernel.org, peterz@infradead.org, catalin.marinas@arm.com,
 deller@gmx.de, jpoimboe@redhat.com, linux-kernel@vger.kernel.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2 Nov 2019 17:49:00 +0530
Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:

> Now that ftrace_init_nop is also an arch implemented function so it may 
> be added in Documentation/trace/ftrace-design.rst along with 
> ftrace_make_nop.
> In general also, adding some description about patchable-function-entry
> in kernel Documentation will be useful.

I think this part is outside the scope of this patch set. Honestly, I
need to chisel out some time to rewrite the ftrace-design document, as
that's been long needed. But that can come at a later time. I'm
currently rewriting some of it now, so it will be best to not waste
effort to update a document that will soon become stale. ;-)

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
