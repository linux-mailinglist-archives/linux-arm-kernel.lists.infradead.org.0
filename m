Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628B91E08CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JgcYQOC0hu0Y8u5XMH3nRlMmqiDvYQpQjWD582NmGIM=; b=pggQFPQJRQKSUE
	jmwXl1NbHlSb6BemxaiTqoEIqb0Y4V/nSMmpyoReYDHknxmfjOzP3iL4p7tecxBP7qLDxAUG8Zk7T
	Xlc9aUJSEqI9oy/kzcJ70kIjmbx2gTJm0N6iDCaMlgHw0Ld3Wr8pV0p9D0cSixikUHx5/7WSkJmwv
	izjiA8Br2LhTlgGIThjx3TpM7BK3ePoMDVLgAFH+WjUshllaDKcJClRX4m24mJ7UZPGqDx4LgIY05
	S87140my2EMDOqE2H5JMXcVDchMuv5DzIPa+AmzNPKIcgyD9Rvd4QpQdzVIGmIGiOgbQ19eDDS630
	DgnAFnuhc4FSJA44rArw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8SE-00050J-Te; Mon, 25 May 2020 08:27:26 +0000
Received: from mail-eopbgr10047.outbound.protection.outlook.com ([40.107.1.47]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8S1-0004yY-GZ
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:27:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCdxTxf0bq3GX/MJlsmxDAv2C8wpNZEK4lopVDC9nZjj6mM580h8mz3AO7md0jJc1Ka7oboXYW96a/1OKbvxOEOH56tCyoosYOqM9Sd5jaxv9cu5izk36XDOf6Naq4ONZDIWeVivDy7ijdfFWBoEtbLVUIu2Zc6ytRawDDaWmliItlcYFXpsB0y/rp7OVEmr2Wx0LwleqRVQK1sk+GrSSJko8o2rXYAyEoYHrJ6Ck2oX2DHtR3B0EJ1/X07Qis4a0Js3GBe40bbcErPbNsHB1RJInSceJNdNTDscZPAnryZ4ekLEYaIzHl8F8JmSnbcQ/UbKH1boghg9GUoEd+YFdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XFdjN/JXXqvv0lsNW3a8zBy04sdNGohdrwgi4teeuJ0=;
 b=MbVA5n+8GGUpC01tKfcrSYpdhOdxTXqtC4hP+r5uWKuTjdmhrbjpRr6W44VK8/ohHWyZGseFu3qoWWDrWlFVzrzgtnTGr/j9m636VphAbKeflJdN0fwz3nvg7ecjvhHmuZMMEGr6F8OCRfCMZ7CTr3iWjHT61+QM24RM2M7aydKqa/UtPhH26CBCxTWUan2YV1qoXp7FZxtdww1ugVeDoTshWccgMK9sRrs5H4Y+m/NVWpYQjhIXj/k2gIetXLORa6LJ+m5oBzGEOkXFb2hMBWbfHsGIDlkNa+K6/6ASau/6tiVJImBV7ONlxCrbhpOIzVQfDulMKHu1A9kErjsV7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XFdjN/JXXqvv0lsNW3a8zBy04sdNGohdrwgi4teeuJ0=;
 b=mR+uToXK4gpxWrVZ71yVaFOyCgMW6at5HYVhwfEp9VoceRhKVMmWl/7YqE1SwhxuukvpOz7/hN0gcQ3/1/yl9VfSpWpB+gST3+D/etLqAADPSsZO8A3K27Zqt9/xV7rLlXXDeIhuCJQNhWl3XUbrDtyuNq0gp9SifjK8ZGptmNY=
Authentication-Results: st.com; dkim=none (message not signed)
 header.d=none;st.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18) by AM6PR0402MB3717.eurprd04.prod.outlook.com
 (2603:10a6:209:25::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Mon, 25 May
 2020 08:27:09 +0000
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1]) by AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1%7]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 08:27:09 +0000
From: Fugang Duan <fugang.duan@nxp.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [PATCH] stmmac: platform: add "snps, dwmac-5.10a" IP compatible string
Date: Mon, 25 May 2020 16:22:25 +0800
Message-Id: <1590394945-5571-1-git-send-email-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR01CA0096.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::22) To AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b38611.ap.freescale.net (119.31.174.66) by
 SG2PR01CA0096.apcprd01.prod.exchangelabs.com (2603:1096:3:15::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3021.23 via Frontend
 Transport; Mon, 25 May 2020 08:27:06 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 34283803-76ee-42ad-3e7a-08d800856aa1
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3717:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB37177D3521AD465EA3023A68FFB30@AM6PR0402MB3717.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-Forefront-PRVS: 0414DF926F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7tmdLx/mWiT7T0KjQs/7m4PYoIPVMX7yWHwTXQiA1gQw3K3cNqRdJSs4yeVOlG82M/n/4KnZcsKpBmMhky/VqIP+/udAiuoZq0uzwgndaITKo6v6w7ywFhJUb6tO3dAKFv332Jbv3SsYTLj4je0VTRYRYBGUD0yC+zmd21mhkH5k8n+8wHWnjdlK5GLGiy1a33XyhG3KtG52oSyc8mMcwkuROYcS7gi/iHAMLcm0NsZAvF/hCgKMTG/r1qNVki+/0QCA6QOvImHxNcetjNUZ3As4KuHO3WBDeuH4YZ0sy5pB9H3u9WjQZX/cIOP8K1XbrY+8nj8FteB1T99oNNDfx6bLUdwyY6pcMD61PtBFKvUVE4rb13t46cA7X9IqiYDF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3607.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(346002)(366004)(39860400002)(136003)(2616005)(44832011)(956004)(66946007)(66556008)(66476007)(36756003)(4326008)(316002)(8936002)(52116002)(478600001)(8676002)(186003)(16526019)(2906002)(86362001)(6506007)(7416002)(6512007)(26005)(6486002)(5660300002)(4744005)(6666004)(142933001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: a/OKwdTnEbm8U7FZrfITj3SCq4hk8gFZbQQPeCXhdfWgDhzpvGh+tdQtaaJe/n8lx8CnD1YmZqK5jFfgNMg9tSzyAjB8Ww5nmhZ7TEbsAMh9TmzLOPVF0m4u+3NIkLqYqqoA08UwQn4/a30mo9KEM5AkqxywZyHcT0E4PRkZ//sHZD3MJubgqk7g0YzE87aA/AzNLbNj28ihjxGCYrwvDI1IBYKbCtxHBlUzgYCddHyxG+xErtTcfdfkhMZV/e2mLTGbL5Ph0h/MBFLFXMRkOSWqi1edR+yGHPcOR6nzHCaePY5s52Pfi2iqMIj9KIBefebWgoJ2FAA2kVNn0X762E2cS9uAkPbyLUjONFQSTJ6rVbbUScbSCDW5x4EiZQn1rQ3XWnw5qvSIdu8uPyJ7XYp4Zw+9DzsNztnYx/Q/obBdCKNnfUOh4G40/0dyhLlM5YX0UbJ+l5Odgtw/9Sq51bIwGjRCzOYhcpezm74ByLYuySUjeOi6vvgjQToSPuz9
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34283803-76ee-42ad-3e7a-08d800856aa1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2020 08:27:09.6165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ekRoixmJDNl6nCOKD9Clat+hAiD/UKOto3C/m0IRswkXV9l9+RUxHHIY+/zrVnR7c/ilNyqZl1GAFjKsv+iOBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_012713_560111_B1E2B765 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.47 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: fugang.duan@nxp.com, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 p.zabel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "snps,dwmac-5.10a" compatible string for 5.10a version that can
avoid to define some plat data in glue layer.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index bcda49d..f32317f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -507,7 +507,8 @@ stmmac_probe_config_dt(struct platform_device *pdev, const char **mac)
 
 	if (of_device_is_compatible(np, "snps,dwmac-4.00") ||
 	    of_device_is_compatible(np, "snps,dwmac-4.10a") ||
-	    of_device_is_compatible(np, "snps,dwmac-4.20a")) {
+	    of_device_is_compatible(np, "snps,dwmac-4.20a") ||
+	    of_device_is_compatible(np, "snps,dwmac-5.10a")) {
 		plat->has_gmac4 = 1;
 		plat->has_gmac = 0;
 		plat->pmt = 1;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
