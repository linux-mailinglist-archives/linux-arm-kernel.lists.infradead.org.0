Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FF512A373
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 18:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJAtO/Z8DQy1Twfd+JU8OmReOpEk61ywe8iW+hyaN88=; b=g8et/zaxiFCT+C
	TWK4O2BBkEDroxfR/3TgGF0Bjhrbt6iehoGA9F5UJFLgb18qUp8WECDvo9xOMK+eSiChK7VDw1XkO
	ZVbkadD8JZsB651QjUB013e2HFa5DkVrqwjC9CbHGlkvZF7TKNVimjoHdXPJyMQSo+VDmFJLffPU+
	J5RZ7LOTkhUbUv8F8JNhlF7llDWBHrogaUq/FPxCStCJ6xsnYPmF0I+Y+xc4E06jWT2gxrA2Thsj2
	a04Z8Hrbx2gAar4wj7zCsyKblmK+cjsKdFLvvAGVvjsfVnjLT7ibbpKcdJiqLe1u9aPt3Z4RQAsG1
	VCPPTqAte+QVkI9+5SwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijo55-000185-HD; Tue, 24 Dec 2019 17:34:51 +0000
Received: from mail-eopbgr30066.outbound.protection.outlook.com ([40.107.3.66]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijo4v-00016d-Mo
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 17:34:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnV3umvNfwpdcLqxBCqkJxzlBMZ+r053Qfn4Wsk9O7c=;
 b=FtK2EgE7kxnRfGBeC2MPPQLACu1uKU9d1cyj+vTcQCVq7VKdOf2sZEMB+OANzXPeHYRyyoGHb2bz9t3CozD2bNm4MqpgBaAll5cwh28P/6Et5mj6+wsvKfWb1x4CcojzqD79jIAVwIiwTZRuioPuLbQa3tcdac+G/PscL/RaRs8=
Received: from HE1PR0802CA0007.eurprd08.prod.outlook.com (2603:10a6:3:bd::17)
 by AM6PR08MB4488.eurprd08.prod.outlook.com (2603:10a6:20b:71::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Tue, 24 Dec
 2019 17:34:34 +0000
Received: from VE1EUR03FT028.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by HE1PR0802CA0007.outlook.office365.com
 (2603:10a6:3:bd::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Tue, 24 Dec 2019 17:34:33 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT028.mail.protection.outlook.com (10.152.18.88) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Tue, 24 Dec 2019 17:34:33 +0000
Received: ("Tessian outbound 121a58c8f9bf:v40");
 Tue, 24 Dec 2019 17:34:32 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 839410e269e35020
X-CR-MTA-TID: 64aa7808
Received: from 64861fc03c2f.4
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D4E18AE5-8643-4259-A6C8-61B5FCB808B1.1; 
 Tue, 24 Dec 2019 17:34:27 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 64861fc03c2f.4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 24 Dec 2019 17:34:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9zUkcYNz+kD4pJw1/T+nZGnFhldbkTo/NegLQ2a7wXVegVaXbfeIHBzkz9anBhRxgz4uTEgZaI5FiktYrdzoFKNBWUT9cnGXkMMnHDbqakKWQsY67Gqos44UMybexyas3qhsRYfOl2Iy78AAB1SkII0XUPtPwFtPznmIVQ8wI4VJBrBeJz51UjgVBTZbFOR0alG1KNncbc4AltRnfz6CFDEtGa2UsZXRbsX3WN66Aqlg7vyb82z8bV6b94kecH+DRMvipZdtYDNbEhvEeFEuB1dP2h/BeRcDWU89g7z6SRvk4c0UCfgdHL96Rhvel5PkO8mGLTPWGCSIRNzcOH2vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnV3umvNfwpdcLqxBCqkJxzlBMZ+r053Qfn4Wsk9O7c=;
 b=b6aBlOf0OiTll2dBKWPqHkcAoVJQ8bhDwFfaiqri3iS7lAe0AX8rjRbU3aNLrTJEgEWhT8qZVzgtzb+azgoavK6qCRuJuIfa/EaLuUlqZzlsuoBaYbIOiI7BkF4utVz0nMVYfTrsA3xK4hF/ph1+zhzHAiTiWXC2lWXT3D8rlwoi5PeJLONMQZDO03uLSn5qYo+nvSUEb/qTvboPRk73EtJ1LF3ekbmVbrasrBwmOnkFGc0PgeUDZf/tD/cglrLsI1BlbV2+wku1lTjkgz2EGc8BlAJ4KLmc0nTM3RKc0DI/2T4KQwOjyg6DATOxz0OTNgnhXx51AP+wx7OcdeVLZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnV3umvNfwpdcLqxBCqkJxzlBMZ+r053Qfn4Wsk9O7c=;
 b=FtK2EgE7kxnRfGBeC2MPPQLACu1uKU9d1cyj+vTcQCVq7VKdOf2sZEMB+OANzXPeHYRyyoGHb2bz9t3CozD2bNm4MqpgBaAll5cwh28P/6Et5mj6+wsvKfWb1x4CcojzqD79jIAVwIiwTZRuioPuLbQa3tcdac+G/PscL/RaRs8=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB2702.eurprd08.prod.outlook.com (10.170.239.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Tue, 24 Dec 2019 17:34:26 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c%7]) with mapi id 15.20.2559.017; Tue, 24 Dec 2019
 17:34:26 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH v3 05/35] drm/exynos: mic: Stop using
 drm_bridge->driver_private
Thread-Topic: [PATCH v3 05/35] drm/exynos: mic: Stop using
 drm_bridge->driver_private
Thread-Index: AQHVuoBigv2vEibt+0GqA7jMsM/uxg==
Date: Tue, 24 Dec 2019 17:34:24 +0000
Message-ID: <20191224173408.25624-6-mihail.atanassov@arm.com>
References: <20191224173408.25624-1-mihail.atanassov@arm.com>
In-Reply-To: <20191224173408.25624-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.53]
x-clientproxiedby: LNXP123CA0023.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::35) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.24.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 370cc3c3-17f9-4c9e-79a7-08d788978a0f
X-MS-TrafficTypeDiagnostic: VI1PR08MB2702:|VI1PR08MB2702:|AM6PR08MB4488:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB4488A67A28D8CB78CCC0D9478F290@AM6PR08MB4488.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6790;OLM:6790;
x-forefront-prvs: 0261CCEEDF
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(189003)(199004)(81156014)(8676002)(478600001)(36756003)(4326008)(8936002)(66446008)(64756008)(66946007)(66476007)(66556008)(26005)(186003)(44832011)(6506007)(2616005)(81166006)(71200400001)(316002)(2906002)(1076003)(6512007)(54906003)(6916009)(6486002)(86362001)(5660300002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2702;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: UtunOQsjvO+cICPXtRbaGUZ9jFK+Pe7bUKGP9QiCk+YihI4jtdcAtVeu9HzFOK0LOHNWsgKG6jDyayl6uXiW0a/56lkbpugb4JOD2I+dBnW+m/EPlAq+oJsNHSTnZYBBupEz7y3A39LwL9h5NzxOC7KlwPOl53HXR0nKNf9P11NU+MQTaXgxIkleiz8VOGyqs2mkZdLmJvJGhKqYftU57Bg1Pu3IKjoaQwRKVnKhLe7xsuS3bQ+aoC3Lub8Vl5810Ed/IaRx1khOE45TJ2OgIVGBCdlYhEUFw6EXvBd11JtguX9v9lCuMnJnWLdgtyZOpYhLamSEIwhsMwnj1jrJwLtNCmcmC2J6G331qvbnKNwkgEOa4P+0fQ3pAKwa+D6tK6/1eAyFynJL6Gdt+4zt90R2d7OUSK22sIZxZlRkH42+4gtCeOgZ5WL474ga9KQD
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2702
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(189003)(199004)(81156014)(107886003)(8676002)(356004)(26826003)(70206006)(186003)(26005)(36756003)(4326008)(478600001)(336012)(2616005)(8936002)(6506007)(81166006)(6862004)(2906002)(1076003)(6512007)(54906003)(86362001)(5660300002)(70586007)(36906005)(6486002)(316002)(76130400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4488;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 344412ce-2f0a-47e2-cc89-08d7889784be
NoDisclaimer: True
X-Forefront-PRVS: 0261CCEEDF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kc0YHfgaWGMm83GR2zRrX47UQgwHtaIufdb5noR79C1uqH96QO8bsndLpkCHxaD7VB1Ts2JJry2hpN0mj1bsUXhlMXMbxhpBpBK9v2y2cDU2WF8bpnSAj/LPqrtKDVKzt7qKrO6MVQB8Q6vaEmx3zwV5eqh5qi3GQGov0LZH8bVpul5ABWKgRilckh+9SolYN7xamEibtoIFh/AXBwKiEt4k0t/jAvSkLHHgrOJaDzMpitQ/AHiiC/x6nINvmGOtUMi52VxvJUpAtNYAuBgf8On7ksHYTTnOpszFVntbNkspmujGEcu2KnfzDHHJ+v2x3e0QiUMZw3f6pC3wB5eljhGuAqfJnfb0xzFHPSGJ/kwEeM94L8QTeZ3FIGUMsQ01Nu5f7ut7wiNVCrIa6NN8fhrzMVrjW3jaXWmL8C0rOuAqja49nHZquYWEKJM/bNO1
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2019 17:34:33.2672 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 370cc3c3-17f9-4c9e-79a7-08d788978a0f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4488
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_093441_748979_33F1CCFD 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.66 listed in list.dnswl.org]
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
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use a container_of wrapper instead. Note that no logic depends on
driver_private being NULL or not, so the cleanup in exynos_mic_bind is
safe to apply.

Cc: Inki Dae <inki.dae@samsung.com>
Signed-off-by: Mihail Atanassov <mihail.atanassov@arm.com>
---

Reviewer note: the driver_private cleanup used to be part of the
relevant drm_bridge_init() patch.

 drivers/gpu/drm/exynos/exynos_drm_mic.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_mic.c b/drivers/gpu/drm/exynos/exynos_drm_mic.c
index f41d75923557..2b5f10c3a285 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_mic.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_mic.c
@@ -106,6 +106,8 @@ struct exynos_mic {
 	bool enabled;
 };
 
+#define bridge_to_exynos_mic(b) container_of((b), struct exynos_mic, bridge)
+
 static void mic_set_path(struct exynos_mic *mic, bool enable)
 {
 	int ret;
@@ -232,7 +234,7 @@ static void mic_disable(struct drm_bridge *bridge) { }
 
 static void mic_post_disable(struct drm_bridge *bridge)
 {
-	struct exynos_mic *mic = bridge->driver_private;
+	struct exynos_mic *mic = bridge_to_exynos_mic(bridge);
 
 	mutex_lock(&mic_mutex);
 	if (!mic->enabled)
@@ -251,7 +253,7 @@ static void mic_mode_set(struct drm_bridge *bridge,
 			 const struct drm_display_mode *mode,
 			 const struct drm_display_mode *adjusted_mode)
 {
-	struct exynos_mic *mic = bridge->driver_private;
+	struct exynos_mic *mic = bridge_to_exynos_mic(bridge);
 
 	mutex_lock(&mic_mutex);
 	drm_display_mode_to_videomode(mode, &mic->vm);
@@ -261,7 +263,7 @@ static void mic_mode_set(struct drm_bridge *bridge,
 
 static void mic_pre_enable(struct drm_bridge *bridge)
 {
-	struct exynos_mic *mic = bridge->driver_private;
+	struct exynos_mic *mic = bridge_to_exynos_mic(bridge);
 	int ret;
 
 	mutex_lock(&mic_mutex);
@@ -309,10 +311,6 @@ static const struct drm_bridge_funcs mic_bridge_funcs = {
 static int exynos_mic_bind(struct device *dev, struct device *master,
 			   void *data)
 {
-	struct exynos_mic *mic = dev_get_drvdata(dev);
-
-	mic->bridge.driver_private = mic;
-
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
