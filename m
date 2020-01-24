Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBB6147605
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:17:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KtO0+TTICo+rlx7dvpmMi+Kbt7gxcmjPaeb+uLiQt4=; b=qB5a6+jhm2BHON
	Be9wcBl1qsNRT62IugN8L5ohfreSvCXrqwia62KW2lg8T3DM853Pv6e4+wuC4j1vzXST+kDtk/qw1
	JHG8+Ndlx3o7FJzGjt9a4Tou+7Q8Jz8M0PgD6KPanEWcM25YNB6Uz59dD1HswL1eENvUnmYw1AWKA
	tkX2KahJS+9uQGoqqMYBLu6e6tvrGGQFkOB+jRvjpjoicnrHCKLGSHK/neRlai2vc/hCOI8q3z3rH
	JoFq0iFkEne4WJHKVJs/uwbSNEfsr+6Fy2W3/p4ZtIxGJW3LJhTB0G/RU3i0TZJA2Xyw0HT+hrSk/
	VP6vdn9EvsAt7SflBCFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iunbJ-0002Xm-Nq; Fri, 24 Jan 2020 01:17:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iunbA-0002WH-PZ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:17:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C7D72087E;
 Fri, 24 Jan 2020 01:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579828642;
 bh=z0Eloz/7uH30N/JaCMyrHQ6PHSsN/zgQzEJaOUFKGCk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jccYSLQ1LmqUy9YDf/7GAgZnou0SKt+kEvDD4Dy/t8PjhkdataAD3TuzWbA4Mksha
 zNnhBZmmmCcmqbwvc1S09wIAQmN0P4T9u18yofnNB25PWCHgnojVavQusuLPO/WbYs
 OC0DRiB4ipNTllwizMrJCZ0CJt8T59GLd2owa7y8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 12/33] spi: pxa2xx: Add support for Intel Comet
 Lake-H
Date: Thu, 23 Jan 2020 20:16:47 -0500
Message-Id: <20200124011708.18232-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011708.18232-1-sashal@kernel.org>
References: <20200124011708.18232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_171724_850385_CBF10905 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jarkko Nikula <jarkko.nikula@linux.intel.com>

[ Upstream commit f0cf17ed76cffa365001d263ced1f130ec794917 ]

Add Intel Comet Lake-H LPSS SPI PCI IDs.

Signed-off-by: Jarkko Nikula <jarkko.nikula@linux.intel.com>
Link: https://lore.kernel.org/r/20191029115802.6779-1-jarkko.nikula@linux.intel.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-pxa2xx.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 9f92165fe09f8..2fd843b18297d 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1461,6 +1461,10 @@ static const struct pci_device_id pxa2xx_spi_pci_compound_match[] = {
 	{ PCI_VDEVICE(INTEL, 0x02aa), LPSS_CNL_SSP },
 	{ PCI_VDEVICE(INTEL, 0x02ab), LPSS_CNL_SSP },
 	{ PCI_VDEVICE(INTEL, 0x02fb), LPSS_CNL_SSP },
+	/* CML-H */
+	{ PCI_VDEVICE(INTEL, 0x06aa), LPSS_CNL_SSP },
+	{ PCI_VDEVICE(INTEL, 0x06ab), LPSS_CNL_SSP },
+	{ PCI_VDEVICE(INTEL, 0x06fb), LPSS_CNL_SSP },
 	/* TGL-LP */
 	{ PCI_VDEVICE(INTEL, 0xa0aa), LPSS_CNL_SSP },
 	{ PCI_VDEVICE(INTEL, 0xa0ab), LPSS_CNL_SSP },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
