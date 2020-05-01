Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9181C1244
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uFomyC8g1BEu5hlKgBb5N6eIk3MLAjdlOwqj++0POQ=; b=RPCZwRBUmvrRbf
	53ZtkjQwuukaGx7QDn4EpNkcOaeYcyWAkKLsQO9NRnCw2+55/3/5m5nra3XD64laUsfo4Zf3P7LDm
	OJvTKhBKxV816bxxCrRKI58YgMs7lrZnXmlLGDbhCcckiIEym9m7AoxO/6ymgygZkxb4L/l5zhFsX
	BLdapN2Fc4mGU77WtgUgaQKNeS7oXAa+sX2DoWQMea+f5VZZ0CvecqZR9xMWS5Mr6oGjPHv1mW57/
	mnYTWSIQy3SHk8OSxKtyCNTdqnK+lh5lYDGRetG32cFFPcqrYbPi2IlJDYrzoJUcEmCBLzAPbWMUW
	CfWcuOh1F9VVfun++4MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUvH-0002T8-54; Fri, 01 May 2020 12:37:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUuv-0002Hk-7G
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:37:22 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 620FD2137B;
 Fri,  1 May 2020 12:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588336640;
 bh=nMeM+LoKm1Aty3/EjI977WJPckStlNeJ9rr8FVpgT+c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tHtVt+i6GTPArdIHUgRunpl0TT4NlPW7hnWTSzyXyV+U7K/iMBihuk5J1fn/flS44
 UwtHKRzfCEdcE8w7GhJKPdqzw1+G8Y9Ut6Mdw96rxjFTuSnWfG1biYlC3VcOmH5S8I
 jd9MiBWUGMjrv/uCPY1jJAIcbJ3UwhR/CiA8dwjs=
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 1/3] arm64: insn: Don't assume unrecognized HINTs are NOPs
Date: Fri,  1 May 2020 13:37:07 +0100
Message-Id: <20200501123709.6640-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501123709.6640-1-broonie@kernel.org>
References: <20200501123709.6640-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_053721_304774_8E76137D 
X-CRM114-Status: GOOD (  11.89  )
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

Currently the kernel assumes that any HINT which it does not explicitly
recognise is a NOP.  This is not robust as new instructions may be added
which need special handling, including recent extensions like PAC, and
in any case software should only be using explicit NOP instructions for
deliberate NOPs.

This has the effect of rendering PAC and BTI instructions unprobeable
which means that probes can't be inserted on the first instruction of
functions built with those features.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/insn.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..595c0fddeeb2 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -51,21 +51,17 @@ enum aarch64_insn_encoding_class __kprobes aarch64_get_insn_class(u32 insn)
 	return aarch64_insn_encoding_class[(insn >> 25) & 0xf];
 }
 
-/* NOP is an alias of HINT */
+/* NOP is a specific HINT */
 bool __kprobes aarch64_insn_is_nop(u32 insn)
 {
 	if (!aarch64_insn_is_hint(insn))
 		return false;
 
 	switch (insn & 0xFE0) {
-	case AARCH64_INSN_HINT_YIELD:
-	case AARCH64_INSN_HINT_WFE:
-	case AARCH64_INSN_HINT_WFI:
-	case AARCH64_INSN_HINT_SEV:
-	case AARCH64_INSN_HINT_SEVL:
-		return false;
-	default:
+	case AARCH64_INSN_HINT_NOP:
 		return true;
+	default:
+		return false;
 	}
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
