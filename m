Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772EF1E34D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YW6zXaGqN775/Th2Whb0GyO6GuBD9DJ3aZPv+HKL7fs=; b=ELt
	N4cm41r9bHZ8OrKvwMAEKt6QCv7ZOC0mTeHdZ0beBftf+byXtOkIF+LUPrzBBYarxbIqzYGO9+90a
	ELqBRQaGStEKDxRrObw9rpsp57DprkbUbRUEkHg98c4rbgf7NM6XKQ16HcF+Qw37itzU/teKrkb9s
	D63aOBqrN/ETpmQ9sLlMuibpB//WQmSgyEme6w7ZSYJEQdPRXtJbHOuMkgjsONEGAqZkeqv0r3FTM
	heOK6ekThWnZxu4tWtZlljqxqRiAj3xmuEqevo1/CI0L4wDf53lUPtNEMNljkymWX1apm0UzETeL9
	HLOHBU5nhk8hqUvw286A0qXKliM+jYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdl2L-0006T0-2M; Wed, 27 May 2020 01:39:17 +0000
Received: from mail.zju.edu.cn ([61.164.42.155] helo=zju.edu.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdl2A-0006SI-Pl
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:39:08 +0000
Received: from localhost.localdomain (unknown [222.205.60.151])
 by mail-app3 (Coremail) with SMTP id cC_KCgCXSECuxM1ejBQOAA--.22651S4;
 Wed, 27 May 2020 09:38:57 +0800 (CST)
From: Dinghao Liu <dinghao.liu@zju.edu.cn>
To: dinghao.liu@zju.edu.cn,
	kjlu@umn.edu
Subject: [PATCH] [v2] i2c: stm32f7: Fix runtime PM imbalance on error
Date: Wed, 27 May 2020 09:38:53 +0800
Message-Id: <20200527013853.30252-1-dinghao.liu@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: cC_KCgCXSECuxM1ejBQOAA--.22651S4
X-Coremail-Antispam: 1UD129KBjvJXoWxGFW8AFyxJF4UWw15Ar4xWFg_yoW5Wr4xpr
 W5KayakFWUt3yvqFn3ArnIqF98W3yft34DZFyF93WS9Fs5X3WDtFy8JFyYvF48XrZ5A3WU
 A39FywsrC3Wrt3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvF1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
 w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
 IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW0oVCq3wA2z4x0Y4vEx4A2
 jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52
 x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWU
 GwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
 8JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_KwCF04k20xvY0x0EwIxGrwCF
 04k20xvE74AGY7Cv6cx26r4fKr1UJr1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4
 xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43
 MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I
 0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWrJr0_WFyUJwCI42IY6I8E87Iv67AK
 xVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvj
 fUOMKZDUUUU
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAg0MBlZdtOUT6wAHsg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_183907_139568_D4C2D25C 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, linux-i2c@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pm_runtime_get_sync() increments the runtime PM usage counter even
the call returns an error code. Thus a pairing decrement is needed
on the error handling path to keep the counter balanced.

Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
---

Changelog:

v2: - Use pm_runtime_put_noidle() instead of
      pm_runtime_put_autosuspend(). Fix 5 more
      similar cases within this dirver.
---
 drivers/i2c/busses/i2c-stm32f7.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 330ffed011e0..822fd1f5b5ae 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1620,8 +1620,10 @@ static int stm32f7_i2c_xfer(struct i2c_adapter *i2c_adap,
 	f7_msg->smbus = false;
 
 	ret = pm_runtime_get_sync(i2c_dev->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(i2c_dev->dev);
 		return ret;
+	}
 
 	ret = stm32f7_i2c_wait_free_bus(i2c_dev);
 	if (ret)
@@ -1666,8 +1668,10 @@ static int stm32f7_i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
 	f7_msg->smbus = true;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(dev);
 		return ret;
+	}
 
 	ret = stm32f7_i2c_wait_free_bus(i2c_dev);
 	if (ret)
@@ -1767,8 +1771,10 @@ static int stm32f7_i2c_reg_slave(struct i2c_client *slave)
 		return ret;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(dev);
 		return ret;
+	}
 
 	if (!stm32f7_i2c_is_slave_registered(i2c_dev))
 		stm32f7_i2c_enable_wakeup(i2c_dev, true);
@@ -1837,8 +1843,10 @@ static int stm32f7_i2c_unreg_slave(struct i2c_client *slave)
 	WARN_ON(!i2c_dev->slave[id]);
 
 	ret = pm_runtime_get_sync(i2c_dev->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(i2c_dev->dev);
 		return ret;
+	}
 
 	if (id == 0) {
 		mask = STM32F7_I2C_OAR1_OA1EN;
@@ -2182,8 +2190,10 @@ static int stm32f7_i2c_regs_backup(struct stm32f7_i2c_dev *i2c_dev)
 	struct stm32f7_i2c_regs *backup_regs = &i2c_dev->backup_regs;
 
 	ret = pm_runtime_get_sync(i2c_dev->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(i2c_dev->dev);
 		return ret;
+	}
 
 	backup_regs->cr1 = readl_relaxed(i2c_dev->base + STM32F7_I2C_CR1);
 	backup_regs->cr2 = readl_relaxed(i2c_dev->base + STM32F7_I2C_CR2);
@@ -2204,8 +2214,10 @@ static int stm32f7_i2c_regs_restore(struct stm32f7_i2c_dev *i2c_dev)
 	struct stm32f7_i2c_regs *backup_regs = &i2c_dev->backup_regs;
 
 	ret = pm_runtime_get_sync(i2c_dev->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(i2c_dev->dev);
 		return ret;
+	}
 
 	cr1 = readl_relaxed(i2c_dev->base + STM32F7_I2C_CR1);
 	if (cr1 & STM32F7_I2C_CR1_PE)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
