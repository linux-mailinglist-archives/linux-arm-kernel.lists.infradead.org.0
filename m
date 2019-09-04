Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4FBA85E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVZxwBFWYGDF2q24sOWpjNbXe4EZNXmyMkY/+gy10Rw=; b=XI2BJ2RyvwJerM
	RVRiFUglbgnPXDVaHZoxBfYz26496PypQTzglrlsAnMt97ZpfNAfyFepua7Fe12Gdfq66ZDwyJ488
	Qrq8cKv9OY0a+x6V/b/lJ7gAsWsyscZ9Or8RuCQBhkMGG5MGrDSFQTcULJBPJBmSVsl1eHC79Kj0X
	maygDAz1CPI293yrsjXmpmP0tJr4mhD37YlH3ADD3jBkEwVinT+LjJRadfWPS1BH7A8lCsPZAxmn4
	KwIlVuO8zD0c6VNAitBUIQpCOQXut6HFLN0PMEiI4wyi2d/XRYkmMUWyYRfimYuC9occ84/YGOQm9
	i0PThb2ubtdvnTRcbRmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Wqr-0006HP-Vs; Wed, 04 Sep 2019 15:05:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WqW-0006GL-Qf
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:05:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65F2C28;
 Wed,  4 Sep 2019 08:05:19 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 230793F59C;
 Wed,  4 Sep 2019 08:05:13 -0700 (PDT)
Subject: Re: [PATCH v4 02/10] KVM: arm/arm64: Factor out hypercall handling
 from PSCI code
To: kbuild test robot <lkp@intel.com>
References: <20190830084255.55113-3-steven.price@arm.com>
 <201909021437.rO6o0mHc%lkp@intel.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <78c2cce6-19ae-302c-6e5a-3798f658c8e2@arm.com>
Date: Wed, 4 Sep 2019 16:05:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <201909021437.rO6o0mHc%lkp@intel.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_080520_908111_EB81987E 
X-CRM114-Status: GOOD (  19.54  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvm@vger.kernel.org,
 Radim =?unknown-8bit?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, kbuild-all@01.org,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/09/2019 08:06, kbuild test robot wrote:
> Hi Steven,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc6 next-20190830]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Steven-Price/arm64-Stolen-time-support/20190901-185152
> config: i386-randconfig-a002-201935 (attached as .config)
> compiler: gcc-7 (Debian 7.4.0-11) 7.4.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=i386 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from include/kvm/arm_hypercalls.h:7:0,
>                     from <command-line>:0:
>>> arch/x86/include/asm/kvm_emulate.h:349:22: error: 'NR_VCPU_REGS' undeclared here (not in a function)
>      unsigned long _regs[NR_VCPU_REGS];
>                          ^~~~~~~~~~~~

This is because x86's asm/kvm_emulate.h can't be included by itself (and
doesn't even exist on other architectures). This new header file doesn't
make sense to include on x86, so I'll squash in the following to prevent
building the header file except on arm/arm64.

Steve

----8<----
diff --git a/include/Kbuild b/include/Kbuild
index c38f0d46b267..f775ea28716e 100644
--- a/include/Kbuild
+++ b/include/Kbuild
@@ -67,6 +67,8 @@ header-test-			+= keys/big_key-type.h
 header-test-			+= keys/request_key_auth-type.h
 header-test-			+= keys/trusted.h
 header-test-			+= kvm/arm_arch_timer.h
+header-test-$(CONFIG_ARM)	+= kvm/arm_hypercalls.h
+header-test-$(CONFIG_ARM64)	+= kvm/arm_hypercalls.h
 header-test-			+= kvm/arm_pmu.h
 header-test-$(CONFIG_ARM)	+= kvm/arm_psci.h
 header-test-$(CONFIG_ARM64)	+= kvm/arm_psci.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
