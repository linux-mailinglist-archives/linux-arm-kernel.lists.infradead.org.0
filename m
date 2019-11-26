Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2EB109F37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 14:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUz2bHVMHhCsY35LBZECEyCUmp8lsGkTuxVCmZczkVQ=; b=JHjDUUiZR7HGlz
	fF0ZBpdoYZajYJ9V5HKI+p/n+XVXa5hlwfEhpTbK/+XXd0lZ1v2xjxDQx7+v8cxrLjr4h1M7HlfYo
	bXIDEfpX4rC55mrMsbLLvan+Qhstrmkr7zagZfpB0r5WGg3aZxDv832FCoRZcLUAOJLXC66GseVtR
	Umm4AHL/P4CllC4TxYCTjFUGf2ZhkSMXkINgwBUCEVAJ80Civmm+3+rUCLSVeQvQJX9nWvZEd/Ie4
	KHmInFGnXl0aYVaCTw4cZLSl/WWS3552M4v6bHLYt2lSYPDNBLbt+2V5gqk0Q0rLm0k0h/ghniRV+
	HnVZDbrnP+vYI/4ymrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZanP-00089r-EU; Tue, 26 Nov 2019 13:22:23 +0000
Received: from mail-eopbgr20051.outbound.protection.outlook.com ([40.107.2.51]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZai1-0001fP-AY
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 13:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FstHQUSWa3nWcMPJkk1fSwl0xp0aRPH3Sq6+Vw0/0xU=;
 b=Wj+E4DSfljJKCk7qirbLs7ur8hKal/LE7BR6I5ABSviiblU3wVqFetV2INg2hRza2Xbcjqiq8dmT5hOlbuc40G/83ATBBfHZfEo+ZO4Il0uzxYGrAxZVH8u8CN4cNF59qr3uBnb8XFG5vRCGSzbDwwye2QQdwSDhhLaR7r0ZHYs=
Received: from HE1PR08CA0060.eurprd08.prod.outlook.com (2603:10a6:7:2a::31) by
 DB6PR0802MB2229.eurprd08.prod.outlook.com (2603:10a6:4:86::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.17; Tue, 26 Nov 2019 13:16:46 +0000
Received: from VE1EUR03FT059.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::202) by HE1PR08CA0060.outlook.office365.com
 (2603:10a6:7:2a::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17 via Frontend
 Transport; Tue, 26 Nov 2019 13:16:45 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT059.mail.protection.outlook.com (10.152.19.60) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17 via Frontend Transport; Tue, 26 Nov 2019 13:16:44 +0000
Received: ("Tessian outbound 712c40e503a7:v33");
 Tue, 26 Nov 2019 13:16:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: afef6af7145bca95
X-CR-MTA-TID: 64aa7808
Received: from 7fdba39730e8.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.56]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D475C91D-1BFE-4EBD-97EB-D2EEE8015BD0.1; 
 Tue, 26 Nov 2019 13:16:22 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2056.outbound.protection.outlook.com [104.47.14.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7fdba39730e8.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 26 Nov 2019 13:16:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iMjRqQsxnvFHyUIfYPvHCiMwBeOOPnCbsK7xuKP2dRmofwGIKG8Wc+mR1IHRuzvJcVGeDtBq/SwRqLMrF5shzJ+8YWOpiNyFnxndsZLGQGcvgkQrfI6f72eTrjLv+Ga08bQuO5pxzLD3lRVe5OiLgorgUnQxo+0rRa6nI2jQW8YcUV34SWL+rnplizTi183zA72dezLmah4Vm6HVwL3gMt9w0QZu/hFbPNxvQpUBrRTqKnohsNk+nZQ996Sz63a2gxAdOSGl/AHV9kI+CNihCLebx/BZHsO4T6pRG4gVA9jsEHGmxIlJ8W96dM4Qg2a3gha3UEE5N4pci49HLtu6qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FstHQUSWa3nWcMPJkk1fSwl0xp0aRPH3Sq6+Vw0/0xU=;
 b=CmYdyARFJG48Az7IPL3oEYk91giNNDkuB0+xbxQKlsilL4IKdD4YxoBGQ1SXxIpwfXvnPw91GmQnzWPOidHbaiDgJTIjhF4EXiVvCdKSQt9l0hH8/sfdU0qtAwyAbIVj3epZ7K3qZS21R536IWPZG+3YG2wfqvMgjw31dhuENbXS1FM16EcUZHq0OamZSSaFneakq4R4eLLdTZg3y5xrk5nOk2yOz+fjdXmbVSvo5InwN9HRiRYiRMnp/HoLqOq6GEK+labgjUKJvNyuR5kFYg9AD0dOpTet5ehFb39lyMOYp4qz5ZK5kz4DgBX7Zc2WtsH5oFk9wT21GnBDE+SZ/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FstHQUSWa3nWcMPJkk1fSwl0xp0aRPH3Sq6+Vw0/0xU=;
 b=Wj+E4DSfljJKCk7qirbLs7ur8hKal/LE7BR6I5ABSviiblU3wVqFetV2INg2hRza2Xbcjqiq8dmT5hOlbuc40G/83ATBBfHZfEo+ZO4Il0uzxYGrAxZVH8u8CN4cNF59qr3uBnb8XFG5vRCGSzbDwwye2QQdwSDhhLaR7r0ZHYs=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB4317.eurprd08.prod.outlook.com (20.179.28.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Tue, 26 Nov 2019 13:16:20 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 13:16:20 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH 22/30] drm/exynos: mic: Use drm_bridge_init()
Thread-Topic: [PATCH 22/30] drm/exynos: mic: Use drm_bridge_init()
Thread-Index: AQHVpFuxnqAfcuRdS0imEaOYObrpxQ==
Date: Tue, 26 Nov 2019 13:16:20 +0000
Message-ID: <20191126131541.47393-23-mihail.atanassov@arm.com>
References: <20191126131541.47393-1-mihail.atanassov@arm.com>
In-Reply-To: <20191126131541.47393-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LO2P265CA0453.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::33) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.23.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fc1e328f-7034-4d63-2c07-08d77272e29f
X-MS-TrafficTypeDiagnostic: VI1PR08MB4317:|VI1PR08MB4317:|DB6PR0802MB2229:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2229E375F4DA014C32E5FDD98F450@DB6PR0802MB2229.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:2582;OLM:2582;
x-forefront-prvs: 0233768B38
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(1496009)(4636009)(39860400002)(366004)(346002)(376002)(136003)(396003)(189003)(199004)(5640700003)(86362001)(6512007)(71200400001)(2616005)(6486002)(71190400001)(2906002)(4326008)(6916009)(44832011)(446003)(11346002)(54906003)(66946007)(316002)(66446008)(64756008)(66556008)(66476007)(6436002)(7416002)(8936002)(186003)(26005)(5660300002)(102836004)(305945005)(14454004)(25786009)(99286004)(81166006)(50226002)(478600001)(2501003)(7736002)(6116002)(2351001)(76176011)(1076003)(52116002)(66066001)(256004)(8676002)(81156014)(6506007)(3846002)(386003)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4317;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: LV0v24o+/W+UV97i/RxVlDyHyajK8JD8GdVMJo3TTiVnPUvIb+RB6Gx1qUwsuowhry+RlBTnSmNBV9XH9yE2VcLP3QB573KWHd1XDPMHsc4irb/EvAjdnHIQ83CprVdLgG68pUC1duYm36d1abp48PnVnoz5KfmfvOYcVMWGIcczzNHP8p71h+9r2g+m4dP/oohYrlXU2d2L3qVRHwX4RBIdiKPLb9iyIuw+Pq7+DIxqjQxvrIJdvLD8aQpyiZkTGrveXu/eD9XuDu1WSOlpLlhRgcFb3VGLd+NS5Dpc8FkUW6hR2BWA7cZECpNHkDcP7ugX3FRxnU2dD+Xuoc/lW4o2BMriQ++GUyQYWExYeIPpJLCRkWittDul8pb/WTylTyFlZnTJ+mOPX3wL3opcIXZeBMYVGPvEuMsGxYVv8rHS1zJMcjrUOuj8sIr/vzuz
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4317
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT059.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(136003)(346002)(189003)(199004)(6862004)(107886003)(478600001)(23756003)(5640700003)(26826003)(22756006)(47776003)(86362001)(6116002)(3846002)(54906003)(5660300002)(14454004)(4326008)(2351001)(99286004)(356004)(316002)(36906005)(8676002)(6486002)(186003)(8936002)(11346002)(8746002)(50466002)(446003)(26005)(81166006)(6506007)(386003)(81156014)(76176011)(50226002)(76130400001)(305945005)(6512007)(106002)(66066001)(36756003)(70206006)(2906002)(1076003)(336012)(102836004)(2616005)(7736002)(2501003)(70586007)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2229;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 63c1ecbc-9e8e-4606-70cd-08d77272d404
NoDisclaimer: True
X-Forefront-PRVS: 0233768B38
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kfKjDm/28b309qXGgdhTWVGYKpxCnJMg19+to/RVn7Ic/F7IXUdUN5KH9N0gtweg+LqvZP1gy9MfEMmENmht2xIoURG6FbG1EBiVh+ys3dUtnNf4yGdOmsY/jF84cgNskNFUi+n6tIUlLSs5B5Fq3rob0Hf77wweRveNdRdlZK9fPDvaMjyESf9JyNiDaYVD9m9z90kHFqRqpMKpuyyCbsEUCLXny5pldHnVlCqHEZOeTHrydIGbmqWXZPnlb/qtw+8lLWORlG9JF7kxwZqKq2uqO23e4Axqd+pDKO9+evHD1oBqn3qfSr/P0Na7eZx9S8d9k4B4BbKkz3d4QQ/nzHERY5iQDADzFjbafPzoo6qz5eKIuBYKHZp9fuKAjeE1T9ttizmZ1cWaId/61AT5KWlvYiUw/FqFDkmJj6UBia0L/cvX5t2YfLbN7u2AIT62
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2019 13:16:44.9084 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fc1e328f-7034-4d63-2c07-08d77272e29f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_051649_401734_FAE9465E 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mihail Atanassov <Mihail.Atanassov@arm.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, David Airlie <airlied@linux.ie>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No functional change: no logic depends on driver_private being NULL, so
it's safe to set it earlier in exynos_mic_probe.

Signed-off-by: Mihail Atanassov <mihail.atanassov@arm.com>
---
 drivers/gpu/drm/exynos/exynos_drm_mic.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_mic.c b/drivers/gpu/drm/exynos/exynos_drm_mic.c
index f41d75923557..caad348a5646 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_mic.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_mic.c
@@ -309,10 +309,6 @@ static const struct drm_bridge_funcs mic_bridge_funcs = {
 static int exynos_mic_bind(struct device *dev, struct device *master,
 			   void *data)
 {
-	struct exynos_mic *mic = dev_get_drvdata(dev);
-
-	mic->bridge.driver_private = mic;
-
 	return 0;
 }
 
@@ -422,9 +418,7 @@ static int exynos_mic_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, mic);
 
-	mic->bridge.funcs = &mic_bridge_funcs;
-	mic->bridge.of_node = dev->of_node;
-
+	drm_bridge_init(&mic->bridge, dev, &mic_bridge_funcs, NULL, mic);
 	drm_bridge_add(&mic->bridge);
 
 	pm_runtime_enable(dev);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
