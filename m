Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E169C3D53D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pEYIr2/XAL3EqIfvoRjXwtZpVt5E2F5q4WAGSFo5ntk=; b=BKj
	vmDVlUPj4UyQMnvt2S8Y2vF2lyoJ1dnKmDk58MZDTvqzxrN40xYLG1LlphskYro67qudjX6lircCT
	fQwq6ZRJti/4cNxUQHEwGPP1+uwVsxfwZ8KyM0Vpi5Mz6j+1Dr1ZWl69Zkvig0E0LgF/DQdt0aZ5N
	a0s+WiGcH8mtu/p7PsYTUKPwnAlljXRxrMfqW0dv6uXXJMUCOIFzQjh2nJW6NIkp0NAAUqrjNAN0+
	gnFKbjxIS7QefaQWSDuDl4ONpVgiBqcJKDF6gfY0h/GiR0a4ZNztYcHV3lcZ4grviBYBO6FDOEg1x
	VzIXuvosmHrcjLYfOiLfcrZH7JB/0Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halEj-0007Lb-Re; Tue, 11 Jun 2019 18:11:09 +0000
Received: from emh03.mail.saunalahti.fi ([62.142.5.109])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halEV-0007HC-0V
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 18:10:57 +0000
Received: from localhost.localdomain (85-76-70-161-nat.elisa-mobile.fi
 [85.76.70.161])
 by emh03.mail.saunalahti.fi (Postfix) with ESMTP id 990264003B;
 Tue, 11 Jun 2019 21:10:50 +0300 (EEST)
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, James Morse <james.morse@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: [PATCH 1/2] arm64: Improve parking of stopped CPUs
Date: Tue, 11 Jun 2019 21:10:49 +0300
Message-Id: <20190611181050.9647-1-aaro.koskinen@iki.fi>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_111055_231356_438B4F76 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.142.5.109 listed in list.dnswl.org]
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
---

	This is a rebased resend of the patch:

		https://patchwork.kernel.org/patch/9549145/

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
