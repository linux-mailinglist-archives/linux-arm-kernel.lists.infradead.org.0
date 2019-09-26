Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF32BFBF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 01:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zfNdcUhrBrjZoSm8a0+kFYS1X59fJllQsbOBrmo+ds=; b=KgOJPrDEeXL/0e
	83ys8UBykSrZmgAzkexpO3zRpMlb+BrLGKMihOkVugMU4omcRns1U1cI5bTAQ+carqmb7ZavP0+AG
	QEcYInJZne+E8HF55EcvdeSerDL2jy4FGQEe1zjGkKFeQKpXQmsCWEjgXOpr+2Ig0OaKCnXItm9Lh
	rV/8thMNXl6ChbGUEsyje1RaUWjafMuLZ4a0Led8cvFxg/mj9zpqrOjDtW+H9Y3XkxO0dlm30aKcR
	Gk/GpC8AxdFT8kMagTyxzQwt56Wqd3O7ubSISmQBe6Q5BdeVmPgOkYwvZAXm8DQRWDA93LObzbmWb
	S1OTc0wRosnnuFem7b2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDdCO-0001Dt-UN; Thu, 26 Sep 2019 23:29:25 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDdBf-0000ii-1N
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 23:28:42 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id F201E891AA;
 Fri, 27 Sep 2019 11:28:26 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1569540506;
 bh=4ZTWevuQnd7Huoj4HJWGkNONefcT65iGcIwvwGxT6J0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=2xf5JX+KItvUrgLEZanjB/QkhF3PI97gop1qwmbDEMCacg4VdFbzzk87lJwvzfP6l
 ZLiZx1lp6PFuQc0omHj9pFcemICnpEY5D53/CAfkijBtIrQ999PDnw+aAZOKnAGKKb
 z7RemHNABn/2pGq+0biHVYA2gPYQQSznz2tMcQH+0pL066nHlT6+QWKX3OnNWXwcpc
 CMr9ougKK1KbbDo5Z2iTmf5MqUJo+Yw7+je4KPZg5xCoV9A3eWKCXgDx/wKOgsceei
 3oqR3WpnQ0XCGd8myw91A6YyvyJ55WSJFe8D1sLUlBJlBw8ursqrAeqm3LQIgUV30H
 xs/HxdSUzYccA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d8d49980003>; Fri, 27 Sep 2019 11:28:26 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 777DC13EF9B;
 Fri, 27 Sep 2019 11:28:28 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id C03DA28003E; Fri, 27 Sep 2019 11:28:24 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: jason@lakedaemon.net, andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 3/3] ARM: dts: armada-xp: add label to sdram-controller node
Date: Fri, 27 Sep 2019 11:28:20 +1200
Message-Id: <20190926232820.27676-4-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
References: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_162839_271333_EEEA43A7 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the label "sdramc" to the sdram-controller nodes for the Armada-XP
and 98dx3236 SoCs.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm/boot/dts/armada-xp-98dx3236.dtsi | 2 +-
 arch/arm/boot/dts/armada-xp.dtsi          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/armada-xp-98dx3236.dtsi b/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
index 267d0c178e55..654648b05c7c 100644
--- a/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
+++ b/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
@@ -90,7 +90,7 @@
 		};
 
 		internal-regs {
-			sdramc@1400 {
+			sdramc: sdramc@1400 {
 				compatible = "marvell,armada-xp-sdram-controller";
 				reg = <0x1400 0x500>;
 			};
diff --git a/arch/arm/boot/dts/armada-xp.dtsi b/arch/arm/boot/dts/armada-xp.dtsi
index ee15c77d3689..6c19984d668e 100644
--- a/arch/arm/boot/dts/armada-xp.dtsi
+++ b/arch/arm/boot/dts/armada-xp.dtsi
@@ -36,7 +36,7 @@
 		};
 
 		internal-regs {
-			sdramc@1400 {
+			sdramc: sdramc@1400 {
 				compatible = "marvell,armada-xp-sdram-controller";
 				reg = <0x1400 0x500>;
 			};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
