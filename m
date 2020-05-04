Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C811C3B09
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Zenx/9gVVdVFRSrKahjD1oMcVAFLuVd2c9deq5h4og=; b=rLSPTqPBInIBS1
	v2t5OLA8WypdS30wsw1reuuCbHbj1VUpCUbH8+pLzreOrHDXHKy1ZSzRUIb7ohcruw965cil5DuWM
	7yrT2W7KIdA422kg9h/mhAK5ChLXQ2iBQC2VA/WhGCeGnp4ladif6MgAhziRmSQR6NqRfJNWTFS4a
	JAGpQ4fxSAMQXsQ/8OrcSuB4tIxNuSAQ8XBO6sYKoR4VXQiU2vf1MPMjUHxnsrv5uRW5R9S5qnWyu
	yONRw2YS4ImFDSL5TFy+inhU4GoxkorMmcta6AKYxZf1lcBhNmQaQUtxWlptXNla/xdpoGn+ZOT6C
	9ZkEeZZ2BpXaCyX966dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVavu-0007N5-61; Mon, 04 May 2020 13:14:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVauq-0006ZE-Cu
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:13:49 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FA9320721;
 Mon,  4 May 2020 13:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588598028;
 bh=jOqEoNPHdhug9IEbGhnztifeoYjd6oIaNPCOCDZHYcg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MDpvDNdD1uEZQWclw9Mw39WZ4+6EnIpfhP9JmGyBKSd9Swji2c79gQgNb/xuD79ek
 P8VwjQBrhZegsR7Ik2N/NZLaTbmURXteZn7lt/NPhmKKCyknmQHeY5v9t4eyFQthW4
 tRguzPTuMCB0Dc6WeY21aBr6HhAEqod4Hr7cyHB8=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v4 4/4] arm64: insn: Report PAC and BTI instructions as
 skippable
Date: Mon,  4 May 2020 14:13:26 +0100
Message-Id: <20200504131326.18290-5-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504131326.18290-1-broonie@kernel.org>
References: <20200504131326.18290-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_061348_465126_52D9ABD7 
X-CRM114-Status: UNSURE (   8.39  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PAC and BTI instructions can be safely skipped so report them as
such, allowing them to be probed.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/insn.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 15c3f0643e3b..6439af794ec4 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -57,6 +57,23 @@ bool __kprobes aarch64_insn_is_steppable_hint(u32 insn)
 		return false;
 
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
