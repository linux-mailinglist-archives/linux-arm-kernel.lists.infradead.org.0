Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9912FD950E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DjqnNtcm1LIJvw3VrnbYAxKye4VJ6Wp8X7b5Owq7p4=; b=JdwupJis8fp6Yl
	NlG8pdOVY2s+ZU0HIk78ylqqrl8WgdtU68QCMeiTQee/D9b/JAQLZAozK2mOtl7Dww9sUuPyxE9fa
	qCo8gGzc/TpJ55AmIVEFCAyHvQqdxQYqco6VaisGtNz2pDVorO9sEK8gIohr7xT6INBLMiJjCnViY
	E1r7dHOuAzPeC8Depf0BTmEQ9N57HV6u/37OqG2xUZsCodSm3AEeXLvRKFdnH76VAaZWLBDtnrDau
	7KqhG9UQ+Ni3GpVNd+QJTSIpEmD2rHfW45hRH9qhOcVSVeXtCnKijgmCff0Q0hmEHlIvtCje9oest
	XBldDHt9zzWT2CM0uYqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkui-0006K7-76; Wed, 16 Oct 2019 15:08:36 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKktf-0005d1-TQ
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:07:35 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id B602267A91E;
 Wed, 16 Oct 2019 17:07:28 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 16 Oct
 2019 17:07:28 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Wed, 16 Oct 2019 17:07:28 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: "krzk@kernel.org" <krzk@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, Schrempf Frieder <frieder.schrempf@kontron.de>, "Mark
 Rutland" <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>
Subject: [PATCH 04/10] ARM: dts: Add support for two more Kontron evalkit
 boards 'N6311 S' and 'N6411 S'
Thread-Topic: [PATCH 04/10] ARM: dts: Add support for two more Kontron evalkit
 boards 'N6311 S' and 'N6411 S'
Thread-Index: AQHVhDNsS5ktJLzuU02mNdvRfw+CLg==
Date: Wed, 16 Oct 2019 15:07:28 +0000
Message-ID: <20191016150622.21753-5-frieder.schrempf@kontron.de>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
In-Reply-To: <20191016150622.21753-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: B602267A91E.AEA7B
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080732_363574_020DDF2E 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The 'N6311 S' and the 'N6411 S' are similar to the Kontron 'N6310 S'
evaluation kit boards. Instead of the N6310 SoM, they feature a N6311
or N6411 SoM.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts  | 16 ++++++++++++++++
 arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts | 16 ++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts

diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts b/arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts
new file mode 100644
index 000000000000..239a1af3aeaa
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 exceet electronics GmbH
+ * Copyright (C) 2018 Kontron Electronics GmbH
+ */
+
+/dts-v1/;
+
+#include "imx6ul-kontron-n6311-som.dtsi"
+#include "imx6ul-kontron-n6x1x-s.dtsi"
+
+/ {
+	model = "Kontron N6311 S";
+	compatible = "kontron,imx6ul-n6311-s", "kontron,imx6ul-n6311-som",
+		     "fsl,imx6ul";
+};
diff --git a/arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts b/arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts
new file mode 100644
index 000000000000..57588a5e1e34
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 exceet electronics GmbH
+ * Copyright (C) 2019 Kontron Electronics GmbH
+ */
+
+/dts-v1/;
+
+#include "imx6ull-kontron-n6411-som.dtsi"
+#include "imx6ul-kontron-n6x1x-s.dtsi"
+
+/ {
+	model = "Kontron N6411 S";
+	compatible = "kontron,imx6ull-n6411-s", "kontron,imx6ull-n6411-som",
+		     "fsl,imx6ull";
+};
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
