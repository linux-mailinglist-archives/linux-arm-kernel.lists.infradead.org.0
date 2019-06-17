Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA2A4916F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 22:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/IaCbkdbN90D8dyqPpYCv77MtRh26XREuUO1I8xfG0M=; b=YIZ
	qxgvsaQ+yeKsAhthtWeRvD+7dIBL8fw5pguVGIHg/xbCKrGSwea/GN2GXSYau9K9L5KeaVPWd21QQ
	UyS+/Rpks/UPaF2kduAl5aHWwVKWpRwqV0ZqPpE6iuUe7kCqu9K+zDzQGhMwSPvsMwH5USZdqfHuo
	/fostvgFnqSVw8YjR+P6nshS0jIAJaLoJmfjFwgtvV7qqR1uH2sEBBC9l2RYRNs+Z8bIQ5YSGK+ku
	cIRnqF0a7gpnjmh48z46cesoKVpoqnelpKFE5pxQI+mNaXrtSYSzyVCp/HhR2Yx4g8t7aI8Z6zZek
	C3CWSd4ObII+ngGDXrvx1JR/S4L4mJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcyLs-0002mu-Ce; Mon, 17 Jun 2019 20:35:40 +0000
Received: from emh01.mail.saunalahti.fi ([62.142.5.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcyLe-0002lW-Tt
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 20:35:29 +0000
Received: from localhost.localdomain (85-76-83-177-nat.elisa-mobile.fi
 [85.76.83.177])
 by emh01.mail.saunalahti.fi (Postfix) with ESMTP id 180A72004A;
 Mon, 17 Jun 2019 23:35:19 +0300 (EEST)
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, James Morse <james.morse@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: [PATCH v2 1/2] arm64: Improve parking of stopped CPUs
Date: Mon, 17 Jun 2019 23:35:18 +0300
Message-Id: <20190617203519.328-1-aaro.koskinen@iki.fi>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_133527_135112_AB8F98E5 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.142.5.107 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Aaro Koskinen <aaro.koskinen@nokia.com>,
 linux-arm-kernel@lists.infradead.org, Aaro Koskinen <aaro.koskinen@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jayachandran C <jnair@caviumnetworks.com>

The current code puts the stopped cpus in an 'yield' instruction loop.
Using a busy loop here is unnecessary, we can use the cpu_park_loop()
function here to do a wfi/wfe.

Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
Signed-off-by: Aaro Koskinen <aaro.koskinen@nokia.com>
Acked-by: Will Deacon <will.deacon@arm.com>
---

	v2: Add Acked-by

	v1: https://patchwork.kernel.org/patch/10988099/

 arch/arm64/kernel/smp.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index bb4b3f07761a..1a1b96a50245 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -854,9 +854,7 @@ static void ipi_cpu_stop(unsigned int cpu)
 
 	local_daif_mask();
 	sdei_mask_local_cpu();
-
-	while (1)
-		cpu_relax();
+	cpu_park_loop();
 }
 
 #ifdef CONFIG_KEXEC_CORE
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
