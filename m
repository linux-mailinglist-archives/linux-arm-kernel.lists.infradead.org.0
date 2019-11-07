Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045F3F2D6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:27:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5S4Q0C72cy4NKDzEsYyL0BhDeUqDd6/GB+sxkgNOVZs=; b=sDM
	H1To5meUg+eYQpK+Cl0tiUJCa4CH3NhkkyLclF6g3fHH8RARt3O43e8Kg6zp4jX6yGcyUGC6Xi44t
	qOBTMvuKzE8QH3I14zVU6clDVz6o7wdLfA43NmUekfGoDi2ekpFJ2ch+f3f2+abs3kP737ekAQ6aN
	DgofRfI+J4QfcGrQmV66ZwAgUrU6uin8TVzXu5rZ9Ts98z9aNHF8NX1WLnoRKu/WMZXlCWua5N+aJ
	in1ACASiDCcevfZLHlQ8GdTynCdBH3W3DckV92xvbZi0nCuwDy3fQIN9yZlmmm4llnZ1lum0As0MF
	f38+QN1CGgugc/W0wT5I5MMTz6KLY7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfwv-0006Wo-Tg; Thu, 07 Nov 2019 11:27:37 +0000
Received: from mail-m975.mail.163.com ([123.126.97.5])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfwo-0006Vw-OO
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:27:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=VxXuxyye1MqjU+hDjg
 02qbrKx1jLX10dIV/GDARuXpU=; b=b6XWFLM1DY02QNi+PAd31aRrO6jgY1b51z
 UiunWg4MGfA6LGfW9dtQeS44ggK81ISAo3d/cBoRqO0KR+B3yIph2aZ2OiKLRr6m
 jW65MQHNHjtcxF2DbkDaCdId16uGV6fd4mXFuA7MkaGAJM3laVsNWXn9IEIsIXYJ
 IiVR1ElHI=
Received: from localhost.localdomain (unknown [202.112.113.212])
 by smtp5 (Coremail) with SMTP id HdxpCgCXTueP_8Nd8iYXAA--.227S3;
 Thu, 07 Nov 2019 19:27:17 +0800 (CST)
From: Pan Bian <bianpan2016@163.com>
To: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] dmaengine: sun6i: Fix use after free
Date: Thu,  7 Nov 2019 19:26:53 +0800
Message-Id: <1573126013-17609-1-git-send-email-bianpan2016@163.com>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: HdxpCgCXTueP_8Nd8iYXAA--.227S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr17Kr15JFy3XrWfGryfZwb_yoW8KF1kpF
 43Ja4rur45tF1aga13Z348uF13KF4fJFyUCay5Gwn0vr9xXr1kGa17Aa4Fkr98JFn8CrWf
 Xrs0gF1ruF4UGwUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UypBhUUUUU=
X-Originating-IP: [202.112.113.212]
X-CM-SenderInfo: held01tdqsiiqw6rljoofrz/xtbBzxVmclaD5QFnNAAAss
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_032731_249035_6762DF10 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.126.97.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (bianpan2016[at]163.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bianpan2016[at]163.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dmaengine@vger.kernel.org, Pan Bian <bianpan2016@163.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The members in the LLI list is released in an incorrect way. Read and
store the next member before releasing it to avoid accessing the freed
memory.

Fixes: a90e173f3faf ("dmaengine: sun6i: Add cyclic capability")

Signed-off-by: Pan Bian <bianpan2016@163.com>
---
 drivers/dma/sun6i-dma.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/dma/sun6i-dma.c b/drivers/dma/sun6i-dma.c
index 06cd7f867f7c..096aad7e75bb 100644
--- a/drivers/dma/sun6i-dma.c
+++ b/drivers/dma/sun6i-dma.c
@@ -687,7 +687,7 @@ static struct dma_async_tx_descriptor *sun6i_dma_prep_slave_sg(
 	struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
 	struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 	struct dma_slave_config *sconfig = &vchan->cfg;
-	struct sun6i_dma_lli *v_lli, *prev = NULL;
+	struct sun6i_dma_lli *v_lli, *next, *prev = NULL;
 	struct sun6i_desc *txd;
 	struct scatterlist *sg;
 	dma_addr_t p_lli;
@@ -752,8 +752,12 @@ static struct dma_async_tx_descriptor *sun6i_dma_prep_slave_sg(
 	return vchan_tx_prep(&vchan->vc, &txd->vd, flags);
 
 err_lli_free:
-	for (prev = txd->v_lli; prev; prev = prev->v_lli_next)
-		dma_pool_free(sdev->pool, prev, virt_to_phys(prev));
+	v_lli = txd->v_lli;
+	while (v_lli) {
+		next = v_lli->v_lli_next;
+		dma_pool_free(sdev->pool, v_lli, virt_to_phys(v_lli));
+		v_lli = next;
+	}
 	kfree(txd);
 	return NULL;
 }
@@ -769,7 +773,7 @@ static struct dma_async_tx_descriptor *sun6i_dma_prep_dma_cyclic(
 	struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
 	struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 	struct dma_slave_config *sconfig = &vchan->cfg;
-	struct sun6i_dma_lli *v_lli, *prev = NULL;
+	struct sun6i_dma_lli *v_lli, *next, *prev = NULL;
 	struct sun6i_desc *txd;
 	dma_addr_t p_lli;
 	u32 lli_cfg;
@@ -820,8 +824,12 @@ static struct dma_async_tx_descriptor *sun6i_dma_prep_dma_cyclic(
 	return vchan_tx_prep(&vchan->vc, &txd->vd, flags);
 
 err_lli_free:
-	for (prev = txd->v_lli; prev; prev = prev->v_lli_next)
-		dma_pool_free(sdev->pool, prev, virt_to_phys(prev));
+	v_lli = txd->v_lli;
+	while (v_lli) {
+		next = v_lli->v_lli_next;
+		dma_pool_free(sdev->pool, v_lli, virt_to_phys(v_lli));
+		v_lli = next;
+	}
 	kfree(txd);
 	return NULL;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
