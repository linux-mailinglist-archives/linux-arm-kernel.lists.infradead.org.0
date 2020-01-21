Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A02143A7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:08:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBsL98KRO9PA49apRis4n9GgNM66CpNRGyulzkJsHF8=; b=eH/dmqyyNatXgK
	0QbtHXM0IVTcIT2ny5ueL7U3xLUnMajxHW8xwCDhUa7EuwpUlEDV+nvODO3JCuYvKxUDRa09ofdb2
	Z3EVNiGqs19EcK1BegvhrCktuMRfU8Fr+340DhsCYR5/WfLVeMjKuQMZHjSSM4G1kmKCuhFcfgXFV
	2QgohLousiz5VpUNcOzDT0hnVGxTtvrd2lfBWu6JNSpdI9HaJjHFe0ixvO1eA/iYTQH/2GsdTFxyT
	qdwxy0LAbIz80pSx0nxdm4ZP2nxh26clN46qpoBw+KQ/78irKaUiqpdYpND5ZILOUjeKkjV8hBgqb
	H7fKlbxfVedKhz0fxjdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqSI-0001Bc-2I; Tue, 21 Jan 2020 10:08:18 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqNw-0005fs-VU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:03:54 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: xeVJn7man1HH7FlO7Z0pKUdlvajWaH+Ts5I7TTw/tiRrJXhDz4zKAWAl0RcsvjTdduKZTyVpuw
 om+ee4OhkPfibGP8wxLzufsMxLUWv9lNHB53twwMGZn1XYwD8v1oShGnC1syJdES12aUO0OILF
 oEkOz7AtjOoSuajc1aps9DVUslclZYz3KQkiVVRuTTIliu+/yvqiadIPBJ/41+A7r0/HXylEK+
 EcztduSMeoWeB9WurqNfRvgVp8OftRK2056q+JfEG9mQGA2h+vy6VT6paOe9MYKVWVCB0bm30i
 tt4=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61481965"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KCt1omnpWjo92QiON6c6AmJHTdJ3sAOz+KMua4IPsJ+riSg7d5WjqaQy2U8nHYfJEQGRJQAtZHE2hIFHOKnErBwlBEFyw6iXcAYKOcOwGOqDVHOiHLKxeyvKUvnrP4lpyKGsII3Z0ORBom74mXC7D40RbGW9zt0BOo6j3k652S4AWFm9C7umye0TgV0xj96miiofNIgpv83vC0QkuKqHHinH6Mq7jcRzqJXjkabFn3BPBX52EypFNbCdqNWTfztuPY+YF5XeyALK0764o1JhOlbJdM5S0tvoww1o7XnBii9h7Ol0i+Gzw14vaKUjzWYxe+YnGNNyv12lnnHaoMDEfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=10nCea1OuXGgKhgut2z6FehDPAthGmYp6lnT6XoBvHc=;
 b=cOhBa+n7O4kUnTwC5nCJTC3O2jDSyA7pP0TmS4XsWtzZl4DXThDKjdgoO1AGApzZk2AcArh3cPpWpjDY3RmwMphpdb6jFyjDMzl+3fygjDZxX4mCIk8+wAIs0lFHjLW9rg9Oxb7ogLGvaiykVaB3y00V+OWmgAWIDi9OYaamldbL798LQCGyl2vLrc3E53BQ9j8H0+g4H35lnd1mGwrExw2eRL0Nj61OUcCScNYFlaX3n2y0t4se4KvVXAJOy+m4XSfM6zjXLbcCNmdLhUatop1xLb8Eg8uIsMOMHPNu4lmsvjhnXGKYVFmMsHe+sF5875hNHf0ZHAAhUFKVEFsgCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=10nCea1OuXGgKhgut2z6FehDPAthGmYp6lnT6XoBvHc=;
 b=bR+MiqsqZOYP11wRP6DvEK0ZC4eJ3ZbRlLQUSYxcdIMXajf2sZvIdOg510Zcb75kuFTDdteoqnkMpJGZU18VdnlZy6GFJ0gXN2EdRKHrGR3ACP2naLSgYa24mDv4qjm4Jsri8v5jbzxDTs4IZvQOy6xOwvk33OyKGvqzBtOJ79Q=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:31 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:31 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 04/15] power: reset: at91-reset: add notifier block to struct
 at91_reset
Thread-Topic: [PATCH 04/15] power: reset: at91-reset: add notifier block to
 struct at91_reset
Thread-Index: AQHV0EIIU8blIOUR0kO6jGES0k9GCw==
Date: Tue, 21 Jan 2020 10:03:31 +0000
Message-ID: <1579601001-5711-5-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f44131d3-80af-4cec-f347-08d79e592b5b
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3195423B702A715B2D125495870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:172;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(346002)(39860400002)(199004)(189003)(107886003)(26005)(186003)(36756003)(5660300002)(110136005)(54906003)(4326008)(66556008)(66476007)(6506007)(2906002)(76116006)(91956017)(6486002)(86362001)(64756008)(6512007)(66946007)(66446008)(8676002)(81156014)(2616005)(81166006)(8936002)(6636002)(71200400001)(316002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3195;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jeS5xRDwExHm+0+bdy1E4p7zOPhtxDS3rVQYxVPFoci8dDKpRYF6m9ANfFClCqz1Wfd+ey0BpnMy2njeE+Wjc/bXFelcq/dWQgOgTi3b6YzULLHKhVP/thcJalN2/gP+Z7+Fx5NW1DuG+pPHPKpQAuJBqcUEPJTtI1R7lHi4uBLWk50oyDpjb7VpMRCdu52eRW/y1hUDO//xeOVZI+d2cAP166Dj0lHJvzcT43+p8wTPcZi2C5PwJHgLzZwNUle8JSwxL9A8lTPGEv4yfPPxnbKPy0sosN7y8i/Xv4W0nvrjNk0mBS4ERu7A3+POiQVPCv2tDVrJC6e6Ep2+Gk/GmfWyOo6CcjNQDRErJ6uAMI44kYdv+xFPblHSDliUPrDeWliceAX5C4S9xyiDKnFJtY49oLm4Dl0zQh8fqvhT6KeY3P1W9ybceT8vUXWnE3j9
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f44131d3-80af-4cec-f347-08d79e592b5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:31.1809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vDFweXCYr09a6tWK+1JmOYbOf7GDda25npKit1YKobKUoIt/ZvtfESHfxgBN11f0T0uwtryvD+q33U6FGxjjlne63bNVah+PX7LZBVF1vRs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020349_102911_1EBC4214 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Claudiu.Beznea@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add struct notifier_block to struct at91_reset.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index 1bc39bfda0aa..e8840193620d 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -53,6 +53,7 @@ struct at91_reset {
 	void __iomem *rstc_base;
 	void __iomem *ramc_base[2];
 	struct clk *sclk;
+	struct notifier_block nb;
 };
 
 static struct at91_reset reset;
@@ -205,10 +206,6 @@ static const struct of_device_id at91_reset_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, at91_reset_of_match);
 
-static struct notifier_block at91_restart_nb = {
-	.priority = 192,
-};
-
 static int __init at91_reset_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *match;
@@ -235,7 +232,8 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	}
 
 	match = of_match_node(at91_reset_of_match, pdev->dev.of_node);
-	at91_restart_nb.notifier_call = match->data;
+	reset.nb.notifier_call = match->data;
+	reset.nb.priority = 192;
 
 	reset.sclk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(reset.sclk))
@@ -247,7 +245,7 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = register_restart_handler(&at91_restart_nb);
+	ret = register_restart_handler(&reset.nb);
 	if (ret) {
 		clk_disable_unprepare(reset.sclk);
 		return ret;
@@ -260,7 +258,7 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 
 static int __exit at91_reset_remove(struct platform_device *pdev)
 {
-	unregister_restart_handler(&at91_restart_nb);
+	unregister_restart_handler(&reset.nb);
 	clk_disable_unprepare(reset.sclk);
 
 	return 0;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
