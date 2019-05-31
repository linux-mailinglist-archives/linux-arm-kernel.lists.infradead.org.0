Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0537030923
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YqYdvekhfkcWr6EL+6enjAJsoxpy/AneKc5fLxHaoYU=; b=nAW
	Lmvb37dAW2DrAHoOhXgaLpA/9bpKAvGTzDojZRrgjJL9VENKD7OaAMqioictvISE51XLOAQc3lM30
	f/VKznYdLMTNLTMrKgzs7V+tDxV8f7OA850TL70w61xl9ThL0zEhrj0t1YA57VSsdZT4lYFpLu2X2
	RNN9FonivRPmq5p+2yQuE4uPi86a1Kf1au2HqEzGo1cuJ2ta1bvujtvY1pcUk+KmVOaJWg9wRrUfl
	rYlsMMpUw0yRMd46FcS40lmZu+1TC7K2K8ISBvJc3HRfGI1Kpo0J9ykvVD7phHd7CIdgedRrh/wpV
	0i9cAUQxfN41L0cHpLpTRpGzxSOGVsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWbdD-0006zr-BB; Fri, 31 May 2019 07:07:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbd4-0006yT-JN; Fri, 31 May 2019 07:07:08 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so3621557plm.6;
 Fri, 31 May 2019 00:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gCzPYZeRgzuxB/s/HnMyy2mQvWi7OdLM0MRQ3A6icIU=;
 b=N9aDnulkY1Sw39aFl/VRAFPXkuoHv54dZ8n6jHZMrECIta1ErWsd8gArMwFTJ6Z5CF
 +fn1jBNNvO+PilqWYQc/qg7ZFfBcae1os5qtWEsuR44IWdIp4m3FTJky3L4Hy2F+Cp6z
 KfGAGW1+WcPCoqMBsrhuaE1sZZE8rjnTNh1GQFu+FKVgJ3JFTi+a2QfEzqv204N5GBY1
 srom02AuUoSAuNVSlf68bBQDm1t3CMsgLwnlIjnmVIc6/IlZPergmNzqA789t/6bZnKp
 QvSQLrMPS0wqQwX/8wDgrtKhvelcX0jyCe5BDdSnOoOxFVVEcJF7n85QebaMXTMzdOrb
 X8fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gCzPYZeRgzuxB/s/HnMyy2mQvWi7OdLM0MRQ3A6icIU=;
 b=FJMRa3+KJa+DfwdayTEAfKs8i7GY5w9blOrkaSnTIMwToEh/SSG+fX21h6o9eUo4uV
 +lzpUuEGITYmzg///Th4BxUcb518fauoyITvJN8eFmP56K3xchuq9H4GyM/Z1AioHgJv
 VvXfsCzmQVd4f6MWCqSLE6lDML+DgaZp8f4zIpMYbsQ/SxV80tECWnahuShIPVRmBTx+
 7IAB5d+4MPeEB2JSp1EGsb3k9XS5d5Vj+JGRwpuSx66dbnXReDxjYA1gtRO1qnzj+azw
 Qgjy2Le597rzX+6kdyxhJZJnDrj0LPtQs/odUz+uawGhX0F9fxQRRChcivpfITyUoSKL
 hpIQ==
X-Gm-Message-State: APjAAAXPdqJ+MGvEYMfKabQ4JmEVQ+CLYnpd1f+25G7ZCwHIIvFTFJId
 7rKx6QwX/xo1e1RK7ujxUQqrbL/+u/m4+Q==
X-Google-Smtp-Source: APXvYqyxJsDO9UeM9q0M+fBL8/9K7JuWsbGJrDj2dkj/zbuEYvCNFMay+iJhARsFqHiwXuGlN3cG1Q==
X-Received: by 2002:a17:902:a40d:: with SMTP id
 p13mr7181833plq.11.1559286425503; 
 Fri, 31 May 2019 00:07:05 -0700 (PDT)
Received: from xy-data.openstacklocal
 (ecs-159-138-22-150.compute.hwclouds-dns.com. [159.138.22.150])
 by smtp.gmail.com with ESMTPSA id k6sm5177437pfi.86.2019.05.31.00.07.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 00:07:04 -0700 (PDT)
From: Young Xiao <92siuyang@gmail.com>
To: sean.wang@kernel.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] pinctrl: pinctrl-mtk-common: fix a possible NULL pointer
 deference
Date: Fri, 31 May 2019 15:08:09 +0800
Message-Id: <1559286489-5418-1-git-send-email-92siuyang@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_000706_661237_24F68AEE 
X-CRM114-Status: GOOD (  11.95  )
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
 provider (92siuyang[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Young Xiao <92siuyang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function, external interrupt controller, is made as an optional to
pinctrl. But if we don't want pio behaves as an external interrupt
controller, it would lead to pctl->eint not be created properly and then
will cause 'kernel NULL pointer' issue when gpiochip try to call .to_irq
or .set_config. To fix it, check pctl->eint before accessing the member.

See commit 5f591543a937 ("pinctrl: mt7622: fix a kernel panic when pio
don't work as EINT controller") for details.

Signed-off-by: Young Xiao <92siuyang@gmail.com>
---
 drivers/pinctrl/mediatek/pinctrl-mtk-common.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
index 0716238..b395f0b 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common.c
@@ -836,6 +836,9 @@ static int mtk_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
 	const struct mtk_desc_pin *pin;
 	unsigned long eint_n;
 
+	if (!pctl->eint)
+		return -ENOTSUPP;
+
 	pin = pctl->devdata->pins + offset;
 	if (pin->eint.eintnum == NO_EINT_SUPPORT)
 		return -EINVAL;
@@ -853,7 +856,8 @@ static int mtk_gpio_set_config(struct gpio_chip *chip, unsigned offset,
 	unsigned long eint_n;
 	u32 debounce;
 
-	if (pinconf_to_config_param(config) != PIN_CONFIG_INPUT_DEBOUNCE)
+	if (!pctl->eint ||
+	    pinconf_to_config_param(config) != PIN_CONFIG_INPUT_DEBOUNCE)
 		return -ENOTSUPP;
 
 	pin = pctl->devdata->pins + offset;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
