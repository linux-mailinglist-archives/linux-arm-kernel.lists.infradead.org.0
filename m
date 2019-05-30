Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EB72EB66
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SoJyHR08pYEl+mbrMZg48O7p9HPx2Dnx9Nmx7iLzPa4=; b=Eta
	fFf79O5ccjili8j06h2WeEIeznJk5+gR0YG9TsdSYwlEl/kwWq1Mkl3nOF25sN4o7QsHSaNdNBMq7
	ed4TFeYx2wPqOM0GbfzO22lbBk8AgFrWeDFOLmQ+MCdsLNgtIWOkpXU3IgV/EHvBu/a26YPXsMxyA
	i00wfWOay6biLfDcjMmbBvshuV2VuQJOd0eouc523dgWbSEv8jl3ZY7UJI7JZZUN21Ag9/eRLtUTf
	Heq48GaKjUjKTZT2curmDt6Qk3fVNZWs3P0Voq7/y5hBPd7XqfZ96WyB4/2vyLP0bMp4CvVPsLU/a
	J4iohaWYZYlteve7u89XujLNgx0X+bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBUb-0008TA-Qa; Thu, 30 May 2019 03:12:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBUG-0008Bf-6U
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 03:12:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DD86720122C;
 Thu, 30 May 2019 05:12:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CB0BA2005A3;
 Thu, 30 May 2019 05:12:08 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 166D94029F;
 Thu, 30 May 2019 11:12:01 +0800 (SGT)
From: Anson.Huang@nxp.com
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, s.hauer@pengutronix.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: imx: Correct pinfunc head file path for i.MX8MM
Date: Thu, 30 May 2019 11:13:57 +0800
Message-Id: <20190530031357.17484-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_201216_729473_6D483CD8 
X-CRM114-Status: UNSURE (   8.59  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

The i.MX8MM pinfunc head file is located in DT folder, correct it.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
index 524a16f..e4e01c0 100644
--- a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
@@ -12,7 +12,7 @@ Required properties in sub-nodes:
 - fsl,pins: each entry consists of 6 integers and represents the mux and config
   setting for one pin.  The first 5 integers <mux_reg conf_reg input_reg mux_val
   input_val> are specified using a PIN_FUNC_ID macro, which can be found in
-  <dt-bindings/pinctrl/imx8mm-pinfunc.h>. The last integer CONFIG is
+  <arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h>. The last integer CONFIG is
   the pad setting value like pull-up on this pin.  Please refer to i.MX8M Mini
   Reference Manual for detailed CONFIG settings.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
