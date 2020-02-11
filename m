Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9011588DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 04:33:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KamAEXHMsREoKSkVRWeN1nvz45oZrnxrubjiSpzwOvg=; b=dvCMJp+GBwUZ0q
	W3cVs6w2sGGLGv0C+b0/imLZEk1FoFnZwGrA0JSYlRGFv/Au/T9gqgcAlpB1BUxKudrRAwenTvKuC
	ynUPpI69fje6MD7GH9y2JHSFkVP4+QjugSGoEAyPWpiR/a3LTLMdTkAmWd0Z9QJLqwd0mQJ/Z25ME
	zvoiSEh7vc9zeXKTmQHFKEjy+Q4TFGN7WId4TRfQ7nHNuANUbWs8GjSANK8TXTDJFhHU9uLZDh3Dr
	sRLGBamRWaAvUSnE70pN/no63A7400sRPb6GcqDWJV9JVTUmj02FYKtWssEc7hvztSj7VILRQFsgE
	1vcz4vygpFw1E3eIgyjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1MIf-0006np-U8; Tue, 11 Feb 2020 03:33:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1MHR-0005fj-Fm; Tue, 11 Feb 2020 03:32:10 +0000
X-UUID: 27fa23454fda42e3b3cbdc616fa0793c-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=RhXrJayFRO/aOxYxJTCRZyKMbMYeY7nZ96eKmpMPmeU=; 
 b=Scr8om8NNdAQ0hqyu/8VvHqNpq5SyXfo/wQrUniXw58CB7cHy+aAkzhev5esFq0tOamxQTVm3qX86IPhondB/coVmba4auiubAyj9wXTHNngZ5/orAzwYDkeHKXY7Jny0eDTXeW9hi34SVZroVqE71q4G23AxbvXWMqNrDEt7s0=;
X-UUID: 27fa23454fda42e3b3cbdc616fa0793c-20200210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 349985256; Mon, 10 Feb 2020 19:32:04 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 19:22:39 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 11:20:56 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Feb 2020 11:21:05 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [RESEND PATCH v5 11/11] arm64: dts: mt2712: use non-empty ranges for
 usb-phy
Date: Tue, 11 Feb 2020 11:21:16 +0800
Message-ID: <0b039294697126edb25a699b8c25b7fcc84eed36.1581389234.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <bfcf6a4dd6829dfa1bd0119b34043db7364dfd8e.1581389234.git.chunfeng.yun@mediatek.com>
References: <bfcf6a4dd6829dfa1bd0119b34043db7364dfd8e.1581389234.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D50F8D5745E0C1A05FC84C09B931A226DBED1496C8AEA844893F48B35F0372072000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_193209_542524_D0A281C9 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use non-empty ranges for usb-phy to make the layout of
its registers clearer;
Replace deprecated compatible by generic

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v3~v5: no changes

v2: use generic compatible
---
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi | 42 ++++++++++++-----------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
index 43307bad3f0d..e24f2f2f6004 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
@@ -697,30 +697,31 @@ usb_host0: xhci@11270000 {
 	};
 
 	u3phy0: usb-phy@11290000 {
-		compatible = "mediatek,mt2712-u3phy";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+		compatible = "mediatek,mt2712-tphy",
+			     "mediatek,generic-tphy-v2";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0 0x11290000 0x9000>;
 		status = "okay";
 
-		u2port0: usb-phy@11290000 {
-			reg = <0 0x11290000 0 0x700>;
+		u2port0: usb-phy@0 {
+			reg = <0x0 0x700>;
 			clocks = <&clk26m>;
 			clock-names = "ref";
 			#phy-cells = <1>;
 			status = "okay";
 		};
 
-		u2port1: usb-phy@11298000 {
-			reg = <0 0x11298000 0 0x700>;
+		u2port1: usb-phy@8000 {
+			reg = <0x8000 0x700>;
 			clocks = <&clk26m>;
 			clock-names = "ref";
 			#phy-cells = <1>;
 			status = "okay";
 		};
 
-		u3port0: usb-phy@11298700 {
-			reg = <0 0x11298700 0 0x900>;
+		u3port0: usb-phy@8700 {
+			reg = <0x8700 0x900>;
 			clocks = <&clk26m>;
 			clock-names = "ref";
 			#phy-cells = <1>;
@@ -760,30 +761,31 @@ usb_host1: xhci@112c0000 {
 	};
 
 	u3phy1: usb-phy@112e0000 {
-		compatible = "mediatek,mt2712-u3phy";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+		compatible = "mediatek,mt2712-tphy",
+			     "mediatek,generic-tphy-v2";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0 0x112e0000 0x9000>;
 		status = "okay";
 
-		u2port2: usb-phy@112e0000 {
-			reg = <0 0x112e0000 0 0x700>;
+		u2port2: usb-phy@0 {
+			reg = <0x0 0x700>;
 			clocks = <&clk26m>;
 			clock-names = "ref";
 			#phy-cells = <1>;
 			status = "okay";
 		};
 
-		u2port3: usb-phy@112e8000 {
-			reg = <0 0x112e8000 0 0x700>;
+		u2port3: usb-phy@8000 {
+			reg = <0x8000 0x700>;
 			clocks = <&clk26m>;
 			clock-names = "ref";
 			#phy-cells = <1>;
 			status = "okay";
 		};
 
-		u3port1: usb-phy@112e8700 {
-			reg = <0 0x112e8700 0 0x900>;
+		u3port1: usb-phy@8700 {
+			reg = <0x8700 0x900>;
 			clocks = <&clk26m>;
 			clock-names = "ref";
 			#phy-cells = <1>;
-- 
2.25.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
