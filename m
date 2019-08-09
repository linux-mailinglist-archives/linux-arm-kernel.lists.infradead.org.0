Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04A18764F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRkwZyt5kZ9QDes3wT6MM+5TUk7FiQTIsusOTdoFmdk=; b=VDYAdMU1X6Xahr
	eJMEilJXI/d9L6HHF5gOMoPDEJpRrDyslY3uxIRakSbH3KG8HEucor/m4KXD9laZHCBUZRwOlfsac
	S9BJjAB9MXBuVLsab1ZV0gl4RYSRBEta2L8QdMJEuuDkjvZ5xc6QtAy6j+3ENGvepjY+1kMm0mV2D
	KdNSopJqqSqSxtVig11zFD4NurHI9QfreKh3jOtU+iWfn1WqyVG78W0KVhOj000ReO2pFk/CNaShk
	afBshzzV6ysQD7xDmkXfYAj1MJLvuwA3PaVvy2sOSPIRbK1kfHDvCm9xz+Ovdv3/GzSh0jfJntdvW
	MYUOxTJj622rO2p5HJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1Jq-00083W-BG; Fri, 09 Aug 2019 09:36:18 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1Gw-0003mx-IV
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:33:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 49B75D63CC;
 Fri,  9 Aug 2019 11:33:16 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id gJ9RTu5TN9ad; Fri,  9 Aug 2019 11:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 39998D63C9;
 Fri,  9 Aug 2019 11:32:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1DOR8k58z_NV; Fri,  9 Aug 2019 11:32:25 +0200 (CEST)
Received: from furthur.local (ip-37-188-137-236.eurotel.cz [37.188.137.236])
 by zimbra.v3.sk (Postfix) with ESMTPSA id C5E9BD63D0;
 Fri,  9 Aug 2019 11:32:19 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 13/19] ARM: mmp: define MMP_CHIPID by the means of CIU_REG()
Date: Fri,  9 Aug 2019 11:31:52 +0200
Message-Id: <20190809093158.7969-14-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809093158.7969-1-lkundrak@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023318_785137_4027D5D9 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A rather trivial cosmetic improvement.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-mmp/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mmp/common.c b/arch/arm/mach-mmp/common.c
index 2ee08c78e8bc9..24c689a01ecb7 100644
--- a/arch/arm/mach-mmp/common.c
+++ b/arch/arm/mach-mmp/common.c
@@ -17,7 +17,7 @@
 
 #include "common.h"
 
-#define MMP_CHIPID	(AXI_VIRT_BASE + 0x82c00)
+#define MMP_CHIPID	CIU_REG(0x00)
 
 unsigned int mmp_chip_id;
 EXPORT_SYMBOL(mmp_chip_id);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
