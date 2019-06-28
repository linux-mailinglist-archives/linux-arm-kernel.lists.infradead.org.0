Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7238592EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+A4kau+S4oefvf0Qnwuq1QUUE3Kug8VhEdo+iVt2V4k=; b=DO+613qg1Zd5V5
	cOhXTVe5ZfCkumiWoE5MTrjHlmuTOze7kpPWEaMFxX1KQaDfbEuKOXCbKF7/3NcTytJV/ty9YS5o1
	HMXIztkILjMEpsKONfJn5hNJTtcCwBzxD98yWAQp4wrwm+CRic+rXP4edZWhAe+sqTTf+Dz+s+wUR
	kWHhuwr5nnGCiGvV0G9Dhg3tRActmebSdnSAnb+XL7d/3Ge0AysClIi+pv3321Gv1HpD7erMWksHL
	bLFawoFp01dA63zptzdazin1+GTBUUK2DtWBtuGHpfQjluCB2RaTCvhfpNTSjdN2n3MNxF/ehYm4w
	VuMXSp/p6qzkUjG5cl9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiXx-0008LP-0n; Fri, 28 Jun 2019 04:31:37 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiUR-0004kI-UW
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:28:01 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S4Rsjg003036;
 Thu, 27 Jun 2019 23:27:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561696074;
 bh=y47Dmxqdu2axu8XFuL5chdma5kAOZBKLQnnNccav38w=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wTgnMSG1EnCSpzKdj0L05ZF21h4ZXDMeep3xa+FESUPz/zN2EaeijIQFEI3gcJ2FV
 I74buze/0BngPIlAXc7CKxkXZ2GpHDFBPdmPi+C2ckC/W5T1dN2w1a2T/oynpEn9do
 6ngzyrV/5xkWdy+E8giwq8qVNyiEtwjD0Lu9AQ4c=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S4RsqR032679
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 23:27:54 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 23:27:54 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 23:27:54 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RKPU062595;
 Thu, 27 Jun 2019 23:27:51 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [RESEND PATCH 10/10] arm64: dts: k3-am6: Add crypto accelarator node
Date: Fri, 28 Jun 2019 09:57:45 +0530
Message-ID: <20190628042745.28455-11-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628042745.28455-1-j-keerthy@ti.com>
References: <20190628042745.28455-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212800_246784_FC45EE73 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add crypto accelarator node. Define the psil specific config
node as well. This can be used in Packet Mode alone.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 91ca5bfeefc2..5e4f9ec39f01 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -91,6 +91,39 @@
 		power-domains = <&k3_pds 148>;
 	};
 
+	crypto: crypto@4E00000 {
+		compatible = "ti,sa2ul-crypto";
+		label = "crypto-aes-gbe";
+		reg = <0x0 0x4E00000 0x0 0x1200>;
+
+		status = "okay";
+		ti,psil-base = <0x4000>;
+
+		/* tx: crypto_pnp-1, rx: crypto_pnp-1 */
+		dmas = <&main_udmap &crypto 0 UDMA_DIR_TX>,
+				<&main_udmap &crypto 0 UDMA_DIR_RX>,
+				<&main_udmap &crypto 1 UDMA_DIR_RX>;
+		dma-names = "tx", "rx1", "rx2";
+
+		ti,psil-config0 {
+			linux,udma-mode = <UDMA_PKT_MODE>;
+			ti,needs-epib;
+			ti,psd-size = <64>;
+		};
+
+		ti,psil-config1 {
+			linux,udma-mode = <UDMA_PKT_MODE>;
+			ti,needs-epib;
+			ti,psd-size = <64>;
+		};
+
+		ti,psil-config2 {
+			linux,udma-mode = <UDMA_PKT_MODE>;
+			ti,needs-epib;
+			ti,psd-size = <64>;
+		};
+	};
+
 	main_pmx0: pinmux@11c000 {
 		compatible = "pinctrl-single";
 		reg = <0x0 0x11c000 0x0 0x2e4>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
