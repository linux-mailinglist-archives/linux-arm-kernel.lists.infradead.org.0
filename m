Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F4F636C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/STy7G5P+bTmLXymV9X3D4weFiZKTFWCAIYTN1iPEvE=; b=OsuRpttXadJU2j
	1D1/8PFZOUpw3tmbO7ZnlKI6C+xj8pI2hgJyc7XW2RKrwK8G5eV6x8rpxwuwHeWYGB226wI+sC9s7
	qG0ePImli1C1Ihh3Y4dAm9bxtZQZ+xibLvP+7QqoyEYDSzB4AHBCVXpJqpMxaBThkIqAcQjIsPWC7
	Y/SbRs/qQDlrMdO4jzox6NJXdg4yJGHvsLS2KVkcCBkgfSSyNDrbQjGIjUgqU8Jocb3116EuKB2Eu
	Ljyj0umxnKpS3iNeCKWxN42DJ+ZNYCOKmDghhVgu0FHMCQlccBOiLRZvmSDhKih1IQZ0F2ylLLmtl
	n2WclGdWMK2fzQLJRRDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkq2b-00016e-Pe; Tue, 09 Jul 2019 13:20:17 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkq1u-0000ss-Os
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:19:36 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: U2WG+7qQGBtDzsbxH1IplovyzEBsxHGNvW0hrS8uvd9SJNsIO1W181GPgcpBENrtye1xmibDEB
 O0gMaMp1TVar2pJfcVqm+KfWtad6e6E2O6HVTvgegzu/LKGEx9/bFJCOXy9YeCWOeM298l5IAH
 QHQyeGbUlihZYchbF2Ph/AzmqCQzrr2eqOhjRR5LPlNTYIJ5WUTabsSz+azZI2AC1w8r2egeML
 GNx6a2JpDfhJzEzFMEgARmPFWNyGvQbBupVDVzy8sPTDlk14OJ9pShAl7XHZ/X4CxaxzYyWqDu
 9oQ=
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="37467777"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jul 2019 06:19:31 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 9 Jul 2019 06:19:30 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 9 Jul 2019 06:19:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLHYZ/7YCZxIW9I+2VnUBcEcFkVdea+UFVGAb9AWbQM=;
 b=zCrfdf9Lumm5OfCc7szVc/eHu5qCOnO1ALE6uGWdoCvHsCCZETmqPg6+3o+4y5535B+3Z5Q6cYYBkXlXeFuFOQcxO3D/n32AI3fTeSIm5wO+rM/A2gBx8PxIN9Unft5zszSE9Pvuahe0byqJxuD6I18QoKMqrwHR6fQqPudAmmI=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1785.namprd11.prod.outlook.com (10.175.88.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 9 Jul 2019 13:19:30 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::917d:f91d:9398:3925]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::917d:f91d:9398:3925%8]) with mapi id 15.20.2052.019; Tue, 9 Jul 2019
 13:19:30 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: [PATCH v3 1/9] dt-bindings: i2c: at91: add new compatible
Thread-Topic: [PATCH v3 1/9] dt-bindings: i2c: at91: add new compatible
Thread-Index: AQHVNljwrvdVtxbNrkyr3rHLnpHLZA==
Date: Tue, 9 Jul 2019 13:19:29 +0000
Message-ID: <1562678049-17581-2-git-send-email-eugen.hristev@microchip.com>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0141.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::19) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: efaf85d3-c497-4c03-2c6d-08d7047012e2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1785; 
x-ms-traffictypediagnostic: DM5PR11MB1785:
x-microsoft-antispam-prvs: <DM5PR11MB178565D55E96D54510A594B1E8F10@DM5PR11MB1785.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(346002)(396003)(376002)(189003)(199004)(446003)(71200400001)(11346002)(7736002)(305945005)(2906002)(476003)(66066001)(81156014)(7416002)(50226002)(6486002)(2616005)(3846002)(110136005)(66556008)(72206003)(66446008)(54906003)(73956011)(8936002)(478600001)(81166006)(71190400001)(6116002)(6436002)(316002)(107886003)(64756008)(6506007)(14454004)(4326008)(186003)(36756003)(26005)(102836004)(4744005)(5660300002)(66476007)(6512007)(2501003)(53936002)(99286004)(86362001)(8676002)(52116002)(256004)(66946007)(14444005)(2201001)(486006)(386003)(68736007)(25786009)(76176011)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1785;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JURir9rpMCZZ8Jd774wDWXadj47CxN/6qgYOF4MKCy2Xb4GDU7z6vbq9scIk7GRVXLIcdeWhq+yh9KrPsx1yaIhZGW1O5zngt+zbtO6QWxu+t6WEXCrGz/iy5ZHRTO01z0uaneNNcHYTcVQYp1Wbv4TYkcrfIKvQbasPduVvLaU82eADPHIFVF2L7sCSdAqsCFpL8Rlqr5Lxo0oGxY+1Zx/TchFrOuEpP97RepZG7VzJnCRSiuS76cMmMj0Q5fOOi9juzXnQvwIVXEZhpMSHyDb/LsItNe0anG7h1mYImJYDqjER6PRF2z3GQUkZ2Rykx9224/VlEDIeGY04gHUz/+f4FEb7FxlO9Mr/3OhEpdQF93FANdK6A7q1Q5g9Zp2zWDv2RSNHTNLgwOUG7QgrBDFX/fRC4CJpnGqG+/R9do8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: efaf85d3-c497-4c03-2c6d-08d7047012e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 13:19:29.8587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1785
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_061934_840828_5B8942EF 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Add compatible for new Microchip SoC, sam9x60

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 Documentation/devicetree/bindings/i2c/i2c-at91.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
index b7cec17..2210f43 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
@@ -3,7 +3,8 @@ I2C for Atmel platforms
 Required properties :
 - compatible : Must be "atmel,at91rm9200-i2c", "atmel,at91sam9261-i2c",
      "atmel,at91sam9260-i2c", "atmel,at91sam9g20-i2c", "atmel,at91sam9g10-i2c",
-     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c" or "atmel,sama5d2-i2c"
+     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c", "atmel,sama5d2-i2c" or
+     "microchip,sam9x60-i2c"
 - reg: physical base address of the controller and length of memory mapped
      region.
 - interrupts: interrupt number to the cpu.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
