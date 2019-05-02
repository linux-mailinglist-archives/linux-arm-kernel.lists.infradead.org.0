Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654801115A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 04:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=5bRbhWHbGJd3gOWLCmcMf65kBV0jUf8SMV7rXczquls=; b=gpQ
	noWJBqboD4ewBwAt5Zb3sbTeJKZQhy6I5/ZNR5g7D+9mS9ANmQyM0HG2Lo5xaaNPo4cHtPmdqkxVz
	nrWLXOvb+Nx2LokzOuxTY5byuSRKXomrlx+OU8EjxpICQ+NJzTRuJLdHnP5zgQZNoYPbsgjUh6KK7
	d32EhVMBjExi+n2Bk1O05Y+Xr3GqQiS79kQB6opVTcSTymuslhlykpFR9/463Pk/mogm14/nKdC4B
	tpfcGsEzmEd/oITR9ZdZ82cRz5axc4+0AefPhTjSq8w/bzZCH2zVFtXUYp7WSMXW3UARqx+7xvLrj
	bES21PUx1fqxdr/gazHiMdNH1DNpSbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1Ko-0007NO-3V; Thu, 02 May 2019 02:20:30 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1Jd-0004te-Q1
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 02:19:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=kwVSEmX+7xvH0oZqkLgASzSDaFzaBNv6TP0vPiT1Y8g=; b=Wb5CNEaEpR9v
 lLpyZa1vpc4V8fMaqpjEintFLvcfrJ3nymkDSv8qcxvd3FPj2LO6EDH3OuwYeSlq4Y7JKJFcm+k6n
 C6hKaLiiFnfY+gXSJkQHfkBbXfbg0doMbSyKlcc/ViFh/GmvRYOJJzJris2UmMSQmmeF+nF6n2jvk
 XZQgw=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1JY-0005wf-RC; Thu, 02 May 2019 02:19:13 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id B70A2441D3E; Thu,  2 May 2019 03:19:09 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Evan Green <evgreen@chromium.org>
Subject: Applied "spi: pxa2xx: Add support for Intel Comet Lake" to the spi
 tree
In-Reply-To: <20190416032743.180517-1-evgreen@chromium.org>
X-Patchwork-Hint: ignore
Message-Id: <20190502021909.B70A2441D3E@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:19:09 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_191918_615737_E4FD4F56 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rajat Jain <rajatja@chromium.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: pxa2xx: Add support for Intel Comet Lake

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git 

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

From 41a918026407be4ca2727cd0d6243fe6cdbfc4ed Mon Sep 17 00:00:00 2001
From: Evan Green <evgreen@chromium.org>
Date: Mon, 15 Apr 2019 20:27:43 -0700
Subject: [PATCH] spi: pxa2xx: Add support for Intel Comet Lake

Add PCI IDs for SPI on Comet Lake.

Signed-off-by: Evan Green <evgreen@chromium.org>
Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Reviewed-by: Jarkko Nikula <jarkko.nikula@linux.intel.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-pxa2xx.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 3e6811ef37e8..f5546eeaebe4 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1454,6 +1454,10 @@ static const struct pci_device_id pxa2xx_spi_pci_compound_match[] = {
 	{ PCI_VDEVICE(INTEL, 0xa32a), LPSS_CNL_SSP },
 	{ PCI_VDEVICE(INTEL, 0xa32b), LPSS_CNL_SSP },
 	{ PCI_VDEVICE(INTEL, 0xa37b), LPSS_CNL_SSP },
+	/* CML-LP */
+	{ PCI_VDEVICE(INTEL, 0x02aa), LPSS_CNL_SSP },
+	{ PCI_VDEVICE(INTEL, 0x02ab), LPSS_CNL_SSP },
+	{ PCI_VDEVICE(INTEL, 0x02fb), LPSS_CNL_SSP },
 	{ },
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
