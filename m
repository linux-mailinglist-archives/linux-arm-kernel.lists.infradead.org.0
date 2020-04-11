Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3311A567A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWQQO+4PFtOsr1KYa+f9XMwZqBvSvlXvAQrauCpBh3c=; b=nlfuIV4p1pM/Mb
	P8uq5Txu414/j7tJf9lRT3/alZImsfWUeBJST7ANX1YdfBCskcuX1iDMwdZ+fguiC/Oy4orEQweB8
	ZBBfJida396DnU0T1o25DsBGVDIhw+m9y5lwnkyywW8huanxUkdPc37OZQd87sErSLVMVMMbSELY5
	gcs/uc7EHBjLBMBG7afisSebHM21+L/9bs958IzcA4Fv9fqXkYG+dsnVc3/RiwcUxVmgyMKQwC5ez
	TeEc9syTyGGo0zWyUGsN30FX2UN2Mcb0o1pyNJXYxdwDNh27LoLzhzROkTRgaeM8Ig2FkgO9XFqu2
	fiCUnvXy7QGkJMrmXviQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPMi-0006Cl-Ti; Sat, 11 Apr 2020 23:16:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPG3-0003kt-Vv
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:09:53 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D943120757;
 Sat, 11 Apr 2020 23:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646591;
 bh=CoNRyxANqknyvtD2tPaGjioGwzJ8nFozoxNEckOKVls=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kvm8IDuQDUkuo//oBEn10Zr5VmnthWhk2/1KPGpEXHq2vbthdYsSbEepESjb0ljsu
 bT8iTiFQuvqafhplKwpKUFumwUXF12TAeFZIeYPItk702fq0a5ApK2Rz8iIuaoyCka
 J4OUUF1BIi1JRSU9UDyl1OuDojT50+O5CYIGEnew=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 006/108] mmc: sdhci-esdhc-imx: restore pin state
 when resume back
Date: Sat, 11 Apr 2020 19:08:01 -0400
Message-Id: <20200411230943.24951-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230943.24951-1-sashal@kernel.org>
References: <20200411230943.24951-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160952_051017_1EEAA108 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Haibo Chen <haibo.chen@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Haibo Chen <haibo.chen@nxp.com>

[ Upstream commit af8fade4bd7bc7bf49851832a20166213e032978 ]

In some low power mode, SoC will lose the pin state, so need to restore
the pin state when resume back.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
Link: https://lore.kernel.org/r/1582100757-20683-8-git-send-email-haibo.chen@nxp.com
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mmc/host/sdhci-esdhc-imx.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-esdhc-imx.c b/drivers/mmc/host/sdhci-esdhc-imx.c
index dccb4df465126..ca1566d4ccab1 100644
--- a/drivers/mmc/host/sdhci-esdhc-imx.c
+++ b/drivers/mmc/host/sdhci-esdhc-imx.c
@@ -1624,7 +1624,11 @@ static int sdhci_esdhc_suspend(struct device *dev)
 	if (host->tuning_mode != SDHCI_TUNING_MODE_3)
 		mmc_retune_needed(host->mmc);
 
-	return sdhci_suspend_host(host);
+	ret = sdhci_suspend_host(host);
+	if (!ret)
+		return pinctrl_pm_select_sleep_state(dev);
+
+	return ret;
 }
 
 static int sdhci_esdhc_resume(struct device *dev)
@@ -1632,6 +1636,10 @@ static int sdhci_esdhc_resume(struct device *dev)
 	struct sdhci_host *host = dev_get_drvdata(dev);
 	int ret;
 
+	ret = pinctrl_pm_select_default_state(dev);
+	if (ret)
+		return ret;
+
 	/* re-initialize hw state in case it's lost in low power mode */
 	sdhci_esdhc_imx_hwinit(host);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
