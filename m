Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FA0528AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=d1suY1FBgCu4ZTykRU65fLKpLImDASVY6uhQv6JnZjc=; b=VQp
	SPXiZou2aLMVVMon8FiSu0MDCg2/v1zS4MX0xbhQSwMv2J2LGVcvvyj5YVKPQYlMN7ZkwVX41xCFU
	6u1M/q5edjBXcaRfpICLbdDulCV1ykQEINJNydm+KsckeQX/XAA8aJ8sJdBbozpbhJCYWvpBXo6cT
	nY0KlQ+udDZqidhChvwRzGwlx/KA/XLvDPuemsbhBoKOfJ1BNHZKXJPe/NQ01tWud9rZOZkFH8Kmu
	DLOWBI21AARNWzp+cM56U7FNbrFwME8/4yWBkjeZBT89ew0OEXMqJoIpaTWr+tQsBTLO95PFULQx3
	2GJWLRtP/T5UMiYhx5i+XS35phgsPfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiAF-0005ZD-L8; Tue, 25 Jun 2019 09:54:59 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfi9K-000598-6M
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:54:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=4xhafNZ9vsKKvjfqO+yD1YjW/mVePLcmRuEcd5QcDMA=; b=SCJr7OJ8/Njz
 sjrg808suH9HC4CBUz9daEFnlgLmMAzA5NIn6wpTTpHuJacXeImBpd1jD9AzN1rKJLX13BbcaUxxr
 uFqawaJkOIdT6Qq4pqif2W5wJ3lbTxODiXA1sYC3ma8Qq5nd+VVgxao/29MX0Arurm+aWI+nzzXcU
 EmTU4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hfi9F-0004mM-03; Tue, 25 Jun 2019 09:53:57 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id DD2B044006F; Mon, 24 Jun 2019 17:32:28 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Patrice Chotard <patrice.chotard@st.com>
Subject: Applied "spi: spi-stm32-qspi: Remove CR_FTHRES_MASK usage" to the spi
 tree
In-Reply-To: <20190620131323.5955-1-patrice.chotard@st.com>
X-Patchwork-Hint: ignore
Message-Id: <20190624163228.DD2B044006F@finisterre.sirena.org.uk>
Date: Mon, 24 Jun 2019 17:32:28 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_025402_825701_73508FCF 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

   spi: spi-stm32-qspi: Remove CR_FTHRES_MASK usage

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.2

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

From 94613d5ae1091a28b33f38e18d96e8d953ac18df Mon Sep 17 00:00:00 2001
From: Patrice Chotard <patrice.chotard@st.com>
Date: Thu, 20 Jun 2019 15:13:23 +0200
Subject: [PATCH] spi: spi-stm32-qspi: Remove CR_FTHRES_MASK usage

On STM32 F4/F7/H7 SoCs, FTHRES is a 5 bits field in QSPI_CR register,
but for STM32MP1 SoCs, FTHRES is a 4 bits field long. CR_FTHRES_MASK
definition is not correct.

As for all these SoCs, FTHRES field is set to 3, FIELD_PREP() macro
is used with a constant as second parameter which make its usage useless.

CR_FTHRES_MASK and FIELD_PREP() can be removed.

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32-qspi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 42f8e3c6aa1f..5dbb6a8e893c 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -29,7 +29,7 @@
 #define CR_SSHIFT		BIT(4)
 #define CR_DFM			BIT(6)
 #define CR_FSEL			BIT(7)
-#define CR_FTHRES_MASK		GENMASK(12, 8)
+#define CR_FTHRES_SHIFT		8
 #define CR_TEIE			BIT(16)
 #define CR_TCIE			BIT(17)
 #define CR_FTIE			BIT(18)
@@ -463,7 +463,7 @@ static int stm32_qspi_setup(struct spi_device *spi)
 	flash->presc = presc;
 
 	mutex_lock(&qspi->lock);
-	qspi->cr_reg = FIELD_PREP(CR_FTHRES_MASK, 3) | CR_SSHIFT | CR_EN;
+	qspi->cr_reg = 3 << CR_FTHRES_SHIFT | CR_SSHIFT | CR_EN;
 	writel_relaxed(qspi->cr_reg, qspi->io_base + QSPI_CR);
 
 	/* set dcr fsize to max address */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
