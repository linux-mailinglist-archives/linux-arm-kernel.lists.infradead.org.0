Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247F51547EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=56TO0F7HcfMWjjHYl2xRiiIKVpE09fcbLKAtLqj/iRQ=; b=bSTo4/NkdgskMQ
	bo8fTwiA/rGpx06/MVE+65S8iu3BUlBj4c7D96NV5i8D70rzqJNgRA9ZMMbQIruTf+0WAAf0D8pUO
	phwX8aA7oVdBjg8pT5/0H49/jcB4eV4BWxuTmNADbcL0TDrX7mZAN1fo1V2V2p5A9uDDpLon8ZZAq
	QKOrKXR6XuCHqU/g0+AWLA9CZWnhaN22o6zgSO+aaB4Xf/Gj5S4KZH+/7WrnyWOamJnkzd0gTjZ8p
	zP0KwqkVNNxswV4P+yD6WxWJgpsaSyEuXH1Qk2HwwfMCmmto5zTlVguLxYR/bXn39dSbrFcDxmPTT
	t0c4qXAGl6nxmHuyWH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izj0v-0007US-5X; Thu, 06 Feb 2020 15:24:21 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izj0l-0007Ta-82
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:24:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NPqFtkhpIGfC5P9fyPma03EteonMuqNrmP1tG7sOucoytF5PBmmWsgUSY49QChnrnNA2ajIw6uGGOp22igXStg/zTJHh83TpWnVZpoikPyxcs/dSMd8SZzBwCOFEEIVcwirLlPDro9iRvw3rtffUxTqwuz3SQ14tntGeKOelMMvlbfvO3lyq40O2MtfWdVT0mkGr4AmLMhVNECUfwgLfxrnLC08jnvuwbvo1z/pRHF4xcBWgsOg7ZYGgsOUySF937hgshbeJIRondw0jwWVlqoOxGeibP4gkCbb50kBMzsWDpCD7SAGMUfp0gMXH8Ckv2tYgTdNzN+R3vcJjRhkcVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VzzJX5wHn99Aaj+fNZlFofq9bdvra+Vzbf0T29LQPpM=;
 b=kunAFWF0ZNF9R+OUCxuP+I+trosqQnHmTxey6iJ0kM9VUKyD0xx/XeEnKp4vIljTAYKfttf83xsyU8wIDfr6vPnyVLbJCtJOxigC1Lym+U1e35Rw6lQTWnLFr4rn4M6R1BWyYsfBikTStmSB+oBh1lt6jE+9kVpM0uPq25KZtdZhlKAXjtSwA5V05cNGaoQEM8/O5C2mTztiWTBHPx3L4Zp30xl5GX9diNd7CxqcrRju5hKDZluIo/aQbH4yNLs4nXL8EMs2Cb+WfgEUHOIR+gzy/TRHpYQ9cUWouFSjCYqNsP2YtQvkVXPDe0+iac6SHK/41pZ0PXcL0+k4b+yjnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VzzJX5wHn99Aaj+fNZlFofq9bdvra+Vzbf0T29LQPpM=;
 b=EicbclfAzB8FzNKxRDArExsoGcJsIt+yqdN2JqqdaoFkRmKuhXu1oj6rbx5tF3LSgiXOXae0dKMFOWzBcd465rUofQX5l6G/qLJNS2Q5LtZuBHDi7L0fKuaQJ5wjBZ2XYKRAxwuSGXYh4BdoX3lu4X8d+XgTl+/F2N+cxLy6Uqs=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1847.eurprd09.prod.outlook.com (10.171.76.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 6 Feb 2020 15:24:04 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7%7]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 15:24:04 +0000
Received: from localhost (193.47.161.132) by
 GV0P278CA0029.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:28::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 15:24:03 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>
Subject: [RFC 0/5] arm64: dts: imx8qm: enable sata on imx8qm based board
Thread-Topic: [RFC 0/5] arm64: dts: imx8qm: enable sata on imx8qm based board
Thread-Index: AQHV3QF2KkUyDNPMQU6sTRVuZgujtA==
Date: Thu, 6 Feb 2020 15:24:03 +0000
Message-ID: <20200206152222.31095-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: GV0P278CA0029.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:28::16) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f24c63ba-d28f-4487-4505-08d7ab18995e
x-ms-traffictypediagnostic: DB6PR0902MB1847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB18479CCFCD54565080F7369FEB1D0@DB6PR0902MB1847.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39830400003)(346002)(376002)(136003)(366004)(199004)(189003)(508600001)(4326008)(64756008)(186003)(5660300002)(2906002)(6486002)(66446008)(6916009)(81166006)(81156014)(966005)(44832011)(16526019)(956004)(2616005)(26005)(66556008)(4744005)(66946007)(66476007)(54906003)(7416002)(6496006)(8676002)(52116002)(86362001)(36756003)(8936002)(71200400001)(1076003)(316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1847;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kDed0v5xpOZzOXEPtBoCRxqUd4xQP9n8Hpxb/aZQ9Vjmd1poQTTvpMs+AViJEW9Ua2VsBoPGde73DlnoekjWNUlkgNKjklSPetp50+ucuul3Mc5zTe+E+7pIfe8kg2WCV2KRQ0qU37Cq/ItSZMz5F733w/zj1Lcx46ZOpsqc4CW9nuo3KOYgMR90kaoMGpvShtAT13SxrpS5AWeznIUlVitlRT0+6eHVo5W6m4hI3f3fVDRgtNtLRp7MfLaX8EhdiI5p1Px7dnvvO8HRZM/Fj+wlCXS1YLipr24f4RsQQLIRQPbIahhzeXlXwvjJEUbnPM4RdTqgfCUtI/b/7Ycl62kQrszeEvJiycE1oukBgcMmKeFYWgFOHZF3M9GcS2EbQyHBJBAiFeBfQ8VX/zO02uH6AhDYsE7Xwe1/S8KSLaXkT4+IC9G7Wqrpd6HKHS47/cgf2F9qYTsgSzfh+dlg8dv2TI6aC7rg/B5TFbttypbWJDNnvn7WEOzTMSbydUdU4j5UGPTHEn3QXgFnZWvRGCkve63FmX5fF5JFafE5T6CfwVRQR38kAiF037kB+yiB
x-ms-exchange-antispam-messagedata: Yodpkq0+qFy9G3KyEA7qgur3vW6zQstqyKb4gAzJ3h2ZG/i9fg7KsJ5W1IKf195XgpwZcl1d/I+tqjs1j7DKfeHzVxqN5X7By2rSomigGY8nGY1JHw/gGirjWrIS1NB+sW79hHqe20VOeITFjVMeAw==
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f24c63ba-d28f-4487-4505-08d7ab18995e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 15:24:03.8910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tYG+r0qLR2P6tAAb8AYaYVLxL2Qq1wNGhf7L+leJXjxR3uCoLKvLVsEk2h8NvscVyCu0Q5wpcrMi039f2H3R7Ub946vnlDw+etzqGnLmQQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_072411_424125_302551F0 
X-CRM114-Status: UNSURE (   7.74  )
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

This patch series tries to enable the sata interface on a imx8qm based board.
I'm not sure howto do the sata clocking right. Maybe some can comment on that.

The patches are based on-top of these clock patches.

https://patchwork.kernel.org/patch/11248235/

Oliver Graute (5):
  arm64: dts: imx8qm: Add HSIO Subsystem node
  arm64: dts: imx8qm: added System MMU
  arm64: dts: imx8qm: added sata node
  arm64: dts: imx8qm: added pinctrl for pciea
  arm64: dts: imx8qm-rom7720: added sata node

 .../boot/dts/freescale/imx8qm-rom7720-a1.dts  | 14 ++++++
 arch/arm64/boot/dts/freescale/imx8qm.dtsi     | 45 +++++++++++++++++++
 2 files changed, 59 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
