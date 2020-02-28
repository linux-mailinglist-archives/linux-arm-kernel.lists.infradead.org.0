Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7FA172F05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 04:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BseLwAbZUzo+vZSVslpuWI1091By4gK+FxqtVcoTVLg=; b=fMf
	qNgeg5wlg1OL+fzX60tAVRGH6izrkLWS6l4ALK/PsyqkauaTZF3c4AW8ciknthW3dPDs6tqLqsfNG
	QJ6kecW+7L2P7T1SOKGCwMk5qCKvpn8EQYJEoXIqpHdHkHPqdQwEiV4SEHL4+gn/bIukNe3izAdEr
	cKo9e9ymO9kzMWE+BLL5lUJzuSVN6JIU6tcDj6IdLzmJwgLp7hAozq1DeoysUKBx4BY3K9q1DDZN7
	cdj2OvP1be1csZl5a3MoL/DAcBmQBij4ndEwoyFG5DTxZH0H1SLxn0MBSwTQP50bP+NhxFC1LApe9
	6SG42M/wBaYLcHXimA+F+EgPFDXgWFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Vsm-0006gq-F4; Fri, 28 Feb 2020 03:00:09 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7VsX-0006ef-75
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:59:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6620A1A07C9;
 Fri, 28 Feb 2020 03:59:47 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8898C1A07B4;
 Fri, 28 Feb 2020 03:59:31 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4F690402DD;
 Fri, 28 Feb 2020 10:59:18 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, aford173@gmail.com,
 shengjiu.wang@nxp.com, ping.bai@nxp.com, jun.li@nxp.com, peng.fan@nxp.com,
 bjorn.andersson@linaro.org, olof@lixom.net, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/4] dt-bindings: thermal: imx8mm-thermal: Add binding doc
 for i.MX8MM
Date: Fri, 28 Feb 2020 10:53:30 +0800
Message-Id: <1582858413-11906-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_185953_396497_4BF8830A 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Add thermal binding doc for Freescale's i.MX8MM Thermal Monitoring Unit.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
No change.
---
 .../devicetree/bindings/thermal/imx8mm-thermal.txt        | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt

diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
new file mode 100644
index 0000000..d09ae82
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
@@ -0,0 +1,15 @@
+* Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
+
+Required properties:
+- compatible : Must be "fsl,imx8mm-tmu".
+- reg : Address range of TMU registers.
+- clocks : TMU's clock source.
+- #thermal-sensor-cells : Should be 0. See ./thermal.txt for a description.
+
+Example:
+tmu: tmu@30260000 {
+	compatible = "fsl,imx8mm-tmu";
+	reg = <0x30260000 0x10000>;
+	clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
+	#thermal-sensor-cells = <0>;
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
