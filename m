Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FFC14CDA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 16:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnYSMWH1Tq8dywAyp59OuectdPJXRF47DO3t2h/ncNs=; b=X2pRr/UP/vrK//
	U/zHA5QX9Cp17OOklSuTTzFnuQUKvXJq/5K+l7Ep1rJP++kiOwN8UaBLo1SNhPLabvNh+jm/qJAjT
	wZ5qP9AJsXxPZbJOXQvluBZeGO1cdTZGVStrw/a1jvkvN+TjycsQXxPx7Q1IW7TRzYUJK8EOC+V7u
	97SOj4fOyRayKRsfND//0Glc41WSUNOaOz1abEnIgdF0i9PrDvUr0tTsHB+Us45STvc/+vgUtRI3n
	6X/SjDLX3rnYM6YdQiiEllWBaf4Cq6KRJ6EC1VU19dODj7ctJVVZ/UBVk9hSzZQXgJ/55JJJCJN+D
	h6rQozAS8XJRB0xpXBvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwpQA-0005l9-39; Wed, 29 Jan 2020 15:38:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwpOa-0004jS-BW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 15:36:51 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00TFNBY9019444; Wed, 29 Jan 2020 16:36:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=wgw0wJHxD0KqntR0Tj8TO+wUsOBJhHj4e4NzjycWHY0=;
 b=DnNqfCFPPQOr0IV5DnGJH2VN3Olbe6oSMkOAWI+gSpdh1nP60QH26H7a8sFhzOptAXOU
 j7GOsZE7S6GdLcpwcY/9TOi+EZGkGnKY6EfwUBJpyTXDW+sovjABpkKBrXHGoICXj+yw
 U9vJ1fnl/qVKTsXLsVh0G/3HSE2iFYbfwqDKzmlxEfR1RQCV42t1fi1fBmu9wHHzKmgT
 HvXuXa23hPeO2LOZ6YTHq9fkjFnV1Jh6GBFew5yAj4GjqXtNvGejnGMHiwd14Txk7JYL
 rXzHcjXe5Ojv2yc7A4+uvz1q1fwq72vzHWR5BsQrUsgA77QAhxq2a8nxoacqAecW9DPT GA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcay3vb6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Jan 2020 16:36:38 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A580A10002A;
 Wed, 29 Jan 2020 16:36:37 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 986FD2BC7C2;
 Wed, 29 Jan 2020 16:36:37 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 Jan 2020 16:36:37
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 5/8] dmaengine: stm32-dma: use dma_set_max_seg_size to set the
 sg limit
Date: Wed, 29 Jan 2020 16:36:25 +0100
Message-ID: <20200129153628.29329-6-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200129153628.29329-1-amelie.delaunay@st.com>
References: <20200129153628.29329-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-29_03:2020-01-28,
 2020-01-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_073648_810871_482AB555 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>, linux-kernel@vger.kernel.org,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds dma_set_max_seg_size to define sg dma constraint.
This constraint may be taken into account by client to scatter/gather
its buffer.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-dma.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index 25f7281932bd..b7e18cfcd439 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -1323,6 +1323,8 @@ static int stm32_dma_probe(struct platform_device *pdev)
 		reset_control_deassert(rst);
 	}
 
+	dma_set_max_seg_size(&pdev->dev, STM32_DMA_ALIGNED_MAX_DATA_ITEMS);
+
 	dma_cap_set(DMA_SLAVE, dd->cap_mask);
 	dma_cap_set(DMA_PRIVATE, dd->cap_mask);
 	dma_cap_set(DMA_CYCLIC, dd->cap_mask);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
