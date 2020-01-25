Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83485149809
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 23:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VG+/Jld9LOZaQHtFcXRmwgI6P2981cCLwfMnVF4XMVc=; b=aq1
	L2ScxN87v+KtnZ/ssCbnYWYUf2ygWIogRg4BkOHAR96Axw7hdKIkrxYwGaW2g+cTt3YYI5r4TyJ6a
	gVv6EtjDMg4P3K69UA6F1DabbpscF/zqdi35LRzutp8iCJcuTq6EyNMXYpoc+oXvMVgNBOmVZ1NIw
	XSHBQpLbtzMwOIkjA06GXKjHJQT919sKymWwk7qP8zOrAvt19mZ7edKXndT+8zg4o002Wtu+B9E4O
	M4XiXnUECzxRCmNTgFAOsVGJaT3Cdh8aGvndmFS2GSut23ImF6DURbJCYRyTo6AJQd5wN1/nOuozy
	7UbqO4wdDJAi9/x2QE0VZPFCBeI4JjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivThm-0004FK-DI; Sat, 25 Jan 2020 22:15:02 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivThb-0004Ew-Eo
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 22:14:52 +0000
Received: by mail-qt1-x841.google.com with SMTP id h12so4542317qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Jan 2020 14:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UkJj4zFBfQ0RJe+br+AdMGtiHywyLjIgY8luB3SXeEI=;
 b=lhwc/m/q6Eudp7LXbDR3CtGhvrQ8CWTTkAQjqGVax/afTWBnIHLtQclNNP0h7ijeIa
 x7lImPgmTE+LSpMbYBRb5VREeUuUnsXJBnr/aJfNvC1b+f+llwggL0JAXGCZWlVCa1Ad
 RXytS8xCdgl39x6T7NFFMGsTjF2AscOWUwDlusB+M31R3SuRL90pF9bZ+7dC6TRrBNjR
 4O815DsxyJ/coBYBnsUQIvzr9ReGJGyhLpaPiaZKWoAjj6QQNvjMOIIRvIyRAqscVGlT
 NMpijxgH/9ZaaHAnrRRFvEydJcOd2sAwFeCxlTf/nV6oyfqR88K0DxWigpHDsDXCBdc0
 HGBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UkJj4zFBfQ0RJe+br+AdMGtiHywyLjIgY8luB3SXeEI=;
 b=Li3Vs8sxB3jjeWG3sszkmS8Nx2MNCYQ/aJwH/bGkH9WP+qLgnvLH5wfHFuCZA6+GWD
 IAA9+NoniaXIBEZFgeiiF+cmPxLYiS22L8QYOT333tGThgqVu87th5i6ZGiDo0Kg/vnt
 vxuTvvroDj9U6NBHiXtRNtu4GAl27xtMCwpTftr3U0lbpaPQJ5aHRSxSjUOZp0YkV9jd
 jEciK+9A4wGgkluCsIdhIt2lUG48syiD4K3xg8oZOPScKDH3uvJVx6Ex7FZUYS9Y+Js3
 INOR2KXlbIvRMc+iWQ6suJlTPu4UK+LtOtLVl4uo/tlJ+tZysDZ0v0Jsblc+d8tqIts3
 7Sig==
X-Gm-Message-State: APjAAAUyadMIiKxRGd1wYXC3p7gnI2PCAh0H2Okj2Y3/uqond6/X5znv
 PQaozUAGTVBGfCzLHeY/Mx0=
X-Google-Smtp-Source: APXvYqwSXOoy09IOGc1a7VvJxFAljyE+ahCn0P1O+4NiIIpdcPsm24GoWu6JanLRTDEP88CgrM0+eA==
X-Received: by 2002:aed:3384:: with SMTP id v4mr9186289qtd.58.1579990488791;
 Sat, 25 Jan 2020 14:14:48 -0800 (PST)
Received: from black.hsd1.ma.comcast.net
 ([2601:199:417f:9090:64b4:53c4:7530:53fc])
 by smtp.gmail.com with ESMTPSA id z5sm6254816qts.64.2020.01.25.14.14.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Jan 2020 14:14:47 -0800 (PST)
From: Paul Thomas <pthomas8589@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] GPIO, Fix bug where the wrong GPIO register is written to
Date: Sat, 25 Jan 2020 17:14:10 -0500
Message-Id: <20200125221410.8022-1-pthomas8589@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_141451_521320_D3479700 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pthomas8589[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pthomas8589[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Thomas <pthomas8589@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Care is taken with "index", however with the current version
the actual xgpio_writereg is using index for data but
xgpio_regoffset(chip, i) for the offset. And since i is already
incremented it is incorrect. This patch fixes it so that index
is used for the offset too.

Signed-off-by: Paul Thomas <pthomas8589@gmail.com>
---
 There are many different ways to correct this, I'd just like it to get
 fixed. I've tested this with a 5.2 kernel, but this patch is against
 5.5rc7.

 drivers/gpio/gpio-xilinx.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
index a9748b5198e6..67f9f82e0db0 100644
--- a/drivers/gpio/gpio-xilinx.c
+++ b/drivers/gpio/gpio-xilinx.c
@@ -147,9 +147,10 @@ static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 	for (i = 0; i < gc->ngpio; i++) {
 		if (*mask == 0)
 			break;
+		/* Once finished with an index write it out to the register */
 		if (index !=  xgpio_index(chip, i)) {
 			xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
-				       xgpio_regoffset(chip, i),
+				       index * XGPIO_CHANNEL_OFFSET,
 				       chip->gpio_state[index]);
 			spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
 			index =  xgpio_index(chip, i);
@@ -165,7 +166,7 @@ static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 	}
 
 	xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
-		       xgpio_regoffset(chip, i), chip->gpio_state[index]);
+		       index * XGPIO_CHANNEL_OFFSET, chip->gpio_state[index]);
 
 	spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
