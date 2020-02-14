Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F05615F718
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 20:49:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jvRf2dHzOE4kFhhn0OgZApjY31nHpjJjRztTo0baoPI=; b=YSX
	xTIA81DPY3IGRB9JR5l3X+T/96ssP7dzcHjhGn7B2ovqyIg/hUtGcNp5Ew/9ZD3JpWdvCyAScGwv/
	kcpDqjOe+GftQAURK5ItFJz1NYLjLDYwPXyPkIpFnqsDeePcReVpanq+wonc7s4vW4T3n9DQz1+47
	4rFlLATKptIPPY+O4QIeK7srEijI8J1lErwxoql39ZSGig2bvwqt+Vxs7v/Ood+qgvS7AF7gF9nD8
	9OL2mQixIee2UmRS4b3b5v+X27+AMHSOgwjs0rz0kSf7L904UtJWVrYhbx/DtBko/DXbeF++CO2yT
	m17kndl+7MkwttH8PtOx7+HMZcrJlsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2gxe-00005d-3b; Fri, 14 Feb 2020 19:49:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2gxY-00004r-9g
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 19:49:09 +0000
Received: by mail-pg1-x541.google.com with SMTP id b35so5311534pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 11:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ZWng66Hoj7xQzhbUhm9kO2M9MQGzsOmKGEij3AJEDXU=;
 b=ONX9OTdBNa/5a5mLeDhmt5afoWTqsbefXAjxdh/WIid2nembeEayJx0HLEs8vp++ya
 qNSBA5/39f/Uiub0eo9h4mFy2IyRKrvLNU62KsbY2C+JbPxgLzOLkU2rAk4X2B4CzKQG
 7vZQJzLhiUc00YnSzHTqzKKTWkjPZ/hxr9A0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZWng66Hoj7xQzhbUhm9kO2M9MQGzsOmKGEij3AJEDXU=;
 b=BmGegKTyP9q/8fgdwpqDf489srhNe6e+h3Poy6+V3qzFcwgKzEg2I723Px32Yeb5aC
 wrjgcBwruNizUFd1SMOB3opu+svFR15Ioq6BOzZ0Ef2nbEO0Ov0XB6fuMO4uJ1v72AeG
 tjv+durpypT3CZwAXXsLryfnPDJa+cIjvZdVz/A7S3XJgl1wQ+XlYlSbi73trzGAdW4n
 7vKHHy2pXcgLnhjGXE6UUjaQCwc+oyRGY+QtsWZY1kv6ySzHZayh3Iuh9bH3HaSd8if4
 S7VTLsl22kqnyR0OvNpnfhiO9oaVbfLF/BlXi49tD/8Ri48hDr8lzHCS3sPDsF8xjqGG
 jxIg==
X-Gm-Message-State: APjAAAWAITMOdjXd+MA9Ca4zqyXna3qD9JlnO+gce6e3JsBICSzsIX9z
 tkMKycvOoloSAFQcMDfkh4HzWg==
X-Google-Smtp-Source: APXvYqwODEoeN+gxHepqNLozmja+mZtjocOV32D//1Zb1ppvJzZVslchQzuA62bl70OctqgEcPFbtg==
X-Received: by 2002:aa7:9808:: with SMTP id e8mr5202704pfl.32.1581709745136;
 Fri, 14 Feb 2020 11:49:05 -0800 (PST)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id u3sm7349815pjv.32.2020.02.14.11.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 11:49:04 -0800 (PST)
From: Scott Branden <scott.branden@broadcom.com>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH] net: phy: restore mdio regs in the iproc mdio driver
Date: Fri, 14 Feb 2020 11:48:58 -0800
Message-Id: <20200214194858.8528-1-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_114908_339966_BB89E41E 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
does not have a reention register so it is lost on suspend.
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
