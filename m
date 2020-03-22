Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B800918EA29
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 17:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u3bdSl2wl72iQ3vo1dNjkEMArkd0swRFiRdXh2lrn/8=; b=tiI
	hZeOT2JLp7sr6lIKQfh0poyxldXxb31z4SvZpLs50mYyL8xnP6dleGh0a7QbHShYt0AivltjHZSpL
	qAYC5Gy1gkQJyJ7N/6DGAmjX6A7dm4y8V1ISuWlfqeUCqDNau9WCLZ0FB3mg0p8JuayLr6XA6dHUR
	oCj87qk9cWTfRTj+a5xqXhn56kzEr1/7yRW6f8PaqtGmyehrz8PS7zPxUzzDHhcwdR5W95P6556DH
	YsqD7XjbNLGiwo9XGj94NbhaUf5MQkXV7oAt1m8QcJRk0jNNcdgMOPn9gyBGN9ILLrDxN8bWl6Mbf
	1qbw56Hs5zdYlCDtuFDePkjov0ttnzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG3HP-0004lN-Vn; Sun, 22 Mar 2020 16:16:52 +0000
Received: from mr85p00im-zteg06011501.me.com ([17.58.23.182])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG3HA-0004iw-Vn
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 16:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1584893795; bh=owGB4mIyguzHqbacAQ1ITgVAMVCvoWtMPYe1ryNau40=;
 h=From:To:Subject:Date:Message-Id;
 b=jdmxPOOU947wEYpxkztzbuTxjTnVtF0JLrauThWv12N5LxsVx+QTkXP2XLaI9Q49g
 nAEY50vCkZkq5zFUBvDLg1q3H3dBebua0MDuKJTkS6BjD/QIR9Rj+ak0iGsM2OenUC
 X4s1eKTwDNdhCiYxyZRb1yVlWdU++DCjZkDT88rybVRvP8dABw0WBRNoZH81bwzCX6
 BJsd58ldpLSe/aPAlM+Wscc8ll9JzTpclQSCxeVNIAbKNHINyeZ993zZSkJHho610q
 dTq9Opl4C67U50CMujK1pfNlWXrdsN4I0WVs2UD+mKUo44LuXyQLquwoEn0FtODsdx
 fj71q1lJM2mQg==
Received: from localhost (101.220.150.77.rev.sfr.net [77.150.220.101])
 by mr85p00im-zteg06011501.me.com (Postfix) with ESMTPSA id BC6BF2A0436;
 Sun, 22 Mar 2020 16:16:34 +0000 (UTC)
From: Alain Volmat <avolmat@me.com>
To: patrice.chotard@st.com, robh+dt@kernel.org, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dts: arm: stih418: Fix complain about IRQ_TYPE_NONE usage
Date: Sun, 22 Mar 2020 17:16:31 +0100
Message-Id: <20200322161631.19151-1-avolmat@me.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2020-03-22_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2003220099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_091637_045056_6BBB712B 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.23.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avolmat[at]me.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: avolmat@me.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 83a86fbb5b56 ("irqchip/gic: Loudly complain about the use of IRQ_TYPE_NONE")
kernel is complaining about the IRQ_TYPE_NONE usage which shouldn't
be used.

Use IRQ_TYPE_LEVEL_HIGH instead.

Signed-off-by: Alain Volmat <avolmat@me.com>
---
 arch/arm/boot/dts/stih418.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stih418.dtsi b/arch/arm/boot/dts/stih418.dtsi
index 83411322bd92..a05e2278b448 100644
--- a/arch/arm/boot/dts/stih418.dtsi
+++ b/arch/arm/boot/dts/stih418.dtsi
@@ -50,7 +50,7 @@
 		ohci0: usb@9a03c00 {
 			compatible = "st,st-ohci-300x";
 			reg = <0x9a03c00 0x100>;
-			interrupts = <GIC_SPI 180 IRQ_TYPE_NONE>;
+			interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk_s_c0_flexgen CLK_TX_ICN_DISP_0>;
 			resets = <&powerdown STIH407_USB2_PORT0_POWERDOWN>,
 				 <&softreset STIH407_USB2_PORT0_SOFTRESET>;
@@ -62,7 +62,7 @@
 		ehci0: usb@9a03e00 {
 			compatible = "st,st-ehci-300x";
 			reg = <0x9a03e00 0x100>;
-			interrupts = <GIC_SPI 151 IRQ_TYPE_NONE>;
+			interrupts = <GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb0>;
 			clocks = <&clk_s_c0_flexgen CLK_TX_ICN_DISP_0>;
@@ -76,7 +76,7 @@
 		ohci1: usb@9a83c00 {
 			compatible = "st,st-ohci-300x";
 			reg = <0x9a83c00 0x100>;
-			interrupts = <GIC_SPI 181 IRQ_TYPE_NONE>;
+			interrupts = <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk_s_c0_flexgen CLK_TX_ICN_DISP_0>;
 			resets = <&powerdown STIH407_USB2_PORT1_POWERDOWN>,
 				 <&softreset STIH407_USB2_PORT1_SOFTRESET>;
@@ -88,7 +88,7 @@
 		ehci1: usb@9a83e00 {
 			compatible = "st,st-ehci-300x";
 			reg = <0x9a83e00 0x100>;
-			interrupts = <GIC_SPI 153 IRQ_TYPE_NONE>;
+			interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb1>;
 			clocks = <&clk_s_c0_flexgen CLK_TX_ICN_DISP_0>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
