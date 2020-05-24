Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CFE1DFD64
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 08:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q85+9iw6WQlMFeLkT60IgCKPbQFZicE1UIqBrm/B6es=; b=CHe
	Ex/lIKxmdcokTgqrybxP0q2o2IUs432oH7CUQp9cGR9LQfUnoqRu8kR32w8xc43y3HkqH2XCgBL3c
	MmwliOJ8cVMzJsXLMC1eEXuwXj70PEY0LK7G5nG9ow9vuiTvMLY7gMmnDZ0IvnmTXB+dg2NeNmwY3
	BqZC+JpDI5gD/z4XNH8S+trN6YcwG1WxZceAoZZH175OeFcNiba7H+RLoYxHixJ9SSgbFjSmCquOn
	ozo9zuu971ra2+sZKbqyBbvlih35CLNzG9vjDfHWmdDu5r7vhGmEci78iBud9Q7u5MRIuF9lSdmJz
	G8CAQDqEYi+vk6jDqA699XD6VPBGmtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcjig-0004nY-G6; Sun, 24 May 2020 06:02:46 +0000
Received: from mail.zju.edu.cn ([61.164.42.155] helo=zju.edu.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcjiY-0004n0-G3
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 06:02:40 +0000
Received: from localhost.localdomain (unknown [222.205.77.158])
 by mail-app4 (Coremail) with SMTP id cS_KCgC3nwrwDcpee6wbAg--.17220S4;
 Sun, 24 May 2020 14:02:27 +0800 (CST)
From: Dinghao Liu <dinghao.liu@zju.edu.cn>
To: dinghao.liu@zju.edu.cn,
	kjlu@umn.edu
Subject: [PATCH] dmaengine: stm32-dmamux: Fix runtime PM imbalance on error
Date: Sun, 24 May 2020 14:02:23 +0800
Message-Id: <20200524060224.16189-1-dinghao.liu@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: cS_KCgC3nwrwDcpee6wbAg--.17220S4
X-Coremail-Antispam: 1UD129KBjvJXoW7Kw47Zr18AF13Cr1fXrWDArb_yoW8uFW7pr
 W8tFWFvr4jqaySy3yDJr4kXFZa934fKr97trW8Gwn3Zw45XFyDt3WrJrWj9F18XF95Ar4D
 Kr17A3yxCF1UuFUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9l1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
 w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
 IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2
 z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcV
 Aq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j
 6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64
 vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxkIecxE
 wVAFwVW8AwCF04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26r4fKr1UJr1l4I8I3I
 0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWU
 GVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI
 0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0
 rVWrJr0_WFyUJwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r
 4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUndb1UUUUU
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAgEJBlZdtORShQAbsb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_230239_262986_9F373ED2 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In stm32_dmamux_route_allocate(),  pm_runtime_get_sync() increments
the runtime PM usage counter even when it returns an error code.
Thus a pairing decrement is needed on the error handling path to
keep the counter balanced.

In stm32_dmamux_probe(), when platform_get_resource() returns an
error code, a pairing runtime PM usage counter decrement is needed
to keep the counter balanced. For error paths after this call,
things are the same.

Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
---
 drivers/dma/stm32-dmamux.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/stm32-dmamux.c b/drivers/dma/stm32-dmamux.c
index 12f7637e13a1..e68e7078ff94 100644
--- a/drivers/dma/stm32-dmamux.c
+++ b/drivers/dma/stm32-dmamux.c
@@ -139,6 +139,7 @@ static void *stm32_dmamux_route_allocate(struct of_phandle_args *dma_spec,
 	spin_lock_irqsave(&dmamux->lock, flags);
 	ret = pm_runtime_get_sync(&pdev->dev);
 	if (ret < 0) {
+		pm_runtime_put_noidle(&pdev->dev);
 		spin_unlock_irqrestore(&dmamux->lock, flags);
 		goto error;
 	}
@@ -246,8 +247,10 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	iomem = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(iomem))
+	if (IS_ERR(iomem)) {
+		pm_runtime_put_noidle(&pdev->dev);
 		return PTR_ERR(iomem);
+	}
 
 	spin_lock_init(&stm32_dmamux->lock);
 
@@ -256,12 +259,14 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 		ret = PTR_ERR(stm32_dmamux->clk);
 		if (ret != -EPROBE_DEFER)
 			dev_err(&pdev->dev, "Missing clock controller\n");
+		pm_runtime_put_noidle(&pdev->dev);
 		return ret;
 	}
 
 	ret = clk_prepare_enable(stm32_dmamux->clk);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "clk_prep_enable error: %d\n", ret);
+		pm_runtime_put_noidle(&pdev->dev);
 		return ret;
 	}
 
@@ -300,6 +305,7 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 	return 0;
 
 err_clk:
+	pm_runtime_put_noidle(&pdev->dev);
 	clk_disable_unprepare(stm32_dmamux->clk);
 
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
