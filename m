Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBED314CDA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 16:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n22u/k41q54AqAgEk1WQzf5sn+77EmsXVjzul2Ag0E0=; b=KANHmJutRa27iv
	b1m+JP4VGC1VVX+Ou+ZjerNQZ0m+93RavypMZtAK/LocxNjlvIOH7l8ma/WXHxjnAVFm/gKKpgaHm
	GAD+iCC855qm+RXbHbCU4lk5RTOOuhQUJt7JPN7RF3vqaFTjUzNPvtgB8ff+NCsyBKpZ4NOYdOwqo
	KJI9KkgYSHGwdhxpboMlWZ6s2v6x3OvMdJBMluNoenhIkcyGf3k9V2ainP12kKhKTRY9xlvZS1qKz
	cL3di6sN/M1t8OP0hmOby2K60iEo0m/mR25QViCokkhPIfqEXNMr9wS9AgvdOP8ia0T3doo3PDPE8
	gQ8iwUfBRaezxxFzjrzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwpPC-0004uy-DF; Wed, 29 Jan 2020 15:37:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwpOa-0004jL-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 15:36:50 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00TFNdPo030981; Wed, 29 Jan 2020 16:36:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=8Dj/ZHHrmEfV1u3H7MKsV7iGJiHB3s1tpyoS859SbVI=;
 b=s8f6/RFxaFy5xx1Uv1kJ3RJZQu4kJdrxJ6VXlc/zBQZFdn9bN3eyU31mecfnINOymzsK
 4VAzuwX0O8Hc5jEiEqv15ClB10RbMX7zivU9J8Zm1NTD712g0Dm67SS0mmeB+2pP4Nox
 ukx/Nt/3LKMZj/YvzkMyQPcfgthmqy6qfBfmE7G+PrXc2Tr1eIR7WZ5KM3WUqE74+WW5
 Efa3X0+pk1RlJfJB0KmZGKpiV42JtAEYuWue4KlpG5o+9j0euOAcrnX3qK692SesuzV6
 y+G6uk3s/ZOPi0c0e4zT3xKUDVmqMjEE7Cqd7IO3Lm8AoQmj2kfUkEy/lKBkHUTn0uzw Nw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpb45e4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Jan 2020 16:36:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7EC4C10002A;
 Wed, 29 Jan 2020 16:36:34 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6E7062BC7C5;
 Wed, 29 Jan 2020 16:36:34 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 Jan 2020 16:36:33
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 0/8] STM32 DMA driver fixes and improvements
Date: Wed, 29 Jan 2020 16:36:20 +0100
Message-ID: <20200129153628.29329-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-29_03:2020-01-28,
 2020-01-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_073648_805201_E754FFE3 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

This series brings improvements to the STM32 DMA driver, with support of
power management and descriptor reuse. Probe function gets a cleanup and
properties like copy_align and max_segment_size are set.
A "sleeping function called from invalid context" bug is also fixed. And
to avoid a race with vchan_complete, driver now adopts
vchan_terminate_vdesc().

Amelie Delaunay (4):
  dmaengine: stm32-dma: use dma_set_max_seg_size to set the sg limit
  dmaengine: stm32-dma: add copy_align constraint
  dmaengine: stm32-dma: fix sleeping function called from invalid
    context
  dmaengine: stm32-dma: use vchan_terminate_vdesc() in .terminate_all

Etienne Carriere (2):
  dmaengine: stm32-dma: use reset controller only at probe time
  dmaengine: stm32-dma: driver defers probe for reset

Pierre-Yves MORDRET (2):
  dmaengine: stm32-dma: add suspend/resume power management support
  dmaengine: stm32-dma: enable descriptor_reuse

 drivers/dma/stm32-dma.c | 96 ++++++++++++++++++++++++++++-------------
 1 file changed, 67 insertions(+), 29 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
