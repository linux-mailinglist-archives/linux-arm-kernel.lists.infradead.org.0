Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFD11BC693
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRd/3sya2SM9r+ulhqiFQqyDvvSjPYwPvnWEKG+WC20=; b=f8D4qkLuCzxWs1
	SO7z3QjUoHqStu1LkB2et0LovXr+klD+1b+nh7Sq5op+8kCFF8VPmrKeoKMT/jdsR0yM+j3bKfR8C
	vZEONNPZn7C0NQ1c5TtRv18u3Ff4YtNddTrYQF6kRD1kv0aUrWFeK9drxvpurf0s0bcpPyUd8dkLY
	71E+4rra6L+KZR1yfaYxIFIhEKygh7DDklY2vYqwGS8d5bimP8hCn21XZJwbz9ovbu9Oc3D43qu7X
	tUGsnstMhVxKzT4xYfxXq3clXJNnnj4ORxeDt6VWaJqUF9dNI0MWp3P8ubKQSm0RD5ssDa2GS2WWR
	1LE/vGtecRcBANrvA/qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTzV-0000Yb-Uo; Tue, 28 Apr 2020 17:25:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTyR-0005w8-DS
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:24:50 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6590C2082E;
 Tue, 28 Apr 2020 17:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588094684;
 bh=BTBvxvnYPmjX7jnrlowd5PXeLqXklOHbG19nzzE8a1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IgCmugG7Pkbt841g5YB71nl2Q+QmAO+aGtTD/op+8FG+dA2PAYA8FENAaMNrpnQG9
 sk5Lh7gTmg+qKtLou4u4C3XQmYOrNa/8dZZsLlehBPt+M8dW6GCosTIsBcKxBCS+JQ
 KQ7UovOxLC6MyWRxmENUXWvbbBYFwqOXgtbDZYiQ=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 2/3] arm64: insn: Add constants for PAC and BTI instruction
 decode
Date: Tue, 28 Apr 2020 18:24:32 +0100
Message-Id: <20200428172433.48830-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428172433.48830-1-broonie@kernel.org>
References: <20200428172433.48830-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_102447_876107_BBCE9833 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add constants for decoding the various PAC and BTI instructions defined
in the HINT space. Since we are now decoding both the op2 and CRm fields
rename the enum as well; this is compatible with what the existing users
are doing.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/insn.h | 22 ++++++++++++++++++++--
 arch/arm64/kernel/insn.c      |  2 +-
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index bb313dde58a4..e5a87f98a548 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -39,13 +39,31 @@ enum aarch64_insn_encoding_class {
 					 * system instructions */
 };
 
-enum aarch64_insn_hint_op {
+enum aarch64_insn_hint_cr_op {
 	AARCH64_INSN_HINT_NOP	= 0x0 << 5,
 	AARCH64_INSN_HINT_YIELD	= 0x1 << 5,
 	AARCH64_INSN_HINT_WFE	= 0x2 << 5,
 	AARCH64_INSN_HINT_WFI	= 0x3 << 5,
 	AARCH64_INSN_HINT_SEV	= 0x4 << 5,
 	AARCH64_INSN_HINT_SEVL	= 0x5 << 5,
+
+	AARCH64_INSN_HINT_PACIA_1716 = 0x08 << 5,
+	AARCH64_INSN_HINT_PACIB_1716 = 0x0A << 5,
+	AARCH64_INSN_HINT_AUTIA_1716 = 0x0B << 5,
+	AARCH64_INSN_HINT_AUTIB_1716 = 0x0C << 5,
+	AARCH64_INSN_HINT_PACIAZ     = 0x18 << 5,
+	AARCH64_INSN_HINT_PACIASP    = 0x19 << 5,
+	AARCH64_INSN_HINT_PACIBZ     = 0x1A << 5,
+	AARCH64_INSN_HINT_PACIBSP    = 0x1B << 5,
+	AARCH64_INSN_HINT_AUTIAZ     = 0x1C << 5,
+	AARCH64_INSN_HINT_AUTIASP    = 0x1D << 5,
+	AARCH64_INSN_HINT_AUTIBZ     = 0x1E << 5,
+	AARCH64_INSN_HINT_AUTIBSP    = 0x1F << 5,
+
+	AARCH64_INSN_HINT_BTI   = 0x20 << 5,
+	AARCH64_INSN_HINT_BTIC  = 0x22 << 5,
+	AARCH64_INSN_HINT_BTIJ  = 0x24 << 5,
+	AARCH64_INSN_HINT_BTIJC = 0x2C << 5,
 };
 
 enum aarch64_insn_imm_type {
@@ -370,7 +388,7 @@ u32 aarch64_insn_gen_comp_branch_imm(unsigned long pc, unsigned long addr,
 				     enum aarch64_insn_branch_type type);
 u32 aarch64_insn_gen_cond_branch_imm(unsigned long pc, unsigned long addr,
 				     enum aarch64_insn_condition cond);
-u32 aarch64_insn_gen_hint(enum aarch64_insn_hint_op op);
+u32 aarch64_insn_gen_hint(enum aarch64_insn_hint_cr_op op);
 u32 aarch64_insn_gen_nop(void);
 u32 aarch64_insn_gen_branch_reg(enum aarch64_insn_register reg,
 				enum aarch64_insn_branch_type type);
diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 535a3a7a053e..fd77cdd87c47 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -570,7 +570,7 @@ u32 aarch64_insn_gen_cond_branch_imm(unsigned long pc, unsigned long addr,
 					     offset >> 2);
 }
 
-u32 __kprobes aarch64_insn_gen_hint(enum aarch64_insn_hint_op op)
+u32 __kprobes aarch64_insn_gen_hint(enum aarch64_insn_hint_cr_op op)
 {
 	return aarch64_insn_get_hint_value() | op;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
