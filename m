Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1B51BC01B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WEt3GPQqnfG5CNnfgnOoKY1sqSC9T2EPV+K25joG78k=; b=T38dIWA4W4cfWQ
	N6sAVtQyYFe4qNh1dwf88Wxi4Bhkavn7ycMn0VrzUT1HsV2R5AAh39eW47DTvaaKodu3z43XYFY0L
	I24lhHJbKeSKRAZo+qEgCAV1v195KWGzanNdhgZLf2Lqmdm7cwzLSrYhRYRzws7GOyx+kByXlq9Gc
	q4Zbofi/7HphPSBl1F9aeEKH6AsEEcq+SE6jR86hoKlbBCNlg8qQp2+XTbfBN2mxMJRcdw3fXqUsg
	cM/B4ytmFi8LJTAeCXYpP1MMBgCTELwam7mtRKvnSyup0y2LdBs8cpU2Bx5K5TIzz5ewIHuKYGkBV
	YqMPLPGTUB5lo31b77oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQas-00034m-Kx; Tue, 28 Apr 2020 13:48:14 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQai-00032t-VI
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:48:06 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5AB36E1E74B4ADC021EB;
 Tue, 28 Apr 2020 21:47:49 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Tue, 28 Apr 2020 21:47:39 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Alexander Shishkin <alexander.shishkin@linux.intel.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH -next] stm class: stm_heartbeat: fix error return code
Date: Tue, 28 Apr 2020 13:48:55 +0000
Message-ID: <20200428134855.78014-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_064805_176639_C177DB61 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, Wei Yongjun <weiyongjun1@huawei.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix to return error code -ENOMEM from the error handling case instead
of 0(ret can be overwritted to 0 in for loop).

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/hwtracing/stm/heartbeat.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/stm/heartbeat.c b/drivers/hwtracing/stm/heartbeat.c
index 3e7df1c0477f..81d7b21d31ec 100644
--- a/drivers/hwtracing/stm/heartbeat.c
+++ b/drivers/hwtracing/stm/heartbeat.c
@@ -64,7 +64,7 @@ static void stm_heartbeat_unlink(struct stm_source_data *data)
 
 static int stm_heartbeat_init(void)
 {
-	int i, ret = -ENOMEM;
+	int i, ret;
 
 	if (nr_devs < 0 || nr_devs > STM_HEARTBEAT_MAX)
 		return -EINVAL;
@@ -72,8 +72,10 @@ static int stm_heartbeat_init(void)
 	for (i = 0; i < nr_devs; i++) {
 		stm_heartbeat[i].data.name =
 			kasprintf(GFP_KERNEL, "heartbeat.%d", i);
-		if (!stm_heartbeat[i].data.name)
+		if (!stm_heartbeat[i].data.name) {
+			ret = -ENOMEM;
 			goto fail_unregister;
+		}
 
 		stm_heartbeat[i].data.nr_chans	= 1;
 		stm_heartbeat[i].data.link	= stm_heartbeat_link;






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
