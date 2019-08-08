Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC29585CFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+9J25yVP8J/Dk3I77zl//yIwSZfFCYcqhZe48yT4G5U=; b=QaEDrI5WaB/y+N
	rnhgEvFH2PJRj/zGrVYIP1T9t5IZgdJghJqlYaZcQ2sveZd9E91z1LmdwV8FTVd55R7i+wvoU09Ku
	On9lpfQSUV9tw38k0JwVabD0aNKmpngc12XHys8FHWvfrRohS6DLM78Tikqf7MSIPBxoOfKKRQ6hv
	M3HS+YLabTqX0w7erRVm2lc+yGtdjn4BnnUo++L3t+DYsLiNVeSCnXDmgxsrriTe+z3FlliVSnlbo
	6OoyIuekIKvvA/hJPBioFZI9nb7bwopOlyLyWMs9y03K1Nrf8Oau9sRO0YhVHuUu3dbP185EDAI5b
	yNx6F0yD9YDNmrsXo7JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvduE-0002MU-Ao; Thu, 08 Aug 2019 08:36:18 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdtj-0002KW-2O
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:35:50 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: kh1u7GSs1wP09QQqdQWKtWlIfhbCNLj9oMYmWRoirqRXZQAyxpPLY/gewcMlLeCZFy+KX7X7UY
 NoQy4KqYsxDE9pkTKFDbuTfj8fPgw994JRjeAo8S98ooJP7WLo1kTsH1b7NlbYmUA5Twwr3VT9
 tI1XI12ksXsi81H3aG2ycVD9mv27gUrDgKgCJpMTtlbglZeEOAqDPboh67qtWLAhSjL/Cjvabf
 rQUK3qEfpcqX1aHSlsdAl2mAnIYOD7Fv4h54oeW9WSIBF1DhAkimrq2fyYHQg6WDgMjfUflxZ9
 8/U=
X-IronPort-AV: E=Sophos;i="5.64,360,1559545200"; d="scan'208";a="44412903"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Aug 2019 01:35:44 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Aug 2019 01:35:42 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 8 Aug 2019 01:35:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TH+dqJ2z0cEFvMiSjDFmmapLEHWw07N5BKbkqu5R1lOjPtwsJTdPVVt28aISvhMmvrTjQKvS823Vp+hLQeYg2ovTzjENcZ0QhPtOlY8i4znmsh6QZ9LoHSmnYkFDRj84hjlX6wMA2VziTlBu9bkqRcDaJTPLgypkVfUZbIbwc9oKDL5zgHKNCi/++9izRM2MbJwdBqHZCOOTKiA6L2mda45Fr2/3GKgzahyXRREJweslE7aFD/W4YUtkI8HubMf3+QRCq1IvuJ+uz5TKZ+QyOKtPt9CrkNULPZ5180kQwD5JT8bCssq2JX7NQYB1VCgNziZ71Fz9EU2eFiVhPrDU2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2WU79edz2INKG8i+Jz6gV+gBXew9C3gmAnwP1I44fBk=;
 b=iaz7pinY6sVnNTlhgPChUZGbna0fkheF5bRJiAUIqpX6uOoOPASv2JdL6vc7VeV4c6gydENSEBc/MEW3QFIJ8IwtsJSNNHNfa5FU5GAJYy2kQW7fhKjoAs1NQTu61PAlJbBuHh56PPxzSoYEfNU22mYGT+zfnjISOS6gBvaOxkuK6sTDyzjCSVd4hDgZbctu24h/7J3PNbFgsXj12kpcPc4Tufr0n9w6RN0BxqKEfwj7iB3f9WeCgNIUPdClvam8x2eGqTZ0UDS1g5RaB8irA1PCvQvm0byiLEzBmsSe3eYRnkd94JU5A7lDvXjJCM7gfiuU/8p8b6iZVG9u8lNHZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2WU79edz2INKG8i+Jz6gV+gBXew9C3gmAnwP1I44fBk=;
 b=a9nfLLi+OaLwXRDg2dZeEvU5EiaOU1sWPxM9EuXkVcOPiX9HusVmm3U7bHIj1mTauNTTj9y/9l+4vSBMgzgOfD1IRUU7EMgc4uJ5KROevfJOwaArP6Pd0HM3hp+NOni4cQTn28Fr9Rc2nNMfb8/VTPE3a3ZtimTN4zwP88Q+uoY=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1545.namprd11.prod.outlook.com (10.172.36.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Thu, 8 Aug 2019 08:35:40 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 08:35:40 +0000
From: <Eugen.Hristev@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <Ludovic.Desroches@microchip.com>,
 <alexandre.belloni@bootlin.com>, <adrian.hunter@intel.com>,
 <ulf.hansson@linaro.org>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: [PATCH 1/2] mmc: sdhci-of-at91: add quirk for broken HS200
Thread-Topic: [PATCH 1/2] mmc: sdhci-of-at91: add quirk for broken HS200
Thread-Index: AQHVTcRCu4nz/dUi80G6GVwFCxrwfA==
Date: Thu, 8 Aug 2019 08:35:40 +0000
Message-ID: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VE1PR08CA0020.eurprd08.prod.outlook.com
 (2603:10a6:803:104::33) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc942a3d-4e94-48a7-3564-08d71bdb64e1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1545; 
x-ms-traffictypediagnostic: DM5PR11MB1545:
x-microsoft-antispam-prvs: <DM5PR11MB154506113B38DF6AA3794BCFE8D70@DM5PR11MB1545.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(366004)(39860400002)(136003)(189003)(199004)(26005)(66066001)(64756008)(66556008)(66476007)(66446008)(6116002)(3846002)(2501003)(2906002)(66946007)(14454004)(256004)(36756003)(6486002)(2201001)(6436002)(86362001)(305945005)(7736002)(53936002)(81156014)(99286004)(81166006)(4326008)(478600001)(6512007)(8676002)(316002)(52116002)(25786009)(486006)(2616005)(476003)(71200400001)(71190400001)(102836004)(107886003)(386003)(4744005)(50226002)(6506007)(186003)(5660300002)(8936002)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1545;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sTVCFikAGlMKkbdIVDbW8Nli45NzQUi+k+E+fq5cWWXEHhKfEn1xtVF92PuSvnqyywuJ+00dpCF7iGLcpt8sf///RSHkKHYavCuYDWZKjnOSKqTa5OVuQIcCXVQP/ZXoBcjjs3QP99toHyPWbsxI5k4yGOviuiDeJk9U7J9SfNMBFeJ+piGkaWWbrGI21d1VN4NpGGKc6W7T5Fu7udO0V3OHvx65Ypb0EuSydSck2IaAReEY+uqTrMsGOq/fgo+5UzIeqx+n3OsobMYuvXp/NfpSnh8RDw3eSeXftc62Ubf91f+ECtJCEfI7ZLIyACKoYwiUfABzMQ0mZlZYsCdPdco1B3MDZ48/caHh8p1RZs7jlLQvU8DaSyYVohUD1TbnFwZsHFK/FjAdc8Grb1pdZaI8tt5vbSlLZ9Dwe+7hyEI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bc942a3d-4e94-48a7-3564-08d71bdb64e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 08:35:40.4551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yQyWwqpW+7DSjjtyOqWz6w3FpgUJbDRizhBu10qvDpsoAZfFAkQvCXiqaGa5g4kKh+Lxs78ub4B9Kybslm/BSCySNakLCibQVPInaKyNxXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_013547_275127_D605035E 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

HS200 is not implemented in the driver, but the controller claims it
through caps.
Remove it via quirk.
Without this quirk, the mmc core will try to enable hs200, which will fail,
and the eMMC initialization will fail.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/mmc/host/sdhci-of-at91.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
index 57fe3b2..3a8c6d8 100644
--- a/drivers/mmc/host/sdhci-of-at91.c
+++ b/drivers/mmc/host/sdhci-of-at91.c
@@ -370,6 +370,9 @@ static int sdhci_at91_probe(struct platform_device *pdev)
 	pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
 	pm_runtime_use_autosuspend(&pdev->dev);
 
+	/* HS200 is broken at this moment */
+	host->quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
+
 	ret = sdhci_add_host(host);
 	if (ret)
 		goto pm_runtime_disable;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
