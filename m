Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ED3B9DC0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 14:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OK+MRhaTGfjLqA0CabUX8HZrJPC5CZ/pv3eRdzZUJyA=; b=iSb
	0SYV8xZAH4i5/zs5uig4rS9YlbVJak1oJ9X7oQXWOZc2/t29p+b3WaSbsgLwHzBP2otYyDEpiFkO4
	up6GLzfuNrrZ3gpqBZsz0IvaRZEelzY3KoLh7NzYdFY2x5xbNDv/PO+V43t5SjBlpIQRXAjQwXo2s
	hONqM18zMRdOl/iEqgARn4wfuzAe862TqMPgYpdJw5O1tQkPOjwdKqlJvL2CppYwFkNUCzYHEW4YZ
	OSb0g/zi9gmiSsNlGd4RTcMh+9m0/o6Bm0RZpcIfJlPmwAO7qRezuSQn/ycV4kPustWeAuvKPPhs4
	LC39ACfHTTqvdILKTX6pVXX0wfpVohw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBeBF-0005wQ-5r; Sat, 21 Sep 2019 12:08:01 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBeAx-0005w0-0h
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 12:07:44 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46b8V22LFqz1r7hg;
 Sat, 21 Sep 2019 14:07:38 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46b8V21zJgz1qqkM;
 Sat, 21 Sep 2019 14:07:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 7lxj8g-oM6kd; Sat, 21 Sep 2019 14:07:37 +0200 (CEST)
X-Auth-Info: c0cZxCjSlxlKcGYiqPDqhe67COP5DhvCa8Wp1Bw+nMg=
Received: from crub.agik.hopto.org (p54833695.dip0.t-ipconnect.de
 [84.131.54.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sat, 21 Sep 2019 14:07:37 +0200 (CEST)
From: Anatolij Gustschin <agust@denx.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: dts: imx6qdl-wandboard: add ethernet PHY description
Date: Sat, 21 Sep 2019 14:07:36 +0200
Message-Id: <20190921120736.32290-1-agust@denx.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_050743_212867_BE14C109 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Wandboard devicetrees lack the ethernet PHY description, add it.

Signed-off-by: Anatolij Gustschin <agust@denx.de>
---
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
index 2cfb4112a467..c070893c509e 100644
--- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
@@ -279,8 +279,18 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy>;
 	phy-reset-gpios = <&gpio3 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@1 {
+			reg = <1>;
+		};
+	};
 };
 
 &mipi_csi {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
