Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B021F075F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 17:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRV4FBqI6I5Eh0vJhmRgHYCjjH2Fw0KOVjJJlSpeFYs=; b=t5AW0rqQrCSgvO
	44A5qMSo5sKfBOjRLf+CmsPwvjJZOEnwX3EflXyXTyyO1Oarp+UVGqX6+R+1OEktFgEnHmVWC1+M0
	w+LodjXA4cfzDsxnbAFi5bSfbpBaagQA1jm+hOESEIvxaI8/C66FKShn9T0BpQkkLO6swsszzChL5
	IcK7B8NP2WWyEwk5lMm3nJwyUcO5B/iQAt9IXfalT3j0m7T9qfRi5V56Jcda3Ugnkzx3dUusE9S0m
	nj+wESbxssnihtNlfAmhpBl7nYhKvo1N7mZ0Lo/7wXZpgdeOEVjMqy1x1cl8DnxcKuw3kn/EmhGbz
	C097Djws0D8rhkWP+lvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhaeE-0006o7-2l; Sat, 06 Jun 2020 15:22:14 +0000
Received: from mail-db3eur04on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::60c]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhadb-0006Hj-KX
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 15:21:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BgiVD/nAxUGEYZYsQs8qIsoTP3tZjFKFD4N7t5kohcLl2nvnAi20gglt1QwwHidKxz1tRpmuPELeji0ZQByKcy/TMzkaXHEkhgaokukb2Wv7J/Dw6qDxazVHYC/EwKc/L7hTCNAVr7grUvv2I/R1EmJGU76QE39A2Fs1SAUD2yLRnAV8NT6PeT1JbLoerR7/AMCVA9vfwI3iSH7pyeKV4TZkmvpJUOSvU9qPA8lWKam8gDhqfGRFGlrk6ecBdfFMHxU+TMTgRfAdzEpoNQzpDm+X38Is0mNz4KByaJvwIwkOsAcYa88Ett+6ycpv1yv+ixlKs2wPrwupovPAQN6Zag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2qQFl1M0PiqWRUkPgPmPfPvDrIW1FM8N4ycyyrFKX0U=;
 b=b/FpYjo/3nYpS3oA+GizDUZM1kORhJ5qNGLjkmSlWk4LXKtLFhwKOK5eRMRmXzRfMLqfrdRhxnqGqZvJAI0jbM6Ay6JZIGrildVs9pOHX8ORVQd3RNvkLsKqHu9Il0Hc0OmCNRQNYwOKuZUBB7dgO5Wm4GDWLkuVIsbj5P2ftdyC7K28XUTlcjm1vRhO3TB/o6/93PoTGOf9tODSGiP+p+1Z1GSqvwMLZyMPFxtgLhsiFb1o/Z6q2TR58pa2/O9np6YbIu7O4NoknJ+ptoNg+kFx/6Gm9MSF3WPLDgBX+HQY+DqRSuu7Z1cdN0wbjKjbrMp0upJOhmn3fcEgczwOTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2qQFl1M0PiqWRUkPgPmPfPvDrIW1FM8N4ycyyrFKX0U=;
 b=nDbLBGFDuW0OybcKbZLn/++WHjDoLeZD+WdkTYqxHmLERx3GaJzpRul5SvPeIAqQUMOvmorvTtzk20ZAYbF/MdaMWXDg1auzvvvFGgK46IgBcRQXfcMvuor8eZOLLhL3VPHrxIk2bw5pTpeQCgkLCVJ/brFIBYrAYlvGTJzdzZg=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6511.eurprd04.prod.outlook.com (2603:10a6:803:11f::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Sat, 6 Jun
 2020 15:21:28 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Sat, 6 Jun 2020
 15:21:28 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 RESEND 04/13] Revert "dmaengine: imx-sdma: refine to load
 context only once"
Date: Sun,  7 Jun 2020 07:21:08 +0800
Message-Id: <1591485677-20533-5-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0184.apcprd04.prod.outlook.com
 (2603:1096:4:14::22) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0184.apcprd04.prod.outlook.com (2603:1096:4:14::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Sat, 6 Jun 2020 15:21:23 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a8c30ea2-6689-42c6-7728-08d80a2d48a6
X-MS-TrafficTypeDiagnostic: VE1PR04MB6511:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6511D3EE6938E1EDBE325DB789870@VE1PR04MB6511.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:119;
X-Forefront-PRVS: 04267075BD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xsTQ/OSsLxKpdwqlXLLCrcB//dkCufayHpqpHehciwr9SR5GVR9VQ2KIRwvvuQwC1yubk3fKoVpiQIlL/m102aPTNE5ZXJrP4EEPs0k/eVt74uavJd/ofVcQZxi724mWEemzyUwVEXx9LtI+rqzUnZL6BxF100tHjB2uKKBDvtNq0Ug8OivCt5UrX+yiw4UVVM1OoWJDsDRh6xTPSUlDjWF5reWlMcFaw6pYtmGvrlzsnFHJjeH4hJhCAj/9Kp0jXtUdcj0GZhfdzSFZV7rv67VgwfT5TEBt/1eQhKns3QTGtksLQn+sdi1QAztvaEDybsxSaB58ZYlSwXkdsV3gVr3KLms2DTpR2aWRWbUSmhrufP4BgKqUJHPXYBZ3vMRB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(366004)(346002)(39860400002)(376002)(86362001)(5660300002)(66476007)(16526019)(6506007)(66946007)(956004)(6666004)(2616005)(186003)(36756003)(2906002)(7416002)(316002)(66556008)(4326008)(478600001)(52116002)(26005)(6486002)(6512007)(8676002)(83380400001)(8936002)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: hyukN2eJkaNeplzcILKDE/EYI2KfNsLewCuCpXYT8AxOvSRy69cfo/HF/3idrBQhcvGqJEqETYDCzAGtsH27tAubGvzY2nhu+JQJBWnqGzD3y87BN2jFS6owZzhaojc2NQFaaw2fH0mlMexp+0ucV2SFF76HJhNKhwEf/6NKqaoAlA8FDXCgdhlOcifwp/xlqaXX9SeBkkj/aY4YuU7dKOMwIsYBcKrQVCaH+o7uz2O3u2Fiqy8G4iCESOFaSuGF9wy/06Vcaf4RuNUfGxqfQWJIRSBHGCEImmyEfk/x4d6z6c+6DUs761jSnro6OPg1FAY2N4cY2bgvdC6YRQPAP5Gm2NZIckdI8DL4/gLwsIThLFs90xkSFoxEO6CpFgiHIUKffs9d1cdCnZHe3KDNQTnWeC08Zzf08IMeaUVYg7k3Fs123mT7dyuvJU3aUHYbf8BgDvO7nQFx4Oej4gard6c7D1AxGsLiqKzch9AzFFk=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8c30ea2-6689-42c6-7728-08d80a2d48a6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2020 15:21:28.3898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 852c2YOqcAMSgQizp4TfxcwAY49FQa8+lId8e1kDSXH0J38/DOzC7IHZiHh9+5rAelR14SneWGcyjWiWsIjYsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_082135_694594_4EB08A81 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:60c listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit ad0d92d7ba6aecbe2705907c38ff8d8be4da1e9c, because
in spi-imx case, burst length may be changed dynamically.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
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
