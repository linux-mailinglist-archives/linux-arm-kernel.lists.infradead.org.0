Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F93C191A4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 20:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wq8mOkLgFwmGMIRBzOIoEml1BfJzxWImVhdg0oklqGw=; b=H7jT2l+Yx/B1nm
	/O2veBIuzs8Jbir/VKU7y97o/RVWzPGfJ/u5BLZ2Kowy3C6Ndg3PS9Kb8Ohm9J2VQJFf6fyrwushT
	BSEK+Umc1BIayfM6kfi0/HjmzJtXlrCIaACUiYD+Sc+nLbRG2AiCjZjO/uukGzE4sv5YaF+mLHfx/
	eWb2ngmwuxozNSRpdi5heJR8jIbTrQLH1lnHcc0wIJ0trn4UOuyRVoUapbd2nN1SCO7gHaWo41wLU
	LZrMnWnIZKxe7uiZnO1colrAyCZkovWwgVxA5Ij63fun3WNAIyvebkVVNJd5Xf4gI2Hbk/AcyLPiC
	UurwqY/US0VTjkwQRVLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpYF-0005fo-HA; Tue, 24 Mar 2020 19:49:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpXM-0004ty-T9
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 19:48:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4529031B;
 Tue, 24 Mar 2020 12:48:32 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBC2C3F71F;
 Tue, 24 Mar 2020 12:48:31 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 3/3] arm64: insn: Report PAC and BTI instructions as NOPs
Date: Tue, 24 Mar 2020 19:48:22 +0000
Message-Id: <20200324194822.15682-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324194822.15682-1-broonie@kernel.org>
References: <20200324194822.15682-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_124832_984493_15E3A0B3 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to allow probing of PAC and BTI instructions without more
specialized support recognize them as NOPs.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/insn.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index fd77cdd87c47..82afc582d29a 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -57,7 +57,27 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
 	if (!aarch64_insn_is_hint(insn))
 		return false;
 
+	/*
+	 * The PAC and BTI instructons are not strictly NOPs but until
+	 * better support is added we can treat them as such.
+	 */
 	switch (insn & 0xFE0) {
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
