Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9FE15F8F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 22:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3ZHUGvIY8QT1ccfTN6QbbhAFyug+l+2SqKu6bK4PHBM=; b=s4f
	FlmQV9GirCbqQjvPQu5SHavkqpswUOphqjYZDZtpVcE6EVKgMEp/mWJigjX6e5KeS78tWBnvH8JwW
	BnPuf1aZI0wR6uHGV3V05auYrSsT7SLIkFkBMBsWi6E0+iGpHE03elPIqPhvTMe1bcrpUKaWsEvkj
	zkDdnfK0USlYvKAbZYX0b3Ti6ha1CEje/NjZd9dooZwFhqPvTV6FZFTOdYcAIpE8VpIrqCdQod0zC
	mAjj64x/w8Yxic1PH2MLQE4G08eZN1RTLSSYr8s8WCH7Pl/QhZKGWRPlHXIX0zyL/OD3x3NvB/Fzy
	HWWmfveCXRxvgiEhs7nJGnsccnt3JLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2iou-0005v0-CY; Fri, 14 Feb 2020 21:48:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ioi-0005t7-UA
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 21:48:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id b17so12341736wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 13:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=tuhpf2H8a4ZzCABJWxUowWp6EKCvGrriOjGBgmmrUqk=;
 b=hQ4SQQcTZJYMJuGZ+sQF+Ern+ux0UaPM5+ddU9VsawxMBSNRoBQ5HHGbv2iNajhR2x
 oLZ6oWB9QvA3XrP3wpvBD8d4G8nrCqZZ8RlFLQfkp0Xe4UypOaGTNap69OXifGgIfN4d
 806OAX5oL1Eht/84kwnb/N8C5O5eo3AvMGVcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tuhpf2H8a4ZzCABJWxUowWp6EKCvGrriOjGBgmmrUqk=;
 b=V7emwYPywSIYV9SV5KSKceB4D25NgWupsaL6zylE2chJYg34CXBMWBCmNqxqPXgMaP
 RmlMv4gQKh8XB1aOu63kSMv8IIHhUpKEYG2Uc8E74WBPgf35ftSQ2hpgc8WTbNqkQidy
 e2sUa7EinsiOFEY64Y7y8J+NxR7S4LQ/ULunkbrG8McpwKMWLgHrjilC8Bk2bM64S97d
 Rekjj7UVTzICL3dBEDxfDMJQXa+GHrEZbcQhKXo7TkoNgEzbbmzwXKI4YZXrdIsJCQc1
 V4y2URtxwHaiqExIphi2/Ln6BOL6UQaQvkBnBsmUFEl2mqZ2xmcbdRiLKP178zENNW1e
 WTyg==
X-Gm-Message-State: APjAAAVdfrCJZkwK2G5pmDi9UvZ6/Tdzsv4e8i4yaZ3Le2IC8n2+xjjb
 cwgMbQA1dyCRfIp3wB/cghPYww==
X-Google-Smtp-Source: APXvYqzPAS+OXaRY2OgIGYMo+NU6m1xw9xivVTbrwWXjQRsZAf0oh5rZLW12uHI+OCzLkzVtHm0Oag==
X-Received: by 2002:a1c:9ed7:: with SMTP id h206mr6546114wme.67.1581716885231; 
 Fri, 14 Feb 2020 13:48:05 -0800 (PST)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id y12sm8842421wrw.88.2020.02.14.13.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 13:48:04 -0800 (PST)
From: Scott Branden <scott.branden@broadcom.com>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2] net: phy: restore mdio regs in the iproc mdio driver
Date: Fri, 14 Feb 2020 13:47:46 -0800
Message-Id: <20200214214746.10153-1-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_134808_970920_81F85616 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Branden <scott.branden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Arun Parameswaran <arun.parameswaran@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arun Parameswaran <arun.parameswaran@broadcom.com>

The mii management register in iproc mdio block
does not have a retention register so it is lost on suspend.
Save and restore value of register while resuming from suspend.

Fixes: bb1a619735b4 ("net: phy: Initialize mdio clock at probe function")

Signed-off-by: Arun Parameswaran <arun.parameswaran@broadcom.com>
Signed-off-by: Scott Branden <scott.branden@broadcom.com>
---
 drivers/net/phy/mdio-bcm-iproc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/net/phy/mdio-bcm-iproc.c b/drivers/net/phy/mdio-bcm-iproc.c
index 7e9975d25066..f1ded03f0229 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
