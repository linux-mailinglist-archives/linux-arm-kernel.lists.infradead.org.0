Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D42D9BF0E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 19:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mp4PhmdOlKuzMJj1aYmgl6TPrQ4GWNYJ2ZgtcONKgTY=; b=YCp09EuqviDh4f
	rJa+9ITdorH5Jmg0IHGr86vIbmq2VIphLoqTrYIP2EW5pptn8x//DNaKBYrktFK3DeWlXIvv40jBA
	HVrcCUIgbUo2BLx6BSX78TyQpJkic+2PRdgg4u88oebK98regxmecWmJOnV5md5el57RR1WLqAWHu
	Anhm9g2G72tqu/5t+DvypS5BgK2PuAFhIIiMds4eRem4L9BjnjmV6GEsh4lnLJOET082pGCThxglG
	TkuATab6yb4BwcB8pCpot5mOnymaHwnKPe6Vj+9CuO2a6cLF09m/SGCDmdPZduTLJPYZpweRNcoyd
	Rcc9bP6EvNA+nwBEBh7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1aBI-0005RS-Sj; Sat, 24 Aug 2019 17:50:29 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1aB9-0005Qj-3Y
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 17:50:20 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 35AC5210DC;
 Sat, 24 Aug 2019 13:50:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 24 Aug 2019 13:50:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=8Wtw1vtZ5NpN95p5+pBlk0n3xz
 +nskk3VGn79kzaP3k=; b=FDKi03sXVcLNLCAKXeMNZPS1GXyGmBDiJgGj9tZrT1
 2E85/X9qdpIljjdi5LZ2M0EVj8MmkdTZBACKqNYyObyG//eM9/AGlVJHlYkZ0xws
 CLDR8wZ4IU+nISwHhkhqsWT+YP/xQR1map8PRzhhtw/W4K/IESW7XmMq8+Ebduid
 759NYtVWklowFKJ/p1RwMO8fn9vtrZKcRCU76S7JlnRtRN5Vonvq+9cEMrIDAYVt
 Y3dfL05VjByA9ciBepaPJ8oj8iZVV1hdFWkVlPvbKjj2qyPWAE9L4IzuPU8pujfO
 lI2s+PydZ+EALADPzM4DWXVwBQo9ZZlXlWRsJFtkaZ5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=8Wtw1vtZ5NpN95p5+
 pBlk0n3xz+nskk3VGn79kzaP3k=; b=JePkrS4ulA/ZIhjXYnZuqK/YIw3G340mr
 SFVMpMP0HjDUE8S8XmlUyl9cxaXXE17xaKzhr+6eDTbyXl7/syBIgujXfx6iG5Tc
 6VoEzfGWLYyrEfNRncBptnbVFZcIcDPap0i28IvkVF0omBqDImr3kEUKJXc0ohvs
 INsNmvt3G2KF5oBmMsTZ5qLH5ty6Kqwg4rHOGVNd5Ufzt86Fp6HdUsTxNvk7L1ez
 wPY92j6udbfEiaYAxXLj2q4VICy3pHWCtls6Og1Qlb75mz58PdYAZ3x9wMA9INVf
 KeYCVMXmqoSwog5vr3QLUQMBGo9LEIvXlW1ZqaFZZoOUAlyKtdEBg==
X-ME-Sender: <xms:0XhhXfG5yOMcRZxxO5t9pRvnOtCIdJEbhYYqFiHuS4C3pFP9zk7r9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehtddguddvtdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:0XhhXQmn1lxwowupyNJheso6Z3-KUeO-YBiHZL2rRqp0S0Fd_4pjrg>
 <xmx:0XhhXcIhbu07u1j_6MPs4nWjiSaOTe8g6Jz7p3m1-j2cvk7z0hVMyA>
 <xmx:0XhhXRa1D3T_VA-j7-agciLov-g4xWa6fgzcs1z_UmDTmlsehpR7Fg>
 <xmx:1HhhXcd8_1mvgTjJ1WDXPMWFItE5qH64ezmy5zVSR47otXKNAcsAjw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 18CDB8005A;
 Sat, 24 Aug 2019 13:50:09 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Stephen Boyd <sboyd@chromium.org>
Subject: [PATCH] bus: sunxi-rsb: Make interrupt handling more robust
Date: Sat, 24 Aug 2019 12:50:13 -0500
Message-Id: <20190824175013.28840-1-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_105019_362484_B4327F53 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RSB controller has two registers for controlling interrupt inputs:
RSB_INTE, which has bits for each possible interrupt, and the global
interrupt enable bit in RSB_CTRL.

Currently, we enable the bits in RSB_INTE before each transfer, but this
is unnecessary because we never disable them. Move the initialization of
RSB_INTE so it is done only once.

We also set the global interrupt enable bit before each transfer. Unlike
other bits in RSB_CTRL, this bit is cleared by writing a zero. Thus, we
clear the bit in the post-timeout cleanup code, so note that in the
comment.

However, if we do receive an interrupt, we do not clear the bit. Nor do
we clear interrupt statuses before starting a transfer. Thus, if some
other driver uses the RSB bus while Linux is suspended (as both Trusted
Firmware and SCP firmware do to control the PMIC), we receive spurious
interrupts upon resume. This causes false completion of a transfer, and
the next transfer starts prematurely, causing a LOAD_BSY condition. The
end result is that some transfers at resume fail with -EBUSY.

With this patch, all transfers reliably succeed during/after resume.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/bus/sunxi-rsb.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
index be79d6c6a4e4..b8043b58568a 100644
--- a/drivers/bus/sunxi-rsb.c
+++ b/drivers/bus/sunxi-rsb.c
@@ -274,7 +274,7 @@ static int _sunxi_rsb_run_xfer(struct sunxi_rsb *rsb)
 	reinit_completion(&rsb->complete);
 
 	writel(RSB_INTS_LOAD_BSY | RSB_INTS_TRANS_ERR | RSB_INTS_TRANS_OVER,
-	       rsb->regs + RSB_INTE);
+	       rsb->regs + RSB_INTS);
 	writel(RSB_CTRL_START_TRANS | RSB_CTRL_GLOBAL_INT_ENB,
 	       rsb->regs + RSB_CTRL);
 
@@ -282,7 +282,7 @@ static int _sunxi_rsb_run_xfer(struct sunxi_rsb *rsb)
 					    msecs_to_jiffies(100))) {
 		dev_dbg(rsb->dev, "RSB timeout\n");
 
-		/* abort the transfer */
+		/* abort the transfer and disable interrupts */
 		writel(RSB_CTRL_ABORT_TRANS, rsb->regs + RSB_CTRL);
 
 		/* clear any interrupt flags */
@@ -480,6 +480,9 @@ static irqreturn_t sunxi_rsb_irq(int irq, void *dev_id)
 	status = readl(rsb->regs + RSB_INTS);
 	rsb->status = status;
 
+	/* Disable any further interrupts */
+	writel(0, rsb->regs + RSB_CTRL);
+
 	/* Clear interrupts */
 	status &= (RSB_INTS_LOAD_BSY | RSB_INTS_TRANS_ERR |
 		   RSB_INTS_TRANS_OVER);
@@ -718,6 +721,9 @@ static int sunxi_rsb_probe(struct platform_device *pdev)
 		goto err_reset_assert;
 	}
 
+	writel(RSB_INTS_LOAD_BSY | RSB_INTS_TRANS_ERR | RSB_INTS_TRANS_OVER,
+	       rsb->regs + RSB_INTE);
+
 	/* initialize all devices on the bus into RSB mode */
 	ret = sunxi_rsb_init_device_mode(rsb);
 	if (ret)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
