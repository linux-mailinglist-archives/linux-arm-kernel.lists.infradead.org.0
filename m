Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322431703A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hem1iDOOhQ+9lOEv4pMoTerfKM8BwuQOAG72pEAbklc=; b=P4UlEIL88UF/X2
	gOWyejogw10VoM+c/d9ecLOO81HpVIwwBUjVfH7sYVLMFheZ/NKd1SE1cyWM4VpGSEYH45qykzcaZ
	uTNls1+wiXVeAVDSh7p3KUxDBOYmVgTId2BPT5hLrH5wPkHx7z52VWIACwlzN7tCWyZswwLGDT2zx
	cqsFnMF2Lx8dc+kSpe47TB+1pNgNpZj5Yonk7mJoJ2ZW16cfeT1q7US+Ryjp6szQzugmQ7Hu+pnG3
	+33TtppMPhJzip8lriX7tqrtGBGeUBtNQN1J4pNvtZFZRH0D5CjYzn7KEAMfFtFO3t2zSI6qIqKQh
	G+MfEiKG9n81ilmryDGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6z7L-0004Ky-NK; Wed, 26 Feb 2020 16:00:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6z4F-0000Nj-3T
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:57:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E9BA30E;
 Wed, 26 Feb 2020 07:57:46 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7CB483F819;
 Wed, 26 Feb 2020 07:57:45 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v7 10/11] KVM: arm64: BTI: Reset BTYPE when skipping emulated
 instructions
Date: Wed, 26 Feb 2020 15:57:13 +0000
Message-Id: <20200226155714.43937-11-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200226155714.43937-1-broonie@kernel.org>
References: <20200226155714.43937-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_075747_265113_1B140326 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

Since normal execution of any non-branch instruction resets the
PSTATE BTYPE field to 0, so do the same thing when emulating a
trapped instruction.

Branches don't trap directly, so we should never need to assign a
non-zero value to BTYPE here.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Acked-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/kvm_emulate.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 688c63412cc2..dee51c1dcb93 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -506,10 +506,12 @@ static inline unsigned long vcpu_data_host_to_guest(struct kvm_vcpu *vcpu,
 
 static inline void kvm_skip_instr(struct kvm_vcpu *vcpu, bool is_wide_instr)
 {
-	if (vcpu_mode_is_32bit(vcpu))
+	if (vcpu_mode_is_32bit(vcpu)) {
 		kvm_skip_instr32(vcpu, is_wide_instr);
-	else
+	} else {
 		*vcpu_pc(vcpu) += 4;
+		*vcpu_cpsr(vcpu) &= ~PSR_BTYPE_MASK;
+	}
 
 	/* advance the singlestep state machine */
 	*vcpu_cpsr(vcpu) &= ~DBG_SPSR_SS;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
