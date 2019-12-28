Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3871D12BE89
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:39:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cW5x48Win5FJK4X5bU+egyRDtU3NSEDFN1Tp0elZWOs=; b=sdhBei+FunubaTgy4FfH9yuSzn
	zFaxGM+W1L40bx2Qs8/QzbGcxWlavzynBc/PYNz86mQYahHew7lM35tQmoKHdMXesDhUhh/Gu/c+W
	wL4/RrIl5m/KBj1pzN+vKc4r6gICKkafbWLlaLlK+Nos8oE4v89TNANwn/hvbOtQXshw4f9EOy+pk
	/Ef0xDFckRAD7+RwKnrUHUWtqE/657qyG5x356puiw92peJwTMe7/J9071+tWcDgYh52u458jmL30
	xmHbGNhYFEpQB6ZVHXPj8eQg2FASzJhV6rA9adSC5wAsJk2FW4JkxiLsed9xbp7YsNMJXwg64SqOk
	leR+5U3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGzo-0007xM-FJ; Sat, 28 Dec 2019 18:39:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwP-00053k-Cv; Sat, 28 Dec 2019 18:35:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id z124so16029565pgb.13;
 Sat, 28 Dec 2019 10:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D52kDZpItpEgyWtODzvm9zhNNB9VSkcFYK/HjZsI8Go=;
 b=buKvAITmrchkgml3RJ6rno8p2jfN0GrgBL0OBWLGNScbzpz89Wi31X8nu5grIh2TgZ
 +HeBPzjiNWMSmpky1ys0RIWzNzfxJLuwU2j1XKXIureYlpNYyTZJarlNQPpIRI8CeuaV
 W/0IZLMK43cqLRqwF3LLOSsNZZmiNVCn+uAqIAmbhe1FMs27Qc2orshWchJEj+FMmRG/
 WXNwA+UN+8BKCgsvXgClCPwvuKrNhpd6KzTi7/b2ysycQ/Fh+sYggOJicyXnAVkoQrO6
 rSn4FFH2EFrTKI2MY3LxbeaxoxC927l9BGsCFCHMh0+roRj1Wmjggspkn1KcA80ND6Jp
 TNKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D52kDZpItpEgyWtODzvm9zhNNB9VSkcFYK/HjZsI8Go=;
 b=aAcFcDCGyPYjSIPvGjIj1eid+glaobbUq8PdsOgRnM4fjKq7JD9t/VXI2p9ZoR72Vm
 cNOYuTkaR12yKxkFH9LZ3J2j0McHtgupfQunCxc6AvjTFTWplMXPaEU0VZu3tg9yER8G
 M+nPDELM9AlQtAudlCOiHXu39qrYVKe8Qs48tLKobv/6zPTJvGGvVPhdJKugJ7LNX9bG
 4bro+qm6uWwNJzjK00c7orBz1Qs/l888UdmAzUCgaqltb/mD1wfzIJNJ67ByyBCDvW8c
 crtua1WFkXEjwRuf+MZItEmUWUTwW1Dn3yXko5eStN4LMF1skf237TWSsjOJHRVZVo0Q
 +vOw==
X-Gm-Message-State: APjAAAU6Jnkxv2cOYQYv3sgXJBDDhi7qH9dKqb3mrBaKesMuKwam+xuG
 paGIx9iOMkVORPXKNHPurl0=
X-Google-Smtp-Source: APXvYqxRDjC1yrZLagxhy9lKRDbplLhgf+LIWifgAoLN74eEtUbWySnjvGyIR5MxLdy/F0goyOL2Xw==
X-Received: by 2002:aa7:968d:: with SMTP id f13mr59926148pfk.67.1577558156956; 
 Sat, 28 Dec 2019 10:35:56 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id f43sm19419481pje.23.2019.12.28.10.35.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:56 -0800 (PST)
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
Subject: [PATCH 11/13] mailbox: hi6220: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:36 +0000
Message-Id: <20191228183538.26189-11-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103557_503965_1BD58D27 
X-CRM114-Status: UNSURE (   9.46  )
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
 drivers/mailbox/hi6220-mailbox.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/mailbox/hi6220-mailbox.c b/drivers/mailbox/hi6220-mailbox.c
index cc236ac7a0b5..d9140a016170 100644
--- a/drivers/mailbox/hi6220-mailbox.c
+++ b/drivers/mailbox/hi6220-mailbox.c
@@ -264,7 +264,6 @@ static int hi6220_mbox_probe(struct platform_device *pdev)
 	struct device_node *node = pdev->dev.of_node;
 	struct device *dev = &pdev->dev;
 	struct hi6220_mbox *mbox;
-	struct resource *res;
 	int i, err;
 
 	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
@@ -287,15 +286,13 @@ static int hi6220_mbox_probe(struct platform_device *pdev)
 	if (mbox->irq < 0)
 		return mbox->irq;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mbox->ipc = devm_ioremap_resource(dev, res);
+	mbox->ipc = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mbox->ipc)) {
 		dev_err(dev, "ioremap ipc failed\n");
 		return PTR_ERR(mbox->ipc);
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	mbox->base = devm_ioremap_resource(dev, res);
+	mbox->base = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(mbox->base)) {
 		dev_err(dev, "ioremap buffer failed\n");
 		return PTR_ERR(mbox->base);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
