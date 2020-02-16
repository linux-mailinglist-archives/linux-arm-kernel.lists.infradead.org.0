Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409A21605A2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmK+6iDXm7QjoV4BSQrMccliM3JlbomMkfDXRf7ZsJM=; b=uIkTAyMQ9p0pxw
	WZ5Q9GpuKfWZ3TWGlB8Nrx0qASXxKZtmrZNqUx3AdEq+DDMavce0UYK7+pDqWP1QN+vpPp5gaRbgZ
	cahMYx+NiklvyM2zKZ6ursf0gzPh4UDQvsuGmfSVYDrevibA4P88l2cR6De2zocOpNZhtt6+m8zXv
	udvnFYvSYYw6NvI74uQZ84cJtgPG64zk0MhqsFnhHXT5HPcxcoms2pB+qohnLDn5ItCVcSaviTwlu
	lisNCdp+7VcJXi6hjzRfIbleo6waPUZKoosspHQF+lidxP4fJeHmXLNUvavZDoy8PbR9NCasy/RL9
	uHa7uve2fL2Y55iNJ1nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3P4T-00040x-7U; Sun, 16 Feb 2020 18:55:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3P30-0002wS-82
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:53:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD98524125;
 Sun, 16 Feb 2020 18:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581879221;
 bh=oXOY45B0ay/QrkVsrHg4dNSnoA3eobeplPmN8P58bQg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TxpmM6AmMudS9VIjtp5puwQ26etTs9NujwgtEHtPCDV011pPUdT9E8xwCn38Umawf
 py212W7AUT8MuEZf5ikqL9+L1EdUDHf4o3C5xstd3PoxaqFZeX5Btrzz3QcJqJlwai
 F+Ff6HKL3nr4N7TPF8F/3GKU7z25YuHFw/RqgRYQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3P2y-005iWD-55; Sun, 16 Feb 2020 18:53:40 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 5/5] KVM: arm64: Upgrade PMU support to ARMv8.4
Date: Sun, 16 Feb 2020 18:53:24 +0000
Message-Id: <20200216185324.32596-6-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200216185324.32596-1-maz@kernel.org>
References: <20200216185324.32596-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, peter.maydell@linaro.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_105342_322278_E820A880 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Maydell <peter.maydell@linaro.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Upgrading the PMU code from ARMv8.1 to ARMv8.4 turns out to be
pretty easy. All that is required is support for PMMIR_EL1, which
is read-only, and for which returning 0 is a valid option.

Let's just do that and adjust what we return to the guest.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/sysreg.h | 2 ++
 arch/arm64/kvm/sys_regs.c       | 9 ++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index b91570ff9db1..16d91ed51d06 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -312,6 +312,8 @@
 #define SYS_PMINTENSET_EL1		sys_reg(3, 0, 9, 14, 1)
 #define SYS_PMINTENCLR_EL1		sys_reg(3, 0, 9, 14, 2)
 
+#define SYS_PMMIR_EL1			sys_reg(3, 0, 9, 14, 6)
+
 #define SYS_MAIR_EL1			sys_reg(3, 0, 10, 2, 0)
 #define SYS_AMAIR_EL1			sys_reg(3, 0, 10, 3, 0)
 
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 43087b50a211..4eee61fb94be 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1097,9 +1097,11 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
 		/* Limit debug to ARMv8.0 */
 		val &= ~FEATURE(ID_AA64DFR0_DEBUGVER);
 		val |= FIELD_PREP(FEATURE(ID_AA64DFR0_DEBUGVER), 6);
-		/* Limit PMU to ARMv8.1 */
-		val &= ~FEATURE(ID_AA64DFR0_PMUVER);
-		val |= FIELD_PREP(FEATURE(ID_AA64DFR0_PMUVER), 4);
+		/* Limit PMU to ARMv8.4 */
+		if (FIELD_GET(FEATURE(ID_AA64DFR0_PMUVER), val) > 5) {
+			val &= ~FEATURE(ID_AA64DFR0_PMUVER);
+			val |= FIELD_PREP(FEATURE(ID_AA64DFR0_PMUVER), 5);
+		}
 		break;
 	}
 
@@ -1524,6 +1526,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 
 	{ SYS_DESC(SYS_PMINTENSET_EL1), access_pminten, reset_unknown, PMINTENSET_EL1 },
 	{ SYS_DESC(SYS_PMINTENCLR_EL1), access_pminten, NULL, PMINTENSET_EL1 },
+	{ SYS_DESC(SYS_PMMIR_EL1), trap_raz_wi },
 
 	{ SYS_DESC(SYS_MAIR_EL1), access_vm_reg, reset_unknown, MAIR_EL1 },
 	{ SYS_DESC(SYS_AMAIR_EL1), access_vm_reg, reset_amair_el1, AMAIR_EL1 },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
