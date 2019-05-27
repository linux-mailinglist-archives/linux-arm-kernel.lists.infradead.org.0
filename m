Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF112B2B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=snt53U+SGUxS+0GOwSK5Q1LLn6527Et/H9xhWxaY+Tg=; b=oqcD7mKsfjb5/6
	V1EdC49Ewvm+gXBaTkHlrrSsk3J429YEyCy6x9frqJovcwP9f5wd2f1jSv+nNcCaaxuz4uYqscgTy
	3mFWE8ryujmTY+U33dIRzaM3txzIVEkTmxYV/hoB0v1XFM++UGSP7mrTkoVeXv+aD5IOxiWzgSdqs
	bErDUU9XgXnm/THDqR8ah4yqFvZUQZpDSK+E1xwYrBiRi/0NPkFbgMvgQ0zEpdUyTL77pZx5GJNZ6
	4hOJlzDFtl+QmE49q+g+HBuw/+9VdKBeHAc5ljlyQvK7BN+9qbipkznbCU3CppNZh9lE14du8BOWU
	+eyFNFT5UPAsiWeZPCYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDQd-0004VX-9O; Mon, 27 May 2019 11:04:31 +0000
Received: from mail-co1nam03on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe48::62f]
 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDQV-0004Uo-3X
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:04:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector1-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A2Ahkms7ZskReuoeIx+XGDQwQZeJJz5Qjsrs7EltXC4=;
 b=RwSkS4T6tE+K2amx5z2Hw8+KV3w+exmIjRSJdrj7WKO6LFdoGtqEGvLFTUoDFe0vo22THORIjRtj9lY9LnV3sHXojJ3NJY9QXPHKU0WaIARrkRFGHPe4XDktDsfRxWATWvZZBvW2EYTuHg2o5Xt+VrapHh3G/qElaEYlBEQ/2o0=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4101.namprd03.prod.outlook.com (20.177.184.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.21; Mon, 27 May 2019 11:04:17 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9%7]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 11:04:17 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, "David S. Miller"
 <davem@davemloft.net>
Subject: [PATCH] net: mvneta: Fix err code path of probe
Thread-Topic: [PATCH] net: mvneta: Fix err code path of probe
Thread-Index: AQHVFHvt/gI8V9X5mUCJIK/fkWRQcQ==
Date: Mon, 27 May 2019 11:04:17 +0000
Message-ID: <20190527185513.04aca133@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: HK2PR02CA0147.apcprd02.prod.outlook.com
 (2603:1096:202:16::31) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d47ef688-cd24-47b6-df05-08d6e2930fa3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4101; 
x-ms-traffictypediagnostic: BYAPR03MB4101:
x-microsoft-antispam-prvs: <BYAPR03MB410100915C96E45D64622AF5ED1D0@BYAPR03MB4101.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(366004)(39850400004)(396003)(199004)(189003)(6512007)(3846002)(6116002)(9686003)(26005)(2906002)(68736007)(25786009)(6506007)(386003)(8676002)(81156014)(8936002)(305945005)(66446008)(64756008)(66556008)(66476007)(66946007)(52116002)(71190400001)(186003)(71200400001)(5660300002)(86362001)(478600001)(4326008)(7736002)(6436002)(73956011)(6486002)(66066001)(316002)(14454004)(72206003)(486006)(476003)(53936002)(102836004)(110136005)(54906003)(99286004)(81166006)(1076003)(256004)(50226002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4101;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bH2TyxCwHS+dl4/26amAb2qnEzbkU6AQH5SnBK+DQw2dedoM6m2sTH2bnmX+KkfC5pXNQN4trnmf6/Y77j5kOgnXTokI2ZfFb4c+h+e4iEOHieJBmgB5NmkI3kYKIaWfiAFAw9BXnZiXjccOMYtKDlyMpLNcFPssxcelE5bfgWBH/y9BczB+HgPoYNw3v1FGfWbf8UNiJO9hWJhEpO8qryAVee5uHSisopoxc2E28bdcPuFeM8XqoPiKR0D75MNMKC1HXfVqFlJh/pBVvL8QdoY7xDwRcM5BkaitKjsy+0GCo7/nOkJw8mYkAwNcvJ4X1C1HcCHlQeCzO1UwUFHIwo+q92/4vPep7t0t5nxIaVc2GW0eT/ny2tzrq3HYde97NwWlbdy5N4IwSi0BJdfx7nNhlUH5N7H1BtcgLjqfxBk=
Content-ID: <1C643B66700BAC4280B4784088475B1C@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d47ef688-cd24-47b6-df05-08d6e2930fa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 11:04:17.5078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jiszha@synaptics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_040423_230464_57BA3AA0 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe48:0:0:0:62f listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Fix below issues in err code path of probe:
1. we don't need to unregister_netdev() because the netdev isn't
registered.
2. when register_netdev() fails, we also need to destroy bm pool for
HWBM case.

Fixes: dc35a10f68d3 ("net: mvneta: bm: add support for hardware buffer management")
Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 drivers/net/ethernet/marvell/mvneta.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index e758650b2c26..269bd73be1a0 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -4674,7 +4674,7 @@ static int mvneta_probe(struct platform_device *pdev)
 	err = register_netdev(dev);
 	if (err < 0) {
 		dev_err(&pdev->dev, "failed to register\n");
-		goto err_free_stats;
+		goto err_netdev;
 	}
 
 	netdev_info(dev, "Using %s mac address %pM\n", mac_from,
@@ -4685,14 +4685,12 @@ static int mvneta_probe(struct platform_device *pdev)
 	return 0;
 
 err_netdev:
-	unregister_netdev(dev);
 	if (pp->bm_priv) {
 		mvneta_bm_pool_destroy(pp->bm_priv, pp->pool_long, 1 << pp->id);
 		mvneta_bm_pool_destroy(pp->bm_priv, pp->pool_short,
 				       1 << pp->id);
 		mvneta_bm_put(pp->bm_priv);
 	}
-err_free_stats:
 	free_percpu(pp->stats);
 err_free_ports:
 	free_percpu(pp->ports);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
