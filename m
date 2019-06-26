Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE3956DE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 17:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJHR6Q23SlWJlcvUYYAK7m4sjHsFn/tUF6PtEWaJ7lw=; b=kihgJfg5Rb+Qfr
	yNIndHT7OkoOBWnuliEwXDWZbb4khq+776FunIjMAps1f6/SYqY0tKei4KhZWzJsb+uLmMoSflxoC
	zqjPV69keRFvrdhyoVI1Gb6PrpIKpG+33oNIVMOB7+DpW3jZFpOzlDd9zqncWyAOsCv1X4H+rEEXM
	D07fCnuyv+w6sYAJHCXYk9KjW8CcaAsO3A+jFERP1dSL+pIm5Nm9zrls/VrGWSFKcj4hUlSiuNlM7
	j5830nMIBPAiVpipOcay+jvzlK0CvWt62u2hQY2hxNPpTdsLZ6NBYAZsJdMV9d83OOWLjOxABfwiw
	SEENsS2zMDKHgbmctyog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgA3U-00006Q-Ew; Wed, 26 Jun 2019 15:41:52 +0000
Received: from smtprelay0055.hostedemail.com ([216.40.44.55]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgA3H-00004y-V4
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 15:41:41 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 000EF181D3402;
 Wed, 26 Jun 2019 15:41:35 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:1978:1981:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3868:4250:4321:4384:5007:6737:6738:7809:10004:10400:10848:10903:11026:11232:11658:11914:12043:12048:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:21740:30009:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:none, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: jar47_64850cc308b59
X-Filterd-Recvd-Size: 2351
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Wed, 26 Jun 2019 15:41:30 +0000 (UTC)
Message-ID: <826354a296645f54a98f22129d006d91cfcff284.camel@perches.com>
Subject: Re: [tip:timers/vdso] MAINTAINERS: Add entry for the generic VDSO
 library
From: Joe Perches <joe@perches.com>
To: hpa@zytor.com, luto@kernel.org, salyzyn@android.com,
 0x7f454c46@gmail.com,  arnd@arndb.de, catalin.marinas@arm.com,
 mingo@kernel.org, avagin@openvz.org,  vincenzo.frascino@arm.com,
 torvalds@linux-foundation.org, dima@arista.com,  pcc@google.com,
 will.deacon@arm.com, paul.burton@mips.com, mikelley@microsoft.com, 
 shuah@kernel.org, sthotton@marvell.com, sashal@kernel.org,
 andre.przywara@arm.com,  daniel.lezcano@linaro.org, huw@codeweavers.com,
 ralf@linux-mips.org,  linux-arm-kernel@lists.infradead.org,
 linux@armlinux.org.uk,  linux-kernel@vger.kernel.org,
 linux@rasmusvillemoes.dk, tglx@linutronix.de, 
 linux-tip-commits@vger.kernel.org
Date: Wed, 26 Jun 2019 08:41:29 -0700
In-Reply-To: <tip-e70980312a946a56173843cbc0104b3b0e57a0c7@git.kernel.org>
References: <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <tip-e70980312a946a56173843cbc0104b3b0e57a0c7@git.kernel.org>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_084140_078394_B9AA9F63 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.55 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 05:36 -0700, tip-bot for Thomas Gleixner wrote:
> MAINTAINERS: Add entry for the generic VDSO library
[]
> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -6664,6 +6664,18 @@ L:	kvm@vger.kernel.org
>  S:	Supported
>  F:	drivers/uio/uio_pci_generic.c
>  
> +GENERIC VDSO LIBRARY:
> +M:	Andy Lutomirksi <luto@kernel.org>
> +M:	Thomas Gleixner <tglx@linutronix.de>
> +M:	Vincenzo Frascino <vincenzo.frascino@arm.com>
> +L:	linux-kernel@vger.kernel.org
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/vdso
> +S:	Maintained
> +F:	lib/vdso

Please use trailing slashes for directories.

> +F:	kernel/time/vsyscall.c
> +F:	include/vdso

and here.

> +F:	include/asm-generic/vdso/vsyscall.h
> +
>  GENWQE (IBM Generic Workqueue Card)
>  M:	Frank Haverkamp <haver@linux.ibm.com>
>  S:	Supported


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
