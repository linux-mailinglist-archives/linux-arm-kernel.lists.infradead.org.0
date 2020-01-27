Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C534414A03A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhrzE7oBp2A2uVHzPe+Ruvkb/zs/ei1Mg3EbnLvcPw8=; b=afTJUEygcrCEPE
	NC5U/aArgKCUIpXdP1QSVW4616LtFEr5wHp5s7Dw4IhW6qsbiuXIBqMCfB1L5BOZLsMTlkye86vhn
	QdC2PQ2a8cSLIViA2R/px+PqV5e+xdb+CJ3yLes+FC2R9D9HVth0ep85s30xQXW928BI2nq0fdLPj
	uj+f9jXySV8fF1UTo4KxP112SVGEpgJHWlYNGFPCqnEtGw+/V3Q6M7qD45ShKWuWcS1yEJ+YnJL/d
	0ttyK9zcjW028/rV8FzxNn/WRX720U9Pr5k6rqqQb2xHSlKYUutJMQZ1gIUwTj4F/3DJVUZ+BJtDq
	sCr0dbh4EPRmkZvIX+EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0Ab-0003pi-SC; Mon, 27 Jan 2020 08:54:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw09e-00037G-FA
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:54:01 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00R8rEEk011479; Mon, 27 Jan 2020 09:53:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=MMDeiSg4L1Vk9AfJFcs4IZMV1l1esEisuYa4GJvczRM=;
 b=GTic1X4CIVQuiEJY+OIES3bgmZGaApZn77hpKM7mFtrs7h4DFqA6ZhN6UTJgYUEtm24Y
 OBUSuoCcVhcaW2jhj2DfJ+Uwu0Bi92I5GrZZCpiWP+YVMFWxb4Q6RjgOnwR2S69oksqI
 hHDbZTXqxvFbMwWKDvx4J2dNySJJvBtd5gy3H9y3mQgiftsaMMar3e5TqkNcFxtE2Uwt
 DoibHBS+Qp1RzNjJRvXScoiPrVy9pyKIXOFMYI+4u72BKxOuN/mpWbrjEu48sLb+mZCJ
 5jRyqYMYizQhp0xBQ0hnJjtjkhdCOlVEhQgq6kq6FNmo7+C4tfGH8n/gJo3OcDIszdn0 sQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpar4t5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 09:53:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 26FA9100044;
 Mon, 27 Jan 2020 09:53:46 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1A7E421CA6A;
 Mon, 27 Jan 2020 09:53:46 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 27 Jan 2020 09:53:45
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 6/6] dmaengine: stm32-mdma: use vchan_terminate_vdesc() in
 .terminate_all
Date: Mon, 27 Jan 2020 09:53:34 +0100
Message-ID: <20200127085334.13163-7-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127085334.13163-1-amelie.delaunay@st.com>
References: <20200127085334.13163-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_005358_790337_49B7871A 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

To avoid race with vchan_complete, use the race free way to terminate
running transfer.

Move vdesc->node list_del in stm32_mdma_start_transfer instead of in
stm32_mdma_xfer_end to avoid another race in vchan_dma_desc_free_list.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-mdma.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/stm32-mdma.c b/drivers/dma/stm32-mdma.c
index f2043f47ae9e..5469563703d1 100644
--- a/drivers/dma/stm32-mdma.c
+++ b/drivers/dma/stm32-mdma.c
@@ -1126,6 +1126,8 @@ static void stm32_mdma_start_transfer(struct stm32_mdma_chan *chan)
 		return;
 	}
 
+	list_del(&vdesc->node);
+
 	chan->desc = to_stm32_mdma_desc(vdesc);
 	hwdesc = chan->desc->node[0].hwdesc;
 	chan->curr_hwdesc = 0;
@@ -1241,8 +1243,10 @@ static int stm32_mdma_terminate_all(struct dma_chan *c)
 	LIST_HEAD(head);
 
 	spin_lock_irqsave(&chan->vchan.lock, flags);
-	if (chan->busy) {
-		stm32_mdma_stop(chan);
+	if (chan->desc) {
+		vchan_terminate_vdesc(&chan->desc->vdesc);
+		if (chan->busy)
+			stm32_mdma_stop(chan);
 		chan->desc = NULL;
 	}
 	vchan_get_all_descriptors(&chan->vchan, &head);
@@ -1330,7 +1334,6 @@ static enum dma_status stm32_mdma_tx_status(struct dma_chan *c,
 
 static void stm32_mdma_xfer_end(struct stm32_mdma_chan *chan)
 {
-	list_del(&chan->desc->vdesc.node);
 	vchan_cookie_complete(&chan->desc->vdesc);
 	chan->desc = NULL;
 	chan->busy = false;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
