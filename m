Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BE112BE87
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LxXQ8u7DhzrHSF7JRFi2MyC5H6iKvz8+6h3duNN/3SY=; b=pIftzE0qk5JHlkSyu2vNapuSNX
	fbHK55RSr26Z0XUtvTUVObZC5jQh0kSgZQXjWNyFUCrvfU7UReYX5T7oxDy27ioPBFqU5xmUR0YXc
	OIqlYOImACh7CiLIsdFEsmSGkSMIh+3UukjJ5xAWqdAsumNY5TF5FXW9nxNH6gxqKcgVj56rEdPjR
	hui6nxXmQ9b9wpKlDifeVIcjCr/oa5j/LY0rlIpHAvmtNfsDXjOQdAROgvMWJ/qdCKDVMgQKNoZqX
	b8x46nm/y0vCnREE2ytcnv6eLbPB/eNwfzwPGNp6U4hywYhZuTLg/6Ed1i19F1klcdqujzLsEmKMC
	Dfo2OW6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGzP-0007TY-5j; Sat, 28 Dec 2019 18:39:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwN-00052P-Uh; Sat, 28 Dec 2019 18:35:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id 4so16318963pfz.9;
 Sat, 28 Dec 2019 10:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ui3H4sw6TXQZWyHZyumXfMS536ZRAUjdYlFCGuvHxAE=;
 b=QR/5gU3bd29uWtBlob2vq9WqKJ3hQUz+QbCW77CdxMCDaWVnA0C/c5Lx8ui8kEF7E4
 EJow2hD7opQrUZ22y3QHevj4gAvdDrI+hipJ2NNfxEZsOyHb444K1XGg/QZQJkKNH9n6
 hDfRLiS1l0jR5Krj2XWoSBuz5HpaMLXUGGuvcRI/vccwwizylRM35WopdZZg925EqhPy
 n0e08sqtH3zgT/f3gSypGJpdp4GCNnBueiPK26DJIb3wHYNUPrqr+S/8LRhfKekIp3Ev
 qRbJwKA7g1M6NqZUbhNvwoZPWSdTsI5x1Hy7jNncmQnUGUXYbl1tupuGX/2eLm0XD5Ny
 hmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ui3H4sw6TXQZWyHZyumXfMS536ZRAUjdYlFCGuvHxAE=;
 b=exyvfa3VlWmzD80c9SY0X+em7KBGJPXFmFj9ajIIDL/f9jZ/ZEeg/2/AMBeIkYU3Fy
 /E0cS2YdIXwBw3HThaZdFM6mHbcVDpap18zB7roaUdIq1YpWzKNfh9SJGDUEE5AIMZF2
 fkA9rCjfo77xSTsPnthrjqjpYqEsTp+aUwzuVMDOERoK3D0InjeD30YNxkyauKGdJ1Zl
 nN0sdbMZ9UUFDCTsjnAFlFRD2m+PHsfoo5d5MMCDjpVR9vpIBpU7Pwz8LvK2uCVxzQE2
 irhOHf3sm63SO5Ac9kbCcIWNVd/sk56MVar1C0N2xjO18KBBy3AbR7bxExN7z39S50A6
 0xOg==
X-Gm-Message-State: APjAAAVFFpAijJ3+Hi9THFNuvcsdBT5IJT4OI4b7JPSx+nwD8Auk+2J5
 KDcVI89QCfM8eIheI3F4rmM=
X-Google-Smtp-Source: APXvYqzHr4KeI0b8gMJWBokRn8PKrEYYqhG+ocElUlfVhzxi6A9/q0OMkXH/noLIQBQBJ/jS6urxWg==
X-Received: by 2002:a62:ed0b:: with SMTP id u11mr60416235pfh.46.1577558155293; 
 Sat, 28 Dec 2019 10:35:55 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id w187sm27832830pfw.62.2019.12.28.10.35.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:54 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jassisinghbrar@gmail.com, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: [PATCH 10/13] mailbox: tegra: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:35 +0000
Message-Id: <20191228183538.26189-10-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103555_999678_8286862D 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/tegra-hsp.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mailbox/tegra-hsp.c b/drivers/mailbox/tegra-hsp.c
index 834b35dc3b13..6d16e56942ff 100644
--- a/drivers/mailbox/tegra-hsp.c
+++ b/drivers/mailbox/tegra-hsp.c
@@ -631,7 +631,6 @@ static int tegra_hsp_request_shared_irq(struct tegra_hsp *hsp)
 static int tegra_hsp_probe(struct platform_device *pdev)
 {
 	struct tegra_hsp *hsp;
-	struct resource *res;
 	unsigned int i;
 	u32 value;
 	int err;
@@ -645,8 +644,7 @@ static int tegra_hsp_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&hsp->doorbells);
 	spin_lock_init(&hsp->lock);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	hsp->regs = devm_ioremap_resource(&pdev->dev, res);
+	hsp->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hsp->regs))
 		return PTR_ERR(hsp->regs);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
