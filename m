Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6399CDAEC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 05:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0GxymInOwfGt9SV2Hyi9b/lDqmeJ9FIIQBtOb5oo48=; b=O3NxhCLpjZJ+oj
	1emd+bL8vKbCXyjbZpeGrS/jaJBKczOsIWWqnhnO3IlGX5EMYshDZCHlxV+4Dj9KI21kTgW6QG8XQ
	/XETkqdytptGbNXWfp0lRHuIhhCLO58iz1hS+Ro65PQIcWEepwMZjYDvlPdOa4ZDfY2oa4TFpXZq+
	uiU1h9T2kZU1ODw9p+EyPOlDJjkc6+H6a9ihLAJiyUJk0jFKKBZCLtWNBIHOE8VfHMdoCYu74SNJa
	B9LTS1zeRsch595QD5VTmAvUdX+6FwhS8I3y7Ioo8bBjK3NZmAVTQNosg9t+KwF4Se7vLWMYTWpZ/
	6GoqtB2pvP2ds8VKAMQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKxOS-0006Nf-Rx; Mon, 29 Apr 2019 03:55:52 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKxO6-00065D-99
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 03:55:31 +0000
Received: by mail-pg1-x541.google.com with SMTP id z16so4485063pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 20:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7lsB7l68Q2QXqBhtOyTwuTtF7RZuXTpMIg50jCRbpi0=;
 b=e6r9RTINdTkzBfmhCn0Zd/uS9VD+tKpBrRTZLnWJRhIaRQGsTalHikdiV1rFz9XJwT
 YG3UGzwrhVYHjCSpiCl9rA2tJ6OfZ4pgofHmyQ36rynN9F8Rqzjt+iFzzoZfg2lklROm
 8z/efRXO4gc+tbSEyy5VY+144Yd6nv2H+fBoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7lsB7l68Q2QXqBhtOyTwuTtF7RZuXTpMIg50jCRbpi0=;
 b=KO9pOKfwdjdxZMU8JUzOt2Ez3XgOsuIMJPUeRvdCowDvJbBgL7VVe8Cw+iaZIA4Ubg
 NaTvpOBimRmOe83TMduxvacAXfvZoMNL+dgia+pmAovkHP5V2hfWJX/gpsBDq5DnvtN8
 K3MnQS97A+aN6VuDtMPigjE1Tbvb1EWhuInegK0LTfmn46JCiHK9miudrzCINc8zoyAC
 mjsCaMAKBLBy8PPbHUfK0mSYoLB9ZLwiZyLAf4z7yLJRheY0H0tJYw8Y/tUH16HbZ97J
 JvV9uNAOfzQ93apjlyUjc1ScGsHbSYf2Xh6GUuwqjWWfccA3KJU2rT6uaf4l5FNPxSHK
 v0lw==
X-Gm-Message-State: APjAAAVIqlyKCm+LhlCjC/rrDxR2ZmB/T2WSVRjsdm4wgi7qXhF+YXGg
 sbHMiBX6eZ7DMvo3QWldkfgyPg==
X-Google-Smtp-Source: APXvYqwtzrtpO7ganaV1Gc2uDvzrWfkie1Ma+Bpr6cXgpqNo8hY6cYwwk1o8w1b/+Ox9y8r8j8wwBw==
X-Received: by 2002:aa7:9116:: with SMTP id 22mr53588470pfh.165.1556510129598; 
 Sun, 28 Apr 2019 20:55:29 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id x128sm55433585pfx.103.2019.04.28.20.55.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:55:29 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] pinctrl: mediatek: Ignore interrupts that are wake only
 during resume
Date: Mon, 29 Apr 2019 11:55:14 +0800
Message-Id: <20190429035515.73611-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190429035515.73611-1-drinkcat@chromium.org>
References: <20190429035515.73611-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_205530_316863_E3AF41C9 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 linux-gpio@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before suspending, mtk-eint would set the interrupt mask to the
one in wake_mask. However, some of these interrupts may not have a
corresponding interrupt handler, or the interrupt may be disabled.

On resume, the eint irq handler would trigger nevertheless,
and irq/pm.c:irq_pm_check_wakeup would be called, which would
try to call irq_disable. However, if the interrupt is not enabled
(irqd_irq_disabled(&desc->irq_data) is true), the call does nothing,
and the interrupt is left enabled in the eint driver.

Especially for level-sensitive interrupts, this will lead to an
interrupt storm on resume.

If we detect that an interrupt is only in wake_mask, but not in
cur_mask, we can just mask it out immediately (as mtk_eint_resume
would do anyway at a later stage in the resume sequence, when
restoring cur_mask).

Fixes: bf22ff45bed ("genirq: Avoid unnecessary low level irq function calls")
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/pinctrl/mediatek/mtk-eint.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
index f464f8cd274b75c..737385e86beb807 100644
--- a/drivers/pinctrl/mediatek/mtk-eint.c
+++ b/drivers/pinctrl/mediatek/mtk-eint.c
@@ -318,7 +318,7 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct mtk_eint *eint = irq_desc_get_handler_data(desc);
 	unsigned int status, eint_num;
-	int offset, index, virq;
+	int offset, mask_offset, index, virq;
 	void __iomem *reg =  mtk_eint_get_offset(eint, 0, eint->regs->stat);
 	int dual_edge, start_level, curr_level;
 
@@ -328,10 +328,24 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
 		status = readl(reg);
 		while (status) {
 			offset = __ffs(status);
+			mask_offset = eint_num >> 5;
 			index = eint_num + offset;
 			virq = irq_find_mapping(eint->domain, index);
 			status &= ~BIT(offset);
 
+			/*
+			 * If we get an interrupt on pin that was only required
+			 * for wake (but no real interrupt requested), mask the
+			 * interrupt (as would mtk_eint_resume do anyway later
+			 * in the resume sequence).
+			 */
+			if (eint->wake_mask[mask_offset] & BIT(offset) &&
+			    !(eint->cur_mask[mask_offset] & BIT(offset))) {
+				writel_relaxed(BIT(offset), reg -
+					eint->regs->stat +
+					eint->regs->mask_set);
+			}
+
 			dual_edge = eint->dual_edge[index];
 			if (dual_edge) {
 				/*
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
