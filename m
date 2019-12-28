Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF01812BE8E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/vE8dI27lMUIYPNQ9bfaHBwJCg1NK9K8vScI0/dXkR4=; b=rGG2karyyfZgIZJhfoLC4BQkaB
	0In88E6yc7ei8cGiTdOVB/Ptu4wtVyuDtR29d8ncdy5cO1bsyPYJ2mNhlNQeazhxEaaKkWw10LBw9
	jXlhN22Jv9skJ37z+CtDOUZx7Amb40xtAohbyAbhsPc7Z2r74McmN2EaqrxWWAVlN4WeDkwK19o62
	sTRPkY+ZWeSV5LPRNWYkt2uNK2vXaQY/3lT2OadtBEZDhmLWFswVe2AZzSpknFPaKooFcsLJLjBD+
	qhbY5pJAetjMpUw4KfxYmQCRHqdc5P8QdxrlGAf4eMIdstnB2nBJW7bjJtaFn3fKeueHO0vNGB/WK
	sV0BJbtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilH0E-0008Mg-GY; Sat, 28 Dec 2019 18:39:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwU-00057I-1L; Sat, 28 Dec 2019 18:36:03 +0000
Received: by mail-pl1-x643.google.com with SMTP id x17so13039199pln.1;
 Sat, 28 Dec 2019 10:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ADqPq+9Qjf/3isyeDy4/Z1hzrmcF+XODskWY/MSDCzg=;
 b=pUXBq1ZSttMQqrQedS6P3sf1POS/rPvRylB5k3jq1APu8c7p2pyt0Bi04CAVKALzjF
 mPkoRNynqJkKKKbubehHQ3+9IO5OqtImXGsEmJpiIFuAWI+EiXbIvwd9UQW4ZMC6M68s
 ed/W0lBfQ6ox96LOSikKs5fzgb/eLXOyhFgvFViHP8w7Aa50/yH69Z6WSlEjPBQ5YagM
 w/LDGD63x99SDV9D6NspjiK/aq60dQIlAfRolapH8LpMppixENiGo10ax6WBq8YV7SNS
 i7kgAhJgTiEjKLctxdjFNGrsF/q0hObxNFxPMyNymGY1GUapBkfBfb8Hl4CV2cGuUYwX
 45JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ADqPq+9Qjf/3isyeDy4/Z1hzrmcF+XODskWY/MSDCzg=;
 b=TMV1vjvPkNy+kcpM8wz3S93/WOamOdk2ES9RbKLv3if2q8bBRBjtzKc+7P1UODuUxQ
 hiaGZh/93tfTqTj0KheMt4JKouB/cEhGsSDyDp4/fFedUGvCIhUIUCQW3oKei2P72H0D
 tFzcFlfDEhYwl28ZX9eSBtxbwKlfZvUhxgvoHUVnOxziSIOKsAy9zxZ8yptTp8VtRx9S
 YnDQqMhW1B/jAFRrKAyxLD8LoHWTvxU1Cktbq8YFfgEyyzDoozLxepnrQwolaFfBJ/Ep
 8AaFkfwz9/+BfqfG5ruAxoVSw8REvwWLm6dZK5aBB1PONIJme19q1xndlt+L1vOvcNE6
 MpYQ==
X-Gm-Message-State: APjAAAW8SUuhyCF7TRAhW15K4Ab0nvQHQLoy7wOSfN9Z6woDdiS7doyQ
 b0dfTZxh+P75kyzdaArRG5Y=
X-Google-Smtp-Source: APXvYqwLD6B860LYYvLn0ujeh8QzH5CpAMQoA7FqjdVBqgwpvrGi+q9HmCi2Rey62ZR7dzLVq7TOLA==
X-Received: by 2002:a17:90a:db0f:: with SMTP id
 g15mr33432010pjv.40.1577558160406; 
 Sat, 28 Dec 2019 10:36:00 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id c26sm40294665pfj.101.2019.12.28.10.35.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:36:00 -0800 (PST)
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
Subject: [PATCH 13/13] mailbox: armada-37xx-rwtm: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:38 +0000
Message-Id: <20191228183538.26189-13-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103602_127144_2E1A72E2 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 drivers/mailbox/armada-37xx-rwtm-mailbox.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/mailbox/armada-37xx-rwtm-mailbox.c b/drivers/mailbox/armada-37xx-rwtm-mailbox.c
index 19f086716dc5..02b7b28e6969 100644
--- a/drivers/mailbox/armada-37xx-rwtm-mailbox.c
+++ b/drivers/mailbox/armada-37xx-rwtm-mailbox.c
@@ -143,7 +143,6 @@ static const struct mbox_chan_ops a37xx_mbox_ops = {
 static int armada_37xx_mbox_probe(struct platform_device *pdev)
 {
 	struct a37xx_mbox *mbox;
-	struct resource *regs;
 	struct mbox_chan *chans;
 	int ret;
 
@@ -156,9 +155,7 @@ static int armada_37xx_mbox_probe(struct platform_device *pdev)
 	if (!chans)
 		return -ENOMEM;
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-
-	mbox->base = devm_ioremap_resource(&pdev->dev, regs);
+	mbox->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mbox->base)) {
 		dev_err(&pdev->dev, "ioremap failed\n");
 		return PTR_ERR(mbox->base);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
