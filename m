Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B601644DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bk7DRycT6F4VYsLHXgntXZvcKtEORLnHGBseczl5j9o=; b=SEcO/+HJ9F6xmN
	ej+oWhZ8iNglRC5F+9ljCWCJklJQZqbsDZMFYQULxA/b6mrC0iD3oWTOWQduTD9t14NEx0hcqUpOB
	RsuggvR0VPRsUZmIilDmgGbVZ/yzL0JGzACbOSloGymj2dRf/DDftouuUxfEpKFIlXD2BgLmG7KsT
	dznzLHDZJuDu9hMMEXnF7r5FQlcFx2UfvZtxCy2QD0SOj4whQI5+qP812r8LjjSAP/TLh19WT2usW
	TheJ0qrKU0/Of7GbE6Q8fCeEWl67vCqqHqVSPV1LY9+N2g+3w/SqMcltyVNTNP0V2CBL2R30/Fv4o
	7EtWIcHBF6W2p6qFXH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Oyq-0001S5-2q; Wed, 19 Feb 2020 13:01:32 +0000
Received: from mail-vi1eur05on20728.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::728]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OyH-00013r-Cf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:00:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=la0EHMWSiuWU6omGKmdGj0YRMHnb0NbIJiIPg3Nan+8mnmyydOknMDQclLZ6Tuog4HrvPzwhqVGt/7lPtpeImAIV0Vt7ns2kP5yvfO2bduGeyPdIkGD3j0S3aqNKtPfnlpCu8y08y06hlh8ZB9TyqNZaCKK0JXo4ECdQPc3HuiJ3KwrFwuQvwG8DVmRbtTQFf5A4j08XTJ0N57DJ9PLkULs3YXrxYbc7aiRAzJgoGigJn2SAWXPAZ/3vleTorNWaW/7cFnd/wXqloFMeP9DFjHwcSghHKPagIaPamuXoOSbUq3PKQfwUK3ld90FCRnHfxCJFx0DOJkcs9+C4sGJxqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=flafnqUM5TAMl6Q6Y2MahYf2phzVdjWl5nScu3j0lmY=;
 b=nAQDywjED7ReYY7BzgGeBnFlC0NExami6rUZBFJCyO7hYNSRohkRBYcjOQLlcGbtQkay/AKPi2AP3x5Zh4IV7VIN5zkL5rXcLQlt/31Nc3Lq2GAB/1hjj5iuqb567+r9fElwOwjwNH0MYP3YR2JpIzSiBFh6i0783NeGNduDAM9Hexb1RQtudiR+84xVIWca7Dmv7eu0L7iTwCp/5zb+n2H4rgMYJ30kZjVPkX/j4kmh7C4dg+6JOYfdd1tRc4c85FKzqFF7fUwB5zpp/xgRQjYICH78Jj/sMgzLqx4koVFbdANFM33RZkCqi22/CjJicg5uyp2vAA8JHw9AkJlMFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=flafnqUM5TAMl6Q6Y2MahYf2phzVdjWl5nScu3j0lmY=;
 b=HAhH/4oiIKbW/X8JVJJuOjjxYkq7g/tyBtumuFTHiJEX56SENgusQcOoDhdyPZlu4wL6bdYYzGlhykygYASLKt8Nol8FUWiMu64AL0LOdg8wZGTR8ZeBSmPLXsuvDTGjjUD/TUsAkvqawlW7hu1epJ+nxMts0ZbXrdcgrQBU4Nk=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB6495.eurprd05.prod.outlook.com (20.179.24.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Wed, 19 Feb 2020 13:00:50 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 13:00:50 +0000
Received: from localhost (194.105.145.90) by
 GV0P278CA0014.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:26::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Wed, 19 Feb 2020 13:00:50 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/3] ARM: dts: imx7-colibri: Convert to SPDX license tags
 for Colibri iMX7
Thread-Topic: [PATCH v2 1/3] ARM: dts: imx7-colibri: Convert to SPDX license
 tags for Colibri iMX7
Thread-Index: AQHV5yScuXrzcAy26UKODdzBFjLcog==
Date: Wed, 19 Feb 2020 13:00:50 +0000
Message-ID: <20200219130043.3563238-2-oleksandr.suvorov@toradex.com>
References: <20200219130043.3563238-1-oleksandr.suvorov@toradex.com>
In-Reply-To: <20200219130043.3563238-1-oleksandr.suvorov@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: GV0P278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:26::24) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.1
x-originating-ip: [194.105.145.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a0c2a25-53f3-42c3-4a1d-08d7b53bbedb
x-ms-traffictypediagnostic: VI1PR05MB6495:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB649589D220C72FC7E3D86D32F9100@VI1PR05MB6495.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(346002)(366004)(136003)(376002)(396003)(189003)(199004)(16526019)(52116002)(26005)(71200400001)(8936002)(186003)(8676002)(81166006)(6496006)(81156014)(7416002)(44832011)(6916009)(6486002)(1076003)(4326008)(86362001)(956004)(5660300002)(64756008)(66446008)(66556008)(2906002)(478600001)(2616005)(316002)(66476007)(36756003)(66946007)(54906003)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6495;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VAJcDoAxqC4nmGwloqMuQwEyPKG5q15etpY0nMISwLNixsf2Y/cFkFRlj9tBNgdw5SDHOXeLLSe9avurMQKTLxffx8Tveh8vdqq0QMpnTyFJkHmh3X7KJYtTtm2fnWG7UoSgmJGxEwgdHkmMozImEq7BhI45SlAmMEI17iRvE6ZjY1c4rzSM1TaMxSqa66MEfv25wbdvTvEleoPQfBMCbEitL+ZkguLQhNwWgqbYYmGWzjMNyJhEYL6m+6PEH+UqfZ4kzoFddhZqRpZRXVuBLB6V1skmsJ3uZXn0be1S8bc9e+1ptcDlUna5+bndeT4Bs+gJfuVOq/oQG2xTinZVbu21nqn0kD0vI536MHJlkgRdaRwyAWTz5fAq7hGnIZTZsruKm3MvVUQZ+tjm8KOqJWYUDtKgQ6ShLyM7FgS523w0sALK/xv6U/1eixh2U+Ru9+ufhqBKnqLyLKjIATFAIDnsqltMKPdBuxzUSLiIJCU=
x-ms-exchange-antispam-messagedata: xb9MjFNO84WEqjFYNh2u+hpi9nfl7PopDqzzPHE5BKfGGbNhOZpkTrXV+gw/sNI6wf2803Le/ov1D4yJSHCov3KbQaX9dSKJlvFaO3BO/ZoeJBPIQXaVOVRBEil6Q1Zq/QWIzzOZp5EM/YCkEteFQA==
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a0c2a25-53f3-42c3-4a1d-08d7b53bbedb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 13:00:50.7493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SGXmxO85q0GRL9DYqGz+Tih2nalFPObGAIeLynfsjvWFPMF77tq/ujzXisOY7oAXJOv0CEzUJnYogMCI7MWVc7lX6froA9QblvIf889Vy2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_050057_587044_3C355B72 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace boiler plate licenses texts with the SPDX license identifiers in
Colibri iMX7 DTS files.

Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

Changes in v2:
- Change X11 license to MIT

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 40 ++-------------------
 arch/arm/boot/dts/imx7-colibri.dtsi         | 40 ++-------------------
 arch/arm/boot/dts/imx7d-colibri-eval-v3.dts | 40 ++-------------------
 arch/arm/boot/dts/imx7s-colibri-eval-v3.dts | 40 ++-------------------
 4 files changed, 8 insertions(+), 152 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 9e9e85c10acb..20a82b1c2690 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
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
index ad7536da4313..e078487a1347 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
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
index 136e11ab4893..699b9dda2fb0 100644
--- a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
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
index bd2a49c1ade6..ab139266ce23 100644
--- a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
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
