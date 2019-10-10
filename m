Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802A6D25F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PIbIeGCLd4O/mZtRzoF0KaJaFiFz8JkOGdKHAzmsbhE=; b=HTu2bjQYkKNbtt
	LkIbZZaVx4dNnPt1VMJ3eTOwmt0x3EJpYN2xz56lx/LVQTVhqzVee8kw93ozY0sCffOnLdRhQUveH
	KW6lbNJVls7A/5GTVTtEBsP7Ob3d8KTQkXDBlVs6rDuAr4k6dLghH+Nhmxa/6l3VYkbyDSQl0dgGL
	18JYNgLMuByiUdxkyZV9zT2Gb0NULA40dgBuhlG/ca76OBa4VqAEp/6k2l44fmQC4wR93vb4EP/oz
	Klgp3zzF/x66WMXjd+AvTSnwhOQxNF8xsfL/WDvXO7G2lkmAhGy9KJzT1ftpXZGrOObawIXyoszfL
	zZEDlXflOktNlWBbTYgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIURD-0007m1-GA; Thu, 10 Oct 2019 09:08:47 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUQr-0007aE-PS
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:08:27 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46plcR3d7hz1rQCD;
 Thu, 10 Oct 2019 11:08:23 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46plcR0bYQz1qqkQ;
 Thu, 10 Oct 2019 11:08:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id GACLg3BAFslI; Thu, 10 Oct 2019 11:08:20 +0200 (CEST)
X-Auth-Info: 3yv9RJi5v/uCUl5RBM3UxIXknte+Kate4wyyjunP9RI=
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl
 [85.222.111.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 10 Oct 2019 11:08:20 +0200 (CEST)
From: Lukasz Majewski <lukma@denx.de>
To: linux-kernel@vger.kernel.org,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2] dts: Disable DMA support on the BK4 vf610 device's
 fsl_lpuart driver
Date: Thu, 10 Oct 2019 11:08:02 +0200
Message-Id: <20191010090802.16383-1-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_020825_991637_000C0222 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
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
 Sascha Hauer <s.hauer@pengutronix.de>, Lukasz Majewski <lukma@denx.de>,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change disables the DMA support (RX/TX) on the NXP's fsl_lpuart
driver - the PIO mode is used instead. This change is necessary for better
robustness of BK4's device use cases with many potentially interrupted
short serial transfers.

Without it the driver hangs when some distortion happens on UART lines.

Signed-off-by: Lukasz Majewski <lukma@denx.de>
Suggested-by: Robin Murphy <robin.murphy@arm.com>

---
Changes for v2:
- Use /delete-property/dma-names; instead of dma-names = "","";
---
 arch/arm/boot/dts/vf610-bk4.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-bk4.dts b/arch/arm/boot/dts/vf610-bk4.dts
index 0f3870d3b099..830c85476b3d 100644
--- a/arch/arm/boot/dts/vf610-bk4.dts
+++ b/arch/arm/boot/dts/vf610-bk4.dts
@@ -259,24 +259,28 @@
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart0>;
+	/delete-property/dma-names;
 	status = "okay";
 };
 
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
+	/delete-property/dma-names;
 	status = "okay";
 };
 
 &uart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
+	/delete-property/dma-names;
 	status = "okay";
 };
 
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
+	/delete-property/dma-names;
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
