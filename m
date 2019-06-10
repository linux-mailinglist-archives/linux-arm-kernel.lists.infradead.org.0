Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF58C3B82B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YkurxImK/yXsou/+pXf0Tfg0tHBE7v9h5QpSXzu8SL4=; b=o4yHiWoWv24bg4
	8nattILGIiwCx9ymvSbnFaIonvVvNfmkRPRmVP9z9LbiWShjnzxafFsTKEsOGBCTDmghLh1bs0ldQ
	uCpiZ/u0zFWJKM+BCbvxQQ/gDp2r7cRx90NEq2EwkTh2mCi/AyeFOecX8S/mgxuXtcTzwopODY08M
	4iEkwqaJrpyDzyin44svcz9dkSJZmuKdYDWUNu7zc5M05TfdP0mkjBPKs86F4v78QEHV5Y/GYp14x
	m2HJgM6hAqUnkWlj9/p4WjAEmlJO34SaYCtVgn5bs4ng0wyNQgzv8R1OAgASM+Zhb2ojaF4k0Vgq0
	4Od6dwP2mVLITUpBhZcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haM5v-0001z2-KY; Mon, 10 Jun 2019 15:20:23 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haM5m-0001up-2b
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:20:15 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,575,1557212400"; d="scan'208";a="33786257"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2019 08:20:10 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Jun 2019 08:20:10 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 10 Jun 2019 08:20:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b8JCT5Kbub/4EXAub56AxlvqButQls5lDc4iPWwIpZY=;
 b=ZpDt8TZeBKYUccF6dc4ALbubMyzxSpRMRi/bFObH6gNTJWQGeycaoEXDVLGoQWLMSJEO05PQxhW9uK39TV9ca+ygZrQEn3jAqjyfBt01x0L57nmUURIhAgzYOy6lUhXDgCgMbdaXCtFzMqTPF/0LUSMOy+gISfrPMfQdDBVq36w=
Received: from CY4PR11MB1256.namprd11.prod.outlook.com (10.169.252.10) by
 CY4PR11MB1862.namprd11.prod.outlook.com (10.175.80.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Mon, 10 Jun 2019 15:20:08 +0000
Received: from CY4PR11MB1256.namprd11.prod.outlook.com
 ([fe80::e595:70a9:abee:aeb8]) by CY4PR11MB1256.namprd11.prod.outlook.com
 ([fe80::e595:70a9:abee:aeb8%4]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 15:20:07 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <sboyd@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH] clk: at91: generated: Truncate divisor to GENERATED_MAX_DIV +
 1
Thread-Topic: [PATCH] clk: at91: generated: Truncate divisor to
 GENERATED_MAX_DIV + 1
Thread-Index: AQHVH5/8vNlxgKOf4EOJZ39uA10p3w==
Date: Mon, 10 Jun 2019 15:20:07 +0000
Message-ID: <20190610151712.16572-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0011.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:800:be::21) To CY4PR11MB1256.namprd11.prod.outlook.com
 (2603:10b6:903:25::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8eb4e3a-909b-4c2a-406a-08d6edb71eb7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR11MB1862; 
x-ms-traffictypediagnostic: CY4PR11MB1862:
x-microsoft-antispam-prvs: <CY4PR11MB18623D4FB8473DA9FD80FFACE7130@CY4PR11MB1862.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:291;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(136003)(346002)(366004)(396003)(189003)(199004)(1076003)(72206003)(54906003)(486006)(110136005)(50226002)(478600001)(68736007)(2616005)(86362001)(5660300002)(2906002)(25786009)(476003)(186003)(305945005)(4326008)(7736002)(316002)(107886003)(8936002)(81156014)(14454004)(8676002)(81166006)(52116002)(66476007)(6436002)(73956011)(64756008)(6486002)(66946007)(66556008)(53936002)(2501003)(6512007)(99286004)(6116002)(3846002)(6636002)(102836004)(386003)(6506007)(26005)(256004)(71200400001)(66446008)(36756003)(71190400001)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR11MB1862;
 H:CY4PR11MB1256.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +zgjZ2HYP8U9OxQUx2tKYQlFlu/BmQrMpsWHYhVwnpXWe1Osj8iZPX9dkPDtZR6bzyFc08LTHOLJyzp9OAPemK2DBocwV5bgG1LbfKjslqe3BFjlf9144znv71FsZ1Z8YfX7AcIwKAg16/BCdmkPvPEaZ2qA8Vtrp6UT+Vn9Jvq4WNiTU9XuiClaRqPnUh5bJBkXXqem4v0t3V0tc1wuQ7YllThwNrnlrK18V5kQ4RBC63iRaPRscmWE8e9zNRYj8x56OwgA7OLlZwikIOne32WXnmp8SGhgkY20xbtTFH14YLpIl0yLrycTVZF/gAOxMy6GQ+emnp4kyuwX/bnZ+HAFL87/YmMf0xEa/r1MrcNELvd0b5lrjHSXSNUCj/Kz2cG+NUmqDi6JBcKYqt7W4zQX31i9wIFvjD8aIYi5seM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e8eb4e3a-909b-4c2a-406a-08d6edb71eb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 15:20:07.6083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Codrin.Ciubotariu@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1862
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_082014_162305_B0C60816 
X-CRM114-Status: UNSURE (   7.52  )
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
Cc: Codrin.Ciubotariu@microchip.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

In clk_generated_determine_rate(), if the divisor is greater than
GENERATED_MAX_DIV + 1, then the wrong best_rate will be returned.
If clk_generated_set_rate() will be called later with this wrong
rate, it will return -EINVAL, so the generated clock won't change
its value. Do no let the divisor be greater than GENERATED_MAX_DIV + 1.

Fixes: 8c7aa6328947 ("clk: at91: clk-generated: remove useless divisor loop")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 drivers/clk/at91/clk-generated.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 5f18847965c1..290cffe35deb 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -146,6 +146,8 @@ static int clk_generated_determine_rate(struct clk_hw *hw,
 			continue;
 
 		div = DIV_ROUND_CLOSEST(parent_rate, req->rate);
+		if (div > GENERATED_MAX_DIV + 1)
+			div = GENERATED_MAX_DIV + 1;
 
 		clk_generated_best_diff(req, parent, parent_rate, div,
 					&best_diff, &best_rate);
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
