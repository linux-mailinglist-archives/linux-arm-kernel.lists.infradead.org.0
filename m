Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51351E87FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+DEGd8d8UaBiKfCtk/42+olnzV3lLSgApd5GudimNys=; b=Qc6oAKT2u0vWdI
	I2Ir3PihwLCjVgI2afUWLJrg8uhPDEBd2YduALk9KQoVCvt1SKWcVS023u6PqhrZKtvP+EPdGvGlS
	+dJiXQy38ql9sEDOY4sGo4RuIWG/73g70k3EfDt5AHCAa7x+IDzk0tnh2kMD7oz06J6zMmjIveXRg
	LNprQFWk3AM7zaI7ELc/RdwlDSO0+cPDEBhR8bj6JGCkIxfiqTJrCnOpfMbUrliORw+lkvmQIfbCm
	pp5aD0LFBn4q0/GY7qCCiTLqZTRiDAd1Ppz5HHGzuQWrIhNucc8AUqMrwLknioi85KGbMd3vy3inO
	ExmH86sv3d67hpr1/cKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQWc-00014r-07; Tue, 29 Oct 2019 12:23:02 +0000
Received: from mail-vi1eur04on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::60f]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQWR-000140-NN
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:22:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aeO4PDhgTntDZ3n4Ppl37IqATUHprur6RUl9aIg/upqDTi3McKVXt1HJBe2gJRE6TwmScJSdwOOjekw5ZUkV50zcZZlgXDASc0PzrxYQRlvFfa7vkMwRPViEm+/PNxjTtpwvATaXMDxafl6d4LMyGStWZpTcPw8Dhrcrsfvq+t9RPchLbrZP2Q72p/DiQbKSkVi38rqstsy7VVgH8KWQdeZC54zvMxLg+cEQDPWUj+ZVnx6dPDOtY9wXKbMDxmNrfR256/3ORQhZWfZ0UojuHRIpamkO0rv2WbCiWt/jDDZ3Hi8j3vCcJBHL11VVyzNiYjInDWTxjAMA6PhoENg6Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D3hBDvN4Cwb5kt4giDZXgWjJxZImeCkfHeK4sR6vHA8=;
 b=b9DlxOZtg/8ZmdznE7Ozh7X49Opq8KQVNRcF6ILzWMGezYnaF+/JoIrkgblYl93GXW8gBNemcKZqX49yAb2ixZsRmbIR8DaZ29y9yJRwjPptVA2Flt+vJCuHgfpoIRD2omqJ4JU52hTXkdKG3KJ0Nj9NSzsBGk1t3e+P4jrJibCRANuqmQav5voKNbdFQIJmT2RQ6c6GLWVEpz+X4zn3IZk8o+AzDV0KLpYXh2cGcWcfEhWu5NsLY6djanpfgSGJfz1ejh4XJDFCduZkKlNLyqKCC+xrbAU5tnmoKZ5iIobiv9egrGNpTpugTsKwwWjK8E/yCt+NfCAfHtyCOF3wWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D3hBDvN4Cwb5kt4giDZXgWjJxZImeCkfHeK4sR6vHA8=;
 b=VHxcv48V93ot33vbnVHE8aAQcvEiM64Rug9tXLEfWFiKljkPrccMGkloDT5W2fiCLG+8ov5nCQZ1az6hIe6VcVrYfFjozFMAgfbLrLlX0My3Sm61yk3+4VRtg8Y0VmmikNGiCJgu+SymulfGF8vHgG9YNmPhWhTyB7SjToSSEOs=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1799.eurprd09.prod.outlook.com (10.171.74.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.17; Tue, 29 Oct 2019 12:22:45 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::b1b2:ecb1:9c98:6b74]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::b1b2:ecb1:9c98:6b74%6]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 12:22:45 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [RFC PATCH 0/1] arm64: dts: added basic DTS for qmx8 congatec board
Thread-Topic: [RFC PATCH 0/1] arm64: dts: added basic DTS for qmx8 congatec
 board
Thread-Index: AQHVjlORbb5pQGDQCkq61kl7ksae7g==
Date: Tue, 29 Oct 2019 12:22:44 +0000
Message-ID: <20191029122026.14208-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0078.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::46) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3a6dfa9-1181-47dd-b507-08d75c6ab3bf
x-ms-traffictypediagnostic: DB6PR0902MB1799:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB1799159A340C09C5666AA274EB610@DB6PR0902MB1799.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39830400003)(346002)(136003)(396003)(51234002)(199004)(189003)(36756003)(6306002)(86362001)(386003)(966005)(6506007)(6916009)(6116002)(316002)(14444005)(256004)(5640700003)(1076003)(99286004)(486006)(476003)(2906002)(6512007)(2616005)(26005)(2501003)(54906003)(44832011)(4326008)(186003)(66946007)(14454004)(66476007)(7736002)(8936002)(45080400002)(102836004)(305945005)(7416002)(508600001)(50226002)(8676002)(81156014)(1730700003)(2351001)(64756008)(66446008)(6436002)(81166006)(71200400001)(71190400001)(66556008)(25786009)(5660300002)(52116002)(6486002)(3846002)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1799;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lbuCEWpQEdk+1QKqXC5iD4PwKlLuj+1yeuDv/qmLJGcwiStDME6himg4IsTuwEYyVwR4g1s58d7EhfHFBbKtqWyyJGozJfqiP2nLyA8cKrMHzi4+4LeXt9mIzNsFSBnq0TclPrDNm80GkQiXQnbfWAzIbX6KTigxM0FvTD3Lsh6kxNym3eYjY5SShjiA2GjLwgBlyo2t5z1poix9ua6ttDaz4kw9CWKtx8zTmuPgl3s0kqvVUz+4LrRVLstRt7P5GD9pud2+5xPG/2v256reHWn0G98XYy8y3ou+/c9hwgkVJKeRYIvV1PDtpsjdMZ++1gh7WAxsd+chhfqWcaK6P3eFSRMdVKG1Li8d882KgNunXI+57KBPgUu+rG+RCMOeIawQL4D4y3FuXtgJjhKDI6BZoRJncejUg8/GVY+sgSnOsJ4ME+OttbT1cnMMYceoQrzl9b3umRkmdh+3u/3fFZSGKSq8PnzU3SseVmwXE40vO6E244Ln6ykjPXGR7kdX
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3a6dfa9-1181-47dd-b507-08d75c6ab3bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 12:22:45.0717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xUtHf5jFel4Y9avn159QOON7oeXRLm94g1i/LPmUryFrC9NqdE7CjmDkgroHuHXTtar8GG3hjE22rQ5qzcrj6X6rpy/cam67luVHy5/Sq9M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_052251_822601_DA8F44B0 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:60f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 Mark Rutland <mark.rutland@arm.com>, "peng.fan@nxp.com" <peng.fan@nxp.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 Jon Nettleton <jon@solid-run.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>,
 "oliver.graute@gmail.com" <oliver.graute@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is ontop of Aisheng Dongs clock driver and imx8 changes for the
imx8qm.
https://patchwork.kernel.org/patch/11143321/
https://patchwork.kernel.org/patch/11138099/

I observe random crashes with this devicetree like this:

[  676.355973] fec 5b040000.ethernet eth0: MDIO read timeout
[  676.361455] ------------[ cut here ]------------
[  676.366087] WARNING: CPU: 0 PID: 208 at drivers/net/phy/phy.c:708 phy_error+0x10/0x58
[  676.373924] Modules linked in:
[  676.376984] CPU: 0 PID: 208 Comm: kworker/u8:2 Not tainted 5.3.0-rc7-next-20190904-00034-gdc1fd1a2104b #5
[  676.386553] Hardware name: Congatec QMX8 Qseven series (DT)
[  676.392128] Workqueue: events_power_efficient phy_state_machine
[  676.398049] pstate: 60000005 (nZCv daif -PAN -UAO)
[  676.402842] pc : phy_error+0x10/0x58
[  676.406413] lr : phy_state_machine+0xa8/0x168
[  676.410765] sp : ffff80001217bd60
[  676.414083] x29: ffff80001217bd60 x28: 0000000000000000
[  676.419399] x27: ffff0008f6b64338 x26: ffff800011073b98
[  676.424715] x25: 0000000000000000 x24: 00000000ffffff92
[  676.430032] x23: ffff0008f70c1000 x22: ffff0008f70c13e0
[  676.435348] x21: 0000000000000004 x20: ffff0008f70c1438
[  676.440665] x19: ffff0008f70c1000 x18: 0000000000000010
[  676.445973] x17: 0000000000000000 x16: 0000000000000000
[  676.451290] x15: ffffffffffffffff x14: ffff8000117398c8
[  676.456607] x13: ffff80009217b8b7 x12: ffff80001217b8bf
[  676.461923] x11: ffff800011752000 x10: ffff80001217b840
[  676.467240] x9 : 00000000ffffffd0 x8 : ffff800010698408
[  676.472557] x7 : 0000000000000151 x6 : 000000015f8c5440
[  676.477874] x5 : ffff0008f8341db0 x4 : ffff0008f6500000
[  676.483190] x3 : ffff0008f70c1438 x2 : 0000000000000000
[  676.488507] x1 : 0000000000000000 x0 : ffff0008f70c1000
[  676.493827] Call trace:
[  676.496273]  phy_error+0x10/0x58
[  676.499499]  phy_state_machine+0xa8/0x168
[  676.503510]  process_one_work+0x1e0/0x350
[  676.507518]  worker_thread+0x40/0x480
[  676.511179]  kthread+0x120/0x128
[  676.514413]  ret_from_fork+0x10/0x18
[  676.517990] ---[ end trace 919aac09d207cb93 ]---
[  676.522931] fec 5b040000.ethernet eth0: Link is Down

Some hints how to fix this?

Oliver Graute (1):
  arm64: dts: added basic DTS for qmx8 congatec board

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qm-cgt-qmx8.dts    | 391 ++++++++++++++++++
 2 files changed, 392 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-cgt-qmx8.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
