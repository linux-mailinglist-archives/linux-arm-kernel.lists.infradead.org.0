Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCBD1BC695
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfDHk+nmYAX9XLn09ubdz9c4FNrFbaAYTQCCwxUkXMU=; b=oaLABVcGN13mMr
	7SBRLm5jn58NZ9OYO60JtlTOGEkm63N7RSZlNhj2dJpqbI6ajY9rdOlvYADXlbyW9RfD3OC0OZDCi
	URFtxHoiJYdTju/Z+TCt5PWWIgds9ldAWU5UwF0fnzz7WRp/xyQ9hvRXOROgZlNG/O6QcgcfVq8W/
	Ylw5mMrYxiaDMnvpjJDQpT/BJtCGlNNq3BnXKA61F8LjjPdoQCe6VK/1QyHgdKNSaisorCcavpzmr
	wDIsdv5bms3TnMYeYzRhtdQqmGvWU6Aua2keSus+vMv7/aGVp45EzguDDKK9CPm7Y4sIERRa0Crdr
	vn0NLWVmqaKuzAqRrdBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTzp-0000no-8K; Tue, 28 Apr 2020 17:26:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTyS-0005y1-JJ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:24:50 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D14A208FE;
 Tue, 28 Apr 2020 17:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588094687;
 bh=CsAfCQM9YW9smMQnQOFLHxVQTJeTOI7TuNeVh2H8D2A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D8lQ9R1b2aZntAy+cMnyCJ/S36ozav6OifDuaCrt47cQPUImBX65fwliBedwHeMGq
 Hho/4iK0rlc+1ifExHTYzdYx4PO5HH3MTb3VgMNtzNA0Fh8pFNVjYlraQTbcqHvU47
 ADSVxR9K9h8ay48/8tOue2AX0jHSRvtUKDl1t/OU=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 3/3] arm64: insn: Report PAC and BTI instructions as NOPs
Date: Tue, 28 Apr 2020 18:24:33 +0100
Message-Id: <20200428172433.48830-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428172433.48830-1-broonie@kernel.org>
References: <20200428172433.48830-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_102448_700835_D4D5CAD5 
X-CRM114-Status: UNSURE (   8.65  )
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

In order to allow probing of PAC and BTI instructions without more
specialized support recognize them as NOPs.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
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
