Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE223112A92
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOpLzNSNTTij13HsuuuqaDi6e3UeEngWTd8L6b98rzo=; b=MkoHahahITP+tE
	4NleNmtdbBrLxDOlbGBX4AfsTbQ8t7DhYC8B1pE8NSvY98eQOnZnd3yohzapcEFUYs8o/JPfyflb3
	1W/QpTvbpvnUmtdxGjDaJhGyjBQ684V2vrY59u2SKxuZdY202Vxb+SdehDTJ9I/hf2FkIFb4GlFya
	9NamPDuAV4k0m57GPKjo8z5e7StQaNct0IPbqBey3YRxytc1hOAY1+ExlFKLTHKBvAFpesj1r5JrK
	R8O5w1bzflD1jU2xAO12TTiRAlQihkHsd7t5oLGOi8YVV++3FUJm8g0Oit3MsmCC6n+AmDJ/AfdM+
	LSBImzX5Zv3vbFSmASPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icT9I-0004sE-0Y; Wed, 04 Dec 2019 11:48:52 +0000
Received: from mail-eopbgr70041.outbound.protection.outlook.com ([40.107.7.41]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icT94-0004r5-3U
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ACjV4UGNCWLSq8MibzK+USLBibC30MfoACrBrreo6w=;
 b=xR+QFID3SCM0cWoVSBA4I6BSgRQe4GUbyQa6A9xzNf5AGk1LPbGN5SICdOjNOw7gV9QK6IrIAqJLA+pt+IV0G43bMlnnoFw/Ls4shNiZAGrTdFdiAvGYIdgeeThHr8wxrSH9zGRcl+62g6aphheK2DuP7GZqlRO9vpvUe6122Zc=
Received: from AM6PR08CA0043.eurprd08.prod.outlook.com (2603:10a6:20b:c0::31)
 by VI1PR08MB3472.eurprd08.prod.outlook.com (2603:10a6:803:80::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.20; Wed, 4 Dec
 2019 11:48:32 +0000
Received: from DB5EUR03FT058.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::208) by AM6PR08CA0043.outlook.office365.com
 (2603:10a6:20b:c0::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.13 via Frontend
 Transport; Wed, 4 Dec 2019 11:48:32 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT058.mail.protection.outlook.com (10.152.20.255) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18 via Frontend Transport; Wed, 4 Dec 2019 11:48:31 +0000
Received: ("Tessian outbound a8ced1463995:v37");
 Wed, 04 Dec 2019 11:48:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f609738160676c2d
X-CR-MTA-TID: 64aa7808
Received: from b7ecf5d06a39.10
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C71C4CBE-4543-428D-8819-AC471F306DE4.1; 
 Wed, 04 Dec 2019 11:48:22 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 b7ecf5d06a39.10 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 04 Dec 2019 11:48:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=euiCuXMPMKennQ3P1HAOA0FsjcwQj4cWm9GsvGl0gRxXacXc1HJ6iXy2FZ+wQPnqj6tUZf4j2kNnkDmXrjHy1HU/PPGnfWIuvNkLbQuMgCrL8kd7qyKoMWRJK8s2Vn+o95gJIFwKoxsJIF1CkOrSDcfP0WiM7WBEnrLU1wyL1St6jcptuZrZwJXqlMpLmwNMekStMHqGVO8CKUIEmePUpozIDaB1asmqwr+lO8XgzVUVgfZQx+KfU2RKF6bpJt1T7xwYh6F9blMe0MMnds/Axka/K7Y33OBKWsYNMz99T6dl4Q7ubWWbDuV0QjOibpcbHv1W4h00rdmPPotr2LGTZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ACjV4UGNCWLSq8MibzK+USLBibC30MfoACrBrreo6w=;
 b=dEgND/wqxuNRAeDNTOo08n4EjebnpPNWfpbUnBTEbHPhL+nLOzlZm3bJDtoOBsZYuMjaz2jN8g6++fYQz9mB2V0mNh4xgJtyt3+c913YuYtsTxkC9wEF6d72W46GQG6QMZb9xivjSmhcZgER7JMVYvpUu5r4qbWwvhkrNqSYALCTbrYMtr3jpFRtGTijF61vpzF2h9mEdg2kAckll4hI3cMO9BigVuNtIZ2Oppxs087xPGOpEdEVG+tG0UvP6Kod9wzN98XXAmckyXsdW1PVHd/FcmfD0G9DcsWiqFXcXQ3y5y1SEYLV4bLcI4vkz/No7MWhGlWj6VzdS9HYE4T8+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ACjV4UGNCWLSq8MibzK+USLBibC30MfoACrBrreo6w=;
 b=xR+QFID3SCM0cWoVSBA4I6BSgRQe4GUbyQa6A9xzNf5AGk1LPbGN5SICdOjNOw7gV9QK6IrIAqJLA+pt+IV0G43bMlnnoFw/Ls4shNiZAGrTdFdiAvGYIdgeeThHr8wxrSH9zGRcl+62g6aphheK2DuP7GZqlRO9vpvUe6122Zc=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB3085.eurprd08.prod.outlook.com (52.133.15.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.19; Wed, 4 Dec 2019 11:48:20 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::8191:f0ac:574a:d24d%3]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 11:48:20 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH v2 21/28] drm/exynos: mic: Use drm_bridge_init()
Thread-Topic: [PATCH v2 21/28] drm/exynos: mic: Use drm_bridge_init()
Thread-Index: AQHVqpi5K8LO++NS4U2nSxfkhZ2Q5g==
Date: Wed, 4 Dec 2019 11:48:20 +0000
Message-ID: <20191204114732.28514-22-mihail.atanassov@arm.com>
References: <20191204114732.28514-1-mihail.atanassov@arm.com>
In-Reply-To: <20191204114732.28514-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LNXP265CA0055.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::19) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.23.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 81cf3b0a-ed88-42f8-8248-08d778afe30f
X-MS-TrafficTypeDiagnostic: VI1PR08MB3085:|VI1PR08MB3085:|VI1PR08MB3472:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB3472D43903B66033870DF8E38F5D0@VI1PR08MB3472.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:2582;OLM:2582;
x-forefront-prvs: 0241D5F98C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(366004)(396003)(199004)(189003)(2501003)(1076003)(478600001)(6436002)(6512007)(8936002)(6486002)(54906003)(44832011)(4326008)(316002)(50226002)(8676002)(5660300002)(2906002)(81156014)(81166006)(7416002)(6116002)(3846002)(66946007)(66476007)(66556008)(66446008)(64756008)(11346002)(186003)(2616005)(14454004)(52116002)(76176011)(99286004)(2351001)(25786009)(86362001)(26005)(5640700003)(6916009)(102836004)(71200400001)(305945005)(7736002)(71190400001)(6506007)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3085;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: swHtl3lM5DNGW+yfqJ+0LRrIcntQrPyU3gJ3lU2I87mob8849XNBHNH2F54qRwzlArTIpeHWMR6ipbFPAEyjQWL9+bmWEjtncItl2vSaWStTl8Rf7Z0/xV2LjOPoPs2MYKB23vGlFaMcvcubVqkVOtZEZk+/ieh7doUjkMDn34vPyWKrxS39+aRM2W0v1JrCBCn/hlbpaL/h9jEaO4TO9G9tUYiGS/UFr7rbxnlVEMVc5zkxFm0bce56LRJaRdeKz+dE7kBvREiNGEJWq/DSnloPlwrc1ZCd8Ukg1ItOYhCHwMxw7ExZWFkBsMlpyOnpHQnlhe4a7r10GAPA7Q9a5VNCXXeSG6eBfykeZjwFGfpceDqttlrm+bZrFfgRQ8Pq1G4A9ASRygyhTVuDZMpdFFiaAdEzI6sgEExcQvb7SqKV3AqI3S5ekAsUtysOH7r8
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3085
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT058.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(189003)(199004)(336012)(356004)(76130400001)(6486002)(1076003)(70206006)(11346002)(6506007)(22756006)(4326008)(478600001)(26005)(2351001)(2501003)(76176011)(70586007)(36756003)(26826003)(50466002)(6862004)(5660300002)(5640700003)(186003)(6512007)(86362001)(2616005)(8676002)(2906002)(81156014)(14454004)(102836004)(54906003)(25786009)(23756003)(8746002)(50226002)(6116002)(3846002)(99286004)(81166006)(8936002)(7736002)(316002)(107886003)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3472;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 3e801a01-9320-4c23-3ed5-08d778afdc2c
NoDisclaimer: True
X-Forefront-PRVS: 0241D5F98C
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YW0kiusKFYPKQEUI9tRrEygW0hPCNnfbxX0UvcQJ7nfYfJuUme0i+xjHp0QyapoxxG6v+jqnjVK6I1Q+WZxfIH6WYuglHnGXhrEmTPJJkNS2rOFDR/Vl/sDEkxHbyY1TYbWWYmgBpub00DhzV7IE5bY3lyNVk2MXwbzsCuOIcmuAiyHU7nL/AqB89Wmh1Fpbrt+hUKkqlVfc6+WQYKfkzYtsjgvxd97HARnZI6Qp3Qpq0f4zuAChP3lNJDQcq44B6B9RMALesSLsqdopRdFkOOIHj5mB8nDo6ltMU7UMP+pVwyX1Wdiaxwx8yiDNlSc2KvCtUYzRDaCTBYrVJhQpmR6oFqxZvOSRNU79wrsHrWznhUClf4wlxoUYV+ZpHcZYLMrbtr9eDdW8cVcgyyukyjG98bQEkyculVqbIyuK7UKBRK5Ok4rbABJMqHUd8iJr
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 11:48:31.9688 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 81cf3b0a-ed88-42f8-8248-08d778afe30f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3472
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_034838_153334_E722B897 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Acked-by: Inki Dae <inki.dae@samsung.com>
Tested-by: Inki Dae <inki.dae@samsung.com>
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
