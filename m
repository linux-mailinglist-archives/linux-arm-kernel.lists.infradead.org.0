Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6583E176B80
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTN/Det7eTxwgoR9SGM2XPl0U49YrVTJyX6ugFFlb+Y=; b=J7B+xuuoURQezs
	jf13UB0b+AYgJHckcdnNnr2lsyLg7fZ66AG7J6tZEDjpBYSKb0sYTzKR/5WweRixvD2W8neFjQwbl
	1FGkNxy5E89V8JmgnQkgxxBy0Z7Yk23FfPLH4pI7eBrKuKfYCrdXv99XMaekFaTusjI4YOJetb1Oc
	I4CJzLltgIYuuQB5IfMKmNWGqMCJ/XfxEIUK2q8kv7USaaxx6LP5HpNAlMPJ6NlCQPS+C0YyNhJvv
	55146+nJogEAcdgP5XdMekl2dw6eVZp+WfPQ8jPgt7KsX9YCKQXhj2FjoB0TIpPzPFmhVIrKExdtD
	caUzXjSFFGD+I0pGVeRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8xdo-0000Dl-PH; Tue, 03 Mar 2020 02:50:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8xcz-00070z-MA
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 02:49:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A8FD24680;
 Tue,  3 Mar 2020 02:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583203788;
 bh=xrSwneQSyxbFcrpnGduhSn7IJJUdsBkAyHBLcwBerkc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E6pivyNMi54ql+3wdJ95o6iZeZu317Hl3v6BFLrv/Pbh1jaZX0fT1qp9WBWN202Lw
 oeeOf4nLEp2pqWb0C7E8ORpq7yV8JvggsL/xakC3s/qEABdVHAYQ1nCE6odA7YfuxM
 XmPTtVm0ZGbzKNiUbFh60UwsdsmNSIhfBoFUYznk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 11/22] net: phy: restore mdio regs in the iproc
 mdio driver
Date: Mon,  2 Mar 2020 21:49:22 -0500
Message-Id: <20200303024933.10371-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024933.10371-1-sashal@kernel.org>
References: <20200303024933.10371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_184949_784700_5881A9DF 
X-CRM114-Status: GOOD (  12.34  )
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
index 46fe1ae919a30..51ce3ea17fb37 100644
--- a/drivers/net/phy/mdio-bcm-iproc.c
+++ b/drivers/net/phy/mdio-bcm-iproc.c
@@ -188,6 +188,23 @@ static int iproc_mdio_remove(struct platform_device *pdev)
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
@@ -198,6 +215,9 @@ static struct platform_driver iproc_mdio_driver = {
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
