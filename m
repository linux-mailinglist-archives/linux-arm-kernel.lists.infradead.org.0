Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080741593E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:52:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=u4Hj9iLbRUP7JMo5u6Q9AxP0cxFq/55h5kZCFqroiXM=; b=GV0
	kBjwVFtaboPTj/cGiDOel91Eh+O6aLaq90u9zTXm8lpwh1EoYu2pwDUOkC01CtX54VSHKMiSgCLl7
	qOdIBCFr4KnR+2AgDAuDp+6KBiQ9EN89DVhKCXVBm2kTWXojPVoPX2z6n3h5ssfdlPqLWboV2i+JY
	6v4/Nxx9nsyi3AkSxYovX9dkEHdulRlOW96h47kaXyr6tQ3i4632ZuU3UpG8dAxlExU+gsT/KOW1f
	NitIWgDCwys+OLs19oVb9yw6lB5XRgw4LH1iQtIZXrImmc95AQgzPhODtzYjja5Iv7i9X0AC7qSI0
	GvshdVWWCZj4hrtVHcpu0ds0hOi57mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xpq-00074K-0F; Tue, 11 Feb 2020 15:52:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1XpK-0006gS-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:51:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D1EA31B;
 Tue, 11 Feb 2020 07:51:53 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A73DF3F68E;
 Tue, 11 Feb 2020 07:51:52 -0800 (PST)
Date: Tue, 11 Feb 2020 15:51:51 +0000
From: Mark Brown <broonie@kernel.org>
To: Etienne Carriere <etienne.carriere@st.com>
Subject: Applied "spi: stm32-qspi: defer probe for reset controller" to the
 spi tree
In-Reply-To: <20200203135048.1299-2-patrice.chotard@st.com>
Message-Id: <applied-20200203135048.1299-2-patrice.chotard@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_075154_336651_E89CE038 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: christophe.kerello@st.com, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 patrice.chotard@st.com, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: stm32-qspi: defer probe for reset controller

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.7

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 8196f7bcc2adf21f83d82691d537fcef7abaa1c7 Mon Sep 17 00:00:00 2001
From: Etienne Carriere <etienne.carriere@st.com>
Date: Mon, 3 Feb 2020 14:50:47 +0100
Subject: [PATCH] spi: stm32-qspi: defer probe for reset controller

Changes stm32 QSPI driver to defer its probe operation when a reset
controller device have not yet probed but is registered in the
system.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
Link: https://lore.kernel.org/r/20200203135048.1299-2-patrice.chotard@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32-qspi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 4ef569b47aa6..13bb64bf4c8f 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -615,7 +615,11 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	}
 
 	rstc = devm_reset_control_get_exclusive(dev, NULL);
-	if (!IS_ERR(rstc)) {
+	if (IS_ERR(rstc)) {
+		ret = PTR_ERR(rstc);
+		if (ret == -EPROBE_DEFER)
+			goto err;
+	} else {
 		reset_control_assert(rstc);
 		udelay(2);
 		reset_control_deassert(rstc);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
