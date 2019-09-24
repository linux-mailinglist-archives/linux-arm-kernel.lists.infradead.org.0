Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37322BC5BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 12:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=InIzy0TAp9goNhlL0EGpR40+DpMES2bUMkYykxrojeU=; b=uQTXKU1BW5KCPh
	iAQROWC1epZ8m7+tXrbkEB5THchZ60aEBGiAmzUrm/RTKAJkU+/3gpjYEnufQjfAV1RXheujbc6Df
	JC7iwiWE1ZiAls/KPPaHdCR/+dUyeOY7HHWfHApj4D4eMQ9Q46P+bMaD5gxWKWfXPfxOM0i26OHZ7
	OR/0/FxI+UQL9qwSq7OtzI2+DO7KvmyA5ih15o7Z+7qtCobJKCNQCXZaOx3ZTwqHjp0EX+3qgLGPm
	+ThPgTnQhfnPRJJtv6m3QFVe9cL0C29ABiu+rkLuByxo1L73N4ZkjR6IcSmm8cPASr2HGwOnhqemP
	h+fnVCt0WH1vkQahclbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCiET-0004Lm-Ao; Tue, 24 Sep 2019 10:39:45 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCiEA-0004Kz-S5
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 10:39:30 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yxcAnS5Cx+0OSZh7J9sGXRZzFwMaKALUT2joS+c3oZ+pjIhgJzfrS6DW9efHMJ7aUQVffBHa12
 8xAZdP4IZRSePdj07+6BBana0UolKoCCxVZlUsVtTYDq5+gczOx8wqZ5+++u0dF7oCNBtf8XBD
 bzILHuBSf+tiQsy0cHLizs0bgroWJuQ3U3b6xzEcXTRX2jVMiyEUd6/7U1priV4DsTSRSk2SQc
 IFi1d5TsNxKd64m9wRLi5brV4PQWIGm7uzYrRzzLp0E9MM3CF4PEd76psVn2U/QRtdJtg5PKAI
 +1U=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="50092179"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 03:39:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 03:39:10 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 24 Sep 2019 03:39:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=knu2YOFDwn3FBf1C3HU6ryty9bfxJIlZGRdEdPjpu35r3nfRTOofTbDu9dkrOIFK+nuvjORK+dulZx7UqYfPNpg3WuV7dg1oEMZHmalc5W/X9iVbP804BfkZDJkySIPK2g8hUzi8ESPJSIR6oWwhnohJOWS2Z19OKq1eOCqkeYyqYf/eMB0qgdLDHqWjHLubOW68z3B3mNp3Ai7mTLr7MjQnWtrnD2vhCumGGVRi9tzJvnsCWxpHWrYoG+zV0ln31pJ795lgKkUbnoTbtbtpTiLCQVsV3TOn1YHVsemboIBBf/tX3I3nxFM3CXtyamR+2539zELLofgFY44FWbQk5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=As+ms4wjLa7Le5WArmHHH+aFlBCBe04coxYEtc3ySY4=;
 b=Uguk2v15AC0hpfpfjmJJR90dwEj6uYHtAgxoED4PtKtRjzO6nRG4NPMbsWj4HcTkkemXNu3ULapD8KBVhMjgzy3VN2GTHUd7oojZlTLgj71dlL1gWfQO0jo4sBmQ0oc1m6QqdnSv4DY8dS86wen5tQSb+KHqKWCMqb9UEffUL+WTnVM1fy/QXBzyL0VhLRbSoONXPxPqcPY4E79wc1GwNitsa5D7s0uFmlNvvef0vDGdRhml99avz9M2jYC1pgep2OlrlEShgF9UZyjIQ36B+EgufIC/pcROOB44utDFKy24fyHgJxr1FkdqqBcFPgh5B6Y3gqs95+Fpbnh7WoolOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=As+ms4wjLa7Le5WArmHHH+aFlBCBe04coxYEtc3ySY4=;
 b=bDdAXuOu3i5Vo7iE3DxyiosTvnvcQbcWiW2UcqIu1L0gsN4k4Rr4A9p9F7S2awOjxh5yGKlxjnhRs1woi8qxueyCPRasJ6S31yGbJG+rmCrlZLugBwOXsU/e022eODkXH0BNgqdWLWguBTgyiuk6ek4vwDR3KyfSrspGxSStCM4=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1499.namprd11.prod.outlook.com (10.172.36.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Tue, 24 Sep 2019 10:39:09 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2284.023; Tue, 24 Sep
 2019 10:39:09 +0000
From: <Eugen.Hristev@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <alexandre.belloni@bootlin.com>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] clk: at91: sam9x60: fix programmable clock
Thread-Topic: [PATCH] clk: at91: sam9x60: fix programmable clock
Thread-Index: AQHVcsRMYTeAx/4mlU+eM6N6BpGrrQ==
Date: Tue, 24 Sep 2019 10:39:09 +0000
Message-ID: <1569321191-27606-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0253.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::26) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb2a32c4-f020-4372-ac07-08d740db6e6f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM5PR11MB1499; 
x-ms-traffictypediagnostic: DM5PR11MB1499:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB149913BF3E3D3E8F806F74F9E8840@DM5PR11MB1499.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(136003)(396003)(366004)(376002)(189003)(199004)(6506007)(71190400001)(66066001)(4326008)(6486002)(256004)(486006)(71200400001)(66946007)(2616005)(3846002)(6116002)(81156014)(81166006)(14454004)(6436002)(186003)(26005)(8936002)(2501003)(107886003)(54906003)(36756003)(50226002)(66446008)(52116002)(476003)(305945005)(99286004)(6512007)(8676002)(66476007)(110136005)(4744005)(2906002)(316002)(66556008)(64756008)(7736002)(25786009)(478600001)(386003)(5660300002)(86362001)(2201001)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1499;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8Vix6hbLYP+kAVTxq9EiNHIylqXiM0kNFM9T4WzeqiEpunr2lF2J5TkIMQVyswh9MXOIFgV4tAyxvniDTBAtweKIhIpRa9lfd29+/CxLMLUT/ILJPc5Ui35EFyE0gyUz+H48eJ5R4fx2eCRDDyi5FuyOrz5Q7bu3IqnsxxNbH/beiFyzEwdoArWKeUdz3pOYJgZymmttipXvVGnqd25WsFImeZcNdehr3bMp6I/3O4Jjsi/UGvbgZ53cIODNZA0W4W0qREEXOAaTCU9nEAKeaKfD0jAmGMRWHLZH4r51s+5GyZZ4hXknYYmYlAcB21gTV82N3jK54q6Jm+2Fh8yIRTaTkvmDInx/OwjIdRKQ6SZTvntWzJZF7tCACPwntQbNyegFvneB4qR8lfgYP/+lts7WTWdI/u1bC0hJFuwSgpM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: eb2a32c4-f020-4372-ac07-08d740db6e6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 10:39:09.5110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I9vAC58vMy3FKJEHDO50y/jnT8UuPDFMuvfFMiZNb/cZEg0fOUt55dXWOIyhHnqW+QWwGFKEV3wv1S9/uvBRHbrKv3E7XpJREzuzMGQ8AF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1499
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_033926_986692_78F8B09D 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The prescaler mask for sam9x60 must be 0xff (8 bits).
Being set to 0, means that we cannot set any prescaler, thus the
programmable clocks do not work (except the case with prescaler 0)
Set the mask accordingly in layout struct.

Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/clk/at91/sam9x60.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
index 9790ddf..86238d5 100644
--- a/drivers/clk/at91/sam9x60.c
+++ b/drivers/clk/at91/sam9x60.c
@@ -43,6 +43,7 @@ static const struct clk_pll_characteristics upll_characteristics = {
 };
 
 static const struct clk_programmable_layout sam9x60_programmable_layout = {
+	.pres_mask = 0xff,
 	.pres_shift = 8,
 	.css_mask = 0x1f,
 	.have_slck_mck = 0,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
