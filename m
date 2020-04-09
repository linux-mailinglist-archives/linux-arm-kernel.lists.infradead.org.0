Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435A01A316B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A20C8ey8RgSbimEsTqVh6hQPM8fc+IWag0GnfNu30sI=; b=nlVF+Q00whGSeV
	99lTsGXMotDuHFqFr+aWUpDbV+wNZH2xAK0k280XbIpImuasl0cBDN4P6btEdY2h0zaH6g/XZDgbj
	RC6f/41fsMreF7ywhLR/WMOLQoCL72nMdGf+SySjdHNl1T+iNZEW0kRgIJsUPSkSZ9VlaLQoHdW9J
	rZjm87c/Gfh/vxyWW7bFdF77SJ2RrThBDJWfz4YlE4K+rTItaOegWPcCb+d8tm70T/EONeXAShjhb
	dJgKUOyYDqDt6zcwMfx9bhdEghS8+n2X12Js2MLjAwOtGxWAv5oqINZGaBtuO7zS71DzuTKkKVtsl
	6HGXinD/mwRr90Z0ORiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMT3B-0001Kr-Lq; Thu, 09 Apr 2020 09:00:41 +0000
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMT32-0001K9-QP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:00:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OeRpwB3NK1Gqkgc8fbn6xoxYDwmxcwUMLbEm7quxEuiXarJelG3UmbU0KpNyH+rFFWSc8Bw1EfYTEnfwTXz+1Z3WNdEKy15+IOP6yFbAy6KsryFfbNVazWMMQlcFLYnNXugTPMEQhucGpBM2VwuE1AGVVyjs6L2uxStdUOf4yM6jMDK+gmOcG6xKXZ1vf5lb3cNVetXmRUO5YT1rRiTISOXFlPlxywLSjBus8BDOqzfMcPh8pPVJqF2YfwB99r7hy9MzKeNFigadHisxya8BQbykG4for/Y45KR4Y1UUGpSuDa3ubJwg1MqOI8bJh/5el+vlRtE3bgnulVz1LG8kAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mTgo6E0KhCgesssTNJ/pmnhEjCLELAajw4eTDiMWoeg=;
 b=GEiCpctv53aB2MsP8xaGy+jQBThuylZJszJIfzkJt21KqFjIc+QORO2a8LSd3pUSwW7sdcAGuX69AUxzxVk/S+YgPy6tU0U+Q9+7OcGZontRkgrA5orU7b/rglRMeLVNeMPQVqOHVZnOBdXdtmENYY+PxKR6ZZ1WL00PKWtxG1ANF2vyEsyG61gu1idETmwOmsJr8mjMW4qeDrlzVpuhOTefGw7Q7h2zcpZwGqjIzp+Rl6XZaw2wGzMy2ozUMMTswLtTlpNlIRbnrN4O063vTBYscYZtCF0Hy/P0E6j4m2nvBb3Fj15/cq4CSAGBYWk4d7kScrrDBUvPqs7i4im4DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mTgo6E0KhCgesssTNJ/pmnhEjCLELAajw4eTDiMWoeg=;
 b=VutFBNdu6g2RPz/IN8XUU6m00+7wU8pWZ1JkXTly7Ik02WC/CIST4me4biHkklVI+QfVHMPyUrVBd/Vb1gKceLsi9ykaqNvnej5FKy+ycpQAu/L82qDlYm5qv8Nhy6RF5/rSKjt9rrKdQntef/2ageMX2UQOgnkphznVldxbC7E=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB5825.eurprd04.prod.outlook.com (2603:10a6:208:127::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Thu, 9 Apr
 2020 09:00:26 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.015; Thu, 9 Apr 2020
 09:00:26 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>, "soc@kernel.org" <soc@kernel.org>, Shawn
 Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Leonard
 Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH] soc: imx8: select SOC_BUS
Thread-Topic: [PATCH] soc: imx8: select SOC_BUS
Thread-Index: AQHWDkPILViybyw+CEWAlrPoiFlrqqhwfepQ
Date: Thu, 9 Apr 2020 09:00:26 +0000
Message-ID: <AM0PR04MB4481AE18877828766FD1818E88C10@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200409075208.2824062-1-arnd@arndb.de>
In-Reply-To: <20200409075208.2824062-1-arnd@arndb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f9f925b8-83d4-4d5c-5f6c-08d7dc647251
x-ms-traffictypediagnostic: AM0PR04MB5825:|AM0PR04MB5825:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5825E64A8E80507F5E8D494188C10@AM0PR04MB5825.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(396003)(366004)(8936002)(71200400001)(86362001)(33656002)(44832011)(66446008)(8676002)(6636002)(316002)(4326008)(2906002)(81156014)(64756008)(66556008)(5660300002)(52536014)(76116006)(7696005)(54906003)(6506007)(9686003)(4744005)(478600001)(66476007)(26005)(81166007)(66946007)(55016002)(110136005)(186003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4wj8UCbMLBqX3mBp06LziJUsuIqwuM2tv2YJlO2ztknNFzJbAINHtFpaSopNLHeuizYFv74Dvof/GyKou15luFl8j/cmVydleW9gk6oFFC5QtlIho5zQAJ9k0ejedG7yXIvXKIrk7dnGGO0REgyhDQCgZ5yBz3fwZIvKx1l2I4KAczDOf1rqe2YDEONPhFaIKoW/ivjVnyfo0450jXzxUOznZrJjwAlC2zseI5QnbUEdKnrH2aeblY9NpO9auKO+hMBkQdIW+GTB8sqMuWX29Ft2TuGUQvjc3lsr4MAyplLlChsa9e2aPrlzMfeRXmi+rMmVmmvqSIYsxfeBPu6PYmkL7YZn5+EQOlG3LNNPowSl7ud0nx58D4NhbRAaXGnoSuQkT8EY9gFHWCZkdUqpOcrWrIkGLUA+hmh5Eh5m9SiDdwEPvs/RDLG9t8pF7cjN
x-ms-exchange-antispam-messagedata: z7E836vbdDViwIfAmZ11nqDc7mAFr02HN6U7+ozubbskb9u9Thquq8+R+yagZG7wMGajTHblF/eo7ASryRpKqk+AGuZ+oRdaJJw9mlRZ1L9ojZT4me/2EloJ68h3gAXml2EKd2TlpU/5PCWuK8igVQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9f925b8-83d4-4d5c-5f6c-08d7dc647251
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 09:00:26.7771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RLvpXcjEiH3Rkw146guUliFRJeWQRo6UNrhbn1o7CAOl0mUetrDcXrND8G5gUI3+0AeSBqGzdd4lP/1SR8hDBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5825
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_020032_859004_5A7B391D 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] soc: imx8: select SOC_BUS
> 
> Compile-testing the driver can result in a link failure when CONFIG_SOC_BUS
> is disabled:
> 
> x86_64-linux-ld: drivers/soc/imx/soc-imx8m.o: in function `imx8_soc_init':
> soc-imx8m.c:(.init.text+0x28d): undefined reference to `soc_device_register'
> 
> Select it from Kconfig, as we do from the other SoC drivers.
> 
> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Peng Fan <peng.fan@nxp.com>

Thanks,
Peng.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
