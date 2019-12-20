Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C4A127F03
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JkgtaurXFwuf4sJ7C+vrEzAvgPv8wnBt6hw70KbNd9U=; b=I9g
	B3Wnw0rH97fiWM9kCoT9fYpjmICZw6d3I0TN9qOC+L4bbtw2ois80jXosmjkzAgNfe6Zw83ZZT2Dr
	JLfVz+bGxUBJ07MAGwTYyY/HEjg005gO9dQYu8eWS360J0Qg1h188pGeUZB/54GYDNZIhQnc+4KVB
	PSHW+EAoybRM35j8y78Als+oXsRXRQnVAjZrxxUF7OwjHHwNru3VRXnBdoyFS5HMieCaA/V1PDDk3
	tATJ226q5C76uxco4TS03Hqn+5u/M/r97eCnM5HYJWWyy1VLBmQqW1VPpTlZwC4LTc0YULeTO+Ubg
	5hujKadyb4+zbPdkUov27JMCQfKMxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJqy-0004cF-7u; Fri, 20 Dec 2019 15:06:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJqo-0004bZ-6n
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:05:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 947B630E;
 Fri, 20 Dec 2019 07:05:55 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 29B033F6CF;
 Fri, 20 Dec 2019 07:05:54 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 maz@kernel.org
Subject: [PATCH 0/3] KVM: arm/arm64: exception injection fixes
Date: Fri, 20 Dec 2019 15:05:46 +0000
Message-Id: <20191220150549.31948-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_070558_290007_2F265939 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, peter.maydell@linaro.org,
 drjones@redhat.com, suzuki.poulose@arm.com, will@kernel.org,
 james.morse@arm.com, alexandru.elisei@arm.com, julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While looking at the KVM code, I realised that our exception injection handling
isn't quite right, as it generates the target PSTATE/CPSR from scratch, and
doesn't handle all bits which need to be (conditionally) cleared or set upon
taking an exception.

The first two patches address this for injecting exceptions into AArch64 and
AArch32 contexts respectively. I've tried to organise the code so that it can
easily be audited against the ARM ARM, and/or extended in future if/when new
bits are added to the SPSRs.

While writing the AArch32 portion I also realised that on an AArch64 host we
don't correctly synthesize the SPSR_{abt,und} seen by the guest, as we copy the
value of SPSR_EL2, and the layouts of those SPSRs differ. The third patch
addresses this by explicitly moving bits into the SPSR_{abt,und} layout.

I'd appreciate any testing people could offer, especially for AArch32 guests
and/or AArch32 hosts, which I'm currently ill equipped to test. Ideally we'd
have some unit tests for this.

These issues don't seem to upset contemporary guests, but they do mean that KVM
isn't providing an architecturally compliant environment in all cases, which is
liable to cause issues in future. Given that, and that the patches are fairly
self-contained, I've marked all three patches for stable.

All three patches can be found on my kvm/exception-state branch [1].

Thanks,
Mark.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=kvm/exception-state

Mark Rutland (3):
  KVM: arm64: correct PSTATE on exception entry
  KVM: arm/arm64: correct CPSR on exception entry
  KVM: arm/arm64: correct AArch32 SPSR on exception entry

 arch/arm/include/asm/kvm_emulate.h   |  17 +++++
 arch/arm64/include/asm/kvm_emulate.h |  32 ++++++++++
 arch/arm64/include/asm/ptrace.h      |   1 +
 arch/arm64/include/uapi/asm/ptrace.h |   1 +
 arch/arm64/kvm/inject_fault.c        |  69 +++++++++++++++++++--
 virt/kvm/arm/aarch32.c               | 116 +++++++++++++++++++++++++++++++----
 6 files changed, 218 insertions(+), 18 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
