Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3935F579
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f4y6rPVATRthxY8Kc28eEnoB3w/ER3GKZGvw9Mx5kKI=; b=JsP
	XEKyTjecKApXzWYUTZRHbqXmsZ+u8YTx9X5ZR/nkFcloR1dOpqXZMcOHJmFnj39CIkPZcKbu7AH+I
	SqjI2rTfGhJUxOUVJfo98h/k8pk6+H34X1RtM99Sc1oLLAZqk0pa4kyA557bdOBa63yW45m9LSxBC
	e1/HuGAHgRzmBJArVNMTT8D4/ZOvamxi/1gKgOaJRoywNj+sHBzYy/uyt3dQySJoKUDjwQni7zMfe
	Luh8krp5hIFArrgb+34dK0E1CTorOpQFU//BPSl7pIHsgs3mpfldyP6U7KlDlob8+iNisGBWnxGJJ
	TAwv4zYQYRdhtMIYbWjxV42StqXk6oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixx4-0007aj-0I; Thu, 04 Jul 2019 09:22:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixwp-0007a3-Ju
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:22:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0AAB51A0562;
 Thu,  4 Jul 2019 11:22:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6B9511A0021;
 Thu,  4 Jul 2019 11:22:19 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 10A2D402DF;
 Thu,  4 Jul 2019 17:22:05 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, ping.bai@nxp.com, olof@lixom.net,
 maxime.ripard@bootlin.com, jagan@amarulasolutions.com,
 bjorn.andersson@linaro.org, dinguyen@kernel.org,
 enric.balletbo@collabora.com, marcin.juszkiewicz@linaro.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Add support for i.MX8MM thermal sensor driver
Date: Thu,  4 Jul 2019 17:13:09 +0800
Message-Id: <20190704091313.9516-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_022235_796721_E816E9C8 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX8MM has a thermal monitor unit (TMU) inside, it ONLY has one sensor
for CPU, add support for temperature reading for CPU, cpu cooling is
also added.

This patch series is based on below i.MX SCU thermal patch series:
https://patchwork.kernel.org/patch/11000821/

Anson Huang (4):
  dt-bindings: thermal: imx8mm-thermal: Add binding doc for i.MX8MM
  thermal: imx8mm: Add support for i.MX8MM thermal monitoring unit
  arm64: defconfig: Enable CONFIG_IMX8MM_THERMAL as module
  arm64: dts: imx8mm: Add thermal zone support

 .../devicetree/bindings/thermal/imx8mm-thermal.txt |  15 +++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi          |  43 +++++++
 arch/arm64/configs/defconfig                       |   1 +
 drivers/thermal/Kconfig                            |  10 ++
 drivers/thermal/Makefile                           |   1 +
 drivers/thermal/imx8mm_thermal.c                   | 134 +++++++++++++++++++++
 6 files changed, 204 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
 create mode 100644 drivers/thermal/imx8mm_thermal.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
