Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520D0154805
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O+hbEDcQ8ubwn4jQQ6zi87q/Z+uLR2TAtg5Mw3TU6Q=; b=Y6p2EAlhdiNNXZ
	7BxD2Rr1Tiw036sPQQmKSbwxrC1QXTQL6aKPv93eGTckfMRmb+zecBpiO21mwJt3/UqosBUaJ50e/
	UtRhtytod9lEzGhBV5H+xWZfGA7hfJJmnaOsATH5RVTBpuXQvyZVVjuYNFQ+/com6xwbkJ/LVOlq7
	bvKYclIyTN6KVpxAxnpeUej3zKkuO/DCsyhvEFdB/RnDJXOnRCEQjZO9RMAPEdCLa+VMTTYX1Yurm
	GccjQEHocFFV3Vg2D49YZ6MlKcuPGt5Hk/fa7CHAkY9CV9YoGSm7s16QOxR1CQLuMkloU+xLr+fvl
	tobwW1O0iXoo67tUZHgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izj2B-0001Oe-Rv; Thu, 06 Feb 2020 15:25:39 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izj0u-0007Ta-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:24:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hah9DnP8RjwkVkSEoptK7nomknl+4ojinj1uLq6LSBTz8w81XFFp408zbHPOTfQOC3RCCNiia25Q9x7gSHPWqJoeHvaKn5Q1xoXH4A/BtSNJ6101rrb2NMwQcO+lT1TNP7ME2ugqidVYN3DmueOsNwH5vg+sWwGQkayGCkiOKTUdO220P+EXc8vS5pQPANMLWxBI7fIzHdF7eZ2KoVN/uhJuPbtitHqKrfww6PO1wl+AemMVgG2MtGnF2RXy2pM0g4OOrD2rEcRinMW35dm/nrQvh866hFU98uA6DUe/iwBfKokBmS0GU5qekdW6g6to3fYhpWYP20jCnoJivEpT/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OxacbAxE9SCR9kD2aT4z0F5/qBgG16/j/quan9SZXec=;
 b=YNpYq8+zNlylLKnLS6ljQPx1ZBOcz3ig2byTXNpLsjMiE6jLRrmaTh1RRZ3lAcLcZAiXfGe2b67zpQEizjb5f6PB130ot7nGRlswKJhuFTP2Z4fQhdLbjoqLw97rq6xprSD/bDwlY1s8smDgT0r6qUQNGnGIunU3gEvKpWLvRCPraH1cB+F0YRD4GKWedvCSw20gg/83qaVLgUQ3NKashODO/dVzg/LHWYTlyW5OuosaE1i6mBiq/ttXNAz+R0VTnhXZP3UlFqI+niqekKXs9j9tYDAtX4GDtOHSRFSq52+odF3vH9JtN9vp5i/eq9O0StVd1DG2YqPAuAPNno6Eig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OxacbAxE9SCR9kD2aT4z0F5/qBgG16/j/quan9SZXec=;
 b=HRMOGWg3fgNZFe+JRay4RDVIocd8apTobLplDMYb/AZPibZKAeP4I218EhLEMs6cmzcz3fsDYTCIwjnn4Ymw56GjycuYfxqMIsOPoOz7peWHup0E/IIzB+zN3Vfgp4W3r0sVX2D+iEK7AOzD+pxRvJ26B3FwC25TUZu+A9ZyNkI=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1847.eurprd09.prod.outlook.com (10.171.76.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 6 Feb 2020 15:24:12 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7%7]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 15:24:12 +0000
Received: from localhost (193.47.161.132) by
 GV0P278CA0019.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:28::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 15:24:12 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>
Subject: [PATCH 5/5] arm64: dts: imx8qm-rom7720: added sata node
Thread-Topic: [PATCH 5/5] arm64: dts: imx8qm-rom7720: added sata node
Thread-Index: AQHV3QF86XfMAKsLvk6dsr17oKebTA==
Date: Thu, 6 Feb 2020 15:24:12 +0000
Message-ID: <20200206152222.31095-6-oliver.graute@kococonnector.com>
References: <20200206152222.31095-1-oliver.graute@kococonnector.com>
In-Reply-To: <20200206152222.31095-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: GV0P278CA0019.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:28::6) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b38e2ad5-46ea-46c1-4716-08d7ab189eac
x-ms-traffictypediagnostic: DB6PR0902MB1847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB18476329D4520A69F0DC8EC9EB1D0@DB6PR0902MB1847.eurprd09.prod.outlook.com>
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
x-microsoft-antispam-message-info: Q3nu3eNTwz9peRC0dyfH7rgbU3SgxEMIGtYmTJ8YXPnohVNmMJi5wEoKQ79m1dEB3yCUk8TCUiNZK3feWbGgHIsJz8ebPIIFTREHvvc9mQK96PJ4pI2yzpcFscmAi/biRrwIBjMzACv4MR9X4ok0meTg74GeVm202iw9T95pYYuQThq2bH/xDdcqpUdQ5UX1GqVoDcCosn5O+P7ab/6dnWNN/02MuZ7lktl2eH1EBn17633VDTXdjm7gGWBHAmT88mel2S84863oBpTq6CRRR1CD8XOv0rzgYF151ZVA2PjeURg4HJn3lFHlGxhDo/NXZr/LHZ8cWNWGj7faPkL9u/OQQuqnhYFAU/yAkR/77LXe0KsA0KhI/YMUiC0/j5Z6Cqnrs5HXJLdRlUEGr4SLWRCW+7ZsiU/k9lqBU2PWKbSSA68wm0eVaCwTokMB7Y+Y6NolIVuB8XvFRTEBP0hBo7ybB89ayDdlg0WpCsnWqfaX6+mzwdM3r3VVs0Tez1gM
x-ms-exchange-antispam-messagedata: lt8W/VObuAOAxnM9csWNQu8N8Ua0/Ao5h04Xxr75QAuhKSOP6OE0o5BOy4g6o+ggY5MZBY3dFETeYDRyeygk+bmDyd7jvxs4n/SjxCOy/i2UggP/sGiW5AlA06TEmOrxIisRXoIBBcE9oRc7k3V/ag==
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b38e2ad5-46ea-46c1-4716-08d7ab189eac
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 15:24:12.7259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ggkWW8OWt1n9xsKxTFQfHJ5f+2kl6mgay+pg6YUorGyRECwMoqRILUarLzbIjXTs4wNyFnU4R3g0qvLrkuroxkiUEnpD5qKvGjLreO9Kc8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_072420_547466_85C3D866 
X-CRM114-Status: UNSURE (   7.21  )
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
index 466f8c5c3705..8edfc8302357 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
@@ -106,6 +106,12 @@
 	};
 };
 
+&sata {
+	pinctrl-0 = <&pinctrl_pciea>;
+	clkreq-gpio = <&lsio_gpio4 27 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
 &usdhc1 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
