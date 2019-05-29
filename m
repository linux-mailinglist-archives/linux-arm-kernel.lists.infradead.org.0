Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137332DA72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=rXK+qKnTkPAenemEFmKds5jBy7r2L5o0PGhB1iZPM5M=; b=GrcfnkWy6fkSPz
	Ji8AP1ufWIwnXeDEkFhSiaWq+OaxPr8BljSlilZ4XqeLweJjXRNaszllg+7/ohOmEA48TTTNccrEu
	MyYnPh8gurZ7xtikp4PkAMp34lQbXo+cjAQdwsBxmua077UNiE0o7DAvIMAf5G08LTmoiFu6jkVHY
	CLefB6p//LRZ6/r8yn3NsQlgaSaCevjAbgZSN9VCyy/EMgS7P6M3N+yCtz64snDHm2gAJdXwqSvvj
	9fIW7fl2VbjhqvxkDJ9NKmF8vCrMmzQcF7P709KAD+0nl5rVP5awTX0f/yCN/lFFR0NNAPabcSpVv
	gYluOFIaviMigegnmNyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvls-0007t7-2M; Wed, 29 May 2019 10:25:24 +0000
Received: from mail-eopbgr70059.outbound.protection.outlook.com ([40.107.7.59]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvlk-0007sF-Ea
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:25:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FXKIyHYWRL/5yD5Hh+pQ0F4XUIBGy3kBE/ZPXYhtL3g=;
 b=JA5CR2KZNqJa8xUoTAif4joAFRYZLWvtNQEi8UxyXfGdETRR47O8lpwIJPHu9rtz/KyjZtAEoaMC/3YVDwSw4iU/YE1PxMBBLKL18Gh796tdfHOaDOUGZK6mUq9aJgjpmBz3Mh6wciXoHhMPGY0RMIc4pkbbbUxwJPuA/duIJH4=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB3135.eurprd04.prod.outlook.com (10.170.229.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Wed, 29 May 2019 10:25:10 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 10:25:10 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx7d-sdb: Make SW2's voltage fixed
Thread-Topic: [PATCH] ARM: dts: imx7d-sdb: Make SW2's voltage fixed
Thread-Index: AQHVFeqgtOd5kX+KPEOTGMPKRjBjKg==
Date: Wed, 29 May 2019 10:25:10 +0000
Message-ID: <VI1PR04MB505512BC507108ABC7620F4AEE1F0@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190529065056.27516-1-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8a87c4d-e2b5-40d9-089b-08d6e41fee09
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB3135; 
x-ms-traffictypediagnostic: VI1PR04MB3135:
x-microsoft-antispam-prvs: <VI1PR04MB31352E515814F1B1298C48CAEE1F0@VI1PR04MB3135.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(39860400002)(366004)(136003)(189003)(199004)(14454004)(8676002)(7696005)(66476007)(66946007)(76176011)(446003)(81166006)(53936002)(6436002)(64756008)(8936002)(66556008)(6506007)(66446008)(33656002)(73956011)(102836004)(91956017)(305945005)(2906002)(81156014)(74316002)(3846002)(99286004)(7736002)(76116006)(110136005)(54906003)(26005)(186003)(316002)(229853002)(6116002)(9686003)(68736007)(71190400001)(476003)(55016002)(53546011)(6246003)(66066001)(52536014)(4744005)(478600001)(44832011)(4326008)(2501003)(25786009)(86362001)(5660300002)(71200400001)(256004)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3135;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9OXalPQEc9KOb93PjJhwt30DnSdiZuwA5fgbQjA7mmWcKs2RFOHNV6VL/rcee8Py8hMuXRCJZrwtr/3bgCDubDiGZvrPtNGx1eoy6thqewojsTziptHZqbamBF0fCh3H+zrQgkpGLxzr0ygItMwyprVhS/JQySaMovd+Z4urmrXVdhs41YsgHegCFYCSL2SfVfzsZTZNl532Cm6HGIabID2wNyt5pjvutshmCvhuruMy4lpZpG6XKngTRQ3nvnikUXY6/dh9mw6RIH5uCB7ym7/9NfhOYVclNC/OJkwdLfBPQY8K9r6l+sJzlbU8Wmof41LiDl0GOJR1WjY+u4rEchURZqJGe/ZQMM9LE5TENsiYmlsQJbtgEvZWTzO2HlyqfISrqT+H3g6KLo+rMY1GwzcKxIH+zSNJocuJs3rwq8k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8a87c4d-e2b5-40d9-089b-08d6e41fee09
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 10:25:10.7902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032516_487354_F8C11AA7 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29.05.2019 09:49, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> On i.MX7D SDB board, SW2 supplies a lot of peripheral devices,
> its voltage should be fixed at 1.8V. The commit 43967d9b5a7c
> ("ARM: dts: imx7d-sdb: Assign corresponding power supply for LDOs")
> assigns SW2 as the supplier of vdd1p0d, and when its comsumers
> pcie-phy/mipi-phy try to set the vdd1p0d to 1.0V, regulator core
> will also set SW2 to its best(min) voltage to 1.5V, and it will
> lead to board reset.
> 
> This patch makes SW2's voltage fixed at 1.8V to avoid this issue.
> 
> Fixes: 43967d9b5a7c ("ARM: dts: imx7d-sdb: Assign corresponding power supply for LDOs")
> Reported-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

Other boards don't seem to be affected by the original series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
