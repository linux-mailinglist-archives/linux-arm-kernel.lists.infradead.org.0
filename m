Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3491F4E084
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 08:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1TMvEaMZ8OOdO2ZX9QPPk4r6KRWF8XaRXDwzF0Yz0Mk=; b=nNxCl+udlEUH9P
	IAmKVXC9S59UmWqGE05yRRVAU5NTBQTToloLpYxOlfbAL1RxzjQWNbtT6cGW7cDoKuIOFf9ugSEJ6
	sOGrfbDp0GsllocW8bTChrza2pyKrDSfrjOBwyVcVGGO0AVDDQSD4fZ4SHZCvqqxjNQlN77UPWO8W
	XbmEQcfP60OCfdOobOCO4yh/4ObxnRvws9rfJK8u4OosgQFpxdWgWFE6OAO0WXZ1hMIWmq1Pe2dae
	uXJUR/dHN645HCGysLNpcdGbbJyeC3aczDSixUb8IGn+7LZdSFG/vpZn7vtilQPjafRs4bv18umag
	aba3x6+XEoWmsY4q/wTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heD6A-000531-Hf; Fri, 21 Jun 2019 06:32:34 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heD5z-00052Z-HF
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 06:32:25 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 35678806A8;
 Fri, 21 Jun 2019 18:32:14 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1561098734;
 bh=U+PmnhwkpdQc3HRhKhwGSi4EFVNCmZC+Q2jLC6K+EVA=;
 h=From:To:Cc:Subject:Date;
 b=GZ0cgDj2K3uRH+GNEpS12ypYrh5G/OJ+6+qfSRKmpywRS1/WYgrHYNZSx6yu/pbSU
 duF7L88nAgC500IHXMsudrQACBR2qX/e5Mf+i19r4YzuRpojdCbaO2J6LdFePfP6Bz
 WjFPk2U3cZCcbhDSR3SIoCr8i5dNSQGISVfKsGHOCVw3dahHtLZXbKkYAfc7NZlEH1
 4B1oHHVUy3vsxb70H2bZyJWkdEOyrdcLYcyOge8sE6iJJhGd9yr8/TliedyLFljrp/
 x/nV+9CDNtUrNAFMw+ThO2t/fTLSgBJAbbjdqQyKl0rK2UDFZVvE6D+SDCv5zRbNNK
 FQbsrTYGeUPJA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d0c79ed0000>; Fri, 21 Jun 2019 18:32:13 +1200
Received: from joshuas-dl.ws.atlnz.lc (joshuas-dl.ws.atlnz.lc [10.33.13.27])
 by smtp (Postfix) with ESMTP id 6DFD313EED3;
 Fri, 21 Jun 2019 18:32:14 +1200 (NZST)
Received: by joshuas-dl.ws.atlnz.lc (Postfix, from userid 1634)
 id 2C9571A0472; Fri, 21 Jun 2019 18:32:13 +1200 (NZST)
From: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
To: linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH/RFT] serial: prevent armada-370/xp uart buffer loss
Date: Fri, 21 Jun 2019 18:29:21 +1200
Message-Id: <20190621062920.16691-1-joshua.scott@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_233223_955479_A5F7EE8F 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the "marvell,armada-38x-uart" driver variant to empty
the UART buffer before writing to the UART_LCR register.

Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
---

We have found that like the armada 38x, other Marvell SOCs can lose
characters when the UART_LCR register is written to without first
waiting for the buffer to empty.

We have observed this behaviour on the following Marvell switch SOCs:

 * 98DX323x
 * 98DX3333
 * 98DX4251

However, we do not currently have access to non-switch SOCs which share
the same parent device-tree.

The question we have is, should the fix be applied to the common
armada-370-xp device-tree, or should it be restricted to only affect the
SOCs listed above.

If anybody is able to check, we would like to find out if the issue
affects other armada-xp / armada-370 based SOCs.

The issue can be reproduced, if logging in using the serial port, with:
    resize && echo "hello world"

On affected devices, the first couple letters of "hello world" are
lost. On some SOCs this can be seen at 115200 baud, and on others
we have had to slow down to 9600 to see the issue.

Thank you,
Joshua Scott
---
 arch/arm/boot/dts/armada-370-xp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/armada-370-xp.dtsi b/arch/arm/boot/dts/armada-370-xp.dtsi
index c15f5e92f97f..9a956d1611ab 100644
--- a/arch/arm/boot/dts/armada-370-xp.dtsi
+++ b/arch/arm/boot/dts/armada-370-xp.dtsi
@@ -130,7 +130,7 @@
 			};
 
 			uart0: serial@12000 {
-				compatible = "snps,dw-apb-uart";
+				compatible = "marvell,armada-38x-uart";
 				reg = <0x12000 0x100>;
 				reg-shift = <2>;
 				interrupts = <41>;
@@ -140,7 +140,7 @@
 			};
 
 			uart1: serial@12100 {
-				compatible = "snps,dw-apb-uart";
+				compatible = "marvell,armada-38x-uart";
 				reg = <0x12100 0x100>;
 				reg-shift = <2>;
 				interrupts = <42>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
