Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812F117EF44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7M2SmqPkmE/Fh/hty8cMHkNh9mMwU0KopwqtQFmLuQ4=; b=B8Xc9pYL5D5b5+
	cSpFYVHo3VxnDuY9CpTUxloR2AohN/OfUpfLtI3hJodKbFulggJtmVjY59/Svmb5xzskCQi+xzUl1
	cqKHyQk86Wmb1aVet8Tzfk8UewTiudTLJg7nar52ANsmG4dDZENi/Pcll/4+2gfzekarvl0RNzkTt
	x5n8oqM0ApK42AHAkTITV0s6EncmtqSmneQPTVgkZhjOuIgtT0ghOT0frlSpyqlO9mKtcV86duxR4
	xcKeGZKaik4oPraTphDhi9wpFTByUe9ZUD0nLNHULHVqjwxGpL17xC5EhjzhoD9D0WlzQBRucBZfX
	vovMVs6uqT1Ql0Ov2AEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVcr-00039g-FN; Tue, 10 Mar 2020 03:32:13 +0000
Received: from mail-vi1eur04on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::60b]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVbd-0000YX-63
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:30:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PhvoiOBEzba78uN/Yi4WWkLC0uyyAPle0PLHa8rnm/foz8P9HB+2Db8D2oXRBfnGpmB8qp9iqpyOZpjuCsczVym2kbXGMSFo5ADa2wKiIHtoTbEg3SBYzGwyq/UzQqnLhUy3STrkq/LC72rp7fMCFiWtogfTzHWoVtZw6ppyBNuEnIjf9V2MDMgm01VXAPEWzCC60WyCMf+U3O5Mr3+8oorJM+bZejL26Im3O8bRzNx0zpCFBT7k0g3u/9VdTS8fyIhsmAo9Yl5uBbc0ebzuFbXK2tBh+FCs4S0JeGCzI3FoPuB15tWtHwP3BV5SyOyoc6eogvtWKMM/xqr+VF3Q8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FmaOqlAu+Od1UaEzkfG/CTJ/xw25vOqDB9f4GmJ9K2w=;
 b=TiuxTuAI6Y9d3t+xlE9c89FdBqePb+ixSAdFA1SffTm55uWSC6ya4LK7gY+qdfmaGwp1N9d2ddo50VBBOOUOjFXbRHFiC1RnRbyVG9JZMuMMVcG2rbRmWkJ2TimI+ZHNKVgD5i8I/UMfUSEmFmEJSis16DkRq2fCC8KlFpxFdm+0blH02KDESmLjFzzXmyu+L/H1T6wTLHtQSvUsaUtqZGt07DtReeDa2Z0aU7nTlnptqour77ZvXbWidFJI94SAln0gAewdulc1gu2OVtLIEF+HeqJwAHjc3Or/vqDXzZNV1U2VjNt/CrUKOygqMMz9TQIZaxIqK6ZzB5tFEULfDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FmaOqlAu+Od1UaEzkfG/CTJ/xw25vOqDB9f4GmJ9K2w=;
 b=dfAZrqhCFV1Zv3KfKTBqlRfpIl8xhINxDMcxr4ZwYbA3QmVeRYZa478BPB2GhVeyu2k7Wm2B66dbEaxHkDmmcUy5ad9SXQVmVZrIvW3OtlD9oMpDXiq8ywjc39rC3CNtGbHmbB/fLtRlBtzOQyAYCZkYLRTc1h/Y1iTsQ3vjLsk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6621.eurprd04.prod.outlook.com (20.179.234.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 03:30:52 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 03:30:52 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [RESEND v6 03/13] Revert "dmaengine: imx-sdma: refine to load context
 only once"
Date: Tue, 10 Mar 2020 19:31:52 +0800
Message-Id: <1583839922-22699-4-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0241.apcprd06.prod.outlook.com
 (2603:1096:4:ac::25) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0241.apcprd06.prod.outlook.com (2603:1096:4:ac::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 03:30:47 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0120f62f-f8c0-48fe-7641-08d7c4a36f5c
X-MS-TrafficTypeDiagnostic: VE1PR04MB6621:|VE1PR04MB6621:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB66218D53F0105B87CA55B4A089FF0@VE1PR04MB6621.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:119;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(199004)(189003)(4326008)(8936002)(6666004)(8676002)(81156014)(81166006)(2906002)(5660300002)(2616005)(7416002)(36756003)(66556008)(66946007)(6506007)(52116002)(316002)(956004)(26005)(478600001)(16526019)(186003)(66476007)(86362001)(6486002)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6621;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dqWW4f1M28EBxezPN7BONr1Wkl7ev90jwqLerNC//qTzm6dW2nV+qWsUVf8cRYkjvv4oogN+NF9eFNr0paW3AKYLvw9MhhmnsJ6BWG3sDT8ptqpnZyJMCZcSW/vOosH1y/y/sAvNKIq67vwMNf67NkzKsz4k3p5oBSud2ms7pNTgo6UazQfIab4dvmHc92vo15lFf9YIV3dicQzQSQiyJjB5Vkjj/DDZVgr9k0GaQkv25NOUObVfy8XZOjkSYKQ6tNj+i1IkwhZ4TaefY8Y4iOn6HF+hWyo3VTdhTGrgT4nspFFttXXOOga3AYQleLxuRfaJ/If1xo+NQnDgP8htqHz9qhOYDUTvsZOnnGFy54INAb3rv80Xi1Ymh1R2HBBa+Z3uO24kJcPkPRxHcOQJvUJsr0cZE+Ge6+GDOysJTX8uIg9KsNjrFQQfwosRj/9qgJG2aBJVaeB/EKWOyJfwhoBdYTVgvA83yfxkkt6C0SwdvSL6/xhMEVisH/bvncPS
X-MS-Exchange-AntiSpam-MessageData: d5U+fpzIHn95PjsB81KNDHGJeSdSQEBPGofZO/DFOQI858Wl7Fp+lqtavYUtZVTM+lqmapBy+u2sVulqiL6oBWnuSdOQ+zBDi/Fzqb87OtXecQzIYbuHUF0U8056eHI6CrED4iY7MYGP3RDVZJH6dg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0120f62f-f8c0-48fe-7641-08d7c4a36f5c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 03:30:52.6626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UKX3aAnORZaii/BCBZNgwx5Fhgcnjuz7G3VtMLNLFQH/6/nNgEOkyccsEzwj8Qv0720FshaVh/I4fuGuuzdjjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_203057_273956_65CBB17B 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:60b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit ad0d92d7ba6aecbe2705907c38ff8d8be4da1e9c, because
in spi-imx case, burst length may be changed dynamically.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/imx-sdma.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 4d4477d..4c11c38 100644
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
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
