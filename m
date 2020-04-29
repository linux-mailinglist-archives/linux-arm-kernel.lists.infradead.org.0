Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EF81BD99B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=22XWxHHMM5wCyTMV90o5p5RnaoJMUJ3iqGvfOrcKTDU=; b=gzqyCT7oxzrlgh
	RYLxv0Sjkqeiny9hYfxCz1cklSHCg0z/oBgf250NQECFqdu2TJUgBRFnTWaQNrJCuV49sdSnmA0se
	vjBz+YSYAkw3161uDaiOS/3n2xbFuKqdtxW9/lxdtzEdiUtQ4eJ+yKGv3iOjJF2eL9joyCNTkYEz9
	TN8kV5K5LtUYbw98kkoCc+YLQsjUYOQuBIb2iBHKByM+7IvbzlY1PH+QLJ0KU2IWuJnRFgTJoLp+9
	OgDruKX7TXIrLXPUB+lchilH3U6W7+fzWpCLTqPzdgoKw/MrO2Gh8mIN3h5U6o7FT//G1PtZozNYf
	fioeGIzqujho73GKwUEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjwJ-0004T6-Bl; Wed, 29 Apr 2020 10:27:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjvO-0003uh-6p
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:26:48 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TAIPhm031773; Wed, 29 Apr 2020 12:26:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=KfrwcIEAAxzZTZPX1fo//g25aXA6YdvAOUL28w3PuTE=;
 b=Lay7I5hExdMtnFVTkpr+NIhd2XgmCPQPOzT27AEFV99+bVAqiBZeiUB2Joj3M3RjD/xs
 Jy5QZWjLgUavyRTcgyeWCs8MLApjdeKbDWfpXV8/GRXeGKgWEB+LKgl4K9ssk3PfEWe5
 Di141+m41OY8nri1Hk0XZSVbHYbIT9tKBehSUNqbwLXyrDpNFOHem4N7nngpN4GxCsWO
 obcIPKI6Q3XfDkYvGbRslEO6zM8XRrO8X6KyyWJf+BPcVRT1NI/fEJF6LJiYpkbeOFLc
 fLgsmYw/hPbaoTnJYxjzIIlZK67iaFk1i4ui3Ze39c4Qt4Nz1/6fZXMgFteDXo2PrNu6 8Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhjwwrfg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 12:26:29 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B3BA0100034;
 Wed, 29 Apr 2020 12:26:28 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A44F820C7A6;
 Wed, 29 Apr 2020 12:26:28 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 29 Apr 2020 12:26:28 +0200
From: <patrice.chotard@st.com>
To: Mark Brown <broonie@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: spi: stm32-qspi: Fix unbalanced pm_runtime_enable issue
Date: Wed, 29 Apr 2020 12:26:25 +0200
Message-ID: <20200429102625.25974-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_03:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_032642_585616_85679044 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 mcoquelin.stm32@gmail.com, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

Issue detected by unbinding/binding the stm32 qspi driver as following:

root@stm32mp2:~# echo 40430000.spi > /sys/bus/platform/drivers/stm32-qspi/404300
00.spi/driver/unbind
root@stm32mp2:~# echo 40430000.spi > /sys/bus/platform/drivers/stm32-qspi/bind
[  969.864021] stm32-qspi 40430000.spi: Unbalanced pm_runtime_enable!
[  970.225161] spi-nor spi0.0: mx66u51235f (65536 Kbytes)
[  970.935721] spi-nor spi0.1: mx66u51235f (65536 Kbytes)

Fixes: 9d282c17b023 ("spi: stm32-qspi: Add pm_runtime support")

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
---
 drivers/spi/spi-stm32-qspi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 2f2ea2c42d6e..3c44bb2fd9b1 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -555,10 +555,15 @@ static const struct spi_controller_mem_ops stm32_qspi_mem_ops = {
 
 static void stm32_qspi_release(struct stm32_qspi *qspi)
 {
+	pm_runtime_get_sync(qspi->dev);
 	/* disable qspi */
 	writel_relaxed(0, qspi->io_base + QSPI_CR);
 	stm32_qspi_dma_free(qspi);
 	mutex_destroy(&qspi->lock);
+	pm_runtime_put_noidle(qspi->dev);
+	pm_runtime_disable(qspi->dev);
+	pm_runtime_set_suspended(qspi->dev);
+	pm_runtime_dont_use_autosuspend(qspi->dev);
 	clk_disable_unprepare(qspi->clk);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
