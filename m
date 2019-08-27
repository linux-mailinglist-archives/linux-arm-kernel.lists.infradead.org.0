Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DAF9F481
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 22:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VDGCqHndH+ynfD0h7s6k61rNUDvidQU4fmItgDnFlCQ=; b=TYN0sBFcDNh4Tm
	3gvOjwA5KqQ2IOgSiiBG2J7P4C4vhVey8FGp4RBy6/txzjw7PfNw8AHUldVjyb+3Iun3vnGONgkEQ
	RFKzFxSrSGWGV325MfmYvcyPPiWQwRhvpvZ0gPphffpj7g6SXxRxpmfr/sn25OPSKdSHfLHgxaRXl
	Hsaf6pmRDMXvxQGTuoaLsKlG+MilJ3Yh31JXUBaKW67dah7m4XY9Xv1r5YTeofhXw1MPKkqIWE74w
	Zo62+Sjt2YB0kWf7vgA57sJmbs753/5J2wC6U22YjBX/a8eZ9oC7HaYo9xZw9gV4wHdQGBwLu3jjV
	HcmhL/6hFNKtEUXF+ufA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2iPj-0006av-Ld; Tue, 27 Aug 2019 20:50:03 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2iPU-0006Zt-84
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 20:49:50 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 1A0AD80719;
 Wed, 28 Aug 2019 08:49:37 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1566938977;
 bh=PIfUy1UaDG+Bm4sZignWk5XvEQ/zp3pqmJ+geIdmjL0=;
 h=From:To:Cc:Subject:Date;
 b=xGg/ts7PoziI5S+5a9MLyXR3CXvJXGUTj1L669GdIu/XYGn9r6xjslEF1ZpHJ6wk7
 09FJ5rvsIAhkQhhcArglrzLanf+/ONLRyfR9tRQbspU9rRjfypE33+YZHL2zLDmBoY
 Eb923LYCdI5Fbphyg/OVRr6krgmwFRGMvfG79CGWT5OnF5Azu+oTxMZcw229KnUr8Z
 PxeH8XEUygujBPGdKTt1kx2LGQwMQUFwMfgUBYrPKpO3M38FAVdJwtHc/kpLoRc4T5
 VjiD4jy6adYRjyH4+KfwtwND99baR7B8xKE5nLjyE+hq6NE3BbLH96I+LDV66Sbmd5
 9wMLGdUlJsACw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d6597610000>; Wed, 28 Aug 2019 08:49:37 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 7C09C13EECA;
 Wed, 28 Aug 2019 08:49:39 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 7BBD8289DE2; Wed, 28 Aug 2019 08:49:36 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: patches@armlinux.org.uk, linux@armlinux.org.uk, mark.rutland@arm.com,
 jlu@pengutronix.de, gregory.clement@free-electrons.com, bp@alien8.de
Subject: [PATCH] ARM: l2c: move cache-aurora-l2.h to asm/hardware
Date: Wed, 28 Aug 2019 08:49:22 +1200
Message-Id: <20190827204922.14832-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_134948_482736_E7B8C7C1 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

This include file will be used by the AURORA EDAC code.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Reviewed-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
KernelVersion: 5.3rc

Hi Russell,

This is the missing first patch for the Armada EDAC series
https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8885/1

 arch/arm/{mm => include/asm/hardware}/cache-aurora-l2.h | 0
 arch/arm/mm/cache-l2x0.c                                | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm/{mm => include/asm/hardware}/cache-aurora-l2.h (100%)

diff --git a/arch/arm/mm/cache-aurora-l2.h b/arch/arm/include/asm/hardware/cache-aurora-l2.h
similarity index 100%
rename from arch/arm/mm/cache-aurora-l2.h
rename to arch/arm/include/asm/hardware/cache-aurora-l2.h
diff --git a/arch/arm/mm/cache-l2x0.c b/arch/arm/mm/cache-l2x0.c
index 5b251c8ecd45..428d08718107 100644
--- a/arch/arm/mm/cache-l2x0.c
+++ b/arch/arm/mm/cache-l2x0.c
@@ -18,8 +18,8 @@
 #include <asm/cp15.h>
 #include <asm/cputype.h>
 #include <asm/hardware/cache-l2x0.h>
+#include <asm/hardware/cache-aurora-l2.h>
 #include "cache-tauros3.h"
-#include "cache-aurora-l2.h"
 
 struct l2c_init_data {
 	const char *type;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
