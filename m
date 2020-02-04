Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A989E151956
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 12:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEHoiXGuZ91ozPH0WHV2jdcd56/X6huLsAtirKt5PyY=; b=ZXDTXRHYgbW2zv
	fL/uOFl91b1JQMzNM2yGjKpO6jaS/JypYkVkSByHoIbJh1yonZZbWh4w2DBYr9lV2lsMNYhVUXGce
	eJXreY4HeVTJCIKwcIzfJ1JVtyrKJCZCbEe2eXNIqjesiM2oU+umx3UTcaRvCZBqtMOFzmPK7u05l
	aTXhj2HS7ZkDSca7rp2XQywUx5UF7n5z/tWyOOUqUBKDu57m16dM7xyyxsEJOnTlOtP5CbQB1ZFa2
	qjowyI/fh3L/9hjXEGsW+oLGApqIO5Q6AeReT4vs8IL0tmJ8lzkImkRCaTJMV7F2y8Q9OuEuxbJZu
	RkgKSbGyIvY3d+qUqvsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyw8d-0007Zx-8i; Tue, 04 Feb 2020 11:13:03 +0000
Received: from mail-am6eur05hn2221.outbound.protection.outlook.com
 ([52.101.152.221] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyw7s-0006lr-HD
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 11:12:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hrKq+rYTSKzMEZrQZhvhd3uMQ58sP7IzpajSD+5sFpKWcNxfhxc7Yq3Jid36f1s3ytriTG4FJrOpiEX/UJO+SQxZXrTQpQMkQDRdER1V3lctyzIirENhQapmgVZeSaNWgK94OV/AqCl6kLxVZtafqzZaDexDCOi3EsllWRgzkDNjfV2e4mAzZrfwihhaAT4BajRoRvV8PAj7h58CTBTzRm8k2JjKQm5TMPyha5vCqBIb+VUVk5Mg11IVevSjsq8sLVfKAWjV4SFZ+VqfuHVP6Uy9RDfjo6tk/1Uk5znYtTrtsUkbi8jUHP83ZWAJhPJzordGYTHIe87E28p+veoKEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YEHdRL5WqTGHXByGQC2FobCOR3zbgD2dtSVabEPyy6o=;
 b=hi3s682UZcfa4lpyzrAMYbV/2LFB1Lpl/qKtPyDdXSCAt5UX8a5Xx3i3sNSfKcDcgSQ6ocww60WtxRC95G+/8x9WhuNno5VjRWHbF+Gzyg1dqHGuEWy+E5YaRcLlb/cJKdY9TEjpST95EmsLTXt3mKOuFowMR8PjUCsCLqPD5XZ3hI2BLaljFlh1mYVoidChfB6yj/HRFi/HgqKluUZvxqCWXpM5p9npfWhtcRshkBPbAUlECfmiOUS6M+En2y2nNGiv3EoFSrCJsqDf6IgmYxXu3kzSfoaYsjH5F9gkprav/8ADiIZrZX55FnDSjYKokJEhwRfisNIeejkJq1DKNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YEHdRL5WqTGHXByGQC2FobCOR3zbgD2dtSVabEPyy6o=;
 b=vVQdksouGu6cleBQbk6lx5rZkTCyqRnYdjEPp4HSfaekE5zrhJhh+Ediu9gqJgVBDZcd+Lzfz5NlOHQVU4vSbjLIhy3LPU61qZQRi3hSUc/iJ9jdC0ieRObEArNPk+/F20nQpLBKVsXLTltxOkoEOPKxEz8gAo6M6Y5BJNi+1NI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB5632.eurprd05.prod.outlook.com (20.178.120.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Tue, 4 Feb 2020 11:12:04 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 11:12:04 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 3/6] ARM: dts: imx7-colibri: Convert to SPDX license tags for
 Colibri iMX7
Date: Tue,  4 Feb 2020 13:11:48 +0200
Message-Id: <20200204111151.3426090-4-oleksandr.suvorov@toradex.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
References: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
X-ClientProxiedBy: PR3P192CA0015.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:56::20) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
Received: from localhost (194.105.145.90) by
 PR3P192CA0015.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:56::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32 via Frontend Transport; Tue, 4 Feb 2020 11:12:04 +0000
X-Mailer: git-send-email 2.24.1
X-Originating-IP: [194.105.145.90]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 634f30d7-8d80-4cc0-92a7-08d7a963109f
X-MS-TrafficTypeDiagnostic: VI1PR05MB5632:|VI1PR05MB5632:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB56322BEE6C1A0AC83BC496FFF9030@VI1PR05MB5632.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:SPM;
 SFS:(10019020)(4636009)(39840400004)(366004)(136003)(396003)(376002)(346002)(189003)(199004)(1076003)(86362001)(36756003)(5660300002)(4326008)(6666004)(44832011)(316002)(6486002)(52116002)(6496006)(54906003)(16526019)(186003)(26005)(956004)(2616005)(478600001)(66556008)(66476007)(6916009)(7416002)(66946007)(2906002)(8936002)(81156014)(8676002)(81166006)(23200700001);
 DIR:OUT; SFP:1501; SCL:5; SRVR:VI1PR05MB5632;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; CAT:OSPM; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cFfhwNc/MjO01YQWo5ZvXh/75ZNl1WolZErL8l6z/OmvDUX+jnUF++b0G0LR3WViINDKM6p34pKb+zbta695JmKrdorrV5m/lrIOw539mW/uKL8e04i0wcHdoxHDAjsf1ZVeftRkC1r/Fg72Luc/tG98BpRSCRfw+j8fnJqFkd4yM7ZVUW4Z0CrivkXyNjRdnLfD6nIyBWzbWlxQAAlbNZbJkP7d1EgDErB35ZJqh0dkvs0U7gg1qPZXypJqOpjf+8Z+xixOLSDp7Hy0nLBIplrim4p51EeHPgaBfsRdJFmxEs32rxycWiBDSDr/0x6FxjDb7kFHfWnj5l7MHIg6efRrMrtFwyiIvDlwvcV+jWkfbjsmNIupZNLtbmG3LP1Fsl4Zp5Vm1jM7STJy/QbXilGQtXtGNIPwwXpSQLRYMQ0MNwA6sd6FyFUHMNc50u20IYNnvPMEEtpRysmu0i90LEo3mug3tIURdDuBxn4vh3MGKsCciLrg/vqnBcQmeoBCmVTU1a7bKJtAvs9+atZJruomkhJGMPzXUw7Nk6S/FoVJWNmx5DgX3jD4YVNIZGKKsvfCYmPu7QCdNEJVb3XA7CiJixzDaHET5rnCIQLM/dTSoH3dpjOo0411NqdidfYiyDFzek365Jcw/Sq2XWqh63KRO2pHi1j0QUVoNZnPpBD5TEl7FLPCKrSipG7zfQTxBj+ZEZrNHcH/ZDLK0IJT7JpNvPkNesrSv0Kp4kOssN5/wi5rstEeD7NLQnoXbgN9HK5c0z6a5Mb6daH6DBssIw==
X-MS-Exchange-AntiSpam-MessageData: y+jIhxwhZ2O4UWAw6fB9ynA94szZXp+JXpek3AYU1LJCFd36JL8ZwunavqkOaadJkPiJDauDviWlBNVAfNBxT4EYk32HLXHimT8i6S4Do9TnOnE1cW+QA89i1Ny1Xx9CvpJGkVyCvQPjZZq8jdlViQ==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 634f30d7-8d80-4cc0-92a7-08d7a963109f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 11:12:04.3463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kPUtb/s2PlAQbrJgHh1Q7jdHxE7CPj9GbUwFS5sBZmqXLXCpRemV04DaJjJ2f/GU6NMBX+COOwUiIPrrrMB/6PYRXaeiuR6Ip7ZJOshl7po=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_031216_727745_D51902CD 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.152.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace boiler plate licenses texts with the SPDX license identifiers in
Colibri iMX7 DTS files.

Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 40 ++-------------------
 arch/arm/boot/dts/imx7-colibri.dtsi         | 40 ++-------------------
 arch/arm/boot/dts/imx7d-colibri-eval-v3.dts | 40 ++-------------------
 arch/arm/boot/dts/imx7s-colibri-eval-v3.dts | 40 ++-------------------
 4 files changed, 8 insertions(+), 152 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 9e9e85c10acb..287d88e3deb8 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR X11)
 /*
- * Copyright 2016 Toradex AG
+ * Copyright 2016-2020 Toradex AG
  *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 / {
diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index f18a7c9e1303..7b4e81412381 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR X11)
 /*
- * Copyright 2016 Toradex AG
+ * Copyright 2016-20 Toradex AG
  *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 / {
diff --git a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
index 136e11ab4893..1808759e718b 100644
--- a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR X11)
 /*
- * Copyright 2016 Toradex AG
+ * Copyright 2016-2020 Toradex AG
  *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
index bd2a49c1ade6..b0ad98c119d4 100644
--- a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR X11)
 /*
- * Copyright 2016 Toradex AG
+ * Copyright 2016-2020 Toradex AG
  *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 /dts-v1/;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
