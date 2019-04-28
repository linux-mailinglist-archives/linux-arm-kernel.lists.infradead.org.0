Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B2AB4CB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 04:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8WixVyIIhitFE6Cheqvsbd0eBvb9p9xqUW1gHXxLTyI=; b=bFTC0ribZZfsxR
	rOa7cmptEAZ/epTIgKhLqWXYK4B/z7kRgbVBxJca2Rj+bGiC89Ax+tNzEjeVM1mo4JrexeolOw5Hg
	SVvBbz/2xWntSpMd38TgZTYCk+Fp91JK1COfKSaTkZn/1NsWSqeOl8Fc5l3nI8ADvwOIrv0i1NzMc
	57zKu8eWsB/6QYm0wn8Iek+KEBBtU1WaW4xdOdpPc/staXq9sYMtmcu+eZZtEeDzT+YqeTMogCNZl
	bUlSBxdyBMD5ay0hJrP3pluSB0ilSxShjd+i8jlhi/9hEg6AlHF8Y0ONUuaBx+vZCs9/lGc0b6wTD
	8n8Umvzxt3SnqS6y3G2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKZub-000285-Hm; Sun, 28 Apr 2019 02:51:29 +0000
Received: from mail-ve1eur01on0625.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::625]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKZuS-00026r-TT
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 02:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FI9UAB9Bwcyy2EkxsG9arvarMnyGA5oyrj0vNhrbVUA=;
 b=XDIigZRxXxWNJu8bPHQDNpt0Y/kmcTZ9fW+9ao6VQv2ZjeB7btpzFRqtVwVCO3yss8jbPIIDxRwPCzZttVWzvhv6UsS42rIKd92Sf5flAmk+4Q7dzt9cSyO18UDt1eYseJ4KmMKQ5cIKnKFLi1A7rpqqJqfaonrCgoHDVOBLWoM=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB3184.eurprd04.prod.outlook.com (10.170.229.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Sun, 28 Apr 2019 02:51:09 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1835.015; Sun, 28 Apr 2019
 02:51:09 +0000
From: Peter Chen <peter.chen@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "balbi@kernel.org"
 <balbi@kernel.org>
Subject: [PATCH 0/7] Add imx7ulp USBOTG1 support
Thread-Topic: [PATCH 0/7] Add imx7ulp USBOTG1 support
Thread-Index: AQHU/W07aXXa/S5qDE2YJrRRATIEgA==
Date: Sun, 28 Apr 2019 02:51:09 +0000
Message-ID: <20190428024847.5046-1-peter.chen@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.14.1
x-clientproxiedby: HK0PR01CA0015.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::27) To VI1PR04MB5327.eurprd04.prod.outlook.com
 (2603:10a6:803:60::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f84de0c-d80d-414f-9eb8-08d6cb845de9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3184; 
x-ms-traffictypediagnostic: VI1PR04MB3184:
x-microsoft-antispam-prvs: <VI1PR04MB31849F867EE4F808AD4FA34C8B380@VI1PR04MB3184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(39860400002)(346002)(366004)(189003)(199004)(6436002)(5660300002)(8936002)(36756003)(6486002)(26005)(52116002)(14454004)(71200400001)(99286004)(71190400001)(6116002)(186003)(2906002)(110136005)(1076003)(54906003)(316002)(102836004)(6506007)(386003)(81156014)(25786009)(2501003)(3846002)(73956011)(66946007)(4326008)(66446008)(66556008)(66476007)(64756008)(8676002)(81166006)(305945005)(97736004)(68736007)(53936002)(6512007)(486006)(7736002)(66066001)(478600001)(50226002)(256004)(2616005)(476003)(86362001)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3184;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1pLFadeYu4Qrar21nnMVnYNN+EERQ7VM0JWdgVW/zOs/fdzHBQBPzYsy3PQiUX5O8M1Dyj5oIomGZRjT9dQIWgZcBlGNalBo3D4BqAr0OnhhRNXtXXh01MsL+5GFA4nJjfyNhu3Y6QNBV4Z1QvSIqJxZmQqWarrfmkxN/Ppo8t5Fsu3/y0uB7QPe172qFT8JuQTaZ2olLBSDoaPNa3JrXg8PJj110sO7K9Biq+NqZuq/VbWa2XxPBLuhzH3L6qvhex+IElkPvdarzjRdT7aXsE/vkDZrdXjhyXINC+TdjPBq4nXccmipE43bst7EERKQAJ9WKV8W/wdBYeiC1XmO7XyUR+1cZPNYZgnfEl1xdQCwDaWP8mETffg3aRpoMnIqeUcgsTqlMrYj1hfRez6+zzhp9HbuV/QEJIDA584Vm6w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f84de0c-d80d-414f-9eb8-08d6cb845de9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 02:51:09.6410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_195120_955433_FB8DB4DC 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:625 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peter Chen <peter.chen@nxp.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a dual-role USB controller at imx7ulp, we add support for it
in this patch set, and the dual-role function is tested at imx7ulp-evk
board.

Thanks.

Peter Chen (7):
  doc: dt-binding: mxs-usb-phy: add compatible for 7ulp
  usb: phy: phy-mxs-usb: add imx7ulp support
  doc: dt-binding: ci-hdrc-usb2: add compatible string for imx7ulp
  doc: dt-binding: usbmisc-imx: add compatible string for imx7ulp
  usb: chipidea: imx: add imx7ulp support
  ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
  ARM: dts: imx7ulp-evk: enable USBOTG1 support

 .../devicetree/bindings/phy/mxs-usb-phy.txt        |  1 +
 .../devicetree/bindings/usb/ci-hdrc-usb2.txt       |  1 +
 .../devicetree/bindings/usb/usbmisc-imx.txt        |  1 +
 arch/arm/boot/dts/imx7ulp-evk.dts                  | 35 ++++++++++
 arch/arm/boot/dts/imx7ulp.dtsi                     | 30 +++++++++
 drivers/usb/chipidea/ci_hdrc_imx.c                 | 28 +++++++-
 drivers/usb/chipidea/usbmisc_imx.c                 |  4 ++
 drivers/usb/phy/phy-mxs-usb.c                      | 76 +++++++++++++++++++++-
 include/linux/usb/chipidea.h                       |  1 +
 9 files changed, 175 insertions(+), 2 deletions(-)

-- 
2.14.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
