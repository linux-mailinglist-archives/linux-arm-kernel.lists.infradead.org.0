Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CF914CDA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 16:39:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlZs5hNxs1FQ1aE3Pwx6MSu1wAmyn0rPaOMrzvfVaxM=; b=k0ml0Mt87htA7e
	arzsD38fS2fGM/fVJbqpRSQu5HQnLha1/+CbSk7/pIhUaqxx9O5scEc6tT+IPWnCwjvIEOBZ04+WU
	/gIg4MaMp6V8Nh6ZYMJFGdKmM2ucGT8ykX/eYXygeKQHQpVfeQYjjGrxE3AQJS4K7vpbNDjLLErdI
	T99g81VIpVxxEqb+eSAm0B9zWxSNQpFr7bWOzV4wgiG+CqPaxJGYGS7dMwRBHKZteUH0+GHzQkRNZ
	Qs7YHqSDgiXmX9OvJ7arVCWUbWDPHc0dMH2q9IakoOxfRayOJ0MySH9i/sNDY1056NFORsyXY5CJI
	nOaTe9ZvBwknZ7n6TMxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwpRA-0006wH-0w; Wed, 29 Jan 2020 15:39:28 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwpOa-0004jj-W6
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 15:36:53 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00TFNArm019435; Wed, 29 Jan 2020 16:36:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=vGtBudjNx6L0Bif2GlT7GRdzDPa/Yv2/z0Y5HH4v5qQ=;
 b=nm7n2Cr43o+71a44OQNGZea0xkO4CYasOZfS080j2NeTorJxpdBswUuvJPUx2t33cSZN
 J0amRXk72bn6UXTbyP+4udi2p6wBWsJU3t/7utE0OphCdR1oTDNudbAgurah/rManvqG
 i/1rIUUwjl02EIDIMIXceqWNzZG08Ov8TOI/xVwE+4DiV0LZONiqiN0U2c28xtMLr/dI
 Zo1u3qi7CKeMpcpf1ezM0HdlMrPIxPmS2qXjtdwP6Ir015mS1KqiVILjQ4/5KFLFgrRs
 HlIL5ymie/2ZuqFtepdZ71FaeUW2ZnGaJLR9stpCzQlFLlT4jaQnjHa0WPJ53tF/Bf7q 2w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcay3vbb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Jan 2020 16:36:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9A22C10002A;
 Wed, 29 Jan 2020 16:36:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 899062BC7C2;
 Wed, 29 Jan 2020 16:36:39 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 Jan 2020 16:36:39
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 8/8] dmaengine: stm32-dma: use vchan_terminate_vdesc() in
 .terminate_all
Date: Wed, 29 Jan 2020 16:36:28 +0100
Message-ID: <20200129153628.29329-9-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200129153628.29329-1-amelie.delaunay@st.com>
References: <20200129153628.29329-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-29_03:2020-01-28,
 2020-01-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_073649_362326_0E3A42A8 
X-CRM114-Status: GOOD (  14.33  )
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

To avoid race with vchan_complete, use the race free way to terminate
running transfer.

Move vdesc->node list_del in stm32_dma_start_transfer instead of in
stm32_mdma_chan_complete to avoid another race in vchan_dma_desc_free_list.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-dma.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index b585e11c2168..0ddbaa4b4f0b 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -478,8 +478,10 @@ static int stm32_dma_terminate_all(struct dma_chan *c)
 
 	spin_lock_irqsave(&chan->vchan.lock, flags);
 
-	if (chan->busy) {
-		stm32_dma_stop(chan);
+	if (chan->desc) {
+		vchan_terminate_vdesc(&chan->desc->vdesc);
+		if (chan->busy)
+			stm32_dma_stop(chan);
 		chan->desc = NULL;
 	}
 
@@ -535,6 +537,8 @@ static void stm32_dma_start_transfer(struct stm32_dma_chan *chan)
 		if (!vdesc)
 			return;
 
+		list_del(&vdesc->node);
+
 		chan->desc = to_stm32_dma_desc(vdesc);
 		chan->next_sg = 0;
 	}
@@ -613,7 +617,6 @@ static void stm32_dma_handle_chan_done(struct stm32_dma_chan *chan)
 		} else {
 			chan->busy = false;
 			if (chan->next_sg == chan->desc->num_sgs) {
-				list_del(&chan->desc->vdesc.node);
 				vchan_cookie_complete(&chan->desc->vdesc);
 				chan->desc = NULL;
 			}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
