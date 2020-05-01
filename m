Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD571C1248
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/YFSi0IuwTw16q5I8TC1oUIoUY8JDH8PBziLY8sjkU=; b=C2xBW8Y6cRyErE
	zc8dYKbqN46MvUuoKls84X/fTVFx5oebDFTWaMGtkcojTq3nG0k6ZCMhBQBcAQuQQlP6CpsuO5/5M
	RHTe0aUQpX2B5MTJKk/7Np5gvKSnuYQRJq+qCmkzTH+E91F+oXiL7GOMwYgw8jIiOLPxklpSJwBH0
	syche8dS4cx1mm7m/42ZZ1iVrCRnUbrNw6cxOWLpE6Zz3Sl7uqGoy3Sac/e957StlawwZTyrEAuxX
	DQEeKjGFyo1/vNR0xXiz8yOjPzl9bnXuSL5FqEZ+MnMI4li5nIWXPY++YON8/ZSLqpDX1suKtYii2
	+mf8wkibnO+u9TSzkghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUvm-0002yM-Cl; Fri, 01 May 2020 12:38:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUv1-0002Qq-92
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:37:28 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 343EA2173E;
 Fri,  1 May 2020 12:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588336646;
 bh=iccpXYOvzjO2FzrL43wWAAHHMWDd7FCG3O98/HosRfU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eoTx6VztnjsdtfFs7PzdHunMLAJ/k1U2UpMeTWlcNppPZhxMCFCw//gRsQ7XwUCP4
 Jz+yg4kwbEJjX3IcZhEHXx9uX4GXvt0Lj7okVeuoul9lmL8poDDSBJQRWDCAGPEKCZ
 f9oEIlyySCqXNc9x0fQ8xvLWaLr+VNjvHHjL1I10=
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 3/3] arm64: insn: Report PAC and BTI instructions as NOPs
Date: Fri,  1 May 2020 13:37:09 +0100
Message-Id: <20200501123709.6640-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501123709.6640-1-broonie@kernel.org>
References: <20200501123709.6640-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_053727_338048_DF86EA19 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

In order to allow probing of PAC and BTI instructions without more
specialized support recognize them as NOPs.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/insn.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index d458604a96a3..aa525975bf94 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -57,7 +57,30 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
 	if (!aarch64_insn_is_hint(insn))
 		return false;
 
+	/*
+	 * The PAC and BTI instructons are not strictly NOPs but until
+	 * better support is added we can treat them as such and they
+	 * are commonly placed in locations where it is useful to be
+	 * able to probe.
+	 */
 	switch (insn & 0xFE0) {
+	case AARCH64_INSN_HINT_XPACLRI:
+	case AARCH64_INSN_HINT_PACIA_1716:
+	case AARCH64_INSN_HINT_PACIB_1716:
+	case AARCH64_INSN_HINT_AUTIA_1716:
+	case AARCH64_INSN_HINT_AUTIB_1716:
+	case AARCH64_INSN_HINT_PACIAZ:
+	case AARCH64_INSN_HINT_PACIASP:
+	case AARCH64_INSN_HINT_PACIBZ:
+	case AARCH64_INSN_HINT_PACIBSP:
+	case AARCH64_INSN_HINT_AUTIAZ:
+	case AARCH64_INSN_HINT_AUTIASP:
+	case AARCH64_INSN_HINT_AUTIBZ:
+	case AARCH64_INSN_HINT_AUTIBSP:
+	case AARCH64_INSN_HINT_BTI:
+	case AARCH64_INSN_HINT_BTIC:
+	case AARCH64_INSN_HINT_BTIJ:
+	case AARCH64_INSN_HINT_BTIJC:
 	case AARCH64_INSN_HINT_NOP:
 		return true;
 	default:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
