Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F6B18C5D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3FowYU4bStsxZ8JRvdQHgQzhHNETruVfEpklrQ/SXuI=; b=VnR
	iqwIHrljU5hkYIY3I5t3VP/8FqwwEbzSLlV9XDUHZMDhkHWJ4OqHkLfihep65vWCjRPe3iUXW8Pg2
	T5ngz4dSmwjy6tZJZyrSi/TD8KNSuexRsiCrzJ4Cpacdbw+7aUymBXl8YmbFCZ74GO3TbwdLvCDr7
	JUZJNpts8uNCa6OuzYQc7YqvpFPYgLWSjws0SE1F7OTtymw3g69FDAvB+0GTHta/F8BIHcMOJzAdF
	JR2CZ/POZZt7L8VZPKr35OjCE/Zzgqr/9xAlh5DUZHu3ohc/VQ6ohIUql5Y9W2R/eVkS2I5iR8N98
	PF155K8TmF+zM3yqU34zCJUDLoUx6sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8Po-0003xo-HH; Fri, 20 Mar 2020 03:33:44 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8Pf-0003wW-NG
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:33:38 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6FA3E1A034C;
 Fri, 20 Mar 2020 04:33:32 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E738D1A0340;
 Fri, 20 Mar 2020 04:33:24 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C18D9402E4;
 Fri, 20 Mar 2020 11:33:15 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 horia.geanta@nxp.com, peng.fan@nxp.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/3] dt-bindings: thermal: imx8mm-thermal: Add support for
 i.MX8MP
Date: Fri, 20 Mar 2020 11:26:29 +0800
Message-Id: <1584674791-9717-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_203335_896825_A687793A 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add thermal binding doc for Freescale's i.MX8MP Thermal Monitoring Unit.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
index d09ae82..3629d3c 100644
--- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
@@ -1,10 +1,10 @@
 * Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
 
 Required properties:
-- compatible : Must be "fsl,imx8mm-tmu".
+- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
 - reg : Address range of TMU registers.
 - clocks : TMU's clock source.
-- #thermal-sensor-cells : Should be 0. See ./thermal.txt for a description.
+- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
 
 Example:
 tmu: tmu@30260000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
