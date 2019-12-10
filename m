Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6890E11920D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:33:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+OjtwXvd5FHSy31iITxr1zrdahyV88CWs8D0YOlRjQY=; b=t6wzXIpblqbc4xEkOIHluYj3ha
	R36PV/S2ikFpxVs59AHPL1I+3p12EpO+SmGPEqv3YmSZjEaTN5s+0v74rfqZyBkPCktCuO6IReDuj
	lgA7R+cYDEq5GWRLk+uJf1FvYZwZM/7PDVMluqvkFEFuqiC9jbG2Dt4XRdJfgVpi9NGwdtumjLXXx
	f/jL1Xpdzjoh0tE7xoFkWIWkoP2F2pUCNSf3nmyoqTYjyZY96+lRNEWHX2fDNUTozciJWtDtMxRid
	YcX3JNwhJwHSJ2r3LSS1FYgSn/ZjWzkdKgFFiaRB6kU8bNDI8/ySaB0qIpiIOFTM7FiTZTuMmuGQM
	UsUjdxMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemBl-0001lJ-7J; Tue, 10 Dec 2019 20:32:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemAt-0000wO-DN; Tue, 10 Dec 2019 20:32:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id r11so9450267pgf.1;
 Tue, 10 Dec 2019 12:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aJjh4TX7tIu5i+rCa4IwoPtzkcCu3DVe+AmQ4LsjGFE=;
 b=gZQzknzIqIApPvJCk1iRFQHzHlvudGFa4DkvphsH88qXsxvVZFHlomcdllkrTb27YN
 yUfG0AmPrk+30Tye1b5PugmQGyqJDdZqm3lInbKWgQX0ckY6j4kr0krsu9Sl+YtCGg/8
 Nl+mstS5YXfIlY74w+zEx6qGpzpz7tvHYtDiS5u0zk8wCbvCfswNmZzCnOAYUspw0DFb
 nOGUg6vMezl4ZafiDAMU8aAp8EhiyG/vR6ux/mAJbnxQ4Q/8lawY52cvRwL9tyuy6sHO
 EVDGTQC6kfmIBDfqJbS2sL1+9nuGYq+/3zmIy5OROU2Io97zdmX1ImU/BeTwYp5FZRtK
 RSxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aJjh4TX7tIu5i+rCa4IwoPtzkcCu3DVe+AmQ4LsjGFE=;
 b=OoJ7In8v6IOqgksc+IrHIVadUdDq4vu/2OLTb6FdBkPagPbSh0+Gy1BkYT5OBI89N1
 ab0Nwj6ilzyCDs5JUVMlJEqHfPSwgCoHTYYBVDD7z2PIJ+fMnmKmd3h2Ie+gVmFfYQvY
 SkdobELFtULZhy7RTJeKoI6WtckUH3h6pH8f8a/Ob6t5N4AOkXwQ/IKj/krfmuHx1xL4
 lM4bUpCwWR09NoliEIcBiYpiL1qPkFpWZNGbvrzjbqEs6aCbqzkwaz64sDtDsJ+hBBp0
 XEJUo4s5D1OHKy+ZDQsYpfs+C6aYTuGsIs36ccvaA9Q6UCjymfM27uaRr6RJUeWP9OAo
 RvEg==
X-Gm-Message-State: APjAAAWt9kkwljc97+Px2ApEc31v+s8z8OViSX3PIt9b9PAxrFHkxS9q
 9BGEQLjsMb3luAgrF8xWhH4=
X-Google-Smtp-Source: APXvYqy9wb5VG/J8/gfbuJhrl2x731RJNVx5EKN7oDXSF1O1sSK9iEaSoweWjC42n/RNrAITMDlheg==
X-Received: by 2002:a63:4d1b:: with SMTP id a27mr17289782pgb.352.1576009922481; 
 Tue, 10 Dec 2019 12:32:02 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id w6sm4839677pfq.99.2019.12.10.12.32.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Dec 2019 12:32:01 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: gregkh@linuxfoundation.org, rafael@kernel.org,
 srinivas.kandagatla@linaro.org, vz@mleia.com, khilman@baylibre.com,
 mripard@kernel.org, wens@csie.org, andriy.shevchenko@linux.intel.com,
 mchehab+samsung@kernel.org, mans@mansr.com, treding@nvidia.com,
 suzuki.poulose@arm.com, bgolaszewski@baylibre.com, tglx@linutronix.de
Subject: [PATCH 3/5] nvmem: meson-mx-efuse: convert to
 devm_platform_ioremap_resource
Date: Tue, 10 Dec 2019 20:31:48 +0000
Message-Id: <20191210203149.7115-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210203149.7115-1-tiny.windzz@gmail.com>
References: <20191210203149.7115-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_123203_473905_72DBB297 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/nvmem/meson-mx-efuse.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/nvmem/meson-mx-efuse.c b/drivers/nvmem/meson-mx-efuse.c
index 07c9f38c1c60..24c6e8b15987 100644
--- a/drivers/nvmem/meson-mx-efuse.c
+++ b/drivers/nvmem/meson-mx-efuse.c
@@ -194,7 +194,6 @@ static int meson_mx_efuse_probe(struct platform_device *pdev)
 {
 	const struct meson_mx_efuse_platform_data *drvdata;
 	struct meson_mx_efuse *efuse;
-	struct resource *res;
 
 	drvdata = of_device_get_match_data(&pdev->dev);
 	if (!drvdata)
@@ -204,8 +203,7 @@ static int meson_mx_efuse_probe(struct platform_device *pdev)
 	if (!efuse)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	efuse->base = devm_ioremap_resource(&pdev->dev, res);
+	efuse->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(efuse->base))
 		return PTR_ERR(efuse->base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
