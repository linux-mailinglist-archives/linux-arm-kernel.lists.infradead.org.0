Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C45441C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0qeJYpoaYpBVPOztrEkDdPXY+Hxmheo1Ucheav+ayjs=; b=Xcri7JCPllKm6t6FHGfUh8hyAE
	8Fy/Y2uzXA6Fo283P7cOJsZ1PSzMUT9THUHvk0CcGRXggTGEWQHu+Yfb4LoPCPy2FxPJ6ANNwNfmi
	JZxR3jHd7qvHg3yxP3pXQt+hjVgWF3D/cHSnDDYZ9gQMn0fFOBnd1/kmZTOSqj+dQojWLsxXniOrO
	tHqWhy2oVvJZOogc/IP9DZsrwTdeA2Do+gsb2waqi+ThcIDrJvu96o2dggCRWdx5RmZw61u7IlT7y
	WAvkXTTdFGB0wgeaWJEA7HuaV4U2sDbXAIuU33gwXciJoH5CturE9V/hOMkJqXHwHHjxSjdiHmu7H
	gIubsDqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSRU-0005k1-Fu; Thu, 13 Jun 2019 16:19:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPZ-0004Bq-3C
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACFCA105A;
 Thu, 13 Jun 2019 09:17:12 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 592533F694;
 Thu, 13 Jun 2019 09:17:11 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 6/8] arm64/sve: Implement an helper to load SVE
 registers from FPSIMD state
Date: Thu, 13 Jun 2019 17:16:54 +0100
Message-Id: <20190613161656.20765-7-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091713_247909_D9138649 
X-CRM114-Status: GOOD (  10.50  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, Julien Grall <julien.grall@arm.com>,
 alex.bennee@linaro.org, Dave.Martin@arm.com, Daniel.Kiss@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In a follow-up patch, we may save the FPSIMD rather than the full SVE
state when the state has to be zeroed on return to userspace (e.g
during a syscall).

Introduce an helper to load SVE vectors from FPSIMD state and zero the rest
of SVE registers.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/include/asm/fpsimd.h  |  3 +++
 arch/arm64/kernel/entry-fpsimd.S | 17 +++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
index fda3544c9606..f07a88552588 100644
--- a/arch/arm64/include/asm/fpsimd.h
+++ b/arch/arm64/include/asm/fpsimd.h
@@ -86,6 +86,9 @@ extern void sve_load_state(void const *state, u32 const *pfpsr,
 
 extern void sve_flush_live(void);
 
+extern void sve_load_from_fpsimd_state(struct user_fpsimd_state const *state,
+				       unsigned long vq_minus_1);
+
 extern unsigned int sve_get_vl(void);
 
 struct arm64_cpu_capabilities;
diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
index 17121a51c41f..35c21a707730 100644
--- a/arch/arm64/kernel/entry-fpsimd.S
+++ b/arch/arm64/kernel/entry-fpsimd.S
@@ -58,6 +58,23 @@ ENTRY(sve_get_vl)
 	ret
 ENDPROC(sve_get_vl)
 
+/*
+ * Load SVE state from FPSIMD state.
+ *
+ * x0 = pointer to struct fpsimd_state
+ * x1 = VQ - 1
+ *
+ * Each SVE vector will be loaded with the first 128-bits taken from FPSIMD
+ * and the rest zeroed. All the other SVE registers will be zeroed.
+ */
+ENTRY(sve_load_from_fpsimd_state)
+		sve_load_vq	x1, x2, x3
+		fpsimd_restore	x0, 8
+ _for n, 0, 15, _sve_pfalse	\n
+		_sve_wrffr 0
+		ret
+ENDPROC(sve_load_from_fpsimd_state)
+
 /* Zero all SVE registers but the first 128-bits of each vector */
 ENTRY(sve_flush_live)
 	sve_flush
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
