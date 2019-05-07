Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB61F15EA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y1E+lsX+JKt3TOFSZQL6lmFwjBLXyvO+Hnn+eYrl74U=; b=vA96W8jVS64ryW
	0hpKskBlgc7io3vSdSZqQWSINssErASVVim7HIDEMqJFYp8H1pRFtvYnpDbBHyuUyAk45FWN0CUUz
	UTvRwWty6TBIQLBs25c4VU0exUm5T4zoGbIZ0kdmHz2V6noS3Utsm6dLLmIC9Od3Oz6nRK3xbafWs
	M+QOwF3vg0fz2KH4pp6F2UqJRzKSJdBN89F2B2tY3m0PsFPpHFCLjs7NMgACm9Y4/mksRKSDNQOat
	neSz83aQ4KEq7PVTNqNwmKgLoMFZ/QG01+lyiWCzPYk8hRnVXMDuBpwMgm5/PUF/MAd0qy+roguNa
	RPvgycKhVWFu1lRJsBaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuwP-00080V-Ux; Tue, 07 May 2019 07:55:09 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuwC-0007yX-0U
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 07:54:59 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x477jvb0032724; Tue, 7 May 2019 09:54:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=AlqiG9FZWPVqrG1oTH9valNYZcTMSDs6ZUsTY9A5bUw=;
 b=Ti0HEmX/Gtmc7eCiXXBV2n0s7AmSiaiCChqHmOXaBN6wH1n1ZUQTt3mQjjK42gmhKBaj
 8yvPTkc4uSNe/Z22Jm/bGrz2R9H+56hOXzzxcqZr6lWcIKVrVsiYkZjo8bW4+/npS2lp
 HWQwmH17XuvJPb+tXAr7iHHA+9jSsPtEYnYLNOVjw0LV31/tFEqwfEubmiXsZVvk114r
 Y3lwoLqp2HSfPbHd07xDPeeKNx81/2k5+cI64P9G8pudwSEWG+8KvG6MTzvT9aeSrEa/
 We4h2f1WHeHtlcOq4XWoc1bTZrTm98K3rno4T7vNn/yoktwGObaZUFrVj6J4nnd70oru LQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2s94cde0yv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 07 May 2019 09:54:44 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F1BDD3F;
 Tue,  7 May 2019 07:54:42 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A55561490;
 Tue,  7 May 2019 07:54:42 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.361.1; Tue, 7 May 2019
 09:54:42 +0200
Received: from localhost (10.201.20.5) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 7 May 2019 09:54:42 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH] dmaengine: stm32-dma: Fix redundant call to platform_get_irq
Date: Tue, 7 May 2019 09:54:41 +0200
Message-ID: <1557215681-18541-1-git-send-email-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.20.5]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-07_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_005456_496647_DA10F54D 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dmaengine@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit c6504be53972 ("dmaengine: stm32-dma: Fix unsigned variable compared
with zero") duplicated the call to platform_get_irq.
So remove the first call to platform_get_irq.

Fixes: c6504be53972 ("dmaengine: stm32-dma: Fix unsigned variable compared with zero")
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-dma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index 88d9c6c..67fdd02 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -1366,7 +1366,6 @@ static int stm32_dma_probe(struct platform_device *pdev)
 
 	for (i = 0; i < STM32_DMA_MAX_CHANNELS; i++) {
 		chan = &dmadev->chan[i];
-		chan->irq = platform_get_irq(pdev, i);
 		ret = platform_get_irq(pdev, i);
 		if (ret < 0)  {
 			if (ret != -EPROBE_DEFER)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
