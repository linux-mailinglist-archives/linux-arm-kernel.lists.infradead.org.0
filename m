Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B67ABC00
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ed97zGBiUF0Zb46IbQYFv761eW0W5Lnxm20Sh3j0xY=; b=X/QcVW/jEIjI3h
	U73xEDeptzHsy45NK78fWrT4n/N38kbkx0v92yB/cWYShL+MR1wLL2ldkPjxhu72kA8SNsQSHYY3x
	QWHUNAXODWrVJ629UxXp6BWkNK8J2ncPsPo/c4aOvXnSbE8qeClHphmFRnr1zNqOCR2YfWnq+b5i5
	9Ef4TVdM1sbMagI6z/PAPx3z6c632oHtw0U/10D5tNqr7pUoxIbgnCcbqWQ6G2X+Ur7Z6jlVlrHTW
	/5zOOLc/JHfyjVxJ/izwwsHdgGqxQnKeRPD3qGhmPL7MUPpUHciBVVPamLyOyemvqSpq8Y5YdrWzv
	5l/kuJmz0f7wJdQVaVgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Fxf-00029D-7P; Fri, 06 Sep 2019 15:15:43 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FxT-00028s-7X
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:15:32 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: kNlfqB3Z9T3a3tGN/B2YhgEHAuMrJEF6UQiwPzMhZYUv51wBs59xLikh7X4x4nbOIuf4W4HY7k
 FbYmPdQSTvbekWPoSDekXZQpx+ZPaTN7pcPXWFuK1O2CERQIWIepdMahAcowuOyXROgrRVBP56
 hWsUBJu3whpv+FIQle48jPaGYnRLDaWw8qdL97mID3xIUp/UbDuq7M16o6YRsrIhdCsVyysQHe
 FYQm98nmk0Qs5a7DrgHd93i1h3fK2kPXqNC7zVgL7ytbnvFXldeK5cTYyRGjslnhsU8Gc51GPk
 7NQ=
X-IronPort-AV: E=Sophos;i="5.64,473,1559545200"; d="scan'208";a="47981057"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Sep 2019 08:15:30 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 6 Sep 2019 08:15:30 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 6 Sep 2019 08:15:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YQsmBfXqE+6XGUywVLG+kkTrU6Yf+23niKE3cdjiOOJU1vJs/hnS8Pokk17wZ4FXAQIzobK00KWOS7BhMc1U8gcgN0c/2rim6uGPvPXOa/COTBnybzEsMMIkA1HAzG+QycWFdqDmXXpUH3qsKgRiDToMbn/C7e9U8W1uGL/ssbl0vsnuYUPiF3H2xc865RbRtZFbv5qhFpweuCMJUukxymHpwg7Ojpp/2vOCRxMWSmB/rB488ShzHIN/8wo8OXY6/xzkxMCUaYwy5ctI64NMMcbnHOjXJLNLoEmZOGbTgXfZ+G/+9Fbg4guckHhVutSC46DXlr2JmQtXeLN6PUqAVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pXbqQs9qWCvCP5FTtUs7MUJoDCLgi9VpXDY/0LySCmk=;
 b=RzGRVo9PsqWyBI2nuE1z4LAQpew75C6hJZ11knhCFSMkX7x1rWxwkPkpxaVoqy5NxDoxgxBKv0SIso58p+RhtyqIXgXByzCIsUj++W4hJ3HySy4zF4V26SEG+WX3rKQ2bLh3+Jp9YYcc9gjeZYnvhMTPJ5NOhJ3JuynqjvhY5I+TWW6gf++XPycRYXrnbG6lwG8B8v1f9NLc8zvRyqyz87RNUBuqOU9Kw/c9MtHB3Jtx32jc8hlLBMgoe80NlUzidMgzboqU9osgt95+cQa1iWFpHydBfG2WRJ0B4LdlUC/eLyKCcCIh5JQ0enwLyhcyfXWjZloNG13TaAUoS33l1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pXbqQs9qWCvCP5FTtUs7MUJoDCLgi9VpXDY/0LySCmk=;
 b=ogte9SnMSZtdoCsonVKUjTYwE0rYCCYUKsCAi5PShM6BcRN+aSsXhcvZfzNeD+Nv+aMYaIYaYdff6wlkWRi7NBD+zN0SGh+Pdvtz13JdgSTABDsgpbLC7UWdZbLYZXCvGEbQa09/oI3MsK64uw/nyxZH1gSkYpiaNI+SxnEZep0=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3567.namprd11.prod.outlook.com (20.178.251.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Fri, 6 Sep 2019 15:15:28 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2220.024; Fri, 6 Sep 2019
 15:15:28 +0000
From: <Tudor.Ambarus@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH] memory: atmel-ebi: switch to SPDX license identifiers
Thread-Topic: [RESEND PATCH] memory: atmel-ebi: switch to SPDX license
 identifiers
Thread-Index: AQHVZMXq5kIdACEWKECKbJSG274dew==
Date: Fri, 6 Sep 2019 15:15:28 +0000
Message-ID: <20190906151519.19442-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR03CA0062.eurprd03.prod.outlook.com
 (2603:10a6:803:50::33) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2037cd61-fced-4a5f-c843-08d732dd0ca9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3567; 
x-ms-traffictypediagnostic: MN2PR11MB3567:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3567764930D6AA51A7F2A68BF0BA0@MN2PR11MB3567.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(346002)(39860400002)(376002)(136003)(189003)(199004)(64756008)(66946007)(66446008)(66476007)(66556008)(476003)(36756003)(2616005)(486006)(6506007)(99286004)(386003)(102836004)(110136005)(52116002)(186003)(6486002)(316002)(66066001)(26005)(256004)(5660300002)(2201001)(478600001)(14454004)(4744005)(71190400001)(71200400001)(6436002)(86362001)(7736002)(1076003)(305945005)(53936002)(6512007)(2501003)(107886003)(8936002)(3846002)(8676002)(81156014)(81166006)(25786009)(2906002)(50226002)(6116002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3567;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YvYSAC2MwP6jHYrS+SC6kofRoR6wII2RZBs22h2C0N3KTijkE+uLe+0qE3AptLnGz9opm2J8KioHx+Y8/hE7K+lX9s5kFkze8fFLdyIQ59XugC+n0EcT1DY4iC/Xfa7Jc4j0a4ODmMMPJ215wNLKmT6N5h8lv++6x73D11g+QwfwUo0Z/N5nYa3MGA+VVjKuR3IZvQvqb2EeAQsv6ZzYnOlAytQ3lR6wTRwMIhVlBPgeOf2V1T1tju0F9ADIZWG3Iiq4J3V23fgsUL238CGB8SJkoNMaD6koUxxuphJg6sI7RHXVeNoRHDuSydljy55daCAp/yDW9vQ3XLAG/nn7dcaMbbgpbDz+dp2xbhwd85ul58QCEzvxjzmNHd55/UULze+w6bksWYcunqJSgBG0IIEZYaByY/obtCbtcdYlHYY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2037cd61-fced-4a5f-c843-08d732dd0ca9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 15:15:28.1357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uevX4fMbRq1YaDD13vy3uN6jXB9hXbSWgeojuSk6JgKGKlZNklJYFp/DcFx3gkiwbfoElME/GPBEYHMn8iAOFYTy4WbnncsL29OjKQkP2OY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3567
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081531_332237_DA3A1B25 
X-CRM114-Status: UNSURE (   7.81  )
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Adopt the SPDX license identifiers to ease license compliance
management.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/memory/atmel-ebi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/memory/atmel-ebi.c b/drivers/memory/atmel-ebi.c
index 111e09a5b4e9..20252bea8635 100644
--- a/drivers/memory/atmel-ebi.c
+++ b/drivers/memory/atmel-ebi.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * EBI driver for Atmel chips
  * inspired by the fsl weim bus driver
  *
  * Copyright (C) 2013 Jean-Jacques Hiblot <jjhiblot@traphandler.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
