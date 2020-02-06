Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9675154803
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:25:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8svje/tIvKejXNTgm7EXgpE+4lqiG3XX64+UdEeWE8o=; b=amze1oiVBjnhE5
	O7UDRta+z2IIiZHwHhjLNR7GcgdthKElgiHXDgnP63GV7Ig9ATNNljA52jtFNW0ox+DLmalNkFYjI
	tHD/MTGb0sPIUZ3pMCrUg8Viu6XIDtj/IhuZLmCp02mzVoQJQb+jswpoBIXpxjZ8FhsCE79dBtNLB
	aeyJw6G/jDRAZeA395lo/49tUHziQ3NoBv1CgHVTOMnesX4CxT5PfIZLNd6MBqYBdp9bLp9zNzULJ
	l2tQEOGtCvGktwDz4ox2RKXbWAvmEwqppCeuiw+3VbsX+g8ZWYYOr4GkAKSFa28B8ymx7XqGE+yco
	IcuevmL+t+BBC5MGGbEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izj1y-0001D8-Kz; Thu, 06 Feb 2020 15:25:26 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izj0s-0007Ta-NE
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:24:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N62Z4B/X04Kne4ksxkeY0ib6j6gEQFrqQgGUJ0kOD3Gz7cjOu4gW7teka6hf3q6yqbtag7c0mlg5rD5DmwTTLhA5b5ejGDbxezOZUwSIWoiK/5NbH44HbVlTpAo7Ms/xMH/ijG1IqXkO7R+M9LYbd+w7WQcCfjE3OI/SZJoq55inHFbr93gwM1Fa7fC6b5CYzi+6B6MvwSN/+QfQViltXEg9iJ1zXqlOgePuy+XHZalNySjmAmrJda9bWj9ZBiHEFgC6+T6Dm7LP4jWx5Y5ALJLgFgvg3ZGN++T6Zb+W7mYHhIzM22Kb/PTEsz7KNSjKeWR39+qi7/Z3+v5HLT1+wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CfIDiG3f2lVvkBVgFK8fZrQMXDhES4e9XzYn8SJWfE=;
 b=chzj/eTH0qwH7l/m0OUD+LQiFeuPxzZw0bH5V0ZBHUaCxceKxd+llsYtPqMG91kpoKjwGCLZ/zJCItBNCBTOcaf+wmKi518WhkReBj7aSv7Tt40SY77U6rgSTvu48c7WiaznwpNq15DCC838FJywLvlbCBDY5PueTMdsPbUS24kGmRx9CW/Eur5SVT+G3AkFeTFrCUAGgCXa7oNkqTUEgXLSYWH+pdVSdx1MIGCOjbOVSLESswlHJSWTjXlLZuXkk2LeCyjlVSKyKhgmBf3G88608ef3O+5c4ptu3IKc+J2UltFVaEWpWXkZBtZmUklRadchfh432tyz+EIl0+E/9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CfIDiG3f2lVvkBVgFK8fZrQMXDhES4e9XzYn8SJWfE=;
 b=KFowUmOP2UILuTiCA/ZzeQ4rGo16+P6J8vFzrpRuWSu3kr0qvp0tu6yo7CCIT1VRi2uW1uO4xnop7Yk4RGGlZ+7ri6E7pBsiJ5k2RY/aWN099+GhvlJTA0fq6BISf8s04F+5YJbcfJrU1rXPRv27ay2YEaWdRmRs/CHdIiiY4zY=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1847.eurprd09.prod.outlook.com (10.171.76.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 6 Feb 2020 15:24:11 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7%7]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 15:24:11 +0000
Received: from localhost (193.47.161.132) by
 GV0P278CA0033.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:28::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 15:24:10 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>
Subject: [PATCH 4/5] arm64: dts: imx8qm: added pinctrl for pciea
Thread-Topic: [PATCH 4/5] arm64: dts: imx8qm: added pinctrl for pciea
Thread-Index: AQHV3QF7o6P+rjW/+0adfVkW6hcFWw==
Date: Thu, 6 Feb 2020 15:24:11 +0000
Message-ID: <20200206152222.31095-5-oliver.graute@kococonnector.com>
References: <20200206152222.31095-1-oliver.graute@kococonnector.com>
In-Reply-To: <20200206152222.31095-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: GV0P278CA0033.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:28::20) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6769e0c8-fff8-4aac-1416-08d7ab189dac
x-ms-traffictypediagnostic: DB6PR0902MB1847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB1847D678C139893EE5DE86F9EB1D0@DB6PR0902MB1847.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39830400003)(346002)(376002)(136003)(366004)(199004)(189003)(508600001)(4326008)(64756008)(186003)(5660300002)(2906002)(6486002)(66446008)(6916009)(81166006)(81156014)(44832011)(16526019)(956004)(2616005)(26005)(66556008)(4744005)(66946007)(66476007)(54906003)(7416002)(6496006)(8676002)(52116002)(86362001)(36756003)(8936002)(71200400001)(1076003)(316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1847;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: keXvlmhOvPYxwID81i8++8LcJkTtb2c+TFv/PJ23meg4lBPrKsFdcw5LPr42nEB+4tVTA/2I6b44L5uFStQB+Oq1xnk7eZEP34b1ebiDhIF/wWLsJ4mmV+qfmxFAQN6+JKSE2Vh1jGdJ4jsborwE9FlHHH/Qq+ZtK4niVPNiw8I54kAm+xLnKtW+HDLNl2vyJjOLdzdMdx/1M9Bs5PZ5yE+AShnim7aneWcdFj3SOJ6lyykkX71jYfxIc6wznPoEDEeP9Y+BDkFDGHhd7nMyyf2MDGSCIvgiq2aEF2ArHVlg4JKgtuPgYTBDe2TFq+dojBK0WYyNMvozA/1zwDKFeeYOvZQX/5k5CnWV+t/oJgp00lSr8s0grWq0XjyQ7yJMPL2mRkbrxD5jxJgFlHyTnAOx/qVeMeVn9zu1VQjqImPcdB5RSPRdlerCg/PzA9i9w95Og7/VjkfrZi6pjtCztTtGyHx9exQCrGogQJcl5KsX5WnCzxkCN2k55ErPDPlf
x-ms-exchange-antispam-messagedata: F+9qr+rhNflahVW4scQVkIlauYIx9b4VRlaDjgiH0M6Yw46LdHTahQunTR8E5YiIBe1JE07nyoVFG1t+tNFDD1D3lfKlDVRoqpbn2o+1vHpz5sEmG5X0IJ+WA7DPjruLbspaFcxf5EuerYc77YBuEg==
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6769e0c8-fff8-4aac-1416-08d7ab189dac
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 15:24:11.0428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mb2m5L85cQRWxwsPpk0ESqmClHFs6PHSEMLNRQeEY/3Ubg+0voHk4noZju5HKCfm9OtuQs/4E8m+iihULHa3jF49j9vTKZgRACDbZsVhQ70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_072418_774043_DD05BE17 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.87 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "peng.fan@nxp.com" <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
index 331eec2dff01..466f8c5c3705 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
@@ -174,6 +174,14 @@
 		>;
 	};
 
+	pinctrl_pciea: pcieagrp{
+		fsl,pins = <
+			IMX8QM_PCIE_CTRL0_CLKREQ_B_LSIO_GPIO4_IO27	0x06000021
+			IMX8QM_PCIE_CTRL0_WAKE_B_LSIO_GPIO4_IO28	0x04000021
+			IMX8QM_PCIE_CTRL0_PERST_B_LSIO_GPIO4_IO29	0x06000021
+		>;
+	};
+
 	pinctrl_rtc_epson_rx8900: rtc_epson_rx8900_grp {
 		fsl,pins = <
 			IMX8QM_SIM0_POWER_EN_DMA_I2C3_SDA	0xc600004c
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
