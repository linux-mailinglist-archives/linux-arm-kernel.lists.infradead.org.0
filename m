Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AB31B97A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 08:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABe0+Imjv+kl0XqJcAGQOTw+BKP/RlMl2MAhp6nNstk=; b=iUWNr9AwmKD6kR
	FkPLUFfJ+V5ddHFCNtA9/PjB62dDQ8Y/ePIzh6bjss7txmUGfe31NbK431vsf4mRVSzwQpU1Vb7Nn
	AIX7Lzn950+/L/MvQW0bN2lnL4gPQI6mUDaDPA0jbsu9zXwA1DmVIto5+2JNkmYIqa3+1woKX+7bL
	r9SqHk4DXdALVmhJACobQgJt3ehteWeXaoF0aTFOonkwCvBfjNcd/ZHIN+ArGzb8XnCUMT0CGHCHG
	R0VPMYYe4JwCmeekSqZqHQdLYP2ht9tpRvrW/y0hmRBW4BM2O17J54h/03xd0rCy67eWcVbbLDQlg
	lCWnAZB5lNi1pbaU9aJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxV4-0006M0-Ak; Mon, 27 Apr 2020 06:44:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxU2-0005c2-Hh
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 06:43:18 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03R6cO6E024040; Mon, 27 Apr 2020 08:42:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=qTrXLMk8kkMPS+GB6wCw5fDokR6i+JUeBx7KNCnu20M=;
 b=JVZbmY8YF3kq5dC1pmWwppQKYL0W48nwqEgXn5vsvIbeHhEc+A0W+68/Iw7C9bKgryM+
 VRPjL2cVSvkuQso/VoTVX/jGsDMbWMTzC5d7oCRlzHwmHYnkEnZvXwoTDJJcj+ryLAcj
 mor5PXc40TgpjAr5K6XIB9Uux4PMFo6yE1eGG6nzCq9zsAB5Uy6NSGDug4E2BgYiFH4K
 Ns7gy5M2cR/h0SsBslll6Z9Dg0Kt1ZMzpxgwOVnEmnio0O4Rk3Iqo052ZfWAETTAW5gj
 rDb4ov6ldGUJ04MUSwfEBc9tlkk17X7eR5MZvRI/PRmbRG6VkYAgFYE8bdI6ifykuE5M 3Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhq5r2h6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Apr 2020 08:42:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6E980100039;
 Mon, 27 Apr 2020 08:42:57 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag7node2.st.com [10.75.127.20])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5F18521F67B;
 Mon, 27 Apr 2020 08:42:57 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG7NODE2.st.com (10.75.127.20)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 27 Apr 2020 08:42:56 +0200
From: Lionel Debieve <lionel.debieve@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, <linux-crypto@vger.kernel.org>
Subject: [PATCH 2/3] crypto: stm32/hash - defer probe for dma device
Date: Mon, 27 Apr 2020 08:42:25 +0200
Message-ID: <20200427064226.6991-3-lionel.debieve@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200427064226.6991-1-lionel.debieve@st.com>
References: <20200427064226.6991-1-lionel.debieve@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG7NODE2.st.com
 (10.75.127.20)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-27_03:2020-04-24,
 2020-04-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_234314_974854_7BF677E5 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Change stm32 HASH driver to defer its probe operation when
DMA channel device is registered but has not been probed yet.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Reviewed-by: Lionel DEBIEVE <lionel.debieve@st.com>
---
 drivers/crypto/stm32/stm32-hash.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index fad6190be088..0d592f55a271 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -507,6 +507,7 @@ static int stm32_hash_hmac_dma_send(struct stm32_hash_dev *hdev)
 static int stm32_hash_dma_init(struct stm32_hash_dev *hdev)
 {
 	struct dma_slave_config dma_conf;
+	struct dma_chan *chan;
 	int err;
 
 	memset(&dma_conf, 0, sizeof(dma_conf));
@@ -518,11 +519,11 @@ static int stm32_hash_dma_init(struct stm32_hash_dev *hdev)
 	dma_conf.dst_maxburst = hdev->dma_maxburst;
 	dma_conf.device_fc = false;
 
-	hdev->dma_lch = dma_request_chan(hdev->dev, "in");
-	if (IS_ERR(hdev->dma_lch)) {
-		dev_err(hdev->dev, "Couldn't acquire a slave DMA channel.\n");
-		return PTR_ERR(hdev->dma_lch);
-	}
+	chan = dma_request_chan(hdev->dev, "in");
+	if (IS_ERR(chan))
+		return PTR_ERR(chan);
+
+	hdev->dma_lch = chan;
 
 	err = dmaengine_slave_config(hdev->dma_lch, &dma_conf);
 	if (err) {
@@ -1498,8 +1499,15 @@ static int stm32_hash_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, hdev);
 
 	ret = stm32_hash_dma_init(hdev);
-	if (ret)
+	switch (ret) {
+	case 0:
+		break;
+	case -ENOENT:
 		dev_dbg(dev, "DMA mode not available\n");
+		break;
+	default:
+		goto err_dma;
+	}
 
 	spin_lock(&stm32_hash.lock);
 	list_add_tail(&hdev->list, &stm32_hash.dev_list);
@@ -1537,7 +1545,7 @@ static int stm32_hash_probe(struct platform_device *pdev)
 	spin_lock(&stm32_hash.lock);
 	list_del(&hdev->list);
 	spin_unlock(&stm32_hash.lock);
-
+err_dma:
 	if (hdev->dma_lch)
 		dma_release_channel(hdev->dma_lch);
 err_reset:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
