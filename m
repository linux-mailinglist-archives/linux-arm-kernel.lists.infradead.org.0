Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470DA1878CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 05:55:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QNN6BR2LEyCVj9085KNyj3f+b95Wf+Vwc4cUa/Z/xh0=; b=eJO
	GlRvDKNK+RetwMGFrJGHdNAZoQHgiTumtclg3gtUux/C6/NqSt7Xpt8jIJdPFKIx/9XFT/0ZrCH20
	BeDLNDopc32OMNzvKHz+afb8JCacp2I3X17/r9P4JmMRnASibRIY3GsLT+Skq+itzWpA9E/GZ/sea
	wJcT8ap0ew55eZFcXeJ1KlkLhxJpVpsypqiIKfj5kOz4KT/P78st49rP1A+d+Q7gKJHrroW/UD+gY
	rFrOo+L1b72LqDiTlBVbrn9K+7RLOcHb1d1ip50mn4QFdF9ui8LEltTdRNLuY/bK8Rt81DHPfumrj
	W34pIpzY2iycOk3OWsHluCiTTS9STmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE4Fv-0007i5-5y; Tue, 17 Mar 2020 04:55:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE4Fg-0007gs-IM
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 04:54:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id g62so20436318wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 21:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Z/pLHqEymmI8qdYZpx02WBRLipjnKwZXZVqV8m8MSSY=;
 b=Hu9yeveSk7lvKAgkYqMZGbJjupqBFlO1hDJJn/f26IzkoN9kOnt+c1715OgLvVXhX6
 SIXcVljSb2WE4ejla8A/dMxdUYQiO1PDZlEEa1fiKMEqWZho5cMEJYzTCs2sbjlRn+bg
 0AQ/kJixJH546JWh2HbJ63TNz4z5jQgMIAvwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Z/pLHqEymmI8qdYZpx02WBRLipjnKwZXZVqV8m8MSSY=;
 b=DrZUFo0Kl4Q1T6QV2/wEznWRuIOQbN758bXbRjM0yMBpfX0BPjjzSnuK292QCFdntN
 yEu8VUQaAgZxHULIIyR7js2/HzOn0yXR+sauVUV3TqB+ImPB/Za5E3YGEOa1avmwi6ia
 yTScxxLyhCpeOp4ggB4Cs36A05UULTHXXIt6PvM7yOOZUgShg4v5OWZu3XqJqX0cVZQb
 BS89+rEcgim2CpEUr7qPPPBi/NdqCXXsJykOVAKy6oNdkdWSK+Dj+HenmIoRRGpsmK+W
 VFA0DW5+qXn08jmf/a+8zsJNX8lrGDlVaW8vQYEYtTtgYo9jofbc3KLKtWOODhZVhHQR
 yhKw==
X-Gm-Message-State: ANhLgQ35cG+Ati5X3BvKnysUVCiXoYMNQVZ6+7iQd/Gb0umhYzw9d7/y
 lNnuPk9EbnIrze4i3tiHzAoV1Q==
X-Google-Smtp-Source: ADFU+vtloprSXesJvtRnEjLPOoV7EqcOa08m/oOOJVTgeOAFV+HVZ4G4S3W0WCB1yQtt7cfGvfhQRA==
X-Received: by 2002:a1c:7207:: with SMTP id n7mr2819390wmc.138.1584420888626; 
 Mon, 16 Mar 2020 21:54:48 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id i67sm2874498wri.50.2020.03.16.21.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 21:54:47 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, davem@davemloft.net,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Arun Parameswaran <arun.parameswaran@broadcom.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] net: phy: mdio-mux-bcm-iproc: check
 clk_prepare_enable() return value
Date: Tue, 17 Mar 2020 10:24:35 +0530
Message-Id: <20200317045435.29975-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_215452_608734_460BC0E2 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Check clk_prepare_enable() return value.

Fixes: 2c7230446bc9 ("net: phy: Add pm support to Broadcom iProc mdio mux driver")
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/net/phy/mdio-mux-bcm-iproc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio-mux-bcm-iproc.c b/drivers/net/phy/mdio-mux-bcm-iproc.c
index 88d409e48c1f..aad6809ebe39 100644
--- a/drivers/net/phy/mdio-mux-bcm-iproc.c
+++ b/drivers/net/phy/mdio-mux-bcm-iproc.c
@@ -288,8 +288,13 @@ static int mdio_mux_iproc_suspend(struct device *dev)
 static int mdio_mux_iproc_resume(struct device *dev)
 {
 	struct iproc_mdiomux_desc *md = dev_get_drvdata(dev);
+	int rc;
 
-	clk_prepare_enable(md->core_clk);
+	rc = clk_prepare_enable(md->core_clk);
+	if (rc) {
+		dev_err(md->dev, "failed to enable core clk\n");
+		return rc;
+	}
 	mdio_mux_iproc_config(md);
 
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
