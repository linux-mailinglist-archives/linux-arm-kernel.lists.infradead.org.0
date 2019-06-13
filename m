Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1335E43D2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAIup+DBB2atoPozhJ6S7a3bdAKHGvYj1NPpoK4b+vQ=; b=Hk5K/zfqh6ezGl
	V9d07mrPt5PDwGhB/Y+SpKukk5QcoUIZ3lTEok89vaoRu+wEia3FBdpcu96/oqn222WitYRBLklht
	6YWYMqmROrHfPDJ9n9rZGWWTUXoLJEY+rqAJViyY4RTPDyBrAOdTjEyuWm7RGuINZNcm1T3m3UTRU
	iIu9iN2brBjBG+BnfKKltErcOFBWgvB6jSMyQEEL+5lXyy/7BMFaxZjDWHCmHEKX0zPfn8NN0nllE
	6fWSeuzhrsKBeG9x5scjTSoXsRhlBgAr3/v0Vr5jOkG4iDIxyIiqIXPatkXPFul7cavPd2akV6boB
	sHGir8Z2Yot5qNLGzyIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRpX-0001mU-Mc; Thu, 13 Jun 2019 15:39:59 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRnS-0008TT-Ro
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:37:52 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,369,1557212400"; d="scan'208";a="35722873"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jun 2019 08:37:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Jun 2019 08:37:31 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 13 Jun 2019 08:37:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UOZ9+vPbOcFNoSthQyXk2v4olF8WrSzzh6Nv3CHKd2M=;
 b=kbfqa1M9ikRf5H7Hn0J/uT/zV5mHc+bsWbyv+cNfmrZDwnBDndNbPEzaneClhRByaNS97COKyBtRniYAO/i+IFsMjLyU1W4J6tIe99WTnYOVJDbLrG7VfTCBy3n5T982gv+56lu6PwpdWwS0LVQqyP4rv5iO2S3JfplaM0UGn38=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1343.namprd11.prod.outlook.com (10.169.232.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Thu, 13 Jun 2019 15:37:31 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec%7]) with mapi id 15.20.1987.012; Thu, 13 Jun 2019
 15:37:31 +0000
From: <Claudiu.Beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 7/7] clk: at91: sckc: use dedicated functions to unregister
 clock
Thread-Topic: [PATCH 7/7] clk: at91: sckc: use dedicated functions to
 unregister clock
Thread-Index: AQHVIf3qCcDPnGZNZEKT8OcqVXuveQ==
Date: Thu, 13 Jun 2019 15:37:31 +0000
Message-ID: <1560440205-4604-8-git-send-email-claudiu.beznea@microchip.com>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0174.eurprd09.prod.outlook.com
 (2603:10a6:800:120::28) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 09a276d2-3e5b-4400-f9b6-08d6f0150a85
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1343; 
x-ms-traffictypediagnostic: MWHPR11MB1343:
x-microsoft-antispam-prvs: <MWHPR11MB1343A06916FE767F83D045B187EF0@MWHPR11MB1343.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(39860400002)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(81156014)(14454004)(486006)(102836004)(50226002)(8936002)(81166006)(99286004)(110136005)(71190400001)(71200400001)(54906003)(53936002)(6436002)(316002)(72206003)(68736007)(8676002)(52116002)(478600001)(2501003)(446003)(25786009)(476003)(386003)(5660300002)(2616005)(86362001)(6506007)(36756003)(11346002)(76176011)(64756008)(6512007)(4326008)(26005)(66476007)(66556008)(2906002)(4744005)(6116002)(73956011)(66946007)(66446008)(3846002)(107886003)(7736002)(256004)(6486002)(305945005)(186003)(66066001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1343;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mcUM4w9TL+JPNsvlXd5BVcemipc/pxPpf01hPhHy+z0Ev/Q4Pqhc+YXBN6+J0Wr5qBZTaLCi3ipEQmDRJGbE6VbOhWAIeV/AdLKf7ZldzoWBM4MP8yXvzAwVZSSECFPQTJ/WQTdJIeGWklAB7/1pzewkCRUXE3YNPN85yG2IVr5Nd7agX/z+TiDvqsDmBnzekGJGwjLaBE46giTnKNv5vyVtGe6hlWxHFiX05tr400FKX3Fu4vkmQ3F+HT+wpOX0TUGEjLJvOWViObY5e/UllaP0PWlI0nAG33DdTjR9wjnRDRx1K4X6iilPxywaI/tITc9TOipmw6NLEK0x2FGn1OfQ7XGB0WEVdDAB2Ail+MBXxBWIkGOgPU4h2sAl5uRn8DGe7zenZEc/aPC5/hfrgKLzGqr3r0B8txDgio3Oeio=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a276d2-3e5b-4400-f9b6-08d6f0150a85
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 15:37:31.4883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_083751_099813_78CC8588 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: claudiu.beznea@gmail.com, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Use at91 specific functions to free all resources in case of error.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/sckc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index f7ad3e9414dc..42502830a56a 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -514,13 +514,13 @@ static void __init of_sam9x60_sckc_setup(struct device_node *np)
 	return;
 
 unregister_td_slck:
-	clk_hw_unregister(clk_data->hws[1]);
+	at91_clk_unregister_sam9x5_slow(clk_data->hws[1]);
 unregister_md_slck:
 	clk_hw_unregister(clk_data->hws[0]);
 clk_data_free:
 	kfree(clk_data);
 unregister_slow_osc:
-	clk_hw_unregister(slow_osc);
+	at91_clk_unregister_slow_osc(slow_osc);
 unregister_slow_rc:
 	clk_hw_unregister(slow_rc);
 }
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
