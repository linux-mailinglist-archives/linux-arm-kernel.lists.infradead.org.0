Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EDF59942
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufgFkWRc1brDJEUGZs72WZu04w+RLuw5FqZWwpYJ0+4=; b=Ct/WBSAXC+hSsK
	5eNwBo5q0uO7oKtWhfioZxqYqDgrzBEroCc84oge2qHkTCEpBQykBu9naKM/U1CCoyIJe9LbYMF2u
	EcTeka5falK8B0FjOSEy4QRzyuSUc31PmmxlV/d4bHb8OVqTt6qZR+nxplJMkOfkX7NJwtJU+1B34
	4n+uXg1xOZSUTCR8Zo/tlGGgtwOT1raBS0m9aqYwU4kefnZ8bm8prfDyhNP9hHLhmWRquNyQthGl0
	9a78fPE5/684Z7x5nfXClEydPt9xxkEKod8yffKkqi7JJp6rJZPWHJW901qzBUWFUCtqLeyLYIW2c
	ImYfJGG1oI8X1teLBSaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgp3J-0004kZ-S4; Fri, 28 Jun 2019 11:28:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgp2J-0004Gp-BL
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:27:25 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5SBPoTB020526; Fri, 28 Jun 2019 13:27:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=B6KqXSyspmxT0bd7YntUlngpbE0mK1d5i/1VLUqBWcI=;
 b=mUfFigTvElxyHlwiLQxFJ/k3QpDOJNIxbstkUDF7lWH4w3tSGN6OCoYGHlH178Haqnkh
 NODZvcZA5yMsAwow863FlIj0H9PgE/zYeUvxEAmOoy9onEgPAyMBpv9wVaY59g+FP+Rw
 X38VFHECgUvzzWg7ZU3YIFnYaHHWkbV3hJLFuocD+5seFir99rJZqEx27RluT5Ey8ixg
 91bi6eoP74jk8xf+5TZ/FXaTXxtcnBoWRKiqKvVQMFn48LL/Ka+LQB5Pu+owq5J81hgk
 ODg/6bFKhiTcnNaWbHR2nGQ7aeG0NIWyrwGDaQzT+1SI8j/idjakxtP5xy08NcfoHqL6 zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tcyq0e4kv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 28 Jun 2019 13:27:16 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EEAB531;
 Fri, 28 Jun 2019 11:27:15 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9802827A6;
 Fri, 28 Jun 2019 11:27:15 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun
 2019 13:27:15 +0200
Received: from localhost (10.201.23.65) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun 2019 13:27:15
 +0200
From: Lionel Debieve <lionel.debieve@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Alexandre Torgue" <alexandre.torgue@st.com>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] crypto: stm32/hash: remove interruptible condition for dma
Date: Fri, 28 Jun 2019 13:26:55 +0200
Message-ID: <20190628112655.9341-3-lionel.debieve@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628112655.9341-1-lionel.debieve@st.com>
References: <20190628112655.9341-1-lionel.debieve@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.65]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-28_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_042723_718750_B795539D 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: Ludovic Barre <ludovic.barre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When DMA is used, waiting for completion must not be
interruptible as it can generate an error that is not handle
by the driver. There is no need to put the completion
interruptible in this driver.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
---
 drivers/crypto/stm32/stm32-hash.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index c37d1a336f98..23061f2bc74b 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -447,8 +447,8 @@ static int stm32_hash_xmit_dma(struct stm32_hash_dev *hdev,
 
 	dma_async_issue_pending(hdev->dma_lch);
 
-	if (!wait_for_completion_interruptible_timeout(&hdev->dma_completion,
-						       msecs_to_jiffies(100)))
+	if (!wait_for_completion_timeout(&hdev->dma_completion,
+					 msecs_to_jiffies(100)))
 		err = -ETIMEDOUT;
 
 	if (dma_async_is_tx_complete(hdev->dma_lch, cookie,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
