Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2E23616A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHUbRRcE7uvG0LscZf/cgkEn4Uhx8ZTsxPUCsWpsqG4=; b=o/HL1IXeFH7tbw
	LQmbZIDoNCw/xV5lVofbDxjFKr2nkoFQtBBNUm5yDbmYp7r4nYfnOUWCDZzTRCU7dP+KSjPkcHqIx
	su9k2gcPv0TJ6BgY4QWVFbR3/96QMiWWJc9TcivTqEmE36a/ZsR37BsySyIW4vFvcYycDE2wXjh8a
	PPdBraJ0queRYqHRsD7ZBhriY1SQe7UPwhiWc1UjHvBBKmUXMbz6ClXKfI2Plc9Ss0gvTgDCSsYho
	r/Jerx/ut57Qkk8ERgFvqk8Lo5dE4GGo3VL3q6gDHTdpGWuj+Hlquaosm+cvBKcY6CsX3tUL1SClc
	15MoIr0NKjKmhXBLhnLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYsk-0005lu-K7; Wed, 05 Jun 2019 16:35:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYs1-0004F4-8B
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:34:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55GYaY1130359;
 Wed, 5 Jun 2019 11:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559752476;
 bh=KUPgZFxEYXJVvTARjgbF0I31mcTUIGf5vw48nP64GK8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gow6AJMsYcdPwAz5xMJTyHmOnFJUXGnolX/Pz7NNX9mC+fKF+h5pHCDtQEZO5qYmU
 kQRnF4XL9b9sl1++4XBwzLLk2J3IvpVItWCBmUegESjZAUXWfFQeqSJc+tGF8i+gJV
 CoeDIFeOqewMZ9P/gBURt6JUjvRxPugg5TN7pDKE=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55GYaxJ019127
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 11:34:36 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 11:34:35 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 11:34:35 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55GYZF7098238;
 Wed, 5 Jun 2019 11:34:35 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x55GYZm10210; 
 Wed, 5 Jun 2019 11:34:35 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 1/4] arm64: dts: ti: k3-am65: Add MCU SRAM ranges in
 interconnect nodes
Date: Wed, 5 Jun 2019 11:34:31 -0500
Message-ID: <20190605163434.23173-2-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605163434.23173-1-s-anna@ti.com>
References: <20190605163434.23173-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_093437_412107_567D09E2 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the address space for the MCU SRAM memory to the ranges property
of the cbass_mcu interconnect node so that the addresses within the
mcu_sram nodes and its children can be translated properly by the
relevant OF address API.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
index 68b3f954f1d1..abb085f5e784 100644
--- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
@@ -72,6 +72,7 @@
 			 /* MCUSS Range */
 			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
 			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
+			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00080000>,
 			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
 			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
 			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
@@ -83,6 +84,7 @@
 			#size-cells = <2>;
 			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
 				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>, /* First peripheral window */
+				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00080000>, /* MCU SRAM */
 				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP */
 				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
 				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
