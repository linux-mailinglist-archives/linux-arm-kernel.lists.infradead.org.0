Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086021E4B39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=btBc7+lNDVec7EHTrXviEV69zgxeg33d15vioZjRIGk=; b=rAbaP/YrSc3MqUdx9KRnFPyeuD
	u56basY1Ij+RQ7+EODXqRH/Kk3fhj48eci3VFy0rh2LKrkXTpGF/x1nTCaCLue+qcflSBGLLkbxrm
	f0KTRkvmp/dnEqtO3htRESW39y9AuC7BvlmFOZC2WtJqhxzdKnBEyW9jOeGYoh0dfiTFA6oujqnxU
	LS9mTy0rC0pppSTzyZbl1iD/BXQrGC7b5AUxP09hr1mtcakd5Xm8zsk00cEoZ7QJj8mRYbFfnUMup
	e/c7qZjA/UqWThigcE3nEBmYoCUV6IyAmZc1GTmI9RlUMHpPTGrCvCy0XBuXixzh1dQUPJCo950oN
	2OXO8euA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzNd-00008Y-Pl; Wed, 27 May 2020 16:58:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzNR-00007p-85
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:58:02 +0000
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64FD82088E;
 Wed, 27 May 2020 16:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590598680;
 bh=hVDbqyunzoY5eUjoD+ZZlE5Jv2a7JNgahubQFoF36cU=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=v9VY/fJ11OaNqD+cUZB7csfy2So+3PZ4DSS78XzUlw22ujaY2vlJ3YVTo8nrSgHMD
 CUmew/bRAoIHF1FN0nIwiasKvoI66+vMJm6uSCsY4H0hL/jauhPL2Nz3HQ6moyG1mz
 k+T3K3vAaqy+PM1+s1x0TmJYtuOhEC8i0MflrMQA=
Date: Wed, 27 May 2020 16:57:59 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: James Morse <james.morse@arm.com>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
In-Reply-To: <20200526161834.29165-2-james.morse@arm.com>
References: <20200526161834.29165-2-james.morse@arm.com>
Message-Id: <20200527165800.64FD82088E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_095801_323750_988A3B1E 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Marc Zyngier <maz@kernel.org>, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.6.14, v5.4.42, v4.19.124, v4.14.181, v4.9.224, v4.4.224.

v5.6.14: Build OK!
v5.4.42: Build OK!
v4.19.124: Failed to apply! Possible dependencies:
    f7f2b15c3d42 ("arm64: KVM: Expose sanitised cache type register to guest")

v4.14.181: Failed to apply! Possible dependencies:
    005781be127f ("arm64: KVM: Move CPU ID reg trap setup off the world switch path")
    93390c0a1b20 ("arm64: KVM: Hide unsupported AArch64 CPU features from guests")
    f7f2b15c3d42 ("arm64: KVM: Expose sanitised cache type register to guest")

v4.9.224: Failed to apply! Possible dependencies:
    005781be127f ("arm64: KVM: Move CPU ID reg trap setup off the world switch path")
    016f98afd050 ("irqchip/gic-v3: Use nops macro for Cavium ThunderX erratum 23154")
    0d449541c185 ("KVM: arm64: use common invariant sysreg definitions")
    0e9884fe63c6 ("arm64: sysreg: subsume GICv3 sysreg definitions")
    14ae7518dd55 ("arm64: sysreg: add register encodings used by KVM")
    47863d41ecf8 ("arm64: sysreg: sort by encoding")
    82e0191a1aa1 ("arm64: Support systems without FP/ASIMD")
    851050a573e1 ("KVM: arm64: Use common sysreg definitions")
    93390c0a1b20 ("arm64: KVM: Hide unsupported AArch64 CPU features from guests")
    bca8f17f57bd ("arm64: Get rid of asm/opcodes.h")
    c7a3c61fc606 ("arm64: sysreg: add performance monitor registers")
    c9a3c58f01fb ("KVM: arm64: Add the EL1 physical timer access handler")
    cd9e1927a525 ("arm64: Work around broken .inst when defective gas is detected")
    f7f2b15c3d42 ("arm64: KVM: Expose sanitised cache type register to guest")

v4.4.224: Failed to apply! Possible dependencies:
    005781be127f ("arm64: KVM: Move CPU ID reg trap setup off the world switch path")
    06282fd2c2bf ("arm64: KVM: Implement vgic-v2 save/restore")
    068a17a5805d ("arm64: mm: create new fine-grained mappings at boot")
    072f0a633838 ("arm64: Introduce raw_{d,i}cache_line_size")
    0a28714c53fd ("arm64: Use PoU cache instr for I/D coherency")
    116c81f427ff ("arm64: Work around systems with mismatched cache line sizes")
    1431af367e52 ("arm64: KVM: Implement timer save/restore")
    157962f5a8f2 ("arm64: decouple early fixmap init from linear mapping")
    1e48ef7fcc37 ("arm64: add support for building vmlinux as a relocatable PIE binary")
    2a803c4db615 ("arm64: head.S: use memset to clear BSS")
    57f4959bad0a ("arm64: kernel: Add support for User Access Override")
    6d6ec20fcf28 ("arm64: KVM: Implement system register save/restore")
    7b7293ae3dbd ("arm64: Fold proc-macros.S into assembler.h")
    82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")
    82e0191a1aa1 ("arm64: Support systems without FP/ASIMD")
    8eb992674c9e ("arm64: KVM: Implement debug save/restore")
    910917bb7db0 ("arm64: KVM: Map the kernel RO section into HYP")
    93390c0a1b20 ("arm64: KVM: Hide unsupported AArch64 CPU features from guests")
    9e8e865bbe29 ("arm64: unify idmap removal")
    a0bf9776cd0b ("arm64: kvm: deal with kernel symbols outside of linear mapping")
    a7f8de168ace ("arm64: allow kernel Image to be loaded anywhere in physical memory")
    ab893fb9f1b1 ("arm64: introduce KIMAGE_VADDR as the virtual base of the kernel region")
    adc9b2dfd009 ("arm64: kernel: Rework finisher callback out of __cpu_suspend_enter()")
    b3122023df93 ("arm64: Fix an enum typo in mm/dump.c")
    b97b66c14b96 ("arm64: KVM: Implement guest entry")
    be901e9b15cd ("arm64: KVM: Implement the core world switch")
    c1a88e9124a4 ("arm64: kasan: avoid TLB conflicts")
    c76a0a6695c6 ("arm64: KVM: Add a HYP-specific header file")
    d5370f754875 ("arm64: prefetch: add alternative pattern for CPUs without a prefetcher")
    f68d2b1b73cc ("arm64: KVM: Implement vgic-v3 save/restore")
    f7f2b15c3d42 ("arm64: KVM: Expose sanitised cache type register to guest")
    f80fb3a3d508 ("arm64: add support for kernel ASLR")
    f9040773b7bb ("arm64: move kernel image to base of vmalloc area")
    fd045f6cd98e ("arm64: add support for module PLTs")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
