Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3411DB39E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dmm/2uKNO/hRAckJJAcfJN97UhBTb4vRPUstUU0da8=; b=gijFO/NOMT5j3A
	GTEAFgOjOY5pp9UBTD+x9h3BX4pOQSABfgu+kS10Ehp4rwfOYT5yoy3Md65BSrgKY1854vFvAsVpq
	taEoxVgjIIy0kMMhzoYy1ywR9ZHpVjmhyhnG7WgFzHZf2YUXLAqFPhdVr/t+vxhqPiP06dUEaNRPl
	MMV5tAWh490CQIjLAsf8CINF0MfEzV55LKbf8bvdIgzKCQRufrzHR6Sqgeq9lTCt3gsKFLSPP9GM4
	6b22WsQBE0lZhxUA4XMx1ROLaza6JTF3e+Th4WWvRLhG1SZjgS8++f92SE6BJwNntegoaHgEhFJrF
	tP2IKozujRhRBb3d/+rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNwj-0002KM-7j; Wed, 20 May 2020 12:35:41 +0000
Received: from mail-eopbgr50076.outbound.protection.outlook.com ([40.107.5.76]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNvN-0008Qz-FQ
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:34:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IY28Tn8hsjOg15bpmVdNBvZ9OkECDM3QxzBtN07zzQ9Q7G9IsC962XaUjZunS5BwdZHkwwdQLF5BjKBrHfMNTswMtMR5ZtoqzhXcHJjWk5AJqgN62O3jE3cQBPTWu2kHh3sv1dj/u41zrhL+/DtYYOba73fL/gj87C+P+9UKwzqnYMHmHJDhzhVJGWyTbjs4H8J+ZGm2JexM0dRhhAR5XvhwlIdsNc8x35G2mqC9zepXabxW7OplvSdWrjooUwhzKxUCAtKYyAdLcnsIGQk13W+UmCd+hy8KExyHeNpFjr0XDNRLJPZqvZ6/T0KTmywlcSd4FRu+CDWsOR2sxjYxPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQ4lfqZg9UPDMmfJntdJXdbDbaidbZdpuDadirfZLDQ=;
 b=F6AHeBOS1W3v/Dz5VN3U88JuHtnASf+mQxlRqPn0iLvlktP9i2O8XEFFrJhXg4U0pHW+9IBZT/yTEHVFGIZoizFHKm69vb0ZaCO7bEMDaa9U8Sot5re9L93jplQh6EqdwWh4J3rLaVy8PctrMFlmxFpwQAaPYVaLjt5c78JMncpqDavH8Eu7oYfkPg88lYvQWeL8N9q8GP478SgQf7Qt+1Wmw6kPtGgw2FShopSWHiG+YaSx+mSApvXbxMF0YK7KvNs8BaLE7A+aXpRA7eDpeFmUKQLLGk8sB8q9FKou6HpOkCMXNwtCO5tnxYKaF0xXHCCMgrRx7mgFJnqObsEZyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQ4lfqZg9UPDMmfJntdJXdbDbaidbZdpuDadirfZLDQ=;
 b=ssYgpRhQ6yAAeNMs0wa0dFrcoZ3nzlB7qqA9hn/xjWtc6AJ96xBsLUw8qPM/QDZBoI5UPVliZVxLNQbrtYPjmvQ+ehAwzDE+L1WP7kzJmsJijNFXSTN/ihqkjY14d70x/Jhz4f8tNPVkaC9eAoemI0NVF3APEhCeEqxpO1rEMOc=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (2603:10a6:20b:f4::33)
 by AM6PR04MB4279.eurprd04.prod.outlook.com (2603:10a6:209:4a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 12:34:12 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 12:34:12 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com
Subject: [PATCH v8 03/13] Revert "dmaengine: imx-sdma: refine to load context
 only once"
Date: Thu, 21 May 2020 04:34:15 +0800
Message-Id: <1590006865-20900-4-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
References: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR03CA0103.apcprd03.prod.outlook.com
 (2603:1096:4:7c::31) To AM6PR04MB6630.eurprd04.prod.outlook.com
 (2603:10a6:20b:f4::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR03CA0103.apcprd03.prod.outlook.com (2603:1096:4:7c::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.12 via Frontend Transport; Wed, 20 May 2020 12:34:07 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2f366cb2-27b3-4cf1-0d04-08d7fcba199a
X-MS-TrafficTypeDiagnostic: AM6PR04MB4279:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB42795A39CC389605E6C2AEC489B60@AM6PR04MB4279.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:119;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2b0PzXCJdeIdLTgxxsMwtN9p/OV4Dkvjy3tXoUJOomh30fXUzznM9a+aJ/BUDWo/9V0/te4ZffACHUOgJd/+kZ2kSh0a1WNF648bZH7ZFtnpw0BE3NTSWh5/jdwFQgbASgEn+WkkTlNCPFA0Qyav3JVQvULhQ69M5nfwJrpULEqe+cECs2ZyiBCwiB1rBMHWP6IAptO4tilDj/E9cxTUnaIH+D/Lsl4/5LeJ5gfirsrNhmfeu+abYHv8tWCOnxlXzlsUTJbWNHTbTn1653MAXZ+Wq6MkXc9Vaw3PXvIYU/nJ5xMhE2A7lUx3OeZzS1lEyTCmf8tdZUdjpCdTg51lG28D5XDL+NZRCPTlqDj6e96OtVFX+QWSxRkyWWkfZVC3OETWLetInPMkGKggg71BzR8VCXjuQ26cGgznKXfg0YUcNJixaeNgJWVKQ0O0XXmRMYwTyR/IexY65Jow0VHgWJXza5IxLfUQkYLnvU5pcGo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6630.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(6512007)(36756003)(8676002)(6666004)(52116002)(66946007)(66556008)(7416002)(8936002)(66476007)(86362001)(5660300002)(186003)(478600001)(316002)(26005)(6506007)(6486002)(956004)(2616005)(4326008)(2906002)(16526019)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Rhd2iRiAY+qEE80f3fDBHYBWrvNXFPhVFIlWbD/FRqYlIghFvW61TQd2DRkSY3wv2dvwUU7r73cP9BU54ui0vy2cQxW3wlRp75jXisbfsNofUsPfzDFRQR+H/t2sdkwrAL7+4ljTPKWepH56AfP1kmUZfxyBJdl8LHh1oQV+iRACVSldTVSYJufXErHn4T4xFLyRufw3rwQl9q6NXZMxgQOF8/mTDtcsDokgF9ASDiC6xYQukJERYlkrTC8RPJGvu7fTdoNwMU8qFkHXGel+50qLa/EpRkUiv9Mbpk1OHVwLjZnNv+HVPTjk74U3uSIV8QIE3ocb246tmowujp2PQyAVRavgaXb9e6p/Fd2c1gP6PsJGtJyRdnOfkmU6fjWgpVydUKqQQZaFswIsHF2pMrdA69ocwaBixfmJsWkz7DwWqDnrIOL3Zf/AwNb3D39SJE+6OdCO0H+UyFytUHpOZx659tXa7UY/7GSqU2xeNcM=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f366cb2-27b3-4cf1-0d04-08d7fcba199a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 12:34:12.6563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4y3lpuhtsGl4F9abJzdbuQv/PfwkTn1zGD4wFV05j9mJNxsuJ4dP1/ugS3/xnH3p5HeHgls4pTS9Ub7kMGXcsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053417_541080_3C172083 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.76 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.76 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit ad0d92d7ba6aecbe2705907c38ff8d8be4da1e9c, because
in spi-imx case, burst length may be changed dynamically.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/imx-sdma.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 9177403..b1f61eb 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -377,7 +377,6 @@ struct sdma_channel {
 	unsigned long			watermark_level;
 	u32				shp_addr, per_addr;
 	enum dma_status			status;
-	bool				context_loaded;
 	struct imx_dma_data		data;
 	struct work_struct		terminate_worker;
 };
@@ -984,9 +983,6 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 	int ret;
 	unsigned long flags;
 
-	if (sdmac->context_loaded)
-		return 0;
-
 	if (sdmac->direction == DMA_DEV_TO_MEM)
 		load_address = sdmac->pc_from_device;
 	else if (sdmac->direction == DMA_DEV_TO_DEV)
@@ -1029,8 +1025,6 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 
 	spin_unlock_irqrestore(&sdma->channel_0_lock, flags);
 
-	sdmac->context_loaded = true;
-
 	return ret;
 }
 
@@ -1069,7 +1063,6 @@ static void sdma_channel_terminate_work(struct work_struct *work)
 	vchan_get_all_descriptors(&sdmac->vc, &head);
 	spin_unlock_irqrestore(&sdmac->vc.lock, flags);
 	vchan_dma_desc_free_list(&sdmac->vc, &head);
-	sdmac->context_loaded = false;
 }
 
 static int sdma_terminate_all(struct dma_chan *chan)
@@ -1338,7 +1331,6 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
 	sdmac->event_id0 = 0;
 	sdmac->event_id1 = 0;
-	sdmac->context_loaded = false;
 
 	sdma_set_channel_priority(sdmac, 0);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
