Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542B41F955D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4k2vt3LVmg6Rysx4tpZL7/0zWsGORBeS33qT+MlaG7g=; b=dmteh4BvbYDDNv
	0mOkdHgoCMbpndAa+u2JEit/pnaWtWD0fkM9NfVR/sncfxmmShHw5QTsBZhz1p6x1Z8E1gmxfFIhB
	8u0ALpmpjELCO/y7rr0PINs3uQnI19kV3+LMo2esNfgiwmLjcJ9txkptmBkjAjOQ6DCoZHVZvY0TN
	drHVk1kjR4HNKlIWPCMhdUrwAfPKeR3YBjKaVNwS0sz35Fm35rkrIEbpjT3Fb5mCq7c0elmiIXMR8
	df6/g1RDc8MwWVFbTiJRFnsMbz11SJGOzZwXH82+zl9cLcBRXfLQtK7xDtm3zlUFddIdOOeVN+nZE
	45YMbs98xWstmQLfHgdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknOY-00069q-4J; Mon, 15 Jun 2020 11:35:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknOJ-0005Sv-Rp
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:35:05 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AA1F20663;
 Mon, 15 Jun 2020 11:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592220903;
 bh=U+Ra4+MGv3itok8OivvDYnef7h9H+I9uORJTiZA5H24=;
 h=From:To:Cc:Subject:Date:From;
 b=kJtUHq/k/VLVC+l+pRT1x87+uIKlIEIeZu9GmwQtgKLi5vTCcPeuZE4TGEZbmcd/W
 0lihwNWeD6TQuj8VP1j5mj05dXFAgt1+xRLcqPveW6rxfFc0bP8QrSgZfFrIKUpQ1c
 22T9WLczH0bpRQmDbrLX4MPpe366f7glYJfF8qTk=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: traps: Dump registers prior to panic() in bad_mode()
Date: Mon, 15 Jun 2020 12:34:58 +0100
Message-Id: <20200615113458.2884-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_043503_926597_A9889AAA 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When panicing due to an unknown/unhandled exception at EL1, dump the
registers of the faulting context so that it's easier to figure out
what went wrong. In particular, this makes it a lot easier to debug
in-kernel BTI failures since it pretty-prints PSTATE.BTYPE in the crash
log.

Cc: Mark Brown <broonie@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/traps.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 50cc30acf106..f1869e5bd743 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -812,6 +812,8 @@ asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr)
 	pr_crit("Bad mode in %s handler detected on CPU%d, code 0x%08x -- %s\n",
 		handler[reason], smp_processor_id(), esr,
 		esr_get_class_string(esr));
+	if (regs)
+		__show_regs(regs);
 
 	local_daif_mask();
 	panic("bad mode");
-- 
2.27.0.290.gba653c62da-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
