Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB7F1139D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZhoSyiFm67RVWrvMmpZJgT4EKLsBCQMvjE8IZ1vfOU=; b=br+Z/fDd6Iklqu
	QQePsnZ/B7EHO3ehs2l1gPihaO0fpvRPwgJPuEDtr/+eVgXuKOAA0rRabNErFHiiCYL6BndcUk3Fu
	/UJfwgHqcAqyHgqgQuUPR6esvNFNSejkzrngmCWjVL/k0XQEKCRQf8FNRv0v0k8jp9Ieub6quonk2
	wsCaFkI17/KwK5qZxtQyUrZ/A0Rchgr2TRELebOE3Ql2ztqpK8P3UfJ4C0qn1p7TdlRxQe1w9Swye
	7NgFCfKoJHAtnCIYAREFJC5Bhu4jlhnV17HT5vuUR6LqvVMNOcBJqK6sPQ/PPAbg+/yixhimPa4GU
	DSohZr5AsNq6nYHOwi2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icgmM-0002bS-8A; Thu, 05 Dec 2019 02:22:06 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgkH-0008Da-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:19:58 +0000
Received: by mail-yw1-xc42.google.com with SMTP id l22so612410ywc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zrsetGriwFN7O5PokupRSAWoGTBVUJcT37C7y0ZMNmw=;
 b=NGgUmBF79hKaA6rfHlyxqgOEoGaktYvly2OXQKwO26azgRrBz+Kg6wWarzxKrBq0ra
 t12HAvhbHelpoN/lvn8Kd9NAnRtEIxa0c+Xl7+zyQy/O/De1xKlMO81J/jWbGA0GLcjv
 82KvKhAIVYtzQIhF64Bicyj7UdpV+YFwVl+lz4QG/tVLjRfth1yjB5YZUEZSjVH4D3Gt
 KfxHyXbBGdSWfmg/87FrbBb2nmEFWV2G6O9cSfQPXu7p8pNyLq0cBfgphV8iNhqf3hbH
 o/hv6dlaZtnqx/isgXXPCZu5IGLWlYMsRrE8ZC3tAaN5WUio/rykeziwLK16Fd1ur1NI
 C6xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zrsetGriwFN7O5PokupRSAWoGTBVUJcT37C7y0ZMNmw=;
 b=PQDDzBwx3KCpWolAgylkfnMRksDxTf5izsHEsPDGm/AA8bPI9+z4wygnHCYHUXlhcx
 ETZMXlUfyuzbjeJRNyIWsH5Cb3vJFiP7kDBv2hVAB/aOv1KotlgUCtX7SSewNP8JBxTp
 3pF/At58VdyreUshYENbdWN/6Zl/Y9x/1fmvRuwXZ3jiWa7rIp4PstGjfkjhApcwoyfq
 uOpGZNxEJqQ+YlgUThAjEY+26YpERhgDU8Shr0drJR0UIw08b33Z8OLvmyHxrnqCcBTN
 HJOLNOEgjFFjEO0GZfHoHLx/cwTP+rx8ctfdM6cna66f5/5gpa2/GbEx/uL/HFAUUWfT
 NJww==
X-Gm-Message-State: APjAAAWzcxic5R6qUtpgPI9eE3c8qcpmDiWbMHWyUhcllTlYvJ663sRo
 WkqPeK2ORHOsBTTGT6wyF9d9wXCJ
X-Google-Smtp-Source: APXvYqzCCriI9i8RMQSO8C5ehwieJ+buobW2fxeTKupTKau3EoE8HIWwRb+cK78pEhE54ySr7gqOEw==
X-Received: by 2002:a81:7a0d:: with SMTP id v13mr4506519ywc.175.1575512395086; 
 Wed, 04 Dec 2019 18:19:55 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l6sm4188449ywa.39.2019.12.04.18.19.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:19:54 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/7] arm64: dts: imx8mm: Add PCIe support
Date: Wed,  4 Dec 2019 20:19:23 -0600
Message-Id: <20191205021924.25188-8-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205021924.25188-1-aford173@gmail.com>
References: <20191205021924.25188-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_181957_073737_AA2C53AC 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PCIE controller on the i.MX8M Mini appears to be the same
as the i.MX8MQ but it is absent.

This patch uses the bindings from the i.MX8MQ and the clock
information from the NXP Linux release and marks it as disabled
so it can be configured and enabled on boards where needed.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 35 +++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 5036d713558f..f384934ddbb4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/imx8mm-clock.h>
 #include <dt-bindings/power/imx8m-power.h>
+#include <dt-bindings/reset/imx8mq-reset.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -936,6 +937,40 @@
 			status = "disabled";
 		};
 
+		pcie0: pcie@33800000 {
+			compatible = "fsl,imx8mq-pcie";
+			reg = <0x33800000 0x400000>,
+			      <0x1ff00000 0x80000>;
+			reg-names = "dbi", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			bus-range = <0x00 0xff>;
+			ranges = <0x81000000 0 0x00000000 0x1ff80000 0 0x00010000 /* downstream I/O 64KB */
+				  0x82000000 0 0x18000000 0x18000000 0 0x07f00000>; /* non-prefetchable memory */
+			num-lanes = <1>;
+			num-viewport = <4>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &gic GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &gic GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &gic GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &gic GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			fsl,max-link-speed = <2>;
+			power-domains = <&pgc_pcie>;
+			resets = <&src IMX8MQ_RESET_PCIEPHY>,
+				 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_EN>,
+				 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF>;
+			reset-names = "pciephy", "apps", "turnoff";
+			clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>,
+				 <&clk IMX8MM_CLK_PCIE1_AUX>,
+				 <&clk IMX8MM_CLK_PCIE1_PHY>;
+			clock-names = "pcie", "pcie_bus", "pcie_phy";
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>, /* GIC Dist */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
