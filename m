Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17E716E961
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zOIy3qIR74gGpP8jC9zdnTp6h7Yy1YzSl9aYzghCMnY=; b=Z2jrvUocn+XHqf
	AYNANZ4OMiRnAywMwImgl0U40jMcfNmfVg1FoqV5PbZcmin45G63nfmhtijuv9utNYbzvRCFphLai
	25Q6wEQvz6wjSkCJotH8etav03Ap/TfOKRAvHCjrQx+0RqrWiWiyGwoMM9oshpDf9OUH960/Fhqxe
	AkrjrFMX31o2MQfNNS1PpgWFyCyooFsJqeu91jwSEkAsTRpqnNSnz7NZYJkDtTtDyK4njvflrtGsT
	Ml4H8B0iZcnH1Vo6TyJPZDUPUZ2lCIwf1Ick1YGWHMdoS/yZCM5KAan9qAe18y57o7GCSANjBBzyM
	bZFXP9ELr7kPGBxPVJag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bnH-0006WU-LC; Tue, 25 Feb 2020 15:06:43 +0000
Received: from mail-eopbgr10070.outbound.protection.outlook.com ([40.107.1.70]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bn4-0006TK-S8
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:06:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROmbGCyegoAVu+nh5neyEXqFeFIYIWSUB2s2JliRg0LlCjzHLDGM+twsd4vo9pfQbCmZlz4QxEKgu1CFwXQcNSGpbB2lP+6VlxYFd/aGZXwCKeWElGZElRpelE9P2DepQ90V36bL/K3wTIThQ/zE5rIE7LMIujeZfchJP5TyfC+ZbszjXb+dEs5vcQ4IALVwDWVSTZ7NvGavXcpn/jIl19TEnzMCRCi0yf+xBJKxcqWzlcfy7QGfE/4/0SwO+wYG7P8pUlh1KFDpQVOsLjGgFDt9WJUB6OWWMLlWYDVamq/M3qmmBgouqXFDtentDchxNzslhYQoUqbhPO/ZcjQK3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eBqCmOeixAWzJIuE2AMrwhb1irciOUUFnofOCOHo9GI=;
 b=MdiuJvv5I4f3AHeXZmKmnULjvyl/KYSHOYTxzviH670QdQAEOSuE8h92a8f8uUI5rn9JC/LlwtVZWgrK8l5e7id7N4PlyHQYqH+guToxX+yRHAetoFG2I00Aw+WDTQztrUg+WEYnJs/HGiZZx5MOlxLMuUdrpFdjOWuKcP7l+FBL/qVQYp0LGxR/Kz0o7ppkCN/fZRJP7vrTBYJEI+O2HNXEE1yi/heVVx7m1BDvTWEdqjZK4KnjqXYFCyVh12tzsWDEisnT5Cl3qSCAKEhNrXbEcKj7rA5V2fqkksFpYXOPx2+SwFoBH3eDfx15Y99BolATtdT2yHA6F89ZmOXqMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eBqCmOeixAWzJIuE2AMrwhb1irciOUUFnofOCOHo9GI=;
 b=i8mWQUOL9Qq5hsINbNyAbrDFn6cK6nf+LlNtuoROG4SCFOGEiJcpkpcC2ii4Lf/MKpPhN0iJb56yqdLLegFEuO/B/k/YxKg7n4ty++aerh0Kklk37V9qNHqNzTZpJR56OiW5IOBT1TIijrp84EwQI+QjMFtTGesZ5c4aBpLzO2E=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=dragos.rosioru@oss.nxp.com; 
Received: from AM0PR04MB3970.eurprd04.prod.outlook.com (52.134.92.143) by
 AM0PR04MB4308.eurprd04.prod.outlook.com (52.134.91.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Tue, 25 Feb 2020 15:06:24 +0000
Received: from AM0PR04MB3970.eurprd04.prod.outlook.com
 ([fe80::799f:d3bb:67ee:9544]) by AM0PR04MB3970.eurprd04.prod.outlook.com
 ([fe80::799f:d3bb:67ee:9544%5]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 15:06:24 +0000
From: "Dragos Rosioru (OSS)" <dragos.rosioru@oss.nxp.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] crypto: dcp - fix scatterlist linearization for hash
Date: Tue, 25 Feb 2020 17:05:52 +0200
Message-Id: <1582643152-17278-1-git-send-email-dragos.rosioru@oss.nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: AM5PR0201CA0005.eurprd02.prod.outlook.com
 (2603:10a6:203:3d::15) To AM0PR04MB3970.eurprd04.prod.outlook.com
 (2603:10a6:208:5b::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1664-206.ea.freescale.net (89.37.124.34) by
 AM5PR0201CA0005.eurprd02.prod.outlook.com (2603:10a6:203:3d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2750.18 via Frontend
 Transport; Tue, 25 Feb 2020 15:06:23 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fa1806e6-ddc2-46d1-e419-08d7ba0447ea
X-MS-TrafficTypeDiagnostic: AM0PR04MB4308:|AM0PR04MB4308:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4308277C950E64FDE2BFDC68DFED0@AM0PR04MB4308.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(366004)(346002)(136003)(189003)(199004)(81166006)(6666004)(110136005)(66556008)(478600001)(2906002)(66946007)(5660300002)(316002)(6506007)(6512007)(54906003)(66476007)(52116002)(2616005)(186003)(26005)(8936002)(8676002)(956004)(16526019)(86362001)(6486002)(7416002)(4326008)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4308;
 H:AM0PR04MB3970.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kKk3qRlsOSgajc++4BTnxKibk+NLoodS97VZ4CLxUcdgZlNpVuQRU2ziGt1wNNtVPNDC2Uw7zJz/mfEIGNrTiKqJYS124fdw1Qq8UvyKRYj1fdX9wtD7T4EgOEUV6SIjakhYCSXikt8jak0ZcVe7J0fR3btkM3qtacRqZP8V6NrtqFXBiEZ6oJqwb20ECnO/qXkO8PPDFzfkUHoSjQnB/cCafwOhzxUnUeHaIbsglY3UlkxI7TLBtYynhf5Q6OVgl3Q6LUFYkEfEPgS8Y5+MGWHhHV3sdbEMzBqgqBe3ACGmrfWtmLhuaqKjHrTB8mO28gGsHjqksJpOi01UZjA9brwi7t3Y8RpIvTVRwvIaLovCxMEcccsRBv9jmLqeSqXc5drUGJV1Ex+B/fLapPcmGFVwFlg6O00wlrTt20R9TFzy+dbrMUUYWHGLCjSgzOVr
X-MS-Exchange-AntiSpam-MessageData: ZoFN2rve7HI5K+IuEJntnI5Dg94dmnu7Mkp3BIv5bSfk8jdBV64+DuRLTSKdGRM7OKCXzLBq0/+I6DM/fRNISlPlX+3+3U8zHX+5lXzlMqWTSLErj7rIlHflM0i2dB6wiuLH2SDr5J7xs8u/wfaDvA==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa1806e6-ddc2-46d1-e419-08d7ba0447ea
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 15:06:24.7415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jc9+2itHUxVYdzm0uoqcP8EZdZ49GJaoPyGCWI6KGuek01BfMO8kdYCASKTT22u0PEpmTOv59jeelBORbJi2AQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4308
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_070630_936892_6B1A1463 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marek Vasut <marex@denx.de>, Horia Geanta <horia.geanta@nxp.com>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rosioru Dragos <dragos.rosioru@nxp.com>

The incorrect traversal of the scatterlist, during the linearization phase
lead to computing the hash value of the wrong input buffer.
New implementation uses scatterwalk_map_and_copy()
to address this issue.

Cc: <stable@vger.kernel.org>
Fixes: 15b59e7c3733 ("crypto: mxs - Add Freescale MXS DCP driver")
Signed-off-by: Rosioru Dragos <dragos.rosioru@nxp.com>
---
 drivers/crypto/mxs-dcp.c | 58 +++++++++++++++++++++++-------------------------
 1 file changed, 28 insertions(+), 30 deletions(-)

diff --git a/drivers/crypto/mxs-dcp.c b/drivers/crypto/mxs-dcp.c
index 435ac1c..d845302 100644
--- a/drivers/crypto/mxs-dcp.c
+++ b/drivers/crypto/mxs-dcp.c
@@ -20,6 +20,7 @@
 #include <crypto/sha.h>
 #include <crypto/internal/hash.h>
 #include <crypto/internal/skcipher.h>
+#include <crypto/scatterwalk.h>
 
 #define DCP_MAX_CHANS	4
 #define DCP_BUF_SZ	PAGE_SIZE
@@ -611,49 +612,46 @@ static int dcp_sha_req_to_buf(struct crypto_async_request *arq)
 	struct dcp_async_ctx *actx = crypto_ahash_ctx(tfm);
 	struct dcp_sha_req_ctx *rctx = ahash_request_ctx(req);
 	struct hash_alg_common *halg = crypto_hash_alg_common(tfm);
-	const int nents = sg_nents(req->src);
 
 	uint8_t *in_buf = sdcp->coh->sha_in_buf;
 	uint8_t *out_buf = sdcp->coh->sha_out_buf;
 
-	uint8_t *src_buf;
-
 	struct scatterlist *src;
 
-	unsigned int i, len, clen;
+	unsigned int i, len, clen, oft = 0;
 	int ret;
 
 	int fin = rctx->fini;
 	if (fin)
 		rctx->fini = 0;
 
-	for_each_sg(req->src, src, nents, i) {
-		src_buf = sg_virt(src);
-		len = sg_dma_len(src);
-
-		do {
-			if (actx->fill + len > DCP_BUF_SZ)
-				clen = DCP_BUF_SZ - actx->fill;
-			else
-				clen = len;
-
-			memcpy(in_buf + actx->fill, src_buf, clen);
-			len -= clen;
-			src_buf += clen;
-			actx->fill += clen;
+	src = req->src;
+	len = req->nbytes;
 
-			/*
-			 * If we filled the buffer and still have some
-			 * more data, submit the buffer.
-			 */
-			if (len && actx->fill == DCP_BUF_SZ) {
-				ret = mxs_dcp_run_sha(req);
-				if (ret)
-					return ret;
-				actx->fill = 0;
-				rctx->init = 0;
-			}
-		} while (len);
+	while (len) {
+		if (actx->fill + len > DCP_BUF_SZ)
+			clen = DCP_BUF_SZ - actx->fill;
+		else
+			clen = len;
+
+		scatterwalk_map_and_copy(in_buf + actx->fill, src, oft, clen,
+					 0);
+
+		len -= clen;
+		oft += clen;
+		actx->fill += clen;
+
+		/*
+		 * If we filled the buffer and still have some
+		 * more data, submit the buffer.
+		 */
+		if (len && actx->fill == DCP_BUF_SZ) {
+			ret = mxs_dcp_run_sha(req);
+			if (ret)
+				return ret;
+			actx->fill = 0;
+			rctx->init = 0;
+		}
 	}
 
 	if (fin) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
