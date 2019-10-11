Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB062D40D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4NNBfHx7oDoL2/fJ8EJXTRlTlQl1COBBp2hb/OQv1WY=; b=o4RSzumdwWEa1u
	x7+1MxZYz2Q9dEubgkMcBY8/5iXpKHfnB1wZUiLVo3IY079SnmRZY6Ov8IrWYamUdpksuXPOwmQyx
	M7OPDCyNyTDSju7XSN4QQFGBY+AbZQajDyT7Ka1Eu+V08dx/WsH3DlCbRGw3zhrucdgkLy4gVV8iU
	Ls/zPxkSsNCFSp1OHvYJWgeDtk6nvAgZKxdRQ+oYayZ1o4KQVBvMjONyaF4Nxw8JqSE9PIQJYSCSW
	TRGrsyhsJG62WgHQRDOeicST00Gnb46jxaPquPqPq7GkcruPFpNGLphbrHnE2LU2uUCLkhZde4kf4
	KKB3rwsKB2E0Tl1t9sdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIum3-0006a8-51; Fri, 11 Oct 2019 13:16:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIulc-0006M2-Sr
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:15:38 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BD6lxu021879; Fri, 11 Oct 2019 15:15:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=2OJ63JRDHcE35+LH+1/BTSgThb8JET2V1q7cuqnG+F0=;
 b=uIUnsRMlUIA++sDY+nCBcDNNH3YlJtiiOVOt88abPsuDz0wB4V8cMuAvWxiNr8gvmhxi
 9JbYbEt9W5/ZPNOT5MwG5dr9hDJkuTKzTpt5epXeDRv8YKRFeKYGgZ4EqcvsYdPQTWKA
 d9rIqaKqB49S0Vd4TVRJgdYwnK5t6OssiS0n5SCbScCRiOVcA+pjbv7GL8tHnbh+fdlA
 fm902q1QSvLjSFtbW6QB4WSxefLFgvsr+9O5sj+iAMp2zSquHsnmStl4CZiOPxALkr5H
 bZ+UgYGGNN7bVY+JlUxN52NlvhotyLvTAKd5pEEiFb2PUqHMNIvVqKv9a17svKRncnpr +w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxw9yag-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 15:15:30 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CA71310002A;
 Fri, 11 Oct 2019 15:15:29 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B5F6B2BEC72;
 Fri, 11 Oct 2019 15:15:29 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 15:15:29 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 15:15:29 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/2] mmc: add unstuck function if host is in deadlock state
Date: Fri, 11 Oct 2019 15:15:00 +0200
Message-ID: <20191011131502.29579-1-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061537_232830_AE68061C 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ludovic Barre <ludovic.barre@st.com>

As discussed in this thread: https://patchwork.kernel.org/patch/10786421/
After a request, the host could be in deadlock state, and waiting
for a specific action to unstuck the hardware block before
resending a new command. This series adds mmc_hw_unstuck
callback (structure mmc_host_ops) before resending a new command
(call in mmc_blk_mq_rw_recovery, mmc_wait_for_req_done).

Ludovic Barre (2):
  mmc: add unstuck function if host is in deadlock state
  mmc: mmci: add unstuck feature

 drivers/mmc/core/block.c | 11 +++++++++++
 drivers/mmc/core/core.c  | 35 +++++++++++++++++++++++++++++++++--
 drivers/mmc/host/mmci.c  | 23 +++++++++++++++++++++--
 include/linux/mmc/core.h |  1 +
 include/linux/mmc/host.h |  7 +++++++
 5 files changed, 73 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
