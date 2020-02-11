Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AC71597EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npOfKPdQeuQ82uF5wisw18s3zhYkBltT+T3/c8iN5Is=; b=lLr7U/J3zjl2N6
	sOzLZBs8/njxwq5SYMeuMGoKN15O3X4GaoyN1ppERxjMMEIIklUZN2AAlP4KEvUq1w9a3WYv4bbXb
	nPYXjhARcHca2IrmzIIfBFwX6Acugfbjp6aqq6LJmxkf3jfTPHIh+8O4EKjmTPIAk/eOEOlpjcOrW
	75StbSZA9qRKM/DTgZiV577fwjZVd9ZqUR3qXEBVnOhQsmWwTG+6UKVQAlrE2LQ7kBWAkDAPMsLDs
	YGw8X9+GFvXmr3CV4Y8NPZ10U1zJTVLLwnjVK3J0h28DjZaGrVYyRVTfTBLy/iQ1FAYr7Rbtntjcy
	ym2vv/fTYEjLJyJACDRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a47-0001WI-6M; Tue, 11 Feb 2020 18:15:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zim-00039b-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6C4420578;
 Tue, 11 Feb 2020 17:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443595;
 bh=jkEJiw70D7ZC16bY1qatVu4X4hy1ieYoAyg/qR1PBio=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G5TYaHTaVBPzTTV7b/Qc06w+7dCPtYwRuSnSRBohgRy7z8JnBqS3bXNk4/4UK6onI
 inX3m2U1UMtPVGW3FXJWfHeJrrv/Qggp/MThzwlamAeQiEmoXk2zFYcg7iZn73XMMH
 PtCJ/X5YhgU1yHY5Xy6K58DZnRaLUp41tSu1V/ik=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgB-004O7k-Bw; Tue, 11 Feb 2020 17:50:35 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 71/94] KVM: arm64: Introduce accessor for ctxt->sys_reg
Date: Tue, 11 Feb 2020 17:49:15 +0000
Message-Id: <20200211174938.27809-72-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095316_362292_EA56A8AD 
X-CRM114-Status: GOOD (  11.75  )
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

In order to allow the disintegration of the per-vcpu sysreg array,
let's introduce a new helper (ctxt_sys_reg()) that returns the
in-memory copy of a system register, picked from a given context.

__vcpu_sys_reg() is rewritten to use this helper.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_host.h | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 06c4b7aaebab..00748ceb9769 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -468,12 +468,17 @@ struct kvm_vcpu_arch {
 #define vcpu_gp_regs(v)		(&(v)->arch.ctxt.gp_regs)
 
 /*
- * Only use __vcpu_sys_reg if you know you want the memory backed version of a
- * register, and not the one most recently accessed by a running VCPU.  For
- * example, for userspace access or for system registers that are never context
- * switched, but only emulated.
+ * Only use __vcpu_sys_reg/ctxt_sys_reg if you know you want the
+ * memory backed version of a register, and not the one most recently
+ * accessed by a running VCPU.  For example, for userspace access or
+ * for system registers that are never context switched, but only
+ * emulated.
  */
-#define __vcpu_sys_reg(v,r)	((v)->arch.ctxt.sys_regs[(r)])
+#define __ctxt_sys_reg(c,r)	(&(c)->sys_regs[(r)])
+
+#define ctxt_sys_reg(c,r)	(*__ctxt_sys_reg(c,r))
+
+#define __vcpu_sys_reg(v,r)	(ctxt_sys_reg(&(v)->arch.ctxt, (r)))
 
 u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg);
 void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
