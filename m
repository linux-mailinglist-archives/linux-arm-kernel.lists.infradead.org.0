Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD05159757
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:55:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8na9ZzGasOVbE347oLw11oiyactQMF24oopkzXmtnO8=; b=prwhZGuId36pqd
	OvtawOD5Ajz+r2B9xlC6IVhU4/i/PL2LeLKrGCoAEnQpt2mV6/vHl+KXFdN/dtKttbN8vh3tQlrBd
	zFCjCKmRdxJF8NlorspJAaAiybBp6fdkiZnaLHT9t8elgyDXBUQo75WkJSSGA7bfuEtfBYYIjLfkU
	oNvDfu4hBZVMpEqmbUI9Rs5ctzhC44H8dQFcalJnuYmmeLhhxK+TM5Rps6/8tP8ZWaNGfK4qxn4R/
	SJ7O4TGuG//YSKZgsyJpsaJxaBOwq2jd/oEz/PY7/xEzHnBykygTyGVoMk6NqhnPi3r+iRISOmjsw
	hEmubbbOZr9OAgB1jsrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZkS-0004Ak-8v; Tue, 11 Feb 2020 17:55:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zgd-0001FL-Ex
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:05 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2B2F206D6;
 Tue, 11 Feb 2020 17:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443463;
 bh=DnEk8Srn6GGdbVyC4cRzgxf2uqwN2HhfVy7YNKf3UHo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0ZioPLjitsAi9vePoTs52/mSTPgJlD3rFNzudTpx0sSey/TeOsWr4Uy1/hTXAFzEx
 GKbAXf6qK80yAsJbvJHqa6eBCLhPxHx6T3jW0B+88hvdYaImyn0P1QY8OySJf8JQKM
 fmajYC14r3vUKvVB/zmJqf/JovUXu+ywDdbjWYFY=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfx-004O7k-1n; Tue, 11 Feb 2020 17:50:21 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 47/94] KVM: arm64: nv: Handle traps for timer _EL02 and
 _EL2 sysregs accessors
Date: Tue, 11 Feb 2020 17:48:51 +0000
Message-Id: <20200211174938.27809-48-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095103_581077_C6159BF5 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

Add trap handlers for the timer system registers accessed from a guest
hypervisors using either _EL02 or _EL2 system register access
instructions.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Jintack Lim <jintack@cs.columbia.edu>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/sysreg.h |  6 ++++++
 arch/arm64/kvm/sys_regs.c       | 15 +++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index bf465ddde59e..92c97a19369e 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -496,6 +496,12 @@
 
 #define SYS_CNTVOFF_EL2			sys_reg(3, 4, 14, 0, 3)
 #define SYS_CNTHCTL_EL2			sys_reg(3, 4, 14, 1, 0)
+#define SYS_CNTHP_TVAL_EL2		sys_reg(3, 4, 14, 2, 0)
+#define SYS_CNTHP_CTL_EL2		sys_reg(3, 4, 14, 2, 1)
+#define SYS_CNTHP_CVAL_EL2		sys_reg(3, 4, 14, 2, 2)
+#define SYS_CNTHV_TVAL_EL2		sys_reg(3, 4, 14, 3, 0)
+#define SYS_CNTHV_CTL_EL2		sys_reg(3, 4, 14, 3, 1)
+#define SYS_CNTHV_CVAL_EL2		sys_reg(3, 4, 14, 3, 2)
 
 /* VHE encodings for architectural EL0/1 system registers */
 #define SYS_SCTLR_EL12			sys_reg(3, 5, 1, 0, 0)
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 527319ff83f1..5d9ca3988745 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2078,6 +2078,13 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_CNTVOFF_EL2), access_rw, reset_val, CNTVOFF_EL2, 0 },
 	{ SYS_DESC(SYS_CNTHCTL_EL2), access_rw, reset_val, CNTHCTL_EL2, 0 },
 
+	{ SYS_DESC(SYS_CNTHP_TVAL_EL2), access_arch_timer },
+	{ SYS_DESC(SYS_CNTHP_CTL_EL2), access_arch_timer },
+	{ SYS_DESC(SYS_CNTHP_CVAL_EL2), access_arch_timer },
+	{ SYS_DESC(SYS_CNTHV_TVAL_EL2), access_arch_timer },
+	{ SYS_DESC(SYS_CNTHV_CTL_EL2), access_arch_timer },
+	{ SYS_DESC(SYS_CNTHV_CVAL_EL2), access_arch_timer },
+
 	{ SYS_DESC(SYS_SCTLR_EL12), access_vm_reg, reset_val, SCTLR_EL1, 0x00C50078 },
 	{ SYS_DESC(SYS_CPACR_EL12), access_rw, reset_val, CPACR_EL1, 0 },
 	{ SYS_DESC(SYS_TTBR0_EL12), access_vm_reg, reset_unknown, TTBR0_EL1 },
@@ -2095,6 +2102,14 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_CONTEXTIDR_EL12), access_vm_reg, reset_val, CONTEXTIDR_EL1, 0 },
 	{ SYS_DESC(SYS_CNTKCTL_EL12), access_rw, reset_val, CNTKCTL_EL1, 0 },
 
+	{ SYS_DESC(SYS_CNTP_TVAL_EL02), access_arch_timer },
+	{ SYS_DESC(SYS_CNTP_CTL_EL02), access_arch_timer },
+	{ SYS_DESC(SYS_CNTP_CVAL_EL02), access_arch_timer },
+
+	{ SYS_DESC(SYS_CNTV_TVAL_EL02), access_arch_timer },
+	{ SYS_DESC(SYS_CNTV_CTL_EL02), access_arch_timer },
+	{ SYS_DESC(SYS_CNTV_CVAL_EL02), access_arch_timer },
+
 	{ SYS_DESC(SYS_SP_EL2), NULL, reset_unknown, SP_EL2 },
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
