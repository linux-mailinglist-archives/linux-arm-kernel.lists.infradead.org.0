Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B5A176AE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjYFITYqe7S6AmxNfP4bZmkd0k1N4stNvhYIjJ/Jers=; b=dIumwY//om0aZA
	Z286mb51Xr28aUofg0fAPRJ841rzNLaIGtGCEDxCRh3c+Ga66n2t3CVLtwv49nLuXZxfHMYp7WSFw
	/JI/BnLiFF59K9uuNQaOqHLTMgJLYtIQCeyILGd3He+w/J8cf+C3tjJQuroNGTULQht6vO3OiYb5h
	/NvFMYfrpy9Kv1X8ywOKCzLCxkw3tNgGkIc4f3FuxBK07WTb/iManzo7E//2qqRoZxWz2t8wdX2sA
	Gs5vm08F1d5fpHm3NM933UZ47FEOClCzbKiFD0W1I9ooWqpLWWSMMMOth/QmmUpqQZNA/D2LUlbCf
	Lej3djDJZ9YyyM5mqbsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8xaH-0004hD-PV; Tue, 03 Mar 2020 02:47:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8xaA-0004g2-Sx
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 02:46:56 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8193D2468E;
 Tue,  3 Mar 2020 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583203613;
 bh=Mjr8p/amJM9wauP7cjfYWFgUdhkwPRVjWxmuUOITXDE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tx6GGr7wlio3vtf6o665i1hRZskn39tfdP3ueCk6NgiHMPNlgPF+3zweUqMQFkp48
 MPiFm88zhOg4mHjAVqRId74NaVMwcwElJiaMiVtzG3Z60jtFH3zO2+Qej8xoPx1rgo
 gLQGiR11im/ysCcxEFIaSszS2DVzU2zoXQsw+sxI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 30/66] net: phy: restore mdio regs in the iproc
 mdio driver
Date: Mon,  2 Mar 2020 21:45:39 -0500
Message-Id: <20200303024615.8889-30-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024615.8889-1-sashal@kernel.org>
References: <20200303024615.8889-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_184654_957010_3DA5DCBC 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, netdev@vger.kernel.org,
 Arun Parameswaran <arun.parameswaran@broadcom.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arun Parameswaran <arun.parameswaran@broadcom.com>

[ Upstream commit 6f08e98d62799e53c89dbf2c9a49d77e20ca648c ]

The mii management register in iproc mdio block
does not have a retention register so it is lost on suspend.
Save and restore value of register while resuming from suspend.

Fixes: bb1a619735b4 ("net: phy: Initialize mdio clock at probe function")
Signed-off-by: Arun Parameswaran <arun.parameswaran@broadcom.com>
Signed-off-by: Scott Branden <scott.branden@broadcom.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/phy/mdio-bcm-iproc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/net/phy/mdio-bcm-iproc.c b/drivers/net/phy/mdio-bcm-iproc.c
index 7e9975d250669..f1ded03f0229b 100644
--- a/drivers/net/phy/mdio-bcm-iproc.c
+++ b/drivers/net/phy/mdio-bcm-iproc.c
@@ -178,6 +178,23 @@ static int iproc_mdio_remove(struct platform_device *pdev)
 	return 0;
 }
 
+#ifdef CONFIG_PM_SLEEP
+int iproc_mdio_resume(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct iproc_mdio_priv *priv = platform_get_drvdata(pdev);
+
+	/* restore the mii clock configuration */
+	iproc_mdio_config_clk(priv->base);
+
+	return 0;
+}
+
+static const struct dev_pm_ops iproc_mdio_pm_ops = {
+	.resume = iproc_mdio_resume
+};
+#endif /* CONFIG_PM_SLEEP */
+
 static const struct of_device_id iproc_mdio_of_match[] = {
 	{ .compatible = "brcm,iproc-mdio", },
 	{ /* sentinel */ },
@@ -188,6 +205,9 @@ static struct platform_driver iproc_mdio_driver = {
 	.driver = {
 		.name = "iproc-mdio",
 		.of_match_table = iproc_mdio_of_match,
+#ifdef CONFIG_PM_SLEEP
+		.pm = &iproc_mdio_pm_ops,
+#endif
 	},
 	.probe = iproc_mdio_probe,
 	.remove = iproc_mdio_remove,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
