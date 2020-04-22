Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865431B3E82
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rrmhkMafANgqMIjRHa/IE3PFWnpnl0WakUGQrlBLGbM=; b=s6s/vioUM34+5Y
	b0UXgnd1gqpI7Xlci0+t0wmzRrzk2laXW4GkK+XGyAKXHpGGpMnvdi7LscDs6O+dzE3LVzt6bNZHN
	n2Xa+FEg95bV1C4KkYHJZ9dAXZPMzh3c8YsVfgQVUrs8GqVxoiFLdkPXQrHitUDitN9QBI6RhH2ZS
	3JhBHZml0oPjzw7aYBi1O0/ayaJsWRKNR+5tOWX/Si+yIGRvEw9b0M82NK+cz0/KCLjFBv7VQ3sFp
	wNoZlKqJ7F0CDlO8PRn5N+JXLkHHiAady05LVp1uAvq6C5pMl3nJpe7tKhEmAwYRwuAIN7hAa8Ba1
	/2SZld2f8XpNpBXdHDWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCdI-0001WG-36; Wed, 22 Apr 2020 10:29:32 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCd8-0001V4-Ff
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:29:24 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03MASQ2q005974; Wed, 22 Apr 2020 12:29:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=vQkeoE76rBPKloDNcJgTTXfaQgVxBlx3RLBb7ovXc8k=;
 b=Y8XWGA98J3xPyW/eIsQk9ygDZWdawKRSfYio+swui0AiC6SpFpp8cpPWZUnTBlBtnNZh
 6hKcjgxVlW5dHtgK/UB21EPoAwyxJT0cultqFUipXBYDQm3QTYgFdvpvwX1IA1M2h9q8
 hSycRVFBRw4vnqhXnrpe38Z1On8XSSBh184g5pW5lVkPVcq16o65XGYhNRiYVHuqw9fW
 3FwERQeJBvShyTWyUL8gcE57gPm4qGV1hQORtHTg3yrsn0bzl7sgc3AfbcXW5tEcHmj0
 p6THGMF+WbaCg/VgkEJghUHMXgZqGM915WED2aYHOWFVLPM2VOxdlovL+jWcu49AzR8R Fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fregnra1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Apr 2020 12:29:13 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E7A3710002A;
 Wed, 22 Apr 2020 12:29:12 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D2CB92A9560;
 Wed, 22 Apr 2020 12:29:12 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 22 Apr 2020 12:29:12
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Dan
 Williams <dan.j.williams@intel.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 0/2] STM32 DMA Direct mode
Date: Wed, 22 Apr 2020 12:29:02 +0200
Message-ID: <20200422102904.1448-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-22_03:2020-04-22,
 2020-04-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_032922_974320_651299D4 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-kernel@vger.kernel.org, Pierre-Yves Mordret <pierre-yves.mordret@st.com>,
 dmaengine@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By default, the driver compute if the FIFO must operate in direct mode or with
FIFO threshold. Direct mode is allowed only if computed source burst and
destination burst are disabled. But with memory source or destination, burst
is always > 0.
Direct mode is useful when the peripheral requires an immediate and single
transfer to or from the memory after each DMA request.
This patchset adds a way to force Direct mode through device tree.

Amelie Delaunay (2):
  dt-bindings: dma: add direct mode support through device tree in
    stm32-dma
  dmaengine: stm32-dma: direct mode support through device tree

 .../devicetree/bindings/dma/st,stm32-dma.yaml |  5 +++
 drivers/dma/stm32-dma.c                       | 41 ++++++++++++++-----
 2 files changed, 36 insertions(+), 10 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
