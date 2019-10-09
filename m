Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6005AD0E0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 13:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TnXsP10OSON75k58HoBWp8Ayt1NCCioysUbfdNkGAAE=; b=qzkIuuXKOTtyU/
	qIK226g3jg74VebfbDLWJYI8BOBmkyAEXr8HmCIHRhWAKkI8CILC6gef1CVgeViCh3LthEhpkIViW
	qCBhdLaNg3sLzAlBe9hkY7+ZW+WSvixrsrfEKkAZ+ojoa/LKaMnqwStQbb/dDWvNidzDqr/LAT7m3
	6YMztjiA2oXbpsLbv+nMoLaBCEJ7e1T3O4IDg9gmuDmFkf4Z0NkRAmcg3KotPsxXrlI67PDlhuhsK
	0R4mJhhwauNaQU9pWz3H/V9xw9eVwS61BNm5Es4Mt8pqU/z2Zolv1A7FMYOiYOpt3rgDysz+A3pLz
	9RDGl/a3igH0IW+3+Z7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAY7-0001jn-OG; Wed, 09 Oct 2019 11:54:35 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAXu-0001ib-TS
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 11:54:24 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIAXo-0004fs-Gw; Wed, 09 Oct 2019 12:54:16 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iIAXo-00045q-4l; Wed, 09 Oct 2019 12:54:16 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] mmc: mmci: stm32: make sdmmc_idma_validate_data static
Date: Wed,  9 Oct 2019 12:54:15 +0100
Message-Id: <20191009115415.15691-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_045423_100129_9C3C1D29 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-mmc@vger.kernel.org,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sdmmc_idma_validate_data to avoid the following warning
from sparse:

drivers/mmc/host/mmci_stm32_sdmmc.c:28:5: warning: symbol 'sdmmc_idma_validate_data' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: linux-mmc@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/mmc/host/mmci_stm32_sdmmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index 8e83ae6920ae..296be8a060a6 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -25,8 +25,8 @@ struct sdmmc_priv {
 	void *sg_cpu;
 };
 
-int sdmmc_idma_validate_data(struct mmci_host *host,
-			     struct mmc_data *data)
+static int sdmmc_idma_validate_data(struct mmci_host *host,
+				    struct mmc_data *data)
 {
 	struct scatterlist *sg;
 	int i;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
