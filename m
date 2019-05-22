Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4062615A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p6O9jER4fToAjLomwfbal0KoRK/TxbMC1dYELSTbrWE=; b=RO+h5GhBkUYKTR
	EIBLIdfB+X6c1vhWMIBxMBBDmFVOZ5Te49tcYb34e40T9/FUiA+6fiwmqY34gZGkPz6YlLMSs6KUy
	755Y5g8MAaZ3g62wD1kCJOpdCxOtGvzJ17jwEfMLtWsn0Hz2wW8wdqbwmOkHRCYKqIVn9WmR07DCZ
	DzScKsDE7hXXqc3qm/T+ajieQb6Wmqh7q34vCmC8bs8DJLoGOEFovjH38k4zf/TNf/oxBfg/9j+Zi
	jGaDGbtnnNZhNFqqmP+SeqlsjaNKBS/U78zXB/mpLkqnpiga51JirCE/Z9U/ffg/RHTRoRgpA5rqB
	b2WMcZmk4YHNGoeHVlRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTO7b-0001iP-Kq; Wed, 22 May 2019 10:05:19 +0000
Received: from mail-eopbgr810084.outbound.protection.outlook.com
 ([40.107.81.84] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTO7U-0001i0-3X
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector1-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7UNfbEXsabz5kESBWA6ulrO4/whIWfxzgCO+ujPHTak=;
 b=UU6Bj4oXvxfmuDrfOF0dkNxLjZ1ma41SH9MEIjyQPcVSN+hMKrZXHKl4NVUMq4NuHYg9+orRs6Ur6NNsMY22GOsScgRUiWgPYJ3naKkm8S9zP/f5zvb9DxUyp/3/1lPHVPXLGWPOqTCb5AySSJKGCQ6rhIgSrt5JnCFD2VxeBLk=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4152.namprd03.prod.outlook.com (20.177.184.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Wed, 22 May 2019 10:05:09 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 10:05:09 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Jose Abreu <joabreu@synopsys.com>, "David S.
 Miller" <davem@davemloft.net>
Subject: [PATCH] net: stmmac: fix reset gpio free missing
Thread-Topic: [PATCH] net: stmmac: fix reset gpio free missing
Thread-Index: AQHVEIXW1Q99JUn5Pke19mHCbWn03A==
Date: Wed, 22 May 2019 10:05:09 +0000
Message-ID: <20190522175558.59b21673@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0232.jpnprd01.prod.outlook.com
 (2603:1096:404:11e::28) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51926e20-f253-483b-8a7a-08d6de9cf8bc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BYAPR03MB4152; 
x-ms-traffictypediagnostic: BYAPR03MB4152:
x-microsoft-antispam-prvs: <BYAPR03MB415246663852B812063A8923ED000@BYAPR03MB4152.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(346002)(396003)(376002)(199004)(189003)(53936002)(14454004)(72206003)(6506007)(486006)(81166006)(71190400001)(71200400001)(6512007)(9686003)(386003)(8676002)(81156014)(478600001)(476003)(8936002)(110136005)(50226002)(6116002)(99286004)(25786009)(54906003)(6486002)(68736007)(6436002)(52116002)(102836004)(4326008)(3846002)(66066001)(66556008)(64756008)(66446008)(256004)(66946007)(66476007)(316002)(14444005)(305945005)(7736002)(186003)(1076003)(86362001)(5660300002)(73956011)(26005)(2906002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4152;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TEVoJoHFTV8reiVFD+srtEOlRMGGPxghghCLGyUSvtPOZeKJBAEzra+TLOtVYgTx6yvuJXrRgXfLhHwyEMkgjYxpwK2y7JyCEoNpxzbRBt9dCWRpzDpV8spiDbUt+9xoTdavlO1fia2bcwrEdbe3uuv0BifnWWqp6QxFnjHdCQvRM9BRCQ143FKjXhyai3L6XfxGvhdVkmSjI27Xhtfg/DcTq1aV8Xg6Rdpir2wshbMG/scX3kgTxvhUVtMqCBxh70WpIghSsipa5jSBhbrEjYUmbNWRVcSe+310iwVWWK6V6a0eI/RdxIaHet47WP6Cqc4D7nXXQiN0n+g2zZeW2FH9Yb6oqA7Hlz+9YYceVoGdG++TqjiONLvU4sXpYVHO/iunMYw2mKb5aNkItN1sX3FMfRIBFmFSwP61owlxV1I=
Content-ID: <95BC64B905AAEB45B689662B446B9877@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51926e20-f253-483b-8a7a-08d6de9cf8bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:05:09.3700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_030512_195461_614B985B 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 984203ceff27 ("net: stmmac: mdio: remove reset gpio free")
removed the reset gpio free, when the driver is unbinded or rmmod,
we miss the gpio free.

This patch uses managed API to request the reset gpio, so that the
gpio could be freed properly.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Fixes: 984203ceff27 ("net: stmmac: mdio: remove reset gpio free")
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index bdd351597b55..093a223fe408 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -267,7 +267,8 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 			of_property_read_u32_array(np,
 				"snps,reset-delays-us", data->delays, 3);
 
-			if (gpio_request(data->reset_gpio, "mdio-reset"))
+			if (devm_gpio_request(priv->device, data->reset_gpio,
+					      "mdio-reset"))
 				return 0;
 		}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
