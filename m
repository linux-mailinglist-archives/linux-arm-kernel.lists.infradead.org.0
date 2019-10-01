Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DBBC3916
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rs0KGw5zzHIt+ses6UamQcT0JwIqnzQzGDdZSDPQ2Hs=; b=Dr/8jntbUkXWqc
	IDv/dtsYJHFuJkHE8jgRfI/rhscxytfo/J7VZFbYnirZrnYnJzQspx+eArzqk02H5Q55nuFVJhtMT
	pGQTt4VcM5g+GgKqlqgbuK1HpUudGHHaqjqa/pPCuldZGWV1rBfi3s6XjAac8IhgZhSg8Pyj595bc
	1F2RxfOyCx0Fgtb/H1hDHJ5o72/MddIUJON2oQEuN0JPNvw01Fdj4jptTPLZR7oTEONvtwJmS2b8r
	5eWlD4Wdel/eoiUCV3XRAsh397qEgNza3H0xeyyUV/WJZJMDysQmdy/ubuDopbBdEhiWoq7chDNle
	QzueuEiYAr3n7Ci/P1GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFK7G-0001UV-9x; Tue, 01 Oct 2019 15:31:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFK7A-0001Ta-0X
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:31:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 756F81000;
 Tue,  1 Oct 2019 08:30:59 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 728FE3F71A; Tue,  1 Oct 2019 08:30:58 -0700 (PDT)
Date: Tue, 1 Oct 2019 16:30:56 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20191001153056.GO41399@arrakis.emea.arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
 <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
 <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_083100_098260_6E5A4729 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 03:43:54PM +0100, Will Deacon wrote:
> > >>>> On Thu, Sep 26, 2019 at 10:43:38PM +0100, Vincenzo Frascino wrote:
> > >>>>> +config COMPATCC_IS_ARM_GCC
> > >>>>> +	def_bool $(success,$(COMPATCC) --version | head -n 1 | grep -q "arm-.*-gcc")
[...]
> My point was that we don't attempt to sanitise the compiler passed via
> CROSS_COMPILE, so I don't think we should do anything special for COMPATCC
> either.

What I really want from kbuild with this patch is:

1. Not to warn me that I don't have a CROSS_COMPILE_COMPAT set

2. Not to give me a compilation error if the makefile made up a COMPATCC
   that doesn't work

Since we dropped the Kconfig option for the compat gcc prefix (which I
didn't like anyway), COMPATCC is now initialised to
(CROSS_COMPILE_COMPAT)gcc. This means that it is valid compiler (and
it's an aarch64 compiler on my machine). The COMPATCC_IS_ARM_GCC
silently disables the compat vDSO for this case rather than giving me a
build error if we don't have such checks.

In the long run, I wouldn't mandate CROSS_COMPILE_COMPAT to always be
set for the compat vDSO since with clang we could use the same compiler
binary for both native and compat (with different flags). That's once we
cleaned up the headers.

So, I think the best option for the time being is to check that the
compat compiler is an "arm*-gcc", otherwise disable the compat vDSO.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
