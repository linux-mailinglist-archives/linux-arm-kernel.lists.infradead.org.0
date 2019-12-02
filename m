Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52A910F1B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbFTJmaJSKdWMW34owwR72u6xWa/gK+zK7yNX4PFDNY=; b=jT2dtnorw1TKUp
	67BHZ9BMIhVU6Owq9U4whrOp5ESX+tZdpaWaupu0kK4BRWJRAey88g0bQxzEmulX9NWMUzFZ7+j1x
	7TbOKQY0bB1uXCifzzWWXS+aHTHrwkIWtRDNlez7rmMsRjqKrufU2Dmj5PxHMwYtHnZ3tV6jKg2vt
	2k7fbgZuGqqgVb+7gz+/WnWKD11Al8yghDzBpLkIC4rX459Vn1Xi2jsHUFT64CItc418iGwfYUmGg
	LUFCsu3dBMs0CAsn406FJNYw3w2fgGTuX96yfR9KmfLgYf5dCNakv1cuYVovmLiyI6cAr0tl6bBoQ
	hjCEl44yijYOemp2Iz3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibscw-0004H2-48; Mon, 02 Dec 2019 20:49:02 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsc8-0003pl-Kk
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 20:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ftxaSa1kZj6gyR+dJGAOeMuiPcXYl1sXEdyUm55wgHI=; b=YLXdUbXFVi70PLxky5vX7HfYP/
 x7AJQFlUs0aO9NhsfbnwAncow5XdoFKVoNv1XL92So5uz1Xop8kJjch4Vkb26dN7djdg7Q6S930TD
 Ht47YMMCdmUVxA7qxqaF11DMT2g+TOeTSa4psnDsfHniGoW1Id2F2mvkBUbVc25SCc74=;
Received: from p200300ccff066f001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff06:6f00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1ibsc4-0007qB-CD; Mon, 02 Dec 2019 21:48:08 +0100
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1ibsc4-0001lE-1z; Mon, 02 Dec 2019 21:48:08 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: mchehab@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, letux-kernel@openphoenux.org
Subject: [PATCH 2/2] ARM: dts: imx6sll: add PXP module
Date: Mon,  2 Dec 2019 21:47:48 +0100
Message-Id: <20191202204748.6718-3-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202204748.6718-1-andreas@kemnade.info>
References: <20191202204748.6718-1-andreas@kemnade.info>
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_124812_830069_384C2ED3 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While the EPDC is optional, both consumer and industrial editions
have the PXP module, so adding it to the corresponding .dtsi
Information taken from freescale kernel, compared with the
reference manual and tested by a separate program.

Since it does not depend on external wiring, the
status = "disabled" is left out here.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/boot/dts/imx6sll.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index 13c7ba7fa6bc..10cf5f3b4865 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -632,6 +632,15 @@
 				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx6q.bin";
 			};
 
+			pxp: pxp@20f0000 {
+				compatible = "fsl,imx6sll-pxp", "fsl,imx6ull-pxp";
+				reg = <0x20f0000 0x4000>;
+				interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX6SLL_CLK_PXP>;
+				clock-names = "axi";
+			};
+
 			lcdif: lcd-controller@20f8000 {
 				compatible = "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
