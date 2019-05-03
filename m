Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130DE13182
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qw3hvkx/ZRi08Ym5ml+uMQJKSKHhvqnK7aXarEdj+Nc=; b=HSCTmj+gNyZq8f
	dP/guECCubSOon17wbjF25qEKmPLHdsAI/NKUGn9hSu7f+wCo5yoabW1niXlxngziCUQg661ZbwUn
	Ikj1PQqvgugX/MTegKCcurXSvw+c4hRXkbHyVaErrFnohf5HkRt99cRJXzoqM2HeYFXLpCGzVsbeZ
	YwqoO2F92LkspXwqTC3k1FGQl55uPxfZpLnbuG40JqfjzP9Cdy3ZpeIXcNsVKdMjdb4Osmh3Cdf7g
	DE3OAzPUSxftD/K/JbWOOIoTVGlP//J+Ggx4LuhxY6Om+IIDi0zSlEhuC+QhCvJOS5xSehUYX+1wc
	6jY4ED+fwGhD+wgMFhTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaUz-0002x5-Sc; Fri, 03 May 2019 15:53:21 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaUX-0002a2-VE
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:52:57 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 44wc8y4fk0z1rHcm;
 Fri,  3 May 2019 17:52:50 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 44wc8y4D6Fz1qtf0;
 Fri,  3 May 2019 17:52:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id ZtHSPBZWox8V; Fri,  3 May 2019 17:52:49 +0200 (CEST)
X-Auth-Info: ns71lzXNlev4xhR5mjPFzJ73waNxl9vsMF7IxkZmKag=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri,  3 May 2019 17:52:49 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] ARM: dts: imx53: Add ethernet PHY reset on M53Menlo
Date: Fri,  3 May 2019 17:52:30 +0200
Message-Id: <20190503155235.6414-3-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503155235.6414-1-marex@denx.de>
References: <20190503155235.6414-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_085254_155027_E499D281 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ethernet PHY GPIO reset line, to let the kernel to reset the PHY.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 46f990759660..a4cd2c22fa9e 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -86,6 +86,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec>;
 	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio7 7 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
