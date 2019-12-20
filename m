Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7B81276A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 08:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GRP4kqEFjc/1sjdn8afJRc925CE+hlbXeTjKVEtbx4Q=; b=oIl
	Y+c+J7lAlOfWZ4N3Y5nB63NYybZB7Bwi8AaCxTEEd8TwPu2WR2IdLVG/Wz5q/EM8U8zaN88Xdxiep
	mPXtYvFd5CBGVhhLOJu0VuZJomTblBjh4c8CyxlbRS1OlMIxeoDppl+2KfB0pHQaKSCJR4CjViCMu
	O9Fzd6z/T8gKJw2xPGeNNxZBdN9AqL5+X7+hyODi9aSg9E7qQ/qrTepTIIa4G2xlt4xxtl8zRAxdn
	HUvBMuzbGRem/clDlAHG8Fct8CWxPf23MaAiNppFwERWel8z1y/ThyVJdbX6/tAOQ0TlLDK0iRI4Q
	X6WJIPSc6U9WMfjw6rYbu69qn+g410A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCu4-0003rc-8t; Fri, 20 Dec 2019 07:40:52 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCtr-0003qV-GT
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 07:40:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CCAEA2000A8;
 Fri, 20 Dec 2019 08:40:37 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A0A3C201225;
 Fri, 20 Dec 2019 08:40:31 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4A8114031B;
 Fri, 20 Dec 2019 15:40:24 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: maz@kernel.org, tglx@linutronix.de, jason@lakedaemon.net,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH V3 0/2] irqchip: add NXP INTMUX interrupt controller
Date: Fri, 20 Dec 2019 15:37:09 +0800
Message-Id: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_234039_684626_4A5CB068 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: fugang.duan@nxp.com, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

   Thanks for your kindly reminder:-), I understood a little more. After
adding the .select callback, we can assign an interrupt to one of irq
domains from interrupt specifier. Thanks a lot.

ChangeLogs:
V2->V3:
	*impletement .xlate and .select callback.

V1->V2:
	*squash patches:
		drivers/irqchip: enable INTMUX interrupt controller driver
 		drivers/irqchip: add NXP INTMUX interrupt multiplexer support
	*remove properity "fsl,intmux_chans", only support channel 0 by
	default.
	*delete two unused macros.
	*align the various field in struct intmux_data.
	*turn to spin lock _irqsave version.
	*delete struct intmux_irqchip_data.
	*disable interrupt in probe stage and clear pending status in remove
	stage.

Joakim Zhang (2):
  dt-bindings/irq: add binding for NXP INTMUX interrupt multiplexer
  drivers/irqchip: add NXP INTMUX interrupt multiplexer support

 .../interrupt-controller/fsl,intmux.txt       |  36 ++
 drivers/irqchip/Kconfig                       |   6 +
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/irq-imx-intmux.c              | 311 ++++++++++++++++++
 4 files changed, 354 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
 create mode 100644 drivers/irqchip/irq-imx-intmux.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
