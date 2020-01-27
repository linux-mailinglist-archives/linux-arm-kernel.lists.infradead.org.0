Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E519114A043
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:56:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/roI0meNe7OzXjMpdpkPBgG9fjlgutS2OrnI8/jPgeg=; b=RVC9FJvnv8cHai
	m+GuRecKDBMqmqu/nkX/9/URB8ytZ50Xjn3JQVj02hx3Oe3dAa7uu6DqTrBipvadLluKb4T3Y2fJa
	hMggibW+a7UOg/Ch42EAjP6PpBkdr5VUriaSATIzo+H6Ui62kaf9s2EE1jKTVmPQffs+O/BR0B48D
	bBSxQY7++MIxveQLoBy7sLHH4gi4g42Vog1Vh9sIdDvbZkmk7QNQg4DSWFt6LwxbmhteTwbOIMkc1
	bqvVhxa23CR7vmB7fzW2C7tXIbuxiV0joy3zS7WLwBAvjxjLVX5j5QnBrrdgMMOPiJGDPlQlzaWkn
	1siRWTYMF9Dzf1+17CFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0Bg-0004b6-UX; Mon, 27 Jan 2020 08:56:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw09e-00037F-HY
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:54:01 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00R8rKu2011537; Mon, 27 Jan 2020 09:53:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=d0DekDJ1zvoLH3rRFnt/nO3/KohuERZXWlQkB9inrfo=;
 b=AJ8Ol0bIN0qZ94UyTsXG2BlgU9T09DW4ExsfIAmE9S4ypHsOeAXk48hksvvYQ6F1yPgW
 9QtvCX8yithY7/5yCqMMKOd7M/GhKe0NM7h6B/uPcIjYy0Y8kK25py2sTwRvzSjj5e9j
 RFNH9BH7vUGG1VXmoUQmbC59fURzmb7PdIwegbtpDJHmc1Chw9QCTxF4rx2cLYy1R79H
 rfF1Xtmk9EMv9Sd7Jy7xqEsQfA1ZpebwRvu50+SNDHJ1kmzdraNS1rl+nkbaL9KFkIcM
 M2jXt6Ztk0ES1mO2EkihzeFGmLUB6Sbsn/lpenfZ60xonm1U/a0ozkrwabj7V73eDZkA Iw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpar4t2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 09:53:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C67DC100042;
 Mon, 27 Jan 2020 09:53:44 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BB48121CA6A;
 Mon, 27 Jan 2020 09:53:44 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 27 Jan 2020 09:53:44
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 4/6] dmaengine: stm32-mdma: driver defers probe for clock and
 reset
Date: Mon, 27 Jan 2020 09:53:32 +0100
Message-ID: <20200127085334.13163-5-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127085334.13163-1-amelie.delaunay@st.com>
References: <20200127085334.13163-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_005358_879532_6B815F8F 
X-CRM114-Status: GOOD (  17.13  )
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

This patch changes error log when failing to get the clock so that it is
not printed on failure with probe deferring.

It also defers probe when reset controller is expected but has not been
probed yet when MDMA device is probed.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-mdma.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/stm32-mdma.c b/drivers/dma/stm32-mdma.c
index f23c82e3990c..2dbd1f38a6f5 100644
--- a/drivers/dma/stm32-mdma.c
+++ b/drivers/dma/stm32-mdma.c
@@ -1579,8 +1579,8 @@ static int stm32_mdma_probe(struct platform_device *pdev)
 	dmadev->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(dmadev->clk)) {
 		ret = PTR_ERR(dmadev->clk);
-		if (ret == -EPROBE_DEFER)
-			dev_info(&pdev->dev, "Missing controller clock\n");
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Missing clock controller\n");
 		return ret;
 	}
 
@@ -1591,7 +1591,11 @@ static int stm32_mdma_probe(struct platform_device *pdev)
 	}
 
 	rst = devm_reset_control_get(&pdev->dev, NULL);
-	if (!IS_ERR(rst)) {
+	if (IS_ERR(rst)) {
+		ret = PTR_ERR(rst);
+		if (ret == -EPROBE_DEFER)
+			goto err_clk;
+	} else {
 		reset_control_assert(rst);
 		udelay(2);
 		reset_control_deassert(rst);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
