Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666831B86A1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 14:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qihV81uKybhz1O9GVYjN3uKeOl+wx4DWg4G7j/y59sE=; b=LQR
	6avqXCyvS72bPaDJgTmI8Cr2qzd6OPbrzWKM2GPqQoy9bfRwVu6Qr0cRv6xw7I1tZvBpGc99h9dcB
	ovXhQu9XDiPAVx2HhLPuxNXtHiCqZ3tFYvVbZUWImMlt6JM1iWG7v9UWqxehNgSuaz6GSF2bgYGkB
	6V6IbvR2dfkYNxb+I4l32uFtQPRy2cfiKRY+MoI5pZR1EOu+Vmo6x+K+2ftQtVHOVYKyIZgyME69n
	6fLd2Ff8V4xatsUMq7b1wV277FJOmuqMIwvp+IkEwsIYLiNmOOzvpx8PqjfsMRrYP7HHfFU9xQsnb
	rHX2/qzazdCH06fLr3VcgtJH3+xOZaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSKKb-0006AP-5x; Sat, 25 Apr 2020 12:54:53 +0000
Received: from mail.fudan.edu.cn ([202.120.224.10] helo=fudan.edu.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSKKQ-00068b-Kk
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 12:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fudan.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
 Message-Id; bh=johz7ezEhkI1R++xhPEgeFcUv28KqNL7JOn5MDPRhlk=; b=d
 D8DUw+viibmUZm5PP8JEIAolLCWyk3njOqMhSzngIu1I7TJFmhNS9SCNuhF7Tvi9
 n1kSwYBadRdIIFcaCz6OZpAj3Y/QcVmRxGygdblCpTP+qffosZfULnQmaEWEu8oF
 EAxbdD44guGglHl5iEDiBvUsBWnvYXxplnQXCtnkVw=
Received: from localhost.localdomain (unknown [120.229.255.80])
 by app1 (Coremail) with SMTP id XAUFCgAnLsb_MqRehWmNAA--.2704S3;
 Sat, 25 Apr 2020 20:54:24 +0800 (CST)
From: Xiyu Yang <xiyuyang19@fudan.edu.cn>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] mmc: owl-mmc: Fix dma_chan refcnt leak in owl_mmc_probe()
Date: Sat, 25 Apr 2020 20:53:45 +0800
Message-Id: <1587819225-38916-1-git-send-email-xiyuyang19@fudan.edu.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: XAUFCgAnLsb_MqRehWmNAA--.2704S3
X-Coremail-Antispam: 1UD129KBjvJXoW7CFWUCw4kJF13uF13XF1fZwb_yoW8ur1kpF
 WfG3yfKrW8KF45trZxGa18XF1Fqr4Ik34xKayDGw1rZ390q39FyF13CFyFgF1rJFykJwn2
 9F1jgr4rZFyDuw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9K14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26rxl
 6s0DM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
 64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1Y6r17McIj6I8E87Iv67AKxVWUJVW8Jw
 Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAG
 YxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxkIecxEwVAFwVW5JwCF04k20xvY0x0EwIxGrw
 CFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE
 14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2
 IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxK
 x2IYs7xG6Fyj6rWUJwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14
 v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfU5fHUUUUUU
X-CM-SenderInfo: irzsiiysuqikmy6i3vldqovvfxof0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_055443_147152_F22ACAA2 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.120.224.10 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.120.224.10 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Xin Tan <tanxin.ctf@gmail.com>, yuanxzhang@fudan.edu.cn, kjlu@umn.edu,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

owl_mmc_probe() invokes dma_request_chan(), which returns a reference of
the specified dma_chan object to "owl_host->dma" with increased refcnt.

When owl_mmc_probe() encounters error, it calls mmc_free_host() to free
the "mmc" memory. Since "owl_host" comes from one of "mmc" fields, this
"free" behavior causes "owl_host" and "owl_host->dma" become invalid, so
the refcount for its field should be decreased to keep refcount balanced
before mmc_free_host() calls.

The reference counting issue happens in several exception handling paths
of owl_mmc_probe(). When those error scenarios occur such as failed to
request irq, the function forgets to decrease the refcnt increased by
dma_request_chan(), causing a refcnt leak.

Fix this issue by jumping to "err_put_dma" label when those error
scenarios occur.

Signed-off-by: Xiyu Yang <xiyuyang19@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
---
 drivers/mmc/host/owl-mmc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/owl-mmc.c b/drivers/mmc/host/owl-mmc.c
index 01ffe51f413d..4dc72f5f32f5 100644
--- a/drivers/mmc/host/owl-mmc.c
+++ b/drivers/mmc/host/owl-mmc.c
@@ -635,7 +635,7 @@ static int owl_mmc_probe(struct platform_device *pdev)
 	owl_host->irq = platform_get_irq(pdev, 0);
 	if (owl_host->irq < 0) {
 		ret = -EINVAL;
-		goto err_free_host;
+		goto err_put_dma;
 	}
 
 	ret = devm_request_irq(&pdev->dev, owl_host->irq, owl_irq_handler,
@@ -643,19 +643,22 @@ static int owl_mmc_probe(struct platform_device *pdev)
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to request irq %d\n",
 			owl_host->irq);
-		goto err_free_host;
+		goto err_put_dma;
 	}
 
 	ret = mmc_add_host(mmc);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to add host\n");
-		goto err_free_host;
+		goto err_put_dma;
 	}
 
 	dev_dbg(&pdev->dev, "Owl MMC Controller Initialized\n");
 
 	return 0;
 
+err_put_dma:
+	if (owl_host->dma)
+		dma_release_channel(owl_host->dma);
 err_free_host:
 	mmc_free_host(mmc);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
