Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44CBA9C26
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7ttIT9gsQX1nLnwri5tO/amffV9cAWDkQi83ewrHgLw=; b=b1G/nSxi4e8czp
	lR+YxiAO9pitXXKQjI7HB0mVuxpECRKo9uF4yR+zYbf2Jl1yvMP+i09HJFl5HC6Z1Q/9YAYN9iTQ4
	B49E8+qOtdS6OlTfZE1VxV4ZC9olBbADMpy+oyPi4DTjhmwyWvn5HGViJjqvjhEyUO3XNXRoONAFA
	tCWUk0NRKqfWUrBHEaqM/OXaDjYnxGAxNu5rXx731xGrQUEYa8Og3AohNHq1IPBjtvpnibOGJICPT
	i4mTQEysykv6tAmVFmIxCp6b4E4nQ9VhM/o9pAsXyliScEU1pqpaMk8mnL4tlIwB7kPtr8DSxP8B+
	hW0LERVOlV0JYC64UOOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mRY-0000Z5-H1; Thu, 05 Sep 2019 07:44:36 +0000
Received: from mail-eopbgr50067.outbound.protection.outlook.com ([40.107.5.67]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mRK-0000Y2-LD
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:44:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NGtaoM44sQKhLBjsWyfqRVJUdxRX5jjl4Zuqc/bOAvaCp8IyT6vGpyLUrf6t3E2OoZ6Xu6NwU9QrnSDlNfz/PlRrIzZAyG7pVEa0WFzH9jbV3l6Mvz2gixpCnr571rczHzemKpa/l6iUD4/N9TtZwBssEVu05lCujWd/+ireHztPe1oulQf5+spsvtIovkYrEkavuhYG5aodYInsA4WEy3qCQJ0wLJ9OAt7Tx4ynkg8aeCCsiECrtuoJqMt0lJ1zRWdR9TWGEG4IExCoylY/8Xdtu/gExaFpZnOrEAykI8DhH7ir71BDfaBaRJ53N6KOFPERfGtc7QiEfWWRksNdVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=35EC2rNch4cGtwQmHdVq/iy8qqwQiZBkdxEuwngRDEA=;
 b=KCgfrr1wRMwaIoTJO8ywiE55LEP3XgUEPHEQMxdbpCk0jm/DFaG2uxxUKWab+tL/e4mKJdX11sIS9R+3H3pYXGr3TQ4LPZ3B8EiDMKxyGESzMCFhGtto9r+XaQ/La93nucbTJdSCpPwWTuroZLte4+2ITQm7K9y9V4euN9/e6Ewm9liDvoleaelOFeLbSDSPfZh2UU35EOfCVdxXaZGuXXieWgpnHjS9MSy6EZ0j4imyOihpgKw5HVVlr/xf13NMZEgYcAWSFSoxZFhv73vzF6d4DropkGapMVqwyygmOlXLKjN9H8qN9cZbweBdcFh381KI4fOUGhPQ4nbM0XZvug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=35EC2rNch4cGtwQmHdVq/iy8qqwQiZBkdxEuwngRDEA=;
 b=lTeDPAQgctjyb+3i3kLcX0tO/7Z3hhwZVkFj8D6JoDBH2am0Xfnn8GBPzFOoPCK+cbqru+98PITU1uqTkCveREotoYKaKryc39+J0Zz9TvEZjevzT5myTQFCB6CAVCVv7ZFGeoSLJI6as+rilFF4i5MpUkdul0pByOZytnqNg84=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB2038.eurprd09.prod.outlook.com (10.170.213.147) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Thu, 5 Sep 2019 07:44:17 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::19cd:2f16:89cd:67cb]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::19cd:2f16:89cd:67cb%3]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 07:44:16 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "oliver.graute@gmail.com" <oliver.graute@gmail.com>
Subject: [PATCH v1] watchdog: imx_sc: this patch just fixes whitespaces
Thread-Topic: [PATCH v1] watchdog: imx_sc: this patch just fixes whitespaces
Thread-Index: AQHVY724fLk0KIY3y0CpQBQtW0JX3w==
Date: Thu, 5 Sep 2019 07:44:16 +0000
Message-ID: <20190905073730.22258-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0302CA0012.eurprd03.prod.outlook.com
 (2603:10a6:800:e9::22) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c0ea7dc-3d9c-4233-8061-08d731d4daa7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0902MB2038; 
x-ms-traffictypediagnostic: DB6PR0902MB2038:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB2038B11A0C1D4AE6F9E80CD8EBBB0@DB6PR0902MB2038.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(376002)(396003)(366004)(346002)(136003)(189003)(199004)(5660300002)(186003)(26005)(99286004)(2906002)(305945005)(102836004)(1361003)(6486002)(44832011)(4744005)(6506007)(6512007)(476003)(2616005)(386003)(6436002)(36756003)(5640700003)(6916009)(3846002)(6116002)(53936002)(4326008)(486006)(52116002)(7416002)(2501003)(66946007)(2351001)(8936002)(66556008)(1076003)(316002)(66066001)(81156014)(81166006)(50226002)(54906003)(66476007)(508600001)(25786009)(14454004)(86362001)(256004)(71190400001)(71200400001)(7736002)(66446008)(64756008)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB2038;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ntNlBlEZfG/uXW/uO4cpC3TIa8bkk0tFpPQSTLtD6FaOnpcAvc8O/NrIYe4JV0lliooGIxpfvhenB0zeauY8fhj/+SmnGj+6DNHmtNaBlFVjeCTxVa3B/6w8hFbMjaDEhm6D7wRlk8vKJtQvjAadxhG5GnF20sY14zH7nhTTLE/kpt4mFPG+Q6qjtDzxtQwOGhjKOfx8UeUcNiNbjSb56SDTzI+4m8I3Ff4K9WFs9S2+wCofTCtUgrwXTqka81rwz3wXIHRvwue+sdH0MwwWxmEHT7RceIMEe1ROHdYi4MF8jUADA0Nh3rYmO8z2jNMTjRES2YrqTuJlzShXahMaLrT9EcnAf54fP/msYN63BC0oR6dfBmkYsb2cozCmu+pUR9ULH5mkGNiOfvZbzqonoAd6yNRjAafNWhgEcq3aA60=
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c0ea7dc-3d9c-4233-8061-08d731d4daa7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 07:44:16.8342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZF3/9cMZLOEQJyq9eTffXhps3WWJ6oSxpE+p22f3xtMXkr9mK+o7o11BH0ZXbqsJcqe0JZxa43FAxZ/gpyDCqbJoR3LZ/6ZdRW1SAwrBIY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB2038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_004422_725379_3782C441 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.67 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Guenter Roeck <linux@roeck-us.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix only whitespace errors in imx_sc_wdt_probe()

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 drivers/watchdog/imx_sc_wdt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
index 78eaaf75a263..94db949042c9 100644
--- a/drivers/watchdog/imx_sc_wdt.c
+++ b/drivers/watchdog/imx_sc_wdt.c
@@ -175,12 +175,12 @@ static int imx_sc_wdt_probe(struct platform_device *pdev)
 	watchdog_stop_on_unregister(wdog);
 
 	ret = devm_watchdog_register_device(dev, wdog);
- 
- 	if (ret) {
- 		dev_err(dev, "Failed to register watchdog device\n");
- 		return ret;
- 	}
- 
+
+	if (ret) {
+		dev_err(dev, "Failed to register watchdog device\n");
+		return ret;
+	}
+
 	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
 				       SC_IRQ_WDOG,
 				       true);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
