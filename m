Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479B036166
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoOwSs2D4c0V83UlFgQG6JKJq7ywVP5X6kOZMPlIgFk=; b=AxVuQM0iXNtAWA
	IKOemhucEQdLeiiKPLZZfEXO6+TJNeFBJl472FVComuBzPMVmKoqUWHpYvCEj4Qy3YpzvPQk9bO3R
	3BlTti3/al0VQLBrY5wQXMyUxct++I/2a2PtLRJ2wPO2ffw2wYuSKO6OwGZJsPPcf7f7YGU8rFYAb
	/0yTRVNznWmWekg8Ly0/O2AYK/dlajZCklBcvgaUZqwFifVXI8v1HMkA8BLz4Kl9JUvmDReB4ZUqR
	ZwAgq2uTUQL5kbLhKcY1+R4L+R95YVWK5Xe3jexP9tQULc+oTyv2ZXLlSvGaNGlGM+ewPOZS2DBiu
	T8+5YupKTeu63A9yUmkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYs8-0004GL-T6; Wed, 05 Jun 2019 16:34:44 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYs1-0004F6-8C
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:34:38 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55GYa0B130363;
 Wed, 5 Jun 2019 11:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559752476;
 bh=wkkKxFZB5ATR3iI5BpVHTwbE/nxd3PuOQtF6M46CXMg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=PXAhTydyFcEWe9DEJEnl4VJl6QnFED4Yo9iNZazn971xCdPOFvndnIrhLFCG8Z6Qp
 ziFyEAp5u+Pjk5mNUoPazqiFAiIJBGgyP4RWbgmME2j3dTvi/vMgWu7wHkBjSzXgXM
 agUEMiTUobXkZwVpDNZfv4OI4LJ9I/tQfnMIcX7s=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55GYah4096059
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 11:34:36 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 11:34:36 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 11:34:36 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55GYaan023930;
 Wed, 5 Jun 2019 11:34:36 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x55GYZm10218; 
 Wed, 5 Jun 2019 11:34:35 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 3/4] arm64: dts: ti: k3-j721e: Add the MCU SRAM node
Date: Wed, 5 Jun 2019 11:34:33 -0500
Message-ID: <20190605163434.23173-4-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605163434.23173-1-s-anna@ti.com>
References: <20190605163434.23173-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_093437_329846_77B5250C 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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

Add the on-chip SRAM present within the MCU domain as a mmio-sram node.
The K3 J721E SoCs have 1 MB of such memory. Any specific memory range
within this RAM needed by a driver/software module ought to be reserved
using an appropriate child node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index b72e033fa159..397ef715e145 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -44,6 +44,14 @@
 		pinctrl-single,function-mask = <0xffffffff>;
 	};
 
+	mcu_ram: sram@41c00000 {
+		compatible = "mmio-sram";
+		reg = <0x00 0x41c00000 0x00 0x100000>;
+		ranges = <0x0 0x00 0x41c00000 0x100000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	wkup_uart0: serial@42300000 {
 		compatible = "ti,j721e-uart", "ti,am654-uart";
 		reg = <0x00 0x42300000 0x00 0x100>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
