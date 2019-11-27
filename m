Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E435710B416
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:06:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Cx5kNPzTLDqB6Sy7mduQ0tAZURFe4EBKRa5KxlFlc0=; b=o+h9gcOuV+cOgB
	afcVyxOQwrpBicBEfVRenz3s+1MUNO/nZRjtooNjZ8fLOiTWLvythTq9ip6bqA2ffXxDfErpfXne/
	mVpUG71whq4BhQvM7QvoH12bAvJyLWUptxy3UqlGlnymY3evMZ60/9zuLpQMaoQ+FloEoTZ/b+UGh
	vNTGepISBR/g/1kH/5ZR0hqF8eO1nnhZRqgO4ko0L50sJVh7gRLo3FgN0hxfnmLIgB9QcBj1UERIK
	6219qcwRPwqX6cg1B8wHfQuMXkSEbY6L6xl1+3AfdvBguk24M1e80Nchh97W8n32Yep+eM+Qg6beV
	6+86NB3S1dWzv5bp0e/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0lN-0003S3-2y; Wed, 27 Nov 2019 17:06:01 +0000
Received: from mail-db5eur03on061d.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61d]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0lD-0003RW-Jo; Wed, 27 Nov 2019 17:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1RkxB4FcHHJ9kJiSuN2bQh3PnSvvlqY9WJnFMwl0M7c=;
 b=a8A46wVjKdKrbVaFZwZ81gTWUuOXPz5YQBxkQFwhWV+gTb3UJ0IBDiBuNiS63MHWe7y4pPdQEmYAU9A6p1t2wa7gJeh0OkTrHqH4J1Yx/T9aiF05AVh44z+Tn69EqANwjhnTlPquvVMZYLV4xocTG86cdiRMLKN9RM6m4/zK5rE=
Received: from VI1PR08CA0167.eurprd08.prod.outlook.com (2603:10a6:800:d1::21)
 by DBBPR08MB4506.eurprd08.prod.outlook.com (2603:10a6:10:d0::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.19; Wed, 27 Nov
 2019 17:05:45 +0000
Received: from VE1EUR03FT064.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::209) by VI1PR08CA0167.outlook.office365.com
 (2603:10a6:800:d1::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17 via Frontend
 Transport; Wed, 27 Nov 2019 17:05:45 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT064.mail.protection.outlook.com (10.152.19.210) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17 via Frontend Transport; Wed, 27 Nov 2019 17:05:45 +0000
Received: ("Tessian outbound a8ced1463995:v37");
 Wed, 27 Nov 2019 17:05:39 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e8bdaf8c06de47e7
X-CR-MTA-TID: 64aa7808
Received: from 9b35aa232de1.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 093DDD6A-8041-4F13-A044-08A894671602.1; 
 Wed, 27 Nov 2019 17:05:34 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9b35aa232de1.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 27 Nov 2019 17:05:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dgU7o2uauc43IeRoTmRgcN/Pa5oU5jceWHLyA9kG2sjzvmHBTF4rQ23XJxDG7hM8XpzjZ5mlJPQg89hFV33mltdOy6KQ/4EwnmxAxpO52hNOfRH24Mvv+J8ukEJozihd+KpI9Eo6Q0H9YY5ybMqbYCIZ2OOyWSj3wymvnr3WUfRSmEp1arEMGtSkEnfskH61xik4Z6zTRH21SXmFCEnm7ySE4SpmJ+hqJ5B71ARGd1vOlDjiFDLQdVi8bDbggUKhYsu3TxpdOrCkVYxyfQJIRF8DRuagsck1PHxl8G4ySm8UKST3+tVXtgr54bYKsRlUgqkdmoWdI32QsTiYqkRNdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1RkxB4FcHHJ9kJiSuN2bQh3PnSvvlqY9WJnFMwl0M7c=;
 b=Vu0YPcD4jjhf6K8ySSozx9+BtHR+zyHKEBkVlhsrx0MT0txVyoQWXvRBe6Z4g/9U27y7fBE1RhHZjJ8nUJJgqEBFCj5Y7LT9IXTZPYwypbjYLuBA0R85jJ3reS3Tu0XL6u3LfI/esC8QxZR4DaA79PHzu60kGk1QIutpaMICNXXV6JsF3ho8szspb9c6fZrrx9HZXqGUkACpUP6di1ghtqZIynVztbgHPysKLa/zu7XIzRUnf0GoMd65cQJXpGhVyOUwbaM1pAaVRAzblyGfau4jKzVQM/SqRVm8lcFOHXS0v3DXD+NaJ+SYvHQLjZqboVgE5dgcReowdcvzvTeNrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1RkxB4FcHHJ9kJiSuN2bQh3PnSvvlqY9WJnFMwl0M7c=;
 b=a8A46wVjKdKrbVaFZwZ81gTWUuOXPz5YQBxkQFwhWV+gTb3UJ0IBDiBuNiS63MHWe7y4pPdQEmYAU9A6p1t2wa7gJeh0OkTrHqH4J1Yx/T9aiF05AVh44z+Tn69EqANwjhnTlPquvVMZYLV4xocTG86cdiRMLKN9RM6m4/zK5rE=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB3392.eurprd08.prod.outlook.com (20.177.58.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Wed, 27 Nov 2019 17:05:32 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d%3]) with mapi id 15.20.2495.014; Wed, 27 Nov 2019
 17:05:32 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH] drm/mediatek: Fix build break
Thread-Topic: [PATCH] drm/mediatek: Fix build break
Thread-Index: AQHVpUTglbQGfFJTpU2EijDb8Zpv/Q==
Date: Wed, 27 Nov 2019 17:05:32 +0000
Message-ID: <20191127170513.42251-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LNXP265CA0033.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::21) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.23.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 11482172-36e7-4546-3a7f-08d7735c0b02
X-MS-TrafficTypeDiagnostic: VI1PR08MB3392:|VI1PR08MB3392:|DBBPR08MB4506:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB4506AB356E49790394E964278F440@DBBPR08MB4506.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:626;OLM:626;
x-forefront-prvs: 023495660C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(366004)(396003)(199004)(189003)(6116002)(52116002)(3846002)(66556008)(66066001)(6486002)(44832011)(5640700003)(386003)(256004)(71200400001)(14444005)(4744005)(6436002)(6512007)(6506007)(6916009)(50226002)(478600001)(2501003)(25786009)(81156014)(8676002)(66946007)(316002)(8936002)(36756003)(2351001)(81166006)(14454004)(305945005)(1076003)(2616005)(7736002)(71190400001)(5660300002)(4326008)(26005)(54906003)(99286004)(186003)(66476007)(86362001)(66446008)(64756008)(7416002)(102836004)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3392;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: VL5g8Ufcgrq1hCg23Wz18xRzoEZePF+8V+kUfsC493Re5zBMWAR8zzfbQwi3tl7fGOPWLqBg3Ak+juBxwdKtVVIJY+AYVZzAq9fB4+KNKEFqBfEXxsR392ET7YSdcDA8FU7Hw/jh31fUpnkzTtpMefUHaF8xj07z+U99ROWyfS1VAhHJ15lu89NOfF6mqd92fky8p9CMOuHdN5lmCwQOAP1RSeBg+Po0EZ09fzAYMK+3CgfHOMWUIkRMHLRpx8lNq2kuc3ChX9GQdsr2GRkh36gk1vNC3KhDBtalgl7urgbwEp9mgyXNd/HwvVJZaNfm7Hbb1WZjTUh0OuSHaZFu7G/0122WCb0nvGROyVPYjalJiZ9l/1Oxep0bhNM4254XAupvxS/9fdDDMSpMlnf4krFor6lqPGWWvtl8Wzy6Bn6v750C+dEtVQNkf/I3c+OV
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3392
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT064.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(39860400002)(376002)(199004)(189003)(86362001)(8746002)(50466002)(5660300002)(23756003)(5640700003)(7736002)(305945005)(8936002)(478600001)(6116002)(66066001)(3846002)(450100002)(81166006)(47776003)(4744005)(26826003)(14454004)(102836004)(186003)(81156014)(6862004)(26005)(50226002)(8676002)(2616005)(76130400001)(1076003)(14444005)(4326008)(36756003)(106002)(386003)(336012)(316002)(2501003)(36906005)(107886003)(356004)(70586007)(25786009)(6512007)(99286004)(2351001)(6506007)(54906003)(70206006)(22756006)(2906002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4506;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0e19c98e-4d7f-4033-61c1-08d7735c0325
NoDisclaimer: True
X-Forefront-PRVS: 023495660C
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FCNewc0Ozxy1h70OuAB5RoojtMIj5s7ub14GVfM7rsaBjCyRuKu71pTP0dy7ZA9J1SXo878Xa7eux3M+E1ZC0AOX5HTYW3deqG0Ohc6v38IzouupMx4FpfDa3eEuhBldE8+gbb7sZ2baXlhr4g+mhnjZSRWwTDpv3mIf5zoBGYOiYWXFNY34687YcVVwS29kD1Am0u6UA61AdB9jhYHUI4DL7v8Aq5Uh9DHW9SLNoojDPpopdnoYwWuaUMUxGZnPQifvqgqMMbm2Z9CdMx5GtQ/UaDM5kAlStxOreggAfwjZsPN/lzvDdUQGtrQI4/RBwyzumSBw6qxLRzosHlnrnR7S0XzXa5STOYGG1gW67e9TvocriMa6hB8aXHZiDNSNv6x9ZhCGx70QQXQ0RBXFC/SwZwuNhAdMLdf2iqKx/71SCQwMOTrWFcArh4yncSmD
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2019 17:05:45.2973 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 11482172-36e7-4546-3a7f-08d7735c0b02
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4506
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_090551_795801_6C0C54C6 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mihail Atanassov <Mihail.Atanassov@arm.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Caused by file removal without adjusting the Makefile.

Fixes: d268f42e6856 ("drm/mediatek: don't open-code drm_gem_fb_create")
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Mihail Atanassov <mihail.atanassov@arm.com>
---
 drivers/gpu/drm/mediatek/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index 8067a4be8311..5044dfb8e3d6 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -7,7 +7,6 @@ mediatek-drm-y := mtk_disp_color.o \
 		  mtk_drm_ddp.o \
 		  mtk_drm_ddp_comp.o \
 		  mtk_drm_drv.o \
-		  mtk_drm_fb.o \
 		  mtk_drm_gem.o \
 		  mtk_drm_plane.o \
 		  mtk_dsi.o \
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
