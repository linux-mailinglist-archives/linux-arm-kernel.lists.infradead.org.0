Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B09111B991
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4e0f9wO/qXKYVv2ibj4NVnt4HulLkqMIoJ4TT8/e2A=; b=IJiUJoDK8aZ+Wf
	NBB5KUQTuf+GyPf/T0VjhNux3QVYPk7u+IEbBVY/ySfBH0MGQ0A69/15bXFEKc1JRI/jsS0rfHGKT
	i78/fjN+dSL5Nq4ItNgOO/SGTiBilrqhyR62y8+6Hu6926Xn1mBRYJe7uZisFzJO2Ea4RTFGUo/Bm
	274HPBBR81Ai6fOn9upk7jKOpLNWQhLzynpRlD+v9aEz5casEYO95opbt2pGW7GMzqmY6E1S8pyKN
	Uizn1kgzWRGBKH2XeOeXfLRtv8s9Opra34ohvSMj9aobuEYq504D7QOMZGgyNjjwi72NLYmEu7JT3
	Ya7nAXBJLmiY/PZCtngQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5Pn-00070q-W8; Wed, 11 Dec 2019 17:04:44 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5PC-0006Yx-7I
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:04:07 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBBH43dG093381;
 Wed, 11 Dec 2019 11:04:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576083843;
 bh=2q7+lDu/00Dro2as6TEZvbW2Mo8FYkswNwEaKXoLaGc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=HD2TeEeD8rV95xAm+hnw8E7Um8xDpyYi4Uo/mvWdlZ5u32W/UERVeCGa8j6d7IZQF
 BMVo7W/uMUchDFg2jUIum9How2Slu2oGuxzdiY6FNE0077oHTFjdnNSYrfPegiNt8v
 9maS6mXMdnOd3o13tY7s3Q0BH1zJUbPeFdqIZksU=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBBH43V7130518;
 Wed, 11 Dec 2019 11:04:03 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 11
 Dec 2019 11:04:02 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 11 Dec 2019 11:04:02 -0600
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBBH3s6h099151; 
 Wed, 11 Dec 2019 11:04:00 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH v2 3/3] arm64: dts: k3-am654-base-board: Add IRQ line for GPIO
 expander
Date: Wed, 11 Dec 2019 22:34:14 +0530
Message-ID: <20191211170414.7026-3-vigneshr@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211170414.7026-1-vigneshr@ti.com>
References: <20191211170414.7026-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_090406_340469_F1914648 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add IRQ line for IO expander present on wkup_i2c bus on  AM654 EVM

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
v2:

New patch

 arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 94bec7aa9baf..a634dceaa964 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -85,6 +85,13 @@ AM65X_WKUP_IOPAD(0x0028, PIN_INPUT, 0)  /* (R3) MCU_OSPI0_D7 */
 			AM65X_WKUP_IOPAD(0x002c, PIN_OUTPUT, 0) /* (R4) MCU_OSPI0_CSn0 */
 		>;
 	};
+
+	wkup_pca554_default: wkup_pca554_default {
+		pinctrl-single,pins = <
+			AM65X_WKUP_IOPAD(0x0034, PIN_INPUT, 7) /* (T1) MCU_OSPI1_CLK.WKUP_GPIO0_25 */
+
+		>;
+	};
 };
 
 &main_pmx0 {
@@ -180,6 +187,12 @@ pca9554: gpio@39 {
 		reg = <0x39>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wkup_pca554_default>;
+		interrupt-parent = <&wkup_gpio0>;
+		interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
 	};
 };
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
