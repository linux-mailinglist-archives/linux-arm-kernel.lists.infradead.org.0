Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CB91F5355
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+SHj/1RMymE48eKxcacs+N5X7o2eOVbA4PcrZzGTGk=; b=mvcSmsw96cMc69
	G5hPfAeS6gatzYSy+eD7gXOMCCcSSpBbgw3woGvAz/owkYGJY+CjW4cmDRtW6Svnm5695w2pv4ZQY
	+arhc06YT2NMgI7wDezXCz8e8ns+U25KEfS8zVAVsgHjRTo+S/zFgCf+6v2bBh6qjqLQOamZixQph
	9p8PsPrBUlG9PGehNoufK5ufkfW04YK4zRngpFjsVkS4RgUCpnhBIj+QNYe5m8ADloJDARMllOXMK
	13rMiq7fpsAk+FMaRWdYcFznmQGKk6gIlCFEwLAqe2s+F72gthFsLn4e3FX0zSxCtCClzgU8POs6X
	JqgB4O+W2TnUGjPnZwzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiz0o-0007PI-DN; Wed, 10 Jun 2020 11:35:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiyzq-0006jg-5a
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:34:19 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5E6420760;
 Wed, 10 Jun 2020 11:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591788857;
 bh=/Y2n7mh6J7qge+yb7uf2/26y9v3szN7Yyb7XyJnJfiU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2o1TioCfOCUpxyCEkhD2T3u4rcGK0ces6J+4y/9i0RuD5HVWJRC0AKmXDkK2VhoL9
 kXTUAqN2vUPP6LUZyAdRG/XYPeBpWU8arSSifhgKOdX3wlYzHlRjXExPhMdOxt6tgI
 ObD66mTj1QD7BPujKItC8tye7N+j96ssVBq+FHTE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiyzo-001lrp-AO; Wed, 10 Jun 2020 12:34:16 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/4] KVM: arm64: Stop sparse from moaning at
 __hyp_this_cpu_ptr
Date: Wed, 10 Jun 2020 12:34:05 +0100
Message-Id: <20200610113406.1493170-4-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610113406.1493170-1-maz@kernel.org>
References: <20200610113406.1493170-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, will@kernel.org,
 catalin.marinas@arm.com, mark.rutland@arm.com, ascull@google.com,
 kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_043418_241737_789D9708 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sparse complains that __hyp_this_cpu_ptr() returns something
that is flagged noderef and not in the correct address space
(both being the result of the __percpu annotation).

Pretend that __hyp_this_cpu_ptr() knows what it is doing by
forcefully casting the pointer with __kernel __force.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---

Notes:
    v2: Add __verify_pcpu_ptr() as suggested by Andrew Scull.

 arch/arm64/include/asm/kvm_asm.h | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 0c9b5fc4ba0a..d9b7da15dbca 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -81,12 +81,19 @@ extern u32 __kvm_get_mdcr_el2(void);
 
 extern char __smccc_workaround_1_smc[__SMCCC_WORKAROUND_1_SMC_SZ];
 
-/* Home-grown __this_cpu_{ptr,read} variants that always work at HYP */
+/*
+ * Home-grown __this_cpu_{ptr,read} variants that always work at HYP,
+ * provided that sym is really a *symbol* and not a pointer obtained from
+ * a data structure. As for SHIFT_PERCPU_PTR(), the creative casting keeps
+ * sparse quiet.
+ */
 #define __hyp_this_cpu_ptr(sym)						\
 	({								\
-		void *__ptr = hyp_symbol_addr(sym);			\
+		void *__ptr;						\
+		__verify_pcpu_ptr(&sym);				\
+		__ptr = hyp_symbol_addr(sym);				\
 		__ptr += read_sysreg(tpidr_el2);			\
-		(typeof(&sym))__ptr;					\
+		(typeof(sym) __kernel __force *)__ptr;			\
 	 })
 
 #define __hyp_this_cpu_read(sym)					\
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
