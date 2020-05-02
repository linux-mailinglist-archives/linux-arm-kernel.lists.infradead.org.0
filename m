Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327371C25A1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 15:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xWeyCUq7dqWZxIomj+dnJfrTn7rU4INNJHs77SY+HgA=; b=WBsrobHgVV9c4Q
	4weaDDq5hHUF9C6jiV6ncXUjL57WJplAa6a7TQUx86WAb1ZBrFakk/j1WBm6YOSuoQXAj4NE4G1a/
	ZlPHUN8lCJPuiGtHrCap6Fd3vb7iQoRbNlCjcKPDWaDPn6avEibjYyVamLKpchQouO8lLnnSEoKhh
	YQs+ZGQHW/yNN+DWqKLCWQwu1rDVAex6Rf6tEVzRSaoVMebp3h8jYBTq+09jQp1rx6umgSiD8Ji+h
	1ErWNIlGVDpmHFLkwltLxv5AsU1c89PpDGjDu7SW3cRbo4x+6DpFUxkaT6dAcy88wOOomt36VJ1AK
	btYsgFtNPH2Q7cySTmuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUs4F-0004Xz-TR; Sat, 02 May 2020 13:20:31 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUs4A-0004XX-7i
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 13:20:27 +0000
Received: by mail-qk1-x743.google.com with SMTP id b188so11912907qkd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 06:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7gO/I+IvtkIZFC4jw7d1M58LLH0WJEijQ4nefSivFRc=;
 b=JsqzSO7Dl9DvRNtQn+Xqsi0073bQnPRngcl3vh8Ds9GolrE5Mt+TLnU06QkC42yTwN
 sEqExDuwAzZbXJCkaK6GH3vg/4wiZ+Mnsk1/e/s9G08but0mNpuZqdVDhd7aVatrJiEl
 ZzUE+gkm/GBRRZX025AzF5kb3ddznbv6vlnlPA0ja2CFsGhnRVbUkzh0DNLwBml4pCAO
 9fF7Jc7rjf0rqzj5dmMSOpjaKNqZ170sAJvRxSDAo9fMxARxlI0oOvXW6h1adZ02uMnw
 fNSU+2I/cpALkmgg3iQA3GgJay57/3F0Z9DA9AYUxIK8kpZicDEVEvA0lM8OlZ0341Ll
 qFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7gO/I+IvtkIZFC4jw7d1M58LLH0WJEijQ4nefSivFRc=;
 b=IgTv1f9wzyuXBeZn+ltdq1VKjrw89IMWxDfmY8C+qAoAV5JdRA7brmCEzN8c1+U5Jj
 K2zmXYdcM6H84wxcX3yeYKzXwMNt5x5w1hVTUbZmWc6afA+kHiUKyHoConfY1ZuCzj72
 yRgd0Ep4cmkEhRgKvYef9Hx60UsUhDTfGx2ye4cgkCi3dXRPfxfJSmSKAWqFHAFXIrhb
 CG8KeZOsIM7vSUBSYNZH9ylfZXSaAwzCDKGiKCvigfnDXszYBug9AfgBvCeElht89q8F
 vRMpfwB/+jjhB1m1lxZ0NW5JtfZuhJNdoHLrVtDxy1GRfYw9k0KwTmw6wRdPymw080jk
 zLTQ==
X-Gm-Message-State: AGi0PuZqrsi3+NnFT4dyCiw8buUyAM3/dcNUEio3pA3+NX/NKlxZVOZU
 GY1CFWF9LJzIRtBbLbF1yaWYB/h4rjU=
X-Google-Smtp-Source: APiQypIxNQBmn7ptFgUIwXN+1StR7LK8a8epow3LnVkDsEZEU4dvMKVcbgvYqHbyRSla4AZJ9YYZTQ==
X-Received: by 2002:a05:620a:39b:: with SMTP id
 q27mr8260387qkm.94.1588425624565; 
 Sat, 02 May 2020 06:20:24 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id o6sm4975385qkj.126.2020.05.02.06.20.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 06:20:23 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8mm: Add node for SPDIF
Date: Sat,  2 May 2020 08:20:11 -0500
Message-Id: <20200502132011.196045-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_062026_303487_026879E5 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M Mini can support SPIDF which is very similar to the
IP used on the i.MX35.

This patch adds the SPIF node.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index d46e727fc362..00aad55ece65 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -358,6 +358,29 @@ micfil: micfil@30080000 {
 				status = "disabled";
 			};
 
+			spdif1: spdif@30090000 {
+				compatible = "fsl,imx8mm-spdif", "fsl,imx35-spdif";
+				reg = <0x30090000 0x10000>;
+				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_AUDIO_AHB>, /* core */
+					 <&clk IMX8MM_CLK_24M>, /* rxtx0 */
+					 <&clk IMX8MM_CLK_SPDIF1>, /* rxtx1 */
+					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx2 */
+					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx3 */
+					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx4 */
+					 <&clk IMX8MM_CLK_AUDIO_AHB>, /* rxtx5 */
+					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx6 */
+					 <&clk IMX8MM_CLK_DUMMY>, /* rxtx7 */
+					 <&clk IMX8MM_CLK_DUMMY>; /* spba */
+				clock-names = "core", "rxtx0",
+					      "rxtx1", "rxtx2",
+					      "rxtx3", "rxtx4",
+					      "rxtx5", "rxtx6",
+					      "rxtx7", "spba";
+				dmas = <&sdma2 28 18 0>, <&sdma2 29 18 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx8mm-gpio", "fsl,imx35-gpio";
 				reg = <0x30200000 0x10000>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
