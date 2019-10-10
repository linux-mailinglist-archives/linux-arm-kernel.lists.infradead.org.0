Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D09D2A43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=drGthHyxtT+2aI25JJzTuP/Ic3ezwipB/5xLK8tdNR4=; b=JwId4uGaQnad9q
	hjHL8CR9ted6vlPl75c5ZZ7Ic23zoqFkdmdv5hhZ6bslZXNCRSHqinyG0cC9HEmf+B6yTEBCJGRKw
	UykdvmdrYvSBv+SUYLsU4GlHaYiFliYJocS08S5PUhMYsUbFEHc2DI5Vqx/fXQIZM8V4akJDWCIcD
	UheAB/yWgFDs0XmC2IK5jeBq3LXLw7Ib8RZ1HoBMjL0zUO76FEkc1fonzNyqi7Vvsjl46SzjOgruy
	KyeCaa3BD2wQmP0dobBVYT56CaiMwjk9uZDe3WhsIi9huebe2txWeFg5XVzgkQqpsdgDRD5d6+Qyo
	Ylqk7+Gpfcn5+0SNyDCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIY66-0002SP-3J; Thu, 10 Oct 2019 13:03:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIY5y-0002Rw-UA
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:03:08 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9AD1h73005680; Thu, 10 Oct 2019 15:02:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Lrgg/JupVUGfx1EGZYXupcFmvCwMUXEFDk4NGGs/DEM=;
 b=Ea4HNDZ8L1C/e6Lzy8QRdZUdC+Hk25JWFCYZUnWqGyjQQIG4woiazEpBlpEu7LnCt1LK
 zvTBvXtqnFYR1FHlFhK7h3ZM82I661+9R1M+GrEIJ8WLkK7EOtUAvoq19pDTBLmBQ9NJ
 X+NhV7iPKEeSTbnTwcdn95yClLC5T1T8ojfob2c+EB0hfEjERbOZMTdfhbvwgwRxhWK1
 zPfGF0cexHrIYmC0SAojbvDZHWOpEdXBLPSRJJc0sjqfh/yeNXDfKTZIK5awaiXtuD+a
 ANDOANFlDAbodjbG9ZnRhJGfmSEGmFhrjueGr+ESl8T8z0kLeo4/0z2ymq1hlEbRySBn OA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn13t3j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 10 Oct 2019 15:02:53 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AB81810002A;
 Thu, 10 Oct 2019 15:02:51 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 96E2F2AA31D;
 Thu, 10 Oct 2019 15:02:51 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 10 Oct
 2019 15:02:51 +0200
Received: from localhost (10.201.21.218) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 10 Oct 2019 15:02:51
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <linux-stm32@st-md-mailman.stormreply.com>, <alexandre.torgue@st.com>,
 <robh@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH] ARM: dts: stm32: add hdmi audio support to stm32mp157a-dk1
 board
Date: Thu, 10 Oct 2019 15:02:47 +0200
Message-ID: <20191010130247.32027-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.21.218]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_04:2019-10-10,2019-10-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_060307_450858_DA1363C4 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add HDMI audio support through Sil9022 HDMI transceiver
on stm32mp157a-dk1 board.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 arch/arm/boot/dts/stm32mp157a-dk1.dts | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 5ad4cef9e971..7a20640c00a9 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -92,7 +92,7 @@
 			"Playback" , "MCLK",
 			"Capture" , "MCLK",
 			"MICL" , "Mic Bias";
-		dais = <&sai2a_port &sai2b_port>;
+		dais = <&sai2a_port &sai2b_port &i2s2_port>;
 		status = "okay";
 	};
 };
@@ -173,6 +173,7 @@
 		reset-gpios = <&gpioa 10 GPIO_ACTIVE_LOW>;
 		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-parent = <&gpiog>;
+		#sound-dai-cells = <0>;
 		status = "okay";
 
 		ports {
@@ -185,6 +186,13 @@
 					remote-endpoint = <&ltdc_ep0_out>;
 				};
 			};
+
+			port@3 {
+				reg = <3>;
+				sii9022_tx_endpoint: endpoint {
+					remote-endpoint = <&i2s2_endpoint>;
+				};
+			};
 		};
 	};
 
@@ -370,6 +378,23 @@
 	};
 };
 
+&i2s2 {
+	clocks = <&rcc SPI2>, <&rcc SPI2_K>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
+	clock-names = "pclk", "i2sclk", "x8k", "x11k";
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2s2_pins_a>;
+	pinctrl-1 = <&i2s2_pins_sleep_a>;
+	status = "okay";
+
+	i2s2_port: port {
+		i2s2_endpoint: endpoint {
+			remote-endpoint = <&sii9022_tx_endpoint>;
+			format = "i2s";
+			mclk-fs = <256>;
+		};
+	};
+};
+
 &ipcc {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
