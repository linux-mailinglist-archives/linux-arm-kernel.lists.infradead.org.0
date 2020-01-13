Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86587138B16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:38:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H2rBpuU5rlsqSTeBo8fs1CpHy1xPO+TsKE8VmZjz5BU=; b=chV6aFDSlevLPOMTCtxS+DEkY9
	gXPqtS4G1C9UYmCodu01JlV9zypXWyrKa7sQOadteeUNWHBHWaLL37KPw7fKw0AUfZUeVGu9pRhll
	WZ7xMtMCX0bzirxwPbJxtA/12vlLayltagujJ6UL8cZ+N+UuaOoSFt7ZwZUqk2U0Lgy5ixlBYO0az
	PRoB9ro6NolHbNfmoNE/SQRraRr+1qIEp5HzUgcMxzQEd7+/gZDeaaZ/0AL4Aej4iWchtB7r49HRR
	jo+sRritbHn9zdqOdAKFD2PSvNV9BHAB9InVuhWZAHWMYuDTArYWpryKjoXOsoE7xDLIbyzUb14jF
	DiLJbD5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqsR9-0003VO-SR; Mon, 13 Jan 2020 05:38:51 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqsQC-0002or-G7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:37:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2DAC9200F2C;
 Mon, 13 Jan 2020 06:37:48 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 58661200F0E;
 Mon, 13 Jan 2020 06:37:35 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B1879402A0;
 Mon, 13 Jan 2020 13:37:21 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, vkoul@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 broonie@kernel.org, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, rjones@gateworks.com,
 marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
 aisheng.dong@nxp.com, richard.hu@technexion.com, angus@akkea.ca,
 cosmin.stoica@nxp.com, l.stach@pengutronix.de, rabeeh@solid-run.com,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, jun.li@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-spi@vger.kernel.org
Subject: [PATCH V2 3/7] dt-bindings: imx-ocotp: Add i.MX8MP compatible
Date: Mon, 13 Jan 2020 13:33:18 +0800
Message-Id: <1578893602-14395-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_213752_694245_99DFE95A 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Add compatible and description for i.MX8MP.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch
---
 Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
index 904dadf..6e346d5 100644
--- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
+++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
@@ -2,7 +2,7 @@ Freescale i.MX6 On-Chip OTP Controller (OCOTP) device tree bindings
 
 This binding represents the on-chip eFuse OTP controller found on
 i.MX6Q/D, i.MX6DL/S, i.MX6SL, i.MX6SX, i.MX6UL, i.MX6ULL/ULZ, i.MX6SLL,
-i.MX7D/S, i.MX7ULP, i.MX8MQ, i.MX8MM and i.MX8MN SoCs.
+i.MX7D/S, i.MX7ULP, i.MX8MQ, i.MX8MM, i.MX8MN and i.MX8MP SoCs.
 
 Required properties:
 - compatible: should be one of
@@ -17,6 +17,7 @@ Required properties:
 	"fsl,imx8mq-ocotp" (i.MX8MQ),
 	"fsl,imx8mm-ocotp" (i.MX8MM),
 	"fsl,imx8mn-ocotp" (i.MX8MN),
+	"fsl,imx8mp-ocotp" (i.MX8MP),
 	followed by "syscon".
 - #address-cells : Should be 1
 - #size-cells : Should be 1
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
