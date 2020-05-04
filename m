Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A441C3B08
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3L+Vvpk7tnnF8c2mIMPFI1njHQ0T4g3lOMGhaU/ZZs=; b=FILPEv6iyRDvWi
	Excp/EEa1C548T6rr5t7PmxCEpLr9S7iZKrb1dyqvTcZLGNvOhAgIe8G7nHq1bUP9XbjXtMbbz/m7
	kN/M+9iOLQJ4X7o0i793tOkYxHAA2oFdkZsiGef/V29/GmszT9jckiiUBZGaICScNbDEHQf6OebUs
	b8yha3DFDU/RsTJMtaA6+KPtG58N7Z8gEBECnolf8C1kG5GKZWovCUnglTv00bQWc+78UadiNQOP0
	JiWxPIMGdud3EjQBWku9EhyaqpdlH9rLO6nGbUBwXmyzlLtKrNshTTRD3foqP6krZGn5kTVYBBZxB
	jDKiVtzwChDroR8SlzQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVavd-00079E-DE; Mon, 04 May 2020 13:14:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaun-0006Us-E9
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:13:46 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73AF92073E;
 Mon,  4 May 2020 13:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588598025;
 bh=k8m3ykpmjGfMJ+gObZ0IER8em+CxyEtaZUDkb5zPAj4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hcJMnT6LLkuuIxGY0FcH1dzclcX4emzQGEYKCTOPZgCyn1ZM0PXZLjgvoh3eU+q9x
 Gj2wKzKPCne/ufKtsdYMOq304tHEwPYOZTfZS4DIhJC7pzAsQPvuHF5KCKNwIj2Hh3
 aKP/9nmyyv5iFhQNA3BJCn3mnwGcg/E+0uAij/dU=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v4 3/4] arm64: insn: Don't assume unrecognized HINTs are
 skippable
Date: Mon,  4 May 2020 14:13:25 +0100
Message-Id: <20200504131326.18290-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504131326.18290-1-broonie@kernel.org>
References: <20200504131326.18290-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_061345_535157_0E4E53F5 
X-CRM114-Status: GOOD (  11.74  )
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

Currently the kernel assumes that any HINT which it does not explicitly
recognise is skippable.  This is not robust as new instructions may be
added which need special handling, and in any case software should only
be using explicit NOP instructions for deliberate NOPs.

This has the effect of rendering PAC and BTI instructions unprobeable
which means that probes can't be inserted on the first instruction of
functions built with those features.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/insn.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 0829bb5b45ec..15c3f0643e3b 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -57,14 +57,10 @@ bool __kprobes aarch64_insn_is_steppable_hint(u32 insn)
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
