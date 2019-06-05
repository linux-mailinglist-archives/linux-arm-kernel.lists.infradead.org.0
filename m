Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1B335832
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/Yqzw2bJVOeG3qBc/x+vr7HeWkTNHQJfAdMUSQmx3Q=; b=YBDb0/ETY1gXV1
	mNLOsg46MtZl47cuAQtQz/He1bxBMe0iK82PsXOE04CrbA89vIsf6bniLkT1zqqkBNCDyiKYRLwy+
	BEYLr4xE7RA8sTy2hFKkdxeJwog5AMW27EhpU/ycfSMFMoMZ9mK7FBTgQV5A73Q1gHL7FO9aTuAfS
	HcXrsCvsYNisYlDKL2ghgMIctDGAB3HBu6HqArsyzL6AdtRid3REZtx4jS/BLvfHmpl4yiiwJoC/1
	A6ft10ybHkd7QPU7q/vVAlA71RokZhO/ip0R53H2A7jMLpShzz1KMctvxonO/4SJPSgx+0p2vvXLI
	02QQmVks+31gq91RwwPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQnw-0005tb-00; Wed, 05 Jun 2019 07:57:52 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQnJ-0005FX-H4
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:57:19 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x557vCpw030301;
 Wed, 5 Jun 2019 02:57:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559721432;
 bh=AFbZcGD05hnXKI5h5WdZTa40Gbo5LmksXVbRsgprfjs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=YixW1YDU/huOgvihuCyppx4mkIavCdp/Rrf7enOleMmMJSQV5wi00+5c9e3GsThEC
 EeRC2SqftTbHjR9Gb7V+D4g39tweNMv3mrk7ti4dgmws6WMJYvSNqhPuP2KcwqJlJb
 Rx626GQPogkSb22RKFdLj4vHCbfGwbFZthb5BG9Q=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x557vBrt125924
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 02:57:12 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 02:57:11 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 02:57:11 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x557uqoR033893;
 Wed, 5 Jun 2019 02:57:08 -0500
From: Keerthy <j-keerthy@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <robh+dt@kernel.org>
Subject: [RFC PATCH v2 3/4] arm64: dts: ti: am6-main: Add gpio nodes
Date: Wed, 5 Jun 2019 13:27:09 +0530
Message-ID: <20190605075710.1691-4-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605075710.1691-1-j-keerthy@ti.com>
References: <20190605075710.1691-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_005714_212718_ACB762BE 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add gpio0/1 nodes under main domain. They have 96 and 90 gpios
respectively and all are capable of generating banked interrupts.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 22154f401930..182efe70402b 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -350,4 +350,36 @@
 			ti,sci-rm-range-global-event = <0x1>;
 		};
 	};
+
+	main_gpio0:  main_gpio0@600000 {
+		compatible = "ti,am654-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x600000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&intr_main_gpio>;
+		interrupts = <57 256>, <57 257>, <57 258>, <57 259>, <57 260>,
+				<57 261>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <96>;
+		ti,davinci-gpio-unbanked = <0>;
+		clocks = <&k3_clks 57 0>;
+		clock-names = "gpio";
+	};
+
+	main_gpio1:  main_gpio1@601000 {
+		compatible = "ti,am654-gpio", "ti,keystone-gpio";
+		reg = <0x0 0x601000 0x0 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&intr_main_gpio>;
+		interrupts = <58 256>, <58 257>, <58 258>, <58 259>, <58 260>,
+				<58 261>;
+		interrupt-controller;
+			#interrupt-cells = <2>;
+		ti,ngpio = <90>;
+		ti,davinci-gpio-unbanked = <0>;
+		clocks = <&k3_clks 58 0>;
+		clock-names = "gpio";
+	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
