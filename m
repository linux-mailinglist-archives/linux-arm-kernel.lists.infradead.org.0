Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E013A7B541
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 23:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m+3Ab9v5ihm7F7KjRjIblGcHvLN89KKkIZppZtTQGkI=; b=ep8
	SRrg5Hi7rSR5SwMoD2Z3apOgLY7bdYIfownra8Cs60JnkCckSsLUsYOzQtcJALsw3ogVj1EP9fk6X
	m5wqvOsMdrGJWJAA2L4CzOm5cNx6884BUDcp0sS3qot8OpMRUYS3sBYvPKTaQzVSkNAZdLsACVsDw
	ZFzWi9IbmtZZATjYgXOBseAsZD2n08I1XFNdlFn421E5JKp+0rlSWAztbHSdlltAkQkeqTAn8+uB5
	hP7BK4QFGclkxmgI1xcj4pb5UPbb3IXQy4iDTt5GLxkGekwhFohxLhK41KuOsfOuMsjVT9APdebCE
	mV7YQJf0OTW0jh6cOQGi866NUQCcatQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZzU-0006ai-AD; Tue, 30 Jul 2019 21:49:04 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZzM-0006TY-3S
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 21:48:57 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 45yqv75F8Cz1rBnG;
 Tue, 30 Jul 2019 23:48:51 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 45yqv740QBz1qqkQ;
 Tue, 30 Jul 2019 23:48:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id H5W5SgB4fodb; Tue, 30 Jul 2019 23:48:50 +0200 (CEST)
X-Auth-Info: llMVCs5jRc9iyn3ETV/87/IBYSMF0oXRV1DQb9JCjHk=
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl
 [85.222.111.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 30 Jul 2019 23:48:50 +0200 (CEST)
From: Lukasz Majewski <lukma@denx.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2] ARM: dts: vf610-bk4: Fix qspi node description
Date: Tue, 30 Jul 2019 23:48:33 +0200
Message-Id: <20190730214833.30659-1-lukma@denx.de>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_144856_298688_FF3A2E35 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Lukasz Majewski <lukma@denx.de>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before this change the device tree description of qspi node for
second memory on BK4 board was wrong (applicable to old, removed
fsl-quadspi.c driver).

As a result this memory was not recognized correctly when used
with the new spi-fsl-qspi.c driver.

From the dt-bindings:

"Required SPI slave node properties:
  - reg: There are two buses (A and B) with two chip selects each.
This encodes to which bus and CS the flash is connected:
<0>: Bus A, CS 0
<1>: Bus A, CS 1
<2>: Bus B, CS 0
<3>: Bus B, CS 1"

According to above with new driver the second SPI-NOR memory shall
have reg=<2> as it is connected to Bus B, CS 0.

Signed-off-by: Lukasz Majewski <lukma@denx.de>
Suggested-by: Fabio Estevam <festevam@gmail.com>
Fixes: a67d2c52a82f ("ARM: dts: Add support for Liebherr's BK4 device
(vf610 based)")

---
Changes for v2:
- Add proper Suggested-by tag as Fabio was the one who pointed out the
  the issue with wrong reg number assignment for the second SPI-NOR memory
- Add Fixes: tag, so the patch could be added to LTS kernels
- Fix the subject line to more appropriate
---
 arch/arm/boot/dts/vf610-bk4.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-bk4.dts b/arch/arm/boot/dts/vf610-bk4.dts
index 3fa0cbe456db..0f3870d3b099 100644
--- a/arch/arm/boot/dts/vf610-bk4.dts
+++ b/arch/arm/boot/dts/vf610-bk4.dts
@@ -246,13 +246,13 @@
 		reg = <0>;
 	};
 
-	n25q128a13_2: flash@1 {
+	n25q128a13_2: flash@2 {
 		compatible = "n25q128a13", "jedec,spi-nor";
 		#address-cells = <1>;
 		#size-cells = <1>;
 		spi-max-frequency = <66000000>;
 		spi-rx-bus-width = <2>;
-		reg = <1>;
+		reg = <2>;
 	};
 };
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
