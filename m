Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C9113EB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9YgIf8EyQBuuL3E17JAJ4xqVRI9hRMseuu4VH61474=; b=sLQkNrQHSSuhsw
	JqkgveCmyuKgTT6qKyXiWhzwMh1I8NYV0w/w5c9ZYQDiEPAz0IAkr8UqkKsnHASI9r4u9aQlzYhyU
	TX4tzm8YpuleTMJGpPmRED4rEYBWCzdrzfD1qYISiwI4yQxanGuYN6I0GI/HN/4Qj1Our1+9LSfIg
	aku4sOU4Mqxb4X1WuWDrAwCwElflAntU4YnYzpxeNOlkRSk/bijgLUhANPkjMqeDbOXnK6G8cXI83
	45AKXCNWQ6E8xFNm9kf2TFcAUNqw9fVo2ImBXT6UNM5RqoJ5F0bmSX/F2WmmWfcEqzFVKLUEnfpKZ
	ed8UlnDo1ptR/7VEMcNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnqT-0003mg-OS; Thu, 05 Dec 2019 09:54:49 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpZ-0002tU-LU
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:53:55 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: PNgXXz95UjId+Hb3U2+E8Kpn9FGmn6ik2/Om4Eu7+iahHgJnPDMKq5PxnCM4GsDhuDtIVyO/A3
 SctJJuAUext6B0n6dCMHn+XizyT/3+dh1gqtEoNW2i8PheYCucO7vltVj/XutH9gHBT1EDE8ZX
 1nblrHbr7IaeRzZzNsVgN92Y5BsVvJcd2j5cFC5oF6SS7hNCDYgwcIJqNhQQpU7DeYRrlDXJeh
 fyz5dOTCSB0WueQGbzvKHShKWfjtWoe+62mFd6uVt/eYDj8isVH0hlvGBnt//97/eiImvEHIem
 XIg=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="56727485"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:53:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:53:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 5 Dec 2019 02:53:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i+wMCodjntEXyRsZzkB7b0IEhNjOq4KdL9KVVBzbSFlgxGr3sFC6ggUN3vpsWr1pQoV8/yYLHlk5VIXiFlj+jeDLFyZxFsAR8akc70H3u6TCWNDAbf2PW6GtR4EBeATemhqKJ/sg2xdRfTDC2bAyIASD+PWv+urQHvBIK2GwH5C5cv7e0Ln4jCS5mV+BbDQSErnlE1GoCJ+A7HuTUte9EJW/5p0Y+ONCR8KpE/3BwGzO0FZZeBSSyidNS3IgVzMV+nF28nqnkfQQZPqqp12d4780nnrcYf6EDlwrdB+3s78xmFNC/bHA6HVs9XykkzGBOVVEbokryVJ1YISNsEZJaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ldXAqFTjbIpsLqqTAA6PBPnNaB2lxCFmQ+XhJThz9tM=;
 b=RHqzzVTaEM4j/qU4/z6PqTdAYfJuMKSKRoWkivQeOMHx9dB5cOu+H0A6sldW3TUWwl3sQl5dQ4DZuHBZ7SBSzs4SlsCeJQGi/ym63x06YSQcnJmO8lIFyiuJgm9B1VVqrQQX/zHEyQaXy+1Lo+hTwuWDe82YbaSQNp/Av5QfLXcYUYkcppyUpfZtSX/Fnpc/mGhRME77KqohW4O14KyUsRwX3D1dZB5FESX6c6QbLVjo/+c6TUkmf76iUVFkeCVNPtDxqiEGUnogufY4PzMCujJKCmsDDGWor2MmeAQ91qpq+zcJxftNhCrPeIyZVe58WA6D3LEGPgbl6uR+EufqMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ldXAqFTjbIpsLqqTAA6PBPnNaB2lxCFmQ+XhJThz9tM=;
 b=obB0rWTilb8cjAkTAop9XF4ioTtwF6C8n2QGyJmAanOIF0DIv6CXasJvbAZFjDxqyRMl2nvEQDr6FfKqzJCOJNmVAWhc0H0HfEFWm5en9E79tfQwVli2TA7m1xgjJueZ8WGzVqIzh/BX9ehRU+CJnk+4bPkep5sR8syv/BE1o7s=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3677.namprd11.prod.outlook.com (20.178.253.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 09:53:48 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:53:48 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 03/16] crypto: atmel-tdes - Remove unused header includes
Thread-Topic: [PATCH 03/16] crypto: atmel-tdes - Remove unused header includes
Thread-Index: AQHVq1HkXDSMVXrvFESo+HMrRCMz0g==
Date: Thu, 5 Dec 2019 09:53:48 +0000
Message-ID: <20191205095326.5094-4-tudor.ambarus@microchip.com>
References: <20191205095326.5094-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191205095326.5094-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: FR2P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b3d298f-fb04-49ea-be7b-08d779690664
x-ms-traffictypediagnostic: MN2PR11MB3677:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB367731A065362CCEFA87979EF05C0@MN2PR11MB3677.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:374;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(2616005)(66556008)(305945005)(66476007)(66446008)(102836004)(64756008)(11346002)(5660300002)(52116002)(76176011)(99286004)(36756003)(66946007)(4744005)(2906002)(54906003)(26005)(6916009)(6506007)(1076003)(8676002)(6486002)(4326008)(50226002)(1730700003)(8936002)(14454004)(81156014)(186003)(86362001)(81166006)(5640700003)(478600001)(6512007)(71200400001)(25786009)(316002)(71190400001)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3677;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UdkKF+YnD2nYiamonXrfJ2mc/d/449dayWSaJeMRceSPMC4hjETQGnPO5pSof6DTEnjPK6Bkyal351EaXhx4EnwgRSVK7l7yh8VRxMS4im2AG8k0b+Enq1Ju/oDWmHwM+dd9niGFEbG9xNWT7QHI4EFqHC4pCUqvC04t7hIBLUUkY4P77279V82YLIR3FIW9uZ+F4Y2d6T0KW2WEwE7plfwprrWNqlgh8sbQ2ySqcPO8rLcywWUKBvOILvbWYcKp+hShacuSZsbzKUr2CmYGlep4wjqi0iKaAC6dMyDiB9uwifuPvr9Va49iDL+YGIpuJDVmq3rV1UjJTDOXKcZay0CVMWkFVwFY6KzSSFM4yCgnDj7XSrIMTnKzC8n06wpg6mXHH1h3C55/o0fQJW9u1wTonvNJnaYo9uyQKTJfVfxq3a5NId/9ZOCBS++HWGGB
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b3d298f-fb04-49ea-be7b-08d779690664
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:53:48.4375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: poDPU+RMrqE9k2OGoxpEmOxeLOFrhRla0FD3MXqzb745IsSmakbC3b/XK3izxtAVFJKrHJShD0RBOVeen7711gi8v230MhKv6HLyxsn32NY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3677
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015353_774619_781F9E94 
X-CRM114-Status: UNSURE (   5.35  )
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Hash headers are not used.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-tdes.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index a6b36abba3d1..1b1767ca9444 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -30,12 +30,9 @@
 #include <linux/of_device.h>
 #include <linux/delay.h>
 #include <linux/crypto.h>
-#include <linux/cryptohash.h>
 #include <crypto/scatterwalk.h>
 #include <crypto/algapi.h>
 #include <crypto/internal/des.h>
-#include <crypto/hash.h>
-#include <crypto/internal/hash.h>
 #include <crypto/internal/skcipher.h>
 #include <linux/platform_data/crypto-atmel.h>
 #include "atmel-tdes-regs.h"
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
