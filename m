Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808F712BE7C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NN81gjk7jpxgBfpatnFVnMwUlzTfvV29wp31crs9KVY=; b=ZWuuI1bizozN/2E4tTzQW2TFV3
	kBpRvwTyledLVv4eFHtEWdU+K4WyimbeoLYFbgT+0royojraw6AYbyTkZP7IFqB8Af6556fbKt36s
	VSJqtR7HS6/c+pueiWAkp8SN+yKa7XvnBoUYrfPFLCWy6Q/W/rcVNBi/FStyj6D5WfJF/t0HHIO2c
	yGj76NTmD1DHalTcrbtQ/euqrA7NvqKEf/QnN1jf5Ol5QvO4XHaFnLLzQsL/ABjfyl+61cXaANqy5
	dXTlZ/6Ea9HP5NsOETXyw1BdSHBHzgAv08tpoYU+KOZeAkHdBifH0g4222zLwc9Q76J0WZuOYJWyU
	l+M9urFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGy4-00066D-H6; Sat, 28 Dec 2019 18:37:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwF-0004uX-BG; Sat, 28 Dec 2019 18:35:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id r11so16072793pgf.1;
 Sat, 28 Dec 2019 10:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=u+WdsyKuKa5bxoF7O7EsreiiwOikxQI6yqVLLirGymc=;
 b=MOQRbWcFusjgAy4ALA0dRNwculnnf95IqWhwN+bI2m3VphYLVZFzUqdeNUJcfF7thl
 8Oo9SDyajObSomXnWDn4kLV7+lz97x8nR/7HN4y5d/JmKKCsuEl1aQrwGrxxU9hi3YAG
 tjBb4iRdN/pj3HarVM+/KzxZkLjXXEHQI+yH/sRvbCys5nO4SWzv7rqdNHrZiyIl2vxo
 TImjGbjwLoYHAfaIsoFlFP4cRJGFO/7eHgxPe1zcjmgBTBwhWCibX4aYc2ek2vXwbxIE
 TciifP5yqkjOxQ6NYC3r438SclSN9iySvH5xd3vVkdWVNV3WTs5Ssh2mceJPkuJNepf3
 +KUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=u+WdsyKuKa5bxoF7O7EsreiiwOikxQI6yqVLLirGymc=;
 b=oZHKQMej/KCOmb0ES4152cRexiA1uuxV/XsQGnlOyZE9O1RxypLhNXrz2dsxgkwjsh
 4RU/8ER1u5q/VvI/zeesyd4L9zrAiS3rYtI87IzLa8dhGyr3HW6GD1wJeUuY0Zg/CAqZ
 O/hYbUe0hsiFoqbL23ke1r0BewGtRjLnsTImG6tM4wze179/221BOGphGEqGDzXqFQGt
 mB6WSg0puPYFkeSwj0abr3v3ANBoOrCqY8AAU2XwHtp0WFo2xRLS/mpUVvNvuDMPylEu
 cMyqtkJ6SbLOeiSinLLVxKy6Xso2u7cgdce3nQI4UXKbNUSXQqAdJCnhyoGLJaABbb6f
 dfHQ==
X-Gm-Message-State: APjAAAXbg/0zNwZ+o2ZIqgkqzet8suZjMKFghktSsN8e8mmKxfS66axF
 X4zR5mbCDaRyRBx2AGRVGE0=
X-Google-Smtp-Source: APXvYqz2FR0K8hzJVrRbKbBnQhFSr/aRNMbMRVtI8SoK2qjVYEADTjjwXnt98+L2VAfYvOqI5TwzYQ==
X-Received: by 2002:a63:111e:: with SMTP id g30mr63255423pgl.251.1577558146603; 
 Sat, 28 Dec 2019 10:35:46 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id 7sm35621652pfx.52.2019.12.28.10.35.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:46 -0800 (PST)
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
Subject: [PATCH 05/13] mailbox: bcm2835: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:30 +0000
Message-Id: <20191228183538.26189-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103547_429478_B95EBDAF 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 drivers/mailbox/bcm2835-mailbox.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mailbox/bcm2835-mailbox.c b/drivers/mailbox/bcm2835-mailbox.c
index 39761d190545..79f93c9c7682 100644
--- a/drivers/mailbox/bcm2835-mailbox.c
+++ b/drivers/mailbox/bcm2835-mailbox.c
@@ -137,7 +137,6 @@ static int bcm2835_mbox_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	int ret = 0;
-	struct resource *iomem;
 	struct bcm2835_mbox *mbox;
 
 	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
@@ -153,8 +152,7 @@ static int bcm2835_mbox_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mbox->regs = devm_ioremap_resource(&pdev->dev, iomem);
+	mbox->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mbox->regs)) {
 		ret = PTR_ERR(mbox->regs);
 		dev_err(&pdev->dev, "Failed to remap mailbox regs: %d\n", ret);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
