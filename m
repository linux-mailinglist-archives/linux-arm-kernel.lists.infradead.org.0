Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E63414A03B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TnARB+BtKD7i24nnvUkVMkKPRlXUY+SqSPUr8jzfTmI=; b=q5E/HOpFxEVfW9
	Gbngog0QY5RkDdTqkxm++QhMub1WiYjpFfyBaw35qpHotjyfpqcEiuuTI53uK4nN9EIkGE+3vh6V9
	iA9dWg2gXg2+UN7i1IrXFsuob3ykqpz7ndG0HgMQaSKzP4rejdq4i81bVdtSNvTylBNM5OpEA+fLP
	oKZDL7f4gy2xqgpDpFtR32Sy87QAZjAimX4KCugEoaIAA9haktPINSl7gfq2ui5HuLDWfAZNvH4uE
	LurtfijPAF4waQ0S5275TNTvwlS3ZO1U9IG32Nf6rZlEdklT5yeCpXrVsMz2dc5rpU5LbNix4msIT
	6PTLOpQPhMxUQo9k6HKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0Aq-00045E-5H; Mon, 27 Jan 2020 08:55:12 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw09e-00036v-48
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:54:01 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00R8rFdF011482; Mon, 27 Jan 2020 09:53:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=ph4w8wTNIFAH7Lv1cHY+WCanej56MAlJja9BHKFQag4=;
 b=XxLDSW/oMTYlYGoDFhaCAy0QhI/ticramibopIUoEDsXm9T+L44NWf9NMnd8LcysTRkB
 xExnoMz9HiLgattMBBjlbHX5AmoTxGJjYZlDeFebU5uIoMtuS2akMUYbx9njCWlQyhVh
 rCuTdkB/HgCowGLe6WjRUfIWreG4fdq6IGL4ABVAZbhWW9ukVkiiCIHbKzINuN9+pxgG
 zJVae9Wosv6CbGwBsB3TqUUdqRTCKw9G2lA/TZkn/9xfMafPhsAaAKhcAR4dJp2wUfdi
 0bWPx17GvXi6j945h3g5/JXcL1cMM4Ur+l3Ug00UzJDAaMALDLQkG9Dkuzb3+gC+x+y2 bw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpar4st-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 09:53:47 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 604B6100038;
 Mon, 27 Jan 2020 09:53:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4F7ED21CA6A;
 Mon, 27 Jan 2020 09:53:42 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 27 Jan 2020 09:53:41
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 0/6] STM32 MDMA driver fixes and improvements
Date: Mon, 27 Jan 2020 09:53:28 +0100
Message-ID: <20200127085334.13163-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_005358_537195_E8CFDF0B 
X-CRM114-Status: GOOD (  10.51  )
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

This series brings improvements to the MDMA driver, with support of power
management and descriptor reuse. Probe function gets a cleanup and to avoid
a race with vchan_complete, driver now adopts vchan_terminate_vdesc().

Amelie Delaunay (2):
  dmaengine: stm32-mdma: driver defers probe for clock and reset
  dmaengine: stm32-mdma: use vchan_terminate_vdesc() in .terminate_all

Etienne Carriere (2):
  dmaengine: stm32-mdma: use reset controller only at probe time
  dmaengine: stm32-mdma: disable clock in case of error during probe

Pierre-Yves MORDRET (2):
  dmaengine: stm32-mdma: add suspend/resume power management support
  dmaengine: stm32-mdma: enable descriptor_reuse

 drivers/dma/stm32-mdma.c | 78 +++++++++++++++++++++++++++++++---------
 1 file changed, 62 insertions(+), 16 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
