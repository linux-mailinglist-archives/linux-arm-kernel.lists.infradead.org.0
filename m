Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567C41CD560
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uv6H0cQ1k4MYnJckhP9+aZRzHU/Q4bYm8FrCjkzndQM=; b=ih5lSvWnUc8S9v
	IUnqVsklCFsAk6Ltdh3gfsuzfaZCBUMljDDH8ykJ9jn3NwitinUhui+4CpNzlCAL3qFK19NGN5SqZ
	fT6fLEpq/OWkcR85ssj6n6qbnctz8+CHUEX8aEyc0/hqhR2iUNEVpC5HR3qno6nCySxkHCq2wN+H2
	DN2J7+5IDfz5A4mOO6fhct7kEVFNc6exRzIYSMMUohTp/7rXQKyB//argFiVZEi7ppOVIR531aKtc
	30t95h2uSohtKq5ajjr6s3QZ44YxMmlSPIlTnlil8SLxwMvQupkPsfXuYPD/e4l0CzQq4GubsuizJ
	HKrPbGwEeBXTK9YCzepg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4rW-00008p-Ik; Mon, 11 May 2020 09:36:38 +0000
Received: from mail-eopbgr10045.outbound.protection.outlook.com ([40.107.1.45]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4oR-0003If-M7
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:33:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=egHAFdbAOEdrZ7eam8QDOxaKgoDY3TOs9amrxo6E5c5ymOm4ss5hn/qMbiTW6b4XDEP5id+YVssMZhO11+x4ZpNbbpy3LZMSQp56Hl1L99GxTPRx2QUGTysTmWeEN3b9WxFT5HIi21AQTmlwBcSpSCWgnmyl6uAep3Cb7jmH7IN5nxElts8SgwjjPFtOo+S4Ecddbk12HR0mmVmf6Zf/faOoqrS4J6JUMxWWma6w4u2mpp613GQhjM+mCYThz+nHOs+mZH/NRIhYehNa3Ni5TvB+a7OKcE7BV79JvCkpm2W8ZfrAQA0DnqJfmcE0N0yUI8vNze8fgSuRzuFMBwZ61Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bEsJd5W8L4lcrfETj5LCErO6H6I6ixkqKq0GzEKt13w=;
 b=j/3e2QheU+XJ/ZeiuA7J8wfWwGIWr27R+XVwfG4zLr3Dgv7zhMvO03w7N89aLDrzOoPPw4l/2MgPwkiv9UuPVwEXPghaxmu/Eex2ZX/+R2q2ZkMDmbO5/6RX9CwNoDbKZvRa7L/jatSYN4LsIOfUlYj4BeG82aHoodaAIymBQ6nSVMIprR+59ipOsIEmTbENGPJQ9gneQ0Zf0LDay1nh68dHSR4XyGA40QclIakmG5z2lIdLt5ufJ8vEdpt847iGDNpMpm+EFXrH1/wX5EMO5XN+6JRhv9sdxx/nG41NgEY5m6AYXOboWZzaWSZvDbqSLLvsdiW9fqKm/DrOmLdP0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bEsJd5W8L4lcrfETj5LCErO6H6I6ixkqKq0GzEKt13w=;
 b=Pet+sTA/eNnhpbOejg+SiQgf7yV6OdLW0+8q44qsSYlCLQl5YHk0CP1BTFg2BaxGRDlWUfNmaOnuf3mV3ZzYNowZTx0+gkAktD67oCbUIulyzNIliGvc+9MiYnp605N5gDEh1vEgLHIObaBdR2YZUx0jrv2Az4Jorzkk5x+8oMo=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6733.eurprd04.prod.outlook.com (2603:10a6:803:11e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Mon, 11 May
 2020 09:33:24 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:33:24 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 12/13] dmaengine: imx-sdma: fix ecspi1 rx dma not
 work on i.mx8mm
Date: Tue, 12 May 2020 01:32:35 +0800
Message-Id: <1589218356-17475-13-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0141.apcprd06.prod.outlook.com
 (2603:1096:1:1f::19) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0141.apcprd06.prod.outlook.com (2603:1096:1:1f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:33:19 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6463945c-ec06-4cb2-f647-08d7f58e5a28
X-MS-TrafficTypeDiagnostic: VE1PR04MB6733:|VE1PR04MB6733:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67337A7E985B70C9F2676CC789A10@VE1PR04MB6733.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YEMKt1s1fwqXUc1XY1lodP9oSgfB3/e/PDGT3Hl74yybBYzvYo6c/GXrpC9Xars+EbixzeX4YTMAWepRBMele0K+bjnpXKIXHU8WiePJOkwxlCHh+K9AMmM387t7gChA0cc1hCU/gTP5nO1vMXRshfDUwFU1BjaYg7bmH4A+HYHf2o9kbiUGXM82mKI6i3J/W4rUriFRI+4zjFcoVW9SSBgdgeyqZ79fVt+hleI/FpdzQlbN/Qh/KUCrSgXRcZzqNKKQnn0PCR5dC7TrhhPxHXyuDIYTn+JyVE+OccQWod+9/UMaIMVA/5U0PX9I/jB40XKLi5uXo1iTZy58uCjGCN9E5tAfH1wR7DtdTBlNcB88a/mdZFdUUBTHGb+OgeZ6OE56LRPsR0q9R0cIkOs5I0No/86yeWkSD+z9dTmosRaqrSdv68Y4vxbFXiQvfevaafbV0m/H2U/0V35Ohud/vsComOSZXKIL+BvbdOw3FCmN87pcoKnxNBfoG2v3OQ0Nndxx2+30A1I7ZhNOSiehJw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(33430700001)(5660300002)(66556008)(956004)(2616005)(7416002)(4326008)(6666004)(52116002)(478600001)(8936002)(86362001)(8676002)(26005)(33440700001)(66946007)(6486002)(6506007)(66476007)(36756003)(2906002)(316002)(6512007)(186003)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: CVTXYoYqhQclTzxUq5atAKQRn35mtMXE8xxjHQ1ce08PJvw78Cj7vowed/oosP2FIwGKB2/GkfNBbNpn2/RwklHoDlTlMIOwqOi/qB7gOiZbxGwZRto6pUZymzeE7t93c3eS6wpMak+TJDNSj3cgEz01w/hiNyNg47E0VJH+H6bDSyYCfSHnau+sAKa3Bt9Di9mZBna1Sm0wcfahurn7j6po2bzDyhywsDE60Zq8WQqpn576QJxzhw0oX06WKrOMOnFKuiFsd0o/1zmpMwotYmC7J437U9ToYg0JUQOEKyewK3WtuNtffJCix75ak4YVmRUQoDXmM7whTAgtMHfN+9N4i4hccdAj3uOo1QnqlaMcwWPOBxSKlmR9pLMwzWfa/zatf3Dm4aPdQKitatAFnPnEQaN+BAtXsXRHSroMtylgWSShOLi5QKE3SVmuGCo5dgWrCfHTIBD08FJLTorbkoADNfr0yvphK0QLL9ijMSI=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6463945c-ec06-4cb2-f647-08d7f58e5a28
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:33:24.4588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bRhRm3tigLzo4+8gYohlpH3rkD2rJSqfW4mTwSzdLVoSZLaajH53QPtEldKK/4Y3idfflaNM1Bdn7tgjmQ6jzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6733
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023327_765776_93F303B0 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, martin.fuzzey@flowbird.group,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because the number of ecspi1 rx event on i.mx8mm is 0, the condition
check ignore such special case without dma channel enabled, which caused
ecspi1 rx works failed. Actually, no need to check event_id0/event_id1
and replace checking 'event_id1' with 'DMA_DEV_TO_DEV', so that configure
event_id1 only in case DEV_TO_DEV.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 22f9f20..9d49aaf 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1183,7 +1183,7 @@ static int sdma_config_channel(struct dma_chan *chan)
 	if ((sdmac->peripheral_type != IMX_DMATYPE_MEMORY) &&
 			(sdmac->peripheral_type != IMX_DMATYPE_DSP)) {
 		/* Handle multiple event channels differently */
-		if (sdmac->event_id1) {
+		if (sdmac->direction == DMA_DEV_TO_DEV) {
 			if (sdmac->peripheral_type == IMX_DMATYPE_ASRC_SP ||
 			    sdmac->peripheral_type == IMX_DMATYPE_ASRC)
 				sdma_set_watermarklevel_for_p2p(sdmac);
@@ -1351,9 +1351,9 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
 	sdma_channel_synchronize(chan);
 
-	if (sdmac->event_id0 >= 0)
-		sdma_event_disable(sdmac, sdmac->event_id0);
-	if (sdmac->event_id1)
+	sdma_event_disable(sdmac, sdmac->event_id0);
+
+	if (sdmac->direction == DMA_DEV_TO_DEV)
 		sdma_event_disable(sdmac, sdmac->event_id1);
 
 	sdmac->event_id0 = 0;
@@ -1651,13 +1651,11 @@ static int sdma_config(struct dma_chan *chan,
 	memcpy(&sdmac->slave_config, dmaengine_cfg, sizeof(*dmaengine_cfg));
 
 	/* Set ENBLn earlier to make sure dma request triggered after that */
-	if (sdmac->event_id0 >= 0) {
-		if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
-			return -EINVAL;
-		sdma_event_enable(sdmac, sdmac->event_id0);
-	}
+	if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
+		return -EINVAL;
+	sdma_event_enable(sdmac, sdmac->event_id0);
 
-	if (sdmac->event_id1) {
+	if (sdmac->direction == DMA_DEV_TO_DEV) {
 		if (sdmac->event_id1 >= sdmac->sdma->drvdata->num_events)
 			return -EINVAL;
 		sdma_event_enable(sdmac, sdmac->event_id1);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
