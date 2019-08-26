Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD399D711
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nHYUA/pgCqzKNXQW3j1NOvVluF3JLokTGaZpS0katHc=; b=WVz9nKAKdrqiI6H+30yLepymM
	nwAKguQp9Ycf6x2HqHCOvH66Iw4yqhgheCsDaiGVMBs7oyow8pfb7yHNRevKlH1bn4V7dfnI2HkHG
	kZvOTAF/oQkLLoMlbpm06qZ+Rciq9mQTOyAMf3ooO9H8ggg0LnolPNgeTjJoeRQ9YaGqUU/di0x1I
	Pj/lZ1wb2SBV97NNTew/23svKqwdSgrX22DLtMHaH9BUnMTgabYnj7eEDHKZ/eE7hEMPIvaDYWiea
	Gr+ntbRmvxqJBpGt2Z41b38Hstw0t7p0Bx/Djk32Gl6KNIG/jTaiAMG+T2pIut1vH/alEQonvQZGn
	Oqd8ce/vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2L8A-0003og-0D; Mon, 26 Aug 2019 19:58:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2L7u-0003nu-9x
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:58:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A042337;
 Mon, 26 Aug 2019 12:58:05 -0700 (PDT)
Received: from [10.37.9.91] (unknown [10.37.9.91])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38E2D3F246;
 Mon, 26 Aug 2019 12:58:03 -0700 (PDT)
Subject: Re: [RFC PATCH 5/7] arm64: smp: use generic SMP stop common code
To: Christoph Hellwig <hch@infradead.org>
References: <20190823115720.605-1-cristian.marussi@arm.com>
 <20190823115720.605-6-cristian.marussi@arm.com>
 <20190826153236.GA9591@infradead.org>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <c6a86709-6faf-bf84-08aa-c41dab61c58f@arm.com>
Date: Mon, 26 Aug 2019 20:58:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826153236.GA9591@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_125806_392852_CE5EC7C3 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, peterz@infradead.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 takahiro.akashi@linaro.org, james.morse@arm.com, hidehiro.kawai.ez@hitachi.com,
 tglx@linutronix.de, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 8/26/19 4:32 PM, Christoph Hellwig wrote:
>> +config ARCH_USE_COMMON_SMP_STOP
>> +	def_bool y if SMP
> 
> The option belongs into common code and the arch code shoud only
> select it.
>

In fact that was my first approach, but then I noticed that in kernel/ topdir
there was no generic Kconfig but only subsystem specific ones:

Kconfig.freezer  Kconfig.hz       Kconfig.locks    Kconfig.preempt

while instead looking into archs top level Kconfig, beside the usual arch/Kconfig selects,
I could find this similar sort of "reversed" approach in which the arch defined and
selected a CONFIG which was indeed then used only in common code like in:

20:37 $ egrep -R ARCH_HAS_CACHE_LINE_SIZE .
./arch/arc/Kconfig:config ARCH_HAS_CACHE_LINE_SIZE
./arch/x86/Kconfig:config ARCH_HAS_CACHE_LINE_SIZE
./arch/arm64/Kconfig:config ARCH_HAS_CACHE_LINE_SIZE
./include/linux/cache.h:#ifndef CONFIG_ARCH_HAS_CACHE_LINE_SIZE

20:39 $ egrep -R ARCH_HAS_KEXEC_PURGATORY .
./arch/powerpc/Kconfig:config ARCH_HAS_KEXEC_PURGATORY
./arch/x86/Kconfig:config ARCH_HAS_KEXEC_PURGATORY
./arch/s390/Kconfig:config ARCH_HAS_KEXEC_PURGATORY
./arch/s390/purgatory/Makefile:obj-$(CONFIG_ARCH_HAS_KEXEC_PURGATORY) += kexec-purgatory.o
./arch/s390/Kbuild:obj-$(CONFIG_ARCH_HAS_KEXEC_PURGATORY) += purgatory/
./kernel/kexec_file.c:	if (!IS_ENABLED(CONFIG_ARCH_HAS_KEXEC_PURGATORY))

so I thought it was an acceptable option and I went for it, not to introduce a new kernel/Kconfig.smp
just for this new config option; but in fact I could have missed the real reason underlying these two
different choices.

Thanks

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
