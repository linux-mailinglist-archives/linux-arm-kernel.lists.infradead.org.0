Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07536D1148
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sKg3o0M/S5nF4TscULpvbdRZS4j+ojvIU/OUsDnvOdw=; b=PFQXaaTF2lB3j6
	mMEDTZ5aqkHY8Jb2o/lc1fIN2vGR3/gJV51S3hRf6HLWYocWo2CkHa0E1B/t+fwcbcGoLdMWs87nq
	HMbVPRCPzrs8HmQdYh2YeV72hHQdpYO4c1VV1C++h4aXbL2PUsPtD/rBXKqOgQr9MMI4sp+fvmzn/
	HxRO/6v8qU/UDIpTMVHjY5CYQkwm94xGzPBKuS2eunA0S/lgTBL52IuBnl33hTQFgDLaz2DXp0KQg
	cbM5jlDFzq16tlc7F0Gt9VH2UGcYkUPEjoVa/XvqXYmecZ3VkzIlF86Vz8Kqy6Lnddbva8Th8Rz6m
	TTjnbgo9crgdavW7TUPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICzR-0005FN-Ad; Wed, 09 Oct 2019 14:30:57 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICzJ-0005Cg-NY
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:30:51 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46pGps0HzDz1rlTd;
 Wed,  9 Oct 2019 16:30:45 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46pGpr6VZNz1qqkM;
 Wed,  9 Oct 2019 16:30:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id fEcgMaq_WGfq; Wed,  9 Oct 2019 16:30:43 +0200 (CEST)
X-Auth-Info: 8jCoUJU72/vk/KsFCOcDAPeNz8S2Ssm9kKp9j/ctXwc=
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl
 [85.222.111.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  9 Oct 2019 16:30:43 +0200 (CEST)
From: Lukasz Majewski <lukma@denx.de>
To: linux-kernel@vger.kernel.org,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] dts: Disable DMA support on the BK4 vf610 device's fsl_lpuart
 driver
Date: Wed,  9 Oct 2019 16:30:32 +0200
Message-Id: <20191009143032.9261-1-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_073049_917007_D380E7ED 
X-CRM114-Status: GOOD (  11.60  )
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
 linux-arm-kernel@lists.infradead.org
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
---
 arch/arm/boot/dts/vf610-bk4.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-bk4.dts b/arch/arm/boot/dts/vf610-bk4.dts
index 0f3870d3b099..ad20f3442d40 100644
--- a/arch/arm/boot/dts/vf610-bk4.dts
+++ b/arch/arm/boot/dts/vf610-bk4.dts
@@ -259,24 +259,28 @@
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart0>;
+	dma-names = "","";
 	status = "okay";
 };
 
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
+	dma-names = "","";
 	status = "okay";
 };
 
 &uart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
+	dma-names = "","";
 	status = "okay";
 };
 
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
+	dma-names = "","";
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
