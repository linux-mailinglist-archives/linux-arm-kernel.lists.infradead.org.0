Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E3FAF5F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 08:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xovMee4CdeB+EVD8FIKAeSNq/kt4u5UxD43iMu7FCT4=; b=snhKkndLs53y+7
	fq0kJVCYGWKCG1g15LMvAr6TxZa38t4yZafj/QucsbruntuPohup3NNFrEIFpoNCRlT9ZbmgXmHHp
	To4ao89KGy2XD3aKmgpiQrRHLycz0E2fOLA64WxZ8t2GamiZy7QdAsAabHNuCXst3vjxru9uILNUa
	QHQfaXvn/3rN7Osm/Qj2H+wdUg/Zk7e3jtuUtInq4Qk7OGs+V4FjnDm1S3cshcIdtd9lV/ye5e91H
	FeP2vl2KZy6styga8Ip/4P+p57sqU18YHRm/Qt9XwCQwMItX6n5iG1Dn4QS/ijBQU71T6TGfKnev5
	dsysbmTKVMPr6vAzw7VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wIA-0001D3-EN; Wed, 11 Sep 2019 06:39:50 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wHw-0001CF-3H
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 06:39:39 +0000
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
IronPort-SDR: 4MjtpdDzsT8UazPDyHxKTpMh8uF/Ui8oIJyJmN0/RWJkDTPE4ffPz2BsV9M8pXNWemfZuaJUZ+
 FMDQpBLedgcqElVeRaG4vhNf+SegoPdaJQCAKOxtBINouQJ+BjUwn47Fv2os9gxBUOqsgogEd3
 lrXpYC4k+cphl5nBHW8sdeqNMKtkGRAgzltWgrCJVhpFG6alhNekDBMcVim1VCO+NcwU31Gztb
 J1lGjREJYVhWciDfrXOL0qYOI2RCTkeiG68uIivx/p5DyW6b5LeLKfVMB2Z+XbpMvxMcQ8K30C
 e8k=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="48626358"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Sep 2019 23:39:30 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Sep 2019 23:39:21 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 10 Sep 2019 23:39:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WMKMXl8VanIhJ5JFWqc+esDnlLEu3/eRyYq5hML9ri6/fT+CDxgP6JTxb+yMtjcinDWaffSu2/xJr5KKQyu0FopnqyIvVJWte7tMdcKJL+bT6lInO1D/Zr8VFr77IPd/TBGhWDCDu1wuOWfex2fl61lwr+UCdBEpAdyo0hdDcApz4E2g7LfIdbSiJLCENGxQ8mYh11S+1MRShnQgD3Wx6nSem/Qg4yJ7d6djVW+f1ZAcHdh9XFDd02wVJ8j1xfDvbHzR/CPs52L2nk7SAyFWjeHVOfIkFwQI+RgJnmLL+MarpEZ5GQVJdK11rMyC1FAihtRhg6wGirEUhM6ML2w6CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=clgXdp6N4YZ5vYtAVU2H2dia15Jmgb6KwvWmO9tQor8=;
 b=K/F5iKshuZOVOtePt/0RAMmKNGjmvMjb59fwuQlpHoKU1f+sn3zoj5gxAmUYXwDd5vqkZbvQupaH386xcXMTpUEw/qRSEdqUssmz4SmyJCyGMiG1Rpup5ml7BpT6Ily15U8Rpj3ORwIBijhpL4Mc4DjLcEmTasBOqSa+52agfX/UPLdj4Kz4e5m+ceA6jX6rqFHsoxhZY0iuwiSPJ4uHLqtJvcb6EgWk5wY9YVHLOJWW7pkfq/M2EJ6QuYjPLIgtoAWGRvOg7iCvWR7b1q1v7zFVwXl3TvQFpiYMFi9L7S8NmKT9jt9+nqTUwGGT+zkYUUINAFP2Wmm9cBi/u2Z1bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=clgXdp6N4YZ5vYtAVU2H2dia15Jmgb6KwvWmO9tQor8=;
 b=bQFAYv4CErNTZ4C0g+dncgW8The+1tw34CiepQ4coAldnYb6aecnVrPmtePFyMoHXVhHfQ7TXrOBis5pi/4laYGwgHFIgX/ej/UdlYc4rVpEmsSUq/E2/HerOO0Art0RyXjTjwzkJZxl002PeP8v+VycTc1ymc2kD26s+/ySXlY=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1946.namprd11.prod.outlook.com (10.175.88.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.20; Wed, 11 Sep 2019 06:39:20 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2241.018; Wed, 11 Sep
 2019 06:39:20 +0000
From: <Eugen.Hristev@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <alexandre.belloni@bootlin.com>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Thread-Topic: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Thread-Index: AQHVaGukjPTRbry/ckGMFC3Lf3IeQA==
Date: Wed, 11 Sep 2019 06:39:20 +0000
Message-ID: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0102CA0082.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::23) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25e91481-975b-48a5-f39b-08d73682c698
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1946; 
x-ms-traffictypediagnostic: DM5PR11MB1946:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB194647A27D01C43742279D06E8B10@DM5PR11MB1946.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(136003)(39860400002)(396003)(189003)(199004)(25786009)(8936002)(478600001)(2201001)(99286004)(36756003)(6512007)(8676002)(81156014)(476003)(52116002)(4326008)(2906002)(50226002)(71190400001)(107886003)(86362001)(7736002)(6486002)(2501003)(186003)(6436002)(66946007)(66476007)(66556008)(64756008)(66446008)(2616005)(5660300002)(486006)(53936002)(81166006)(71200400001)(305945005)(4744005)(316002)(256004)(54906003)(3846002)(6116002)(110136005)(14444005)(26005)(66066001)(6506007)(386003)(102836004)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1946;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: r8GbFVnW6YZ9XwzwNiO7E8KP1dQa7YvG5DeubnDOVg9MuzE3r3+VApYSpo+lxgIh38nrkpqjp2hLjkkHKPPQh5tv+oR3/wPcoYpkh1RGfjQsyucZ9QdhQyDnvovw6BHuKIA4nsJkw1y8zeHHobLlEzffULxR7xOdmxDhGhzdzCuq7AlgMXeFBeJXX1qORp/yyRvylWc1C7cipdtfv71Dn+cOTMGj2MOGudqdUiU8IC/Wie9EXM5LLZH0eBUPa2/h2Vx1MkGYYtNwspj7tiYbELrwqeQLClGkWsy1i3EMLjq3hqjPjm9DMYYWRbYZ2AFyuD/xA3JDVgFbq+mrqzlIOPO+QIqbBWRWcVClZRAPWBO/KfB0Ew5UM4DshRjJh2CP7CDLCgr/pjFSQXi3UWr+KyRvLO31V12CU9ZVZTYbClY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 25e91481-975b-48a5-f39b-08d73682c698
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 06:39:20.5203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U9RDofPCMYAAgsTdjxP8E6utXaEb4WaImlmiKP/LNfa1nvTL6JuM92jz5tn33R/7DPDRrM7to4pirNKRqGaihmDyAibbkeJp8DASKburk+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_233936_161114_4B1CD7F5 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

The PLL input range needs to be able to allow 24 Mhz crystal as input
Update the range accordingly in plla characteristics struct

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/clk/at91/sama5d2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index 6509d09..0de1108 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -21,7 +21,7 @@ static const struct clk_range plla_outputs[] = {
 };
 
 static const struct clk_pll_characteristics plla_characteristics = {
-	.input = { .min = 12000000, .max = 12000000 },
+	.input = { .min = 12000000, .max = 24000000 },
 	.num_output = ARRAY_SIZE(plla_outputs),
 	.output = plla_outputs,
 	.icpll = plla_icpll,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
