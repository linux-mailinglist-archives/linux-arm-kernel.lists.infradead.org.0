Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E3FCF690
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8l/aJHI1mYAFZTP1l+YRsAnndzCN9IQNmVtygwuaT3E=; b=iYCN7LAP37f7se
	hs6Wi/An5+icjKRX9UoSh10vhgTTi041sknf4f4kxMN/HjsbgdCZvI94+5IvUWLF/EgPq+kDi1ZS4
	wkDXFS5Pbe11Tbn+WgPG7iWFVnvT2mHzsNIxLTZl9AMw5pqcvWki3cveoladVc9ppAq+Ou4JMvup/
	6RSQ68bMRuPXzZr7BwupkGghcdpWYSxuIdK+SW5y/SRuP1CpQ+IUjZn1m20NKu/ezJsrEF5CPFhZL
	X6o6wnj/hi8pTScPTuZqVmk2OQmSMAPUifkWJOopnkCB/soSrAzOw/p4TRPFHNB5eWHr2mO3zt0o7
	8+CZp/f3zamuZ/Mi5SQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmEO-0004cm-Pw; Tue, 08 Oct 2019 09:56:36 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmED-0004bA-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:56:27 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x989q3T5002806; Tue, 8 Oct 2019 11:56:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=lalHdG7UJQKEamzJtgMq1V9aYOha/nksgz4VLZDsBvA=;
 b=hZGvZF6Um9r+0Rf/q9onqdXuiWZDQ2Ld3rqIJKGOtmpQesJIL5DDvfLnAilxtw5eUtgN
 nrRhwvD8WdgDBnuC/mdPvdSSAozRuGCO8tN19UbUAPOVN9GwkZ2kD/4TOBH4nXKfN95q
 UQiLt/Sunt0IS5Nin8Nd7L3uQevCATpcMXrwknjWnxakxKM1W84eWViOnP9e7Rh3X9lX
 m2Z6c9JxzvlndWH+gLyf25CvFGLjj0mnV3qfTY+7Uv50+zXVpV7EO61dewq5+oH8r0TE
 0VF+NrChDfFuOKRDv9CCqDeY2llT494APGo/FwBex9caC3UkjHC4SY9IzrkwQxxgSOwG bg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vegagyygt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Oct 2019 11:56:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 312A410002A;
 Tue,  8 Oct 2019 11:56:19 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 21C6D2B40AD;
 Tue,  8 Oct 2019 11:56:19 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 8 Oct 2019
 11:56:19 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 8 Oct 2019
 11:56:18 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V7 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
Date: Tue, 8 Oct 2019 11:56:01 +0200
Message-ID: <20191008095604.20675-1-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-08_03:2019-10-07,2019-10-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_025626_357522_3555DB4F 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch series adds busy detect for stm32 sdmmc variant.
Some adaptations are required:
-On sdmmc the data timer is started on data transfert
and busy state, so we must add hardware busy timeout support.
-Add busy_complete callback at mmci_host_ops to allow to define
a specific busy completion by variant.
-Add sdmmc busy_complete callback.

V7:
-Patch 1/3: rephrasing like proposed (thx ulf)
-If busy timeout is undefined => increase to 10s
-Keep busy_detect.
-Patch 3/3: rephrasing comment header
-Avoid twice read of status register
-Avoid writing in MMCIMASK0 & MMCICLEAR if not modified

V6:
-mmci_start_command: set datatimer only on rsp_busy flag
(remove host->mrq->data).
-move max_busy_timeout in set_ios callback.
-typo fix: err_msk, clks on one lines.

V5:
-Replaces !cmd->data to !host->mrq->data to avoid overwrite
 of datatimer register by the first command (cmd23, without data) of
 SBC request.

V4:
-Re-work with busy_complete callback
-In series, move "mmc: mmci: add hardware busy timeout feature" in
first to simplify busy_complete prototype with err_msk parameter.

V3:
-rebase on latest mmc next
-replace re-read by status parameter. 

V2:
-mmci_cmd_irq cleanup in separate patch.
-simplify the busy_detect_flag exclude
-replace sdmmc specific comment in
"mmc: mmci: avoid fake busy polling in mmci_irq"
to focus on common behavior

Ludovic Barre (3):
  mmc: mmci: add hardware busy timeout feature
  mmc: mmci: add busy_complete callback
  mmc: mmci: sdmmc: add busy_complete callback

 drivers/mmc/host/mmci.c             | 178 +++++++++++++++++-----------
 drivers/mmc/host/mmci.h             |   5 +
 drivers/mmc/host/mmci_stm32_sdmmc.c |  42 +++++++
 3 files changed, 159 insertions(+), 66 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
