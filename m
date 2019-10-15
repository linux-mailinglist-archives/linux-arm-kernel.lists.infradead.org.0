Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161A0D83F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/s9jEtmVNb+dsgZMoatj55K+Tm9eJQ7ewqcTPgw94lc=; b=SXI/GD86O1+0y+oN8lXLwWj1l0
	sUB5S9sCiFzFsjOfPZBM73maiCrM+Mr98T8c2Vj1o+qk0UvO1NQGv7e6EObYbmoGlJBTFTSVi7ugn
	NavDC62BuVjDH0unj7AmoTtsie83Bk1RxAiGVJXIiFVvwOc9S3SngX6qMlUk1TTdbSvS2kLaNIy8u
	66WnVrn+DgIhQAl7kHR8u8DsWQ14sdywyZ1mRZweEZ5gQJ/Ig9qUqvps5RHCuUpsApbIEbwUmlzk5
	Cm243nI2EHjvU2GwHMXbZc2WV5PZVnhqA6O1v2XLgwhkfNiY4O1w+/S5IMxCeDFPmlbJMeHLQvC9S
	QPm7cc6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVao-0004LV-Qn; Tue, 15 Oct 2019 22:47:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVa4-0003uN-2s
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:46:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id e15so5013356pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MRyV5VGzOFvJD5NtZvpjWbXZE/GnucRH2hQg8MRkrmE=;
 b=JfcWX6oXfyVq3TmG7LHvU0pKK1ND0Oo4l2GcBxe6MeEUvf8OczBR7JJrhNl9e6zK91
 SPT8wPn/444F6wWUkDN0WdiU2ZU46nlVO7twyuqpH0YHFnuwNo/zH/iPJrnMgS9jwucQ
 pdMuNwg902bajHGO5SpdM56zkUQTJy7hSCEq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MRyV5VGzOFvJD5NtZvpjWbXZE/GnucRH2hQg8MRkrmE=;
 b=bo2EaI/cJt7PxI50YClZEGTCilSI9QvY0L7FK2Uuox3xS62YupfMjtz25dP9Arrssu
 wsUp35n18887y4T4M0rOj/nIPQOcoGxgq0+MDiyGCJ2dF8L5n/0wa587On5WRXXtN23+
 MdgDTmmKCboZX4t5R4aQramjToeD4F3dKfnZFg4Q6Eu5OQTgBNsZ7S745vAvKFLBp3hD
 h5LKEk5m6fb/rTFK2VTRqx2HE/vSl4u80rYhgDqmBuuG7VMmLSb1RFgVkwANlFkjOhfM
 HGkiXn3K0WO3PHuLdmQPeetoJQNU1Yx2fV8JDScznLseGc5f+SHuwy0G4/ZFWXypSxQ0
 lMVQ==
X-Gm-Message-State: APjAAAV4oW2h5Svk8dXR80mRpqpmxTlNbUrK/WoeV5l6bkO6+EEdBcqt
 hmDjG+BAipzgMxSfU76/fTEFTw==
X-Google-Smtp-Source: APXvYqxIkLhhpNmJeTJg2ZZOaEaj7KCdmc0Am5liLgcddpekavNnSA5Y0wz9B935nC6Gh50fZc9/Hg==
X-Received: by 2002:a63:394:: with SMTP id 142mr40929199pgd.375.1571179575156; 
 Tue, 15 Oct 2019 15:46:15 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.46.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:46:14 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 3/8] memory: brcmstb: dpfe: add locking around DCPU
 enable/disable
Date: Tue, 15 Oct 2019 15:45:08 -0700
Message-Id: <20191015224513.16969-4-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015224513.16969-1-mmayer@broadcom.com>
References: <20191015224513.16969-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154616_150353_BB27E53F 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Markus Mayer <mmayer@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To ensure consistency, we add locking primitives inside the DCPU enable
and disable routines.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index 2ef3e365c1b5..c10c24a76729 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -290,32 +290,41 @@ static const struct dpfe_api dpfe_api_v3 = {
 	},
 };
 
-static bool is_dcpu_enabled(void __iomem *regs)
+static bool is_dcpu_enabled(struct brcmstb_dpfe_priv *priv)
 {
 	u32 val;
 
-	val = readl_relaxed(regs + REG_DCPU_RESET);
+	mutex_lock(&priv->lock);
+	val = readl_relaxed(priv->regs + REG_DCPU_RESET);
+	mutex_unlock(&priv->lock);
 
 	return !(val & DCPU_RESET_MASK);
 }
 
-static void __disable_dcpu(void __iomem *regs)
+static void __disable_dcpu(struct brcmstb_dpfe_priv *priv)
 {
 	u32 val;
 
-	if (!is_dcpu_enabled(regs))
+	if (!is_dcpu_enabled(priv))
 		return;
 
+	mutex_lock(&priv->lock);
+
 	/* Put DCPU in reset if it's running. */
-	val = readl_relaxed(regs + REG_DCPU_RESET);
+	val = readl_relaxed(priv->regs + REG_DCPU_RESET);
 	val |= (1 << DCPU_RESET_SHIFT);
-	writel_relaxed(val, regs + REG_DCPU_RESET);
+	writel_relaxed(val, priv->regs + REG_DCPU_RESET);
+
+	mutex_unlock(&priv->lock);
 }
 
-static void __enable_dcpu(void __iomem *regs)
+static void __enable_dcpu(struct brcmstb_dpfe_priv *priv)
 {
+	void __iomem *regs = priv->regs;
 	u32 val;
 
+	mutex_lock(&priv->lock);
+
 	/* Clear mailbox registers. */
 	writel_relaxed(0, regs + REG_TO_DCPU_MBOX);
 	writel_relaxed(0, regs + REG_TO_HOST_MBOX);
@@ -329,6 +338,8 @@ static void __enable_dcpu(void __iomem *regs)
 	val = readl_relaxed(regs + REG_DCPU_RESET);
 	val &= ~(1 << DCPU_RESET_SHIFT);
 	writel_relaxed(val, regs + REG_DCPU_RESET);
+
+	mutex_unlock(&priv->lock);
 }
 
 static unsigned int get_msg_chksum(const u32 msg[], unsigned int max)
@@ -590,7 +601,7 @@ static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
 	 * Skip downloading the firmware if the DCPU is already running and
 	 * responding to commands.
 	 */
-	if (is_dcpu_enabled(priv->regs)) {
+	if (is_dcpu_enabled(priv)) {
 		u32 response[MSG_FIELD_MAX];
 
 		ret = __send_command(priv, DPFE_CMD_GET_INFO, response);
@@ -615,7 +626,7 @@ static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
 	if (ret)
 		return -EFAULT;
 
-	__disable_dcpu(priv->regs);
+	__disable_dcpu(priv);
 
 	is_big_endian = init->is_big_endian;
 	dmem_size = init->dmem_len;
@@ -641,7 +652,7 @@ static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
 	if (ret)
 		return ret;
 
-	__enable_dcpu(priv->regs);
+	__enable_dcpu(priv);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
