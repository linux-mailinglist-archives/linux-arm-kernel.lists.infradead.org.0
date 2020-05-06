Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874381C7921
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 20:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9nzGEoZLcrKHAVG8R0CMJk2yrj9PoSF+INtZM3zFtc=; b=VFze7lCmdp6QEq
	xClje2C3p9a6pqjok7ek9oA3vV0H92nUHKAMl0uKzjX5FzlYkqyqt+ptPGLxOHVmj0GDF9mgtSMlS
	7w7+kDxle3P9XczLrOgpEkyvE2w7xKjTCP5yQG+ihAzZhl/wFosgBYZd++DqRHVUyRKkpoEdBRmx0
	6TRHMNQgYBobufixm7RpuAxgFdC4fzXhyABkyoeAPe8Hs8XfEq/epFv/aG2WZ4jeQI8W/v25jQywd
	b88PI3ubKZ7xDLtP57CAae25zQOi2trWz7N8zct+sGXonv+2j70sv1vYKvbSX3RyM2nt1tArd4f5b
	I9KNsYP0DxtT0uzRlOFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOZz-0005i6-15; Wed, 06 May 2020 18:15:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOZ1-0002RK-Ne
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 18:14:37 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 046IEWbf113157;
 Wed, 6 May 2020 13:14:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588788872;
 bh=BqMkVbEYuFaecKA7rKJabagbooFKYyBAcXaS1sUncZU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=iohR2VXfroinko+5Qu1QQtZEqSvOcWGk8rQcO8/4/M6OuiHfmz7CEuwKTQK1+r9P9
 JvOCrXcIJxzXrQA6wEQ3Kiq+vWeLcbVOBKWNuqsrf2EPF27pEAnXvk/5BoyBeFPh5Z
 xuccM5U/YgxGM52vp7rektyYT8yjiN+9R2nOdF0M=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 046IEWwY094194
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 May 2020 13:14:32 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 13:14:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 13:14:31 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 046IEUhO049102;
 Wed, 6 May 2020 13:14:31 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 <devicetree@vger.kernel.org>, Tero Kristo <t-kristo@ti.com>
Subject: [PATCH net-next 3/3] arm64: dts: ti: k3-am65/j721e-mcu: update cpts
 node
Date: Wed, 6 May 2020 21:14:01 +0300
Message-ID: <20200506181401.28699-4-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506181401.28699-1-grygorii.strashko@ti.com>
References: <20200506181401.28699-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_111435_868890_654F6825 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: netdev@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update CPTS node following DT binding update:
 - add reg and compatible properties
 - fix node name

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 4 +++-
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index 0e773e0b3f89..ae5f813d0cac 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -248,7 +248,9 @@
 			bus_freq = <1000000>;
 		};
 
-		cpts {
+		cpts@3d000 {
+			compatible = "ti,am65-cpts";
+			reg = <0x0 0x3d000 0x0 0x400>;
 			clocks = <&mcu_cpsw_cpts_mux>;
 			clock-names = "cpts";
 			interrupts-extended = <&gic500 GIC_SPI 570 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 37c355e5a833..dc31bd0434cb 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -339,7 +339,9 @@
 			bus_freq = <1000000>;
 		};
 
-		cpts {
+		cpts@3d000 {
+			compatible = "ti,am65-cpts";
+			reg = <0x0 0x3d000 0x0 0x400>;
 			clocks = <&k3_clks 18 2>;
 			clock-names = "cpts";
 			interrupts-extended = <&gic500 GIC_SPI 858 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
