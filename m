Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E8B181346
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnbJNTlSmYM6c18lMM4bytgXZhkIyNIczKBq63BUVrU=; b=hkgUl9+cyDxHXw
	YMMsEI4p3ZueiJ3h0ZP/EdAAG9Nw2ewzIosm6Fx/V97qXUJmfRr5mbsmJjEkaxKLauyDgfIPs0cFO
	cIlcknHTZUFimqP6GKIL1Erl6fOhLvDG+ernb0E8p0bA/N6PuriDnQp5GvguspXVY98nGmUqYmUVc
	fth/W4UgjrPqNR1FvwwbNrWJCHyMkVluHOpCtadMmUlorCeVe0amglbipxDbqfYUQRfyGuJB863we
	ULcNsHQmRUnAr+OgmRvaU+W0DQUesV0dk/KT8fi4CGcDrT5esqzmZPLC1ObSt6Hfx7K9Q5t+6xjeG
	KcMqKv4z0ocClDFGzBqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwr5-0004nC-Vj; Wed, 11 Mar 2020 08:36:43 +0000
Received: from mail-am6eur05on2073.outbound.protection.outlook.com
 ([40.107.22.73] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwpz-00043U-WB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:35:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eEUDeU9F9VstP0fGcUQUS+6Al6AWlQ/0mDmG8jb0o5yDBW2BmPIpk4KT61G3iPmsXREqiwp5dQcDcaiGIDBScpzeBQVyv32L6tQLJHcQ8twvqwAHdPaY6zXYvMNoGX2PNZ2tQUJ6T1dNsYT+2zZZ5w8D2a24NGQivUSC55OvtyGPEynFKWulXUCNKncNGVGGNcV1fDev3YVKkVpkgJG3RJ5pOhqubBP5d3SPNGGPmrkot0pslH7FfQgqVoTLv20W8H3QZJ9TVGb+kwi9d7nvYln7LIvC3eYogvPtfwvnBYujIxj6OW4pznNg723HboX1Wkp6KpS3vaCc1ypnvrTbGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tn1BNC+LM59xHK/Thlu53S9HVa3f5XGkE3C09QiwNLQ=;
 b=QhLcEy9mEKwwVmXJV3EsIXASSmsrfPmPEb1gypb/w2qUXyFrDWLDYhHm8k8RUoGffQvuL//Ok+0KW8K3U1dnyt7ha3XjIPKzR0QJw/1+KuFgTtPbWD9uFPqlKla32Luskt2fXkXJAzeeDOtT2i9j9/2nxocB1/Xn9oP6H8QN7SUXy0L4+iTedkvVILTXYFCpHbQq4lDmPBDr9AQ/9Idl60s5G31qxZhScA4CeIHpriyy5GT6t/pNZSUyNUwHDoQDZqYBEopIkuwmFt0umRUq3viGz/kkv9NNfe9ZOLct1FR0H+bNnipEmNcCCxpKB4OjlXoIqTtwgi/7azVNbJO6pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tn1BNC+LM59xHK/Thlu53S9HVa3f5XGkE3C09QiwNLQ=;
 b=F57HeN6xjNKeJwOQ1v/P4Gr2magtU4mgwK2dgX2YgAaEJyYUN8Q15/ZSW0iiXKbOUKeeI1vuPdQdk1q1d514YSG+LfpKP/UztnG6tx7YKC5AIV9vC2NMlY2kN1/Rs/SzZF+QMXR97pAIimRYUdf/l5u+ne/in97Vk+iNOUIU8/E=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6702.eurprd04.prod.outlook.com (20.179.234.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 08:35:32 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:35:31 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 03/13] Revert "dmaengine: imx-sdma: fix context cache"
Date: Thu, 12 Mar 2020 00:36:26 +0800
Message-Id: <1583944596-23410-4-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:35:26 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a9ec300a-ac6e-4bda-d6a7-08d7c5972906
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:|VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6702D8D0C43E52904BB0628A89FC0@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:59;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(4744005)(956004)(6486002)(2616005)(2906002)(7416002)(66476007)(66946007)(8676002)(66556008)(316002)(86362001)(52116002)(478600001)(81166006)(6512007)(26005)(81156014)(6506007)(8936002)(36756003)(5660300002)(16526019)(4326008)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6702;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EnqZeBkUO+hYpLdAfOVHe4cLhGGjlxTS80Le2noZjv9cZEPj/MSa3HfUse+jLmiQsWbbeM3g2CdAN55t1+0W/M6eUnrLKgKBh2hUOsF+FBpK6w4x519Z7f9AWCfZl0BoXai5agI65Zh35tlsUtmckZ7DNJaV9XyBrKeQEyGcLoZN7rTxDRcIn21O1FcF0zT0+NzUEFp6SR7duWHSXA98kZEY0rwmGsW4gqoFkG8vsxIS6uZGGRQHOOicsP2bUJ90UEnfuwl0e/D1F4MBq4RQRR0PuXoG7PgX/7G3dWh8wc/rreEOkUbhsQozmV2Nenu9w/JTedc0LWHNgjL6b3C9XXsCbCh/DFEG/g/vLGLWMIlT/0loxE1izPMhEgI43D4H/h2JOQuGO5XI3uUZvFeUpCiPryib9aV3e19A371uhvCanav3RINpru/wSOhqtrgFQaL6A4Y829eSiT2BIHyYsyc7VAlsjmhvQY9B20aldqzJftieM9ciGZEgnj7dLu/b
X-MS-Exchange-AntiSpam-MessageData: wu5fDJhufkIf9YtTTtlYfRAV5DnWUaUawpUIgrGlE98jrkhilA7t6BcqcDWQalLCmE1vHot1QOR8rMI29yNlKEU5p076c2G8CYd0nfFk7SlYrchB6APCV1aPPI20hXqRXfmwf6vAvEG/QT2lZqq9NQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9ec300a-ac6e-4bda-d6a7-08d7c5972906
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:35:31.8260 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rTsx2X9syqSC8yPCSXW1E2XiHaqnEKu0JcI0nG7OWdRi6w3L6gt+rZ4vr2ikx8ExMcOpFguC3EiWkJzVKXz4BA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013536_130913_E815AB65 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.73 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit d288bddd8374e0a043ac9dde64a1ae6a09411d74, since
'context_loaded' finally removed.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/imx-sdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 4d4477d..3d4aac9 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1338,7 +1338,6 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
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
