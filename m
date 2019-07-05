Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C236071E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UTyS1lgafVKNrOSWi3z6s2RDdg4LcFFYtr4bcF3y6Cg=; b=PcyzfkyPaIkvH2
	VMoOUnh7Md2AtCqDDXuzMnvE+4gM+9tfvx6hfUvvcEsGlTet4Glk7w4xe96n5KdFJIrN0D4OEeTHW
	A+yIuMiGxapCvLmaGL1Nf2b1VfOja7R4pCweU3y6F08yOcm7IBecDx4p0cvN5vNgYCPntSRClvmlm
	SrCxi5SxtG7e9M35k+8/nhApVCQ35isJSngQgKJJWnFvaOcyON0ZV4fD2WRTQ40eIChVEMf+o5X/g
	BG6SSX3EtTK+HvI2xr0EGAxDy0kf7lDtLzxxXY7DVy4geeJId4v+3fNXhWQai/oa74ELtfErXcHDB
	eO/1+FgTwU5uQ9EhIOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOnm-0006nh-IC; Fri, 05 Jul 2019 14:03:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfr-00056F-6s
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eSNOE8LcuBwBrzx3QG6juaa+hRCbqowv2ukbBye9kmw=; b=d9bqD0OdqfDYCGHT7yyagd0An1
 bVp2eX8L8srknn0PULuWCOl7QYExuANzacHsxheSfb/mjCkMCbQqw5G7BNkMww2TTw+yu+S/pj14C
 dcJbExN8muB3AzitJZ11fABHXmi7YiMuy6mjjF1jsZf9h94Y4ANQV+PcvsCkt4kZNCCG5CsJv/WxV
 jmJSExhlo0z1UpC4POC2fiS2hI5GBxRSV+GOv8+gGNft3vTFRyu5Z3iehxyu785udOICYAJUdEYvQ
 prywP7qFT8/HVSCxLcjTb5K7Mm2Y2uEFQrhQAAHEdeoyVyFgN/6zb9+gMH5ka0yygqzIiUkR5osYq
 9BgsEK3A==;
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjMnF-0007qD-VC
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 11:54:24 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x65Bp2ve022719; Fri, 5 Jul 2019 13:53:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=eSNOE8LcuBwBrzx3QG6juaa+hRCbqowv2ukbBye9kmw=;
 b=VnsqGIJmzTsOl5wvhOacnXOauRz+BhRB8crrhe1L/E6dtLpca8LVKMKvmhCBfuF7Wcuw
 CBzJVyYxGLRJD8Pk05vm+b4eOiYykwKBx0FRVpPkqIj5EE+1/vgRSyZSIzO5ChzpPZYM
 HXEFFyiyaBxHyzQDvCrlc7U0GDKArv9G3fMroiIdeZYNOX3E1/6HWOJABcsceo+lLr1s
 kLJ6fL1E1xIHG7NEyEFmf8Ibf/vuO+M8w9c1FkW3bxPVAiwNRy0+iVccB4VimoZFzhE+
 gxooDv1x/Vs85HcFXXayvY2lJYoVdsxtgQBGxUVdZVADeiaYxycENDWWYryLSrGmk814 ZQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tgx0qx0pu-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 05 Jul 2019 13:53:05 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 35B3E3A;
 Fri,  5 Jul 2019 11:53:04 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DCF0B2BC8;
 Fri,  5 Jul 2019 11:53:03 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 5 Jul 2019
 13:53:04 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 5 Jul 2019 13:53:03
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <linux-stm32@st-md-mailman.stormreply.com>, <alexandre.torgue@st.com>,
 <robh@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH] ARM: dts: stm32: add audio codec support on stm32mp157a-dk1
 board
Date: Fri, 5 Jul 2019 13:53:00 +0200
Message-ID: <1562327580-19647-1-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-05_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_125422_537946_AA525B47 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add support of Cirrus cs42l51 audio codec on stm32mp157a-dk1 board.
Configuration overview:
- SAI2A is the CPU interface used for the codec audio playback
- SAI2B is the CPU interface used for the codec audio record
- SAI2A is configured as a clock provider for the audio codec
- SAI2A&B are configured as slave of the audio codec
- SAI2A&B share the same interface of the audio codec

Note:
In master mode, cs42l51 audio codec provides a bitclock
at 64 x FS, regardless of data width. This means that
slot width is always 32 bits.
Set slot width to 32 bits and slot number to 2
in SAI2A&B endpoint nodes, to match this constraint.
dai-tdm-slot-num and dai-tdm-slot-width properties are used here,
assuming that i2s is a special case of tdm, where slot number is 2.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 arch/arm/boot/dts/stm32mp157a-dk1.dts | 89 +++++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index f3f0e37aad4d..0f5b3c77153d 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -48,6 +48,17 @@
 			default-state = "off";
 		};
 	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "STM32MP1-DK";
+		routing =
+			"Playback" , "MCLK",
+			"Capture" , "MCLK",
+			"MICL" , "Mic Bias";
+		dais = <&sai2a_port &sai2b_port>;
+		status = "okay";
+	};
 };
 
 &cec {
@@ -116,6 +127,39 @@
 			};
 		};
 	};
+
+	cs42l51: cs42l51@4a {
+		compatible = "cirrus,cs42l51";
+		reg = <0x4a>;
+		#sound-dai-cells = <0>;
+		VL-supply = <&v3v3>;
+		VD-supply = <&v1v8_audio>;
+		VA-supply = <&v1v8_audio>;
+		VAHP-supply = <&v1v8_audio>;
+		reset-gpios = <&gpiog 9 GPIO_ACTIVE_LOW>;
+		clocks = <&sai2a>;
+		clock-names = "MCLK";
+		status = "okay";
+
+		cs42l51_port: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cs42l51_tx_endpoint: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&sai2a_endpoint>;
+				frame-master;
+				bitclock-master;
+			};
+
+			cs42l51_rx_endpoint: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&sai2b_endpoint>;
+				frame-master;
+				bitclock-master;
+			};
+		};
+	};
 };
 
 &i2c4 {
@@ -297,6 +341,51 @@
 	status = "okay";
 };
 
+&sai2 {
+	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
+	clock-names = "pclk", "x8k", "x11k";
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&sai2a_pins_a>, <&sai2b_pins_b>;
+	pinctrl-1 = <&sai2a_sleep_pins_a>, <&sai2b_sleep_pins_b>;
+	status = "okay";
+
+	sai2a: audio-controller@4400b004 {
+		#clock-cells = <0>;
+		dma-names = "tx";
+		clocks = <&rcc SAI2_K>;
+		clock-names = "sai_ck";
+		status = "okay";
+
+		sai2a_port: port {
+			sai2a_endpoint: endpoint {
+				remote-endpoint = <&cs42l51_tx_endpoint>;
+				format = "i2s";
+				mclk-fs = <256>;
+				dai-tdm-slot-num = <2>;
+				dai-tdm-slot-width = <32>;
+			};
+		};
+	};
+
+	sai2b: audio-controller@4400b024 {
+		dma-names = "rx";
+		st,sync = <&sai2a 2>;
+		clocks = <&rcc SAI2_K>, <&sai2a>;
+		clock-names = "sai_ck", "MCLK";
+		status = "okay";
+
+		sai2b_port: port {
+			sai2b_endpoint: endpoint {
+				remote-endpoint = <&cs42l51_rx_endpoint>;
+				format = "i2s";
+				mclk-fs = <256>;
+				dai-tdm-slot-num = <2>;
+				dai-tdm-slot-width = <32>;
+			};
+		};
+	};
+};
+
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdmmc1_b4_pins_a>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
