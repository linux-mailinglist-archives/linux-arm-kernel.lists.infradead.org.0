Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1991817159E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceOiUauDDP7FO/fTU7qX5iPC+gXTQuCZwA87i1DnSgs=; b=qyclZ9tbhfBwT0
	Mw6M7pFX9rGG8g0LgtOahBMvgxLiw7qmuXT7vCbsDT6t9CMmQWErGZIZfBWMY84eT4S+1ZldAg19P
	v92c3lBjJ/KH3CftOy5sYP4DlpuGXmIlfLaTNf8JGRFaX9p8ZCnPuvx6GLJIpKQ5jD0jAzwMhNMHC
	fbwfn7wrDgGs8kMVQinghYaxp4SJaQz8v9h2btk2BhEkUaSWQeQHmqn2IcEV1MASvqeMeCf/ewvGu
	XWIpGPPZR8THLqD+uH2SO3TYD3nwPk/WJFzfVV3WtAyZq39KkNf3sp45jl+ngmpDCL6747Pkuukrm
	erFII2Y8OSyy/IlkrAUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Gzb-0003f9-Om; Thu, 27 Feb 2020 11:06:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GzT-0003el-5J
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:06:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C6ED1FB;
 Thu, 27 Feb 2020 03:06:02 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3F11E3F73B; Thu, 27 Feb 2020 03:06:00 -0800 (PST)
Date: Thu, 27 Feb 2020 11:05:58 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v2 09/19] arm64: mte: Add specific SIGSEGV codes
Message-ID: <20200227110558.GB3281767@arrakis.emea.arm.com>
References: <20200226180526.3272848-10-catalin.marinas@arm.com>
 <202002270627.YYGOStB9%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202002270627.YYGOStB9%lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_030603_245447_770E631F 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 kbuild-all@lists.01.org, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, "Eric W. Biederman" <ebiederm@xmission.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:33:14AM +0800, kbuild test robot wrote:
> url:    https://github.com/0day-ci/linux/commits/Catalin-Marinas/arm64-Memory-Tagging-Extension-user-space-support/20200227-041230
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git for-next
> config: x86_64-defconfig (attached as .config)
> compiler: gcc-7 (Debian 7.5.0-5) 7.5.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from include/linux/export.h:43:0,
>                     from include/linux/linkage.h:7,
>                     from arch/x86/include/asm/cache.h:5,
>                     from include/linux/cache.h:6,
>                     from include/linux/time.h:5,
>                     from include/linux/compat.h:10,
>                     from arch/x86/kernel/signal_compat.c:2:
>    In function 'signal_compat_build_tests',
>        inlined from 'sigaction_compat_abi' at arch/x86/kernel/signal_compat.c:166:2:
> >> include/linux/compiler.h:350:38: error: call to '__compiletime_assert_30' declared with attribute error: BUILD_BUG_ON failed: NSIGSEGV != 7

I haven't realised that x86 has a build check for NSIGSEGV. I'll fold in
the diff below (there are no new fields added to siginfo, so no other
changes necessary):

diff --git a/arch/x86/kernel/signal_compat.c b/arch/x86/kernel/signal_compat.c
index 9ccbf0576cd0..a7f3e12cfbdb 100644
--- a/arch/x86/kernel/signal_compat.c
+++ b/arch/x86/kernel/signal_compat.c
@@ -27,7 +27,7 @@ static inline void signal_compat_build_tests(void)
 	 */
 	BUILD_BUG_ON(NSIGILL  != 11);
 	BUILD_BUG_ON(NSIGFPE  != 15);
-	BUILD_BUG_ON(NSIGSEGV != 7);
+	BUILD_BUG_ON(NSIGSEGV != 9);
 	BUILD_BUG_ON(NSIGBUS  != 5);
 	BUILD_BUG_ON(NSIGTRAP != 5);
 	BUILD_BUG_ON(NSIGCHLD != 6);

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
