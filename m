Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD4532E1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vv0hAYbaKMHm/IJVhqKOUZsRncSbEW1cVy2De+brP2U=; b=iGfaFON16bLNRa1KoCLWTuCgfl
	otIRRb/d8pze7q/ooKjQgDEgXGdx1051+mEdVNCuXnyZVQ++SIjb46mWtRysujhwVpSxPJeJKQRW1
	BKqDpCOp4tt1cREXi+KxTVZDojX1/r+l9vrVQ1fHtiecqbkKFM9iyW27UW7xLYmfzuh5aGanFT4kI
	rdEOaImyR71ECsRn/wuO3zqWGJgTHTMk9xwOjSKB7cvs9uv+bbZqly18RpkT9rlmeqCgJcm05dVzp
	VFwxvSl3/DJsIATXQ3eYSYcioQ/IgQSJBmJgWUu+DUlHiyyqBga9zcg3xMCS/CaKa843XoQntbHiI
	uifi4dFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkg6-0004TE-Gg; Mon, 03 Jun 2019 10:58:58 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkfg-00046D-KQ
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:58:35 +0000
X-IronPort-AV: E=Sophos;i="5.60,546,1549926000"; 
   d="scan'208";a="7665934"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 03 Jun 2019 12:58:11 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Mon, 03 Jun 2019 12:58:12 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Mon, 03 Jun 2019 12:58:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1559559491; x=1591095491;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=ZLG5fX7UU9AzbSEEnsbZKEWE/R7gaNCrk+0uE58Tc7U=;
 b=juhs5WdzDM2DBEOm5b2EiUWdwABpa2u190ZtJk0AJaYgwkmMFUoagyLb
 nIenGCdGGIsEIOnls41TMpRKSzzsTlbwAQAECSOPkkweWxhP0AA5jKTgz
 L1JkD36A1oCeKC8Hqo9+RliSfb/JL/voucNluCyaeieWb8dBNvEvmAn3y
 9Bwxq2+godqdd72MLGjTE0krX2KjEqQmACYi58KAX/2u1jmeABp1kl2c5
 It2a4JBE0yKvS1OLpp60s0hPo+ldTVibgtQDrY2JMRPsK32NBN/0mZesT
 PcoMs29Z+YJXxpK0H0kLV8OLc1APOwtKprYpEV1rrZW9DzIv7bnqwqrkT g==;
X-IronPort-AV: E=Sophos;i="5.60,546,1549926000"; 
   d="scan'208";a="7665933"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 03 Jun 2019 12:58:11 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id A18CA280077;
 Mon,  3 Jun 2019 12:58:15 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Russell King <linux@armlinux.org.uk>,
	Jessica Yu <jeyu@kernel.org>
Subject: [PATCH modules 2/2] ARM: module: recognize unwind exit sections
Date: Mon,  3 Jun 2019 12:57:26 +0200
Message-Id: <20190603105726.22436-3-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
References: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_035833_137204_7A741CE3 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.157.118.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 linux-ia64@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In addition to the prefix ".exit", ".ARM.extab.exit" and ".ARM.exidx.exit"
must be recognizes as exit sections as well. Otherwise, loading modules can
fail without CONFIG_MODULE_UNLOAD depending on the memory layout, when
relocations for the unwind sections refer to the .exit.text section:

  imx_sdma: section 16 reloc 0 sym '': relocation 42 out of range
  (0x7f015260 -> 0xc0f5a5e8)

where 0x7F000000 is the module load area and 0xC0000000 is the vmalloc
area. Relocation 42 refers to R_ARM_PREL31, which is limited to signed
31bit offsets.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
 arch/arm/include/asm/module.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/include/asm/module.h b/arch/arm/include/asm/module.h
index 182163b55546..f3401758d711 100644
--- a/arch/arm/include/asm/module.h
+++ b/arch/arm/include/asm/module.h
@@ -4,6 +4,8 @@
 
 #include <asm-generic/module.h>
 
+#include <linux/string.h>
+
 struct unwind_table;
 
 #ifdef CONFIG_ARM_UNWIND
@@ -72,4 +74,13 @@ static inline unsigned long kallsyms_symbol_value(const Elf_Sym *sym)
 }
 #endif
 
+#define HAVE_ARCH_MODULE_EXIT_SECTION
+static inline bool module_exit_section(const char *name)
+{
+	return strstarts(name, ".exit") ||
+		strstarts(name, ".ARM.extab.exit") ||
+		strstarts(name, ".ARM.exidx.exit");
+
+}
+
 #endif /* _ASM_ARM_MODULE_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
