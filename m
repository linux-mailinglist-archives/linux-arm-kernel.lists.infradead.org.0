Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7B0124D43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0lDdtB64H2beuYyNxBAzjRK7Gkv35KE3+d4EmZgYfU=; b=alsF7+RueGdkP6
	XsuFWI8JXA0yLoI1R+eIPMwDXTb6r1fsv8JqV332vyldl0fBdx0+koHezy+JmQT7JdP3Yeh5ruGy2
	WOmH9nFtvQaowk2XOjaJjwOrLCG5exe8tunFj2Mw27tdBXLAgW7do4ei/QYwKdeAgj9xoJGQOSeeM
	8fmkGjcosOCjU4anTr3COiv9DKSVmYsnZmGn2pXmzuumjq9Itd/W3k3RodB4XOa/srMnJnwwVW3LF
	tQdB8nuhXMwaKRVujzrHQ1gbefjbgeatfYCwGp6x2EAleNXXF557UNgDUFeIya0zXe57vshyYyL6H
	a5M5skKwB7RoySZuVa3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihc8u-0007Uy-WD; Wed, 18 Dec 2019 16:25:45 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc7M-0006ir-Ec
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:24:09 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Y9GxzBKjwxMKk91CRCvooY4M6Ci4515qSPgr6P7Wmy1CHUjJJOsUT7pkEBLLb49AA8TZw+bZgz
 dST1xJ1qL2+djKS/PGmpo/knWFmjXYEedVfHJYfvQEv5NarzCm/WvPDjuPTrUmUi/ImEobyNk6
 fNgqRXOsJ7QpufYzuXgzlzzmFxTKk6UPLskPaospsbVP7KYHLqKSFAZaJntceGkWKTbbZiL06/
 LaqfC95hRqPRgrWRb6Cpbl+LqPjjzUq5vKs1JThUsK8VSfUXoJTBcw0T3amiA2oRsEQlfuAqOM
 IaI=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="58200036"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:24:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:24:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 18 Dec 2019 09:24:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zb196qMDMsEd19zPkZURzdCDF4S2+aZaV8jery0q1pFsvjkF/cf0f+dbCGbhqF6mchwvp30lCyqZK9ve0KVQKBOdQtIGCqsSjK4CFOyv/CHQFa37N/6OzYWymtf9rAxMecOwIHaZ/cEGTIjENIeMig96GTdCXnHDxHmHA6ctJ+iZ3hV7EzLNDC1Ryl45VZXVJLqUSc6Xvsli5zBYXjGE+GuoGLQ8hx+rynkbVlK941WbkrOrJxzp3UDFfY2KzoI1Y60DhPADGIbV8qw7qx4hEQY9M6u++1+2mkItltg3GRcSpkzAkLcyETw6O6+fICi57RKn0pT37T/t8QJxqFPqLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bXQ8udlvtPyUpfphdiMvqq84W70x+9q2C0IoOL59urs=;
 b=nXGOf0B/OX1Ub3qDfqIzoEpRyVip4J6HA1TzP0pzxpy1qgspLGogHoCNU/1qam0eIf7ESNC3v3BdLq+X34qoOjpJByrLTgDS8DM7K0NwEev6JBMjfzErbWqslK2pEFDTftJY/W4pvS0zqI8igvNTyCojREuD/cQGjA8zArX+rIElHd8KzjoCGpu3mMgQWUCl9LylTeZ8DI+KVvUdB+xZXID10pW7B7Oh/pIoWoO9C55Pg8VRTmJu3NXu4+12IK5kFtxMhWVsMb7BS7O6p2byKR4TjREhxSnY9Ta8OgOT4ZWaJARB9QpBmrg9my8UOMoB18TkVq41Iwu4A5Re1gzhWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bXQ8udlvtPyUpfphdiMvqq84W70x+9q2C0IoOL59urs=;
 b=DDm9mMDP2ewKYQp48JY2d7O1tiNijswLe8wAy5zNTTfSF0KRA/NITLZTM6Yvg4+6K2mW07ufVePX9pAakUMWuoB9OtcF27jJfjSptLsCTwbzbL062pD+xdZg/l610fDQMnbxHCOSVJyvf2+yNuzc7aNbNFgeivwwOfEGkAhEoww=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1769.namprd11.prod.outlook.com (10.175.87.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Wed, 18 Dec 2019 16:24:01 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2559.012; Wed, 18 Dec
 2019 16:24:01 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as return
 value
Thread-Topic: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as
 return value
Thread-Index: AQHVtb+OEQqavda3i02bVS64GBIv7Q==
Date: Wed, 18 Dec 2019 16:24:00 +0000
Message-ID: <1576686157-11939-5-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2bbf8bd1-17d7-4956-04b1-08d783d6b138
x-ms-traffictypediagnostic: DM5PR11MB1769:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1769DAA34D00588E03AFC285E8530@DM5PR11MB1769.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(39860400002)(136003)(346002)(376002)(199004)(189003)(66476007)(66946007)(66446008)(76116006)(91956017)(2616005)(64756008)(66556008)(86362001)(186003)(316002)(110136005)(8676002)(54906003)(8936002)(71200400001)(81166006)(478600001)(2906002)(6512007)(26005)(81156014)(36756003)(4744005)(4326008)(6506007)(5660300002)(6486002)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1769;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jlcrGL6nAuOZ5gZwwvVWGXr0FzA//wNGwJJ2RJ8yp0VbF8wtggpIE1O6w4DFZ9HCfVou4z5Nf5zSlCW7QlUUVBt+oHaVMTXhqJ4v5poNYTTzqSXlgLviZ5mfavHFLLjWG4p3orcfUOQ2t54FguYNfkhcyZQw3BhAoUg0IIOB7OxeXZ/OTJOJOP8+l5u4cxbvb9rzHsg9mjJUZdLmUNm4B5vtPzLfRy6dJJepBypshohnPQb9hxqNoDt0ywnq1h2koXwLsmHpwf70BEWVatC6mFF22iYYvS50gvt7+xvXskIAHYIAUukapaxQV/8IHnKkZHcVB7PVW7YlDvmcDZhFNAsOZNiD/uikfDqD5yYi/LbYHVW7vpnSFQVrIdxasFytHZCOnkAKqx2Ws8w61KkCnGtuhg7J5I5n20FOzSTNJMU/wacbxnryNk0+v0SNnDE2
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bbf8bd1-17d7-4956-04b1-08d783d6b138
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:24:00.4408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZRYxaDwzzllJZJ/0TgHIU60guO1+YiM9iWtk/CA4vQhFdpMdkSwnX/Sv8uzwnZUHxwMYeuE1rl+sIvgtuP3j9e6GbWYKuYpwEb6uybX8M/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082408_537356_4734DBBB 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

This allows the RTC node to have child nodes in DT.
This allows subnodes to be probed.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/rtc/rtc-at91rm9200.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
index 3b833e0..f1b5b3d 100644
--- a/drivers/rtc/rtc-at91rm9200.c
+++ b/drivers/rtc/rtc-at91rm9200.c
@@ -421,7 +421,7 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
 	at91_rtc_write_ier(AT91_RTC_SECEV);
 
 	dev_info(&pdev->dev, "AT91 Real Time Clock driver.\n");
-	return 0;
+	return of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
 
 err_clk:
 	clk_disable_unprepare(sclk);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
