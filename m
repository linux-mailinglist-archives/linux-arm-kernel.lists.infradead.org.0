Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9A31B97A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 08:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5r2h/8Kz3vmvCb84+2hc/Gcs5roNbr5LeSxOBJiDAw8=; b=WWGivp06MjHl9M
	x4sW4JxEdEeaxcBk03AIXl+S1zSbdqwVqzlnu59aNVn2iWbWnnnYQcpjbWRyPeO7C+6B/kpCowySO
	0GpSzG7cstey10NlwQip7zVQr/0eNFiUcqOviDZxgfpoIlhDKYcRGSXKdVW4gc/b+T3x1P08nLRh4
	fPOJ2YVXs9qWrwhiDKsBB5ml29keMd3686MRh2e7XkpK0H9xRvA/9EMAl4SggP4t3Jn+AxZktKyqO
	ivMIWvnL0lY49dmCDFnHg5Tv7dZWfcdCVBvQomvL9jb1BPuxFBs5/qC8m4n8IOhfzLRNOo+PkcTft
	7b5j+2ua73EUmrmNmpeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxUq-00065P-0e; Mon, 27 Apr 2020 06:44:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxU2-0005c1-If
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 06:43:17 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03R6cFpq024199; Mon, 27 Apr 2020 08:42:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=tCfxJ7AYA01s98UE4V0m7JDke4Id5IZKext6NMmW5s4=;
 b=kIGb4VL+fyuhhQWMEYWLDDOnc4kVtN9LNk+6HKks+iQb5vaDh1XQhetQ0NkZZVRzzQiS
 HdkxMrvx+iFBO1Z93KBwZXFRf9cmlfNja7NaaMTlvuiUmMnBIiXwjuG5yGIAIhRw5WaU
 4ItH9on/vWyzuhF8eTD4nwTe3F3fkQbep9DEMKg9rp9MXjHwI5CBKTd52T2E2StxZGhV
 NsGM4SsVdQDyRK7xtMy4X2mRUK/xfv6zDvjyq409TidiDLoS1hxhloZMNmEO2yJGv12b
 jxK9oRDsfpxM0dRwqzrHv2jlJ743O9Y9gFkJ4F4q2bg9jDYrtQkjEFPTrrVIujmvcCWd lQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhjwg3gr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Apr 2020 08:42:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 47134100038;
 Mon, 27 Apr 2020 08:42:56 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag7node2.st.com [10.75.127.20])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 34F5921F67A;
 Mon, 27 Apr 2020 08:42:56 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG7NODE2.st.com (10.75.127.20)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 27 Apr 2020 08:42:55 +0200
From: Lionel Debieve <lionel.debieve@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, <linux-crypto@vger.kernel.org>
Subject: [PATCH 1/3] crypto: stm32/hash - defer probe for reset controller
Date: Mon, 27 Apr 2020 08:42:24 +0200
Message-ID: <20200427064226.6991-2-lionel.debieve@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200427064226.6991-1-lionel.debieve@st.com>
References: <20200427064226.6991-1-lionel.debieve@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG7NODE2.st.com
 (10.75.127.20)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-27_03:2020-04-24,
 2020-04-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_234314_977291_573D625F 
X-CRM114-Status: GOOD (  15.09  )
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
reset controller device is registered but has not been probed yet.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Reviewed-by: Lionel DEBIEVE <lionel.debieve@st.com>
---
 drivers/crypto/stm32/stm32-hash.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index 167b80eec437..fad6190be088 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -1482,7 +1482,12 @@ static int stm32_hash_probe(struct platform_device *pdev)
 	pm_runtime_enable(dev);
 
 	hdev->rst = devm_reset_control_get(&pdev->dev, NULL);
-	if (!IS_ERR(hdev->rst)) {
+	if (IS_ERR(hdev->rst)) {
+		if (PTR_ERR(hdev->rst) == -EPROBE_DEFER) {
+			ret = -EPROBE_DEFER;
+			goto err_reset;
+		}
+	} else {
 		reset_control_assert(hdev->rst);
 		udelay(2);
 		reset_control_deassert(hdev->rst);
@@ -1535,7 +1540,7 @@ static int stm32_hash_probe(struct platform_device *pdev)
 
 	if (hdev->dma_lch)
 		dma_release_channel(hdev->dma_lch);
-
+err_reset:
 	pm_runtime_disable(dev);
 	pm_runtime_put_noidle(dev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
