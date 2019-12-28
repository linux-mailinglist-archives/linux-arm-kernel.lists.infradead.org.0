Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ED512BE58
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0S2YSFNiZmrektycKAXfhnBEQnGdAgyJyVZ0zYkrBhk=; b=tW8
	XeG+dgbH+oygZqqEAFT6JujD8EvNuxaYRzq2GCaY3fvC3sWnQW+8OFrmfckP4nU1joVQAGWivcgo9
	RtUpFCqFcSRkNWcyTI/qM+KqcknYZhcpM8oh6s9avfMGY5zY20i8ZWTzNQo4ifudHx8/xXOlt0MiU
	zl3MYgF/Rz+zHW51+NCinm3tJZzSM1fi1USQOQjAqJ9tPwnMy3WtaYArXy/JUkp5q4fBvydVxVZ5X
	jbW5/fwMXhlZXd0aVKE+kBPEn9AR5jpuJL4zYraDm2Zt/aRK9dEyno43r/ZgXY+8H2v5pj8UyXE0A
	xcxwh5Q7MKniZ6SOk5sJoaOWYv0Ugrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGwS-0004sa-5A; Sat, 28 Dec 2019 18:36:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwA-0004rW-1A; Sat, 28 Dec 2019 18:35:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so13039814plt.2;
 Sat, 28 Dec 2019 10:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HA6ap3YBH12tN/wspc69xBp95EQn1Xx2HPN8PjoD5hA=;
 b=bMNVXsQnfKQRZaTsu5Z4AlXDdYOeCeNqaFJy6GuQn3oLSfJwG9BLmRwdcgIQlFlbNy
 EP9p+FhRGyY5d/kNaZZ/FQh+S8zTAaVojQm0ho0mKz/n7SyWATXKht31JKeKnjFN32Cl
 20d24NLqMfuGPZsWRCGsu8wMeGu885WX5Et9aJxLatjZlj2i2S1qOIbVLOnvxuSk50t3
 znbIrDGBqKfswBC49tmawJBrxKn+XK0NLWKMu+TT/PmB5Nr0nwBo3MeS0bPy5REXS51M
 b6k28+Easl0LQeyRJGDG6CTosoeO1HNpHTHKvl8xHyllA3Pu9GHV6gjRRhPvqFP+CHu+
 BjhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HA6ap3YBH12tN/wspc69xBp95EQn1Xx2HPN8PjoD5hA=;
 b=VdOcLSIsDF+tLTrNj54mYej5N80Emoe7e22j29QoLmobJIZn1nUk5AHJk/uSExoBBw
 dfx0x3qHqF0Pzz7J0SP77y/P+QeVrwQascgz1xFdfYXyaiLZ1kQeLjVvjDJTJimyO56w
 /8zJfrMXrLb+QZNP7pjvD+Vgk11A6dXPzfN1FvUstBkiDOx99MY4vn8niR3QBnnWMUAW
 LlFVe1aXucMRlpn9v6KOXL07+TOd3rEmRofPcwDzhyKBWV0sDHxNmAJAu81FQwswAMd7
 FzNBZYdjqZ1GIES8dMWBUmXPj4VVxJ+1Y6iV4KG1/QSwCD9CfZwIk8saFOqVED19clWt
 0Fnw==
X-Gm-Message-State: APjAAAX5OkCgYdcQFKphzqeaStMd8LhcCthlpdnDzypANK+eq5UxKrm/
 DrNMDoqn5kaCcKnr4ZVFHpM=
X-Google-Smtp-Source: APXvYqx4E8Eu7c2uGoKiMs4QJKyvTXmA+WIuNXF86bL2KzPp6818QAcgzM+bVVUzJc2A+S93588ywA==
X-Received: by 2002:a17:902:7288:: with SMTP id
 d8mr56643250pll.341.1577558140530; 
 Sat, 28 Dec 2019 10:35:40 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id k21sm31679513pfa.63.2019.12.28.10.35.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:39 -0800 (PST)
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
Subject: [PATCH 01/13] mailbox: altera: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:26 +0000
Message-Id: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103542_225733_C14920E5 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 drivers/mailbox/mailbox-altera.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/mailbox/mailbox-altera.c b/drivers/mailbox/mailbox-altera.c
index 75282666fb06..afb320e9d69c 100644
--- a/drivers/mailbox/mailbox-altera.c
+++ b/drivers/mailbox/mailbox-altera.c
@@ -285,7 +285,6 @@ static const struct mbox_chan_ops altera_mbox_ops = {
 static int altera_mbox_probe(struct platform_device *pdev)
 {
 	struct altera_mbox *mbox;
-	struct resource	*regs;
 	struct mbox_chan *chans;
 	int ret;
 
@@ -299,9 +298,7 @@ static int altera_mbox_probe(struct platform_device *pdev)
 	if (!chans)
 		return -ENOMEM;
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-
-	mbox->mbox_base = devm_ioremap_resource(&pdev->dev, regs);
+	mbox->mbox_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mbox->mbox_base))
 		return PTR_ERR(mbox->mbox_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
