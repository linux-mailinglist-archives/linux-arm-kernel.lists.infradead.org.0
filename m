Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28917F396C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSNQjxiaZS6/F9V1IFKZrgmez/rAbcq61RMJ/ivvUKY=; b=mukBp78Fnir22R
	3f5VAADCaMUIdTLvytYs0BjnLwuRmyxLeIS0akLdYM/3mDiz/2z/Zu/v8yKzIsl9ilzEaDDcAeaiU
	doINAZ05ewB9J0A796wE7i1Pc9H3IN49kpqWrBDwlQ3auVAmExF3s4gBp6K65QtPZf6ghImMumrdY
	aWwCy2ql9SO2CYv2bQfFKGTq+iLL936PsTqHKZJjkL/sdKvUmf6eY+1Tr3ttkMrJo4NyBJqkFdqZj
	qAw5WQjveP6zsU8dJ/bZXTbATL6Z9o5HcG2jkr8vZIM5A2my5KqCaPKMftZfOwZS2ZM5P1HzF4+iP
	BEzGJwBi9WVKkDfWxmjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoEP-000773-UO; Thu, 07 Nov 2019 20:18:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDP-0006Ag-VG
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id n1so4512887wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uRNUCzVHW/hIxF0Wt4MmTdiGKyzYHqRtim9CvhWuCl8=;
 b=b7mVJluOUKDmGOK+t5dkGpYLWACM0Mxg3I2ksDrXsV1AOUrTp020NCVz230yrSTP/6
 DsxSuhNMEy6hu09xnJobHQOLiX5IeSHLjqIJqftr5asuGNcTQl6BHiZcLC3A+sodKArM
 csxbPNu4j18wVGFbXdDLUuQY33K3NqBaJes9EI8G7L1WEq0Lxy3ROyEs+Yl4joelU2YV
 l0xDUhDfve2NP6fBEQkmBtGju0TqgZ4axK/N7OkA2nZf6TFqJCdA20qiBiNAzffnaEut
 kiN5BUcF0+K+4B2bh/VvBBI7cojqw2G/6IO8Tg+NgVm5f+RTTlMDsajo/pLP2YNh9S7Y
 vHgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uRNUCzVHW/hIxF0Wt4MmTdiGKyzYHqRtim9CvhWuCl8=;
 b=gwNCUs+5MJMSD40A1NT+iFWgZ7ow6LGV10sUMGfkkr0M+XSZ/f34SplyJZ4qknGh9i
 Kp/IgJQBGpEFJrOSJbgjqHNgUW8Gm6LIgYPq/uJKmXCq+bXkYyWGQYMxZ375PtrauqhV
 IAzp9cYuAYMwimDlj61MnNpjWYN+rwgRbzOSY1z/gOAqE/yzpK9/QdZ9D9SHuNf9la52
 ToQtq67ejKcKk8Hbqjhj8hNkEoZ8oWka/Kf7U8NNNeiRsUOUbvOSZYbGj7tfhTI21Icr
 QMemfF6Has53tzD+cVVSpn7YoAJGZw9WOAAzl3ZtYjpfW1ffij/MNwIF4zmnPCnWE7J+
 08tA==
X-Gm-Message-State: APjAAAWMAtQUj2Kcgm351U466B5iZid3e+MauhKPOOXffYyhp9fXKxhw
 zzDpXHC1groyWY2iUHx1hmZjxA==
X-Google-Smtp-Source: APXvYqyRQPyz/sEvlLIRqSi+f8ccU5mRAvmLwG9ITZbMlr/3R4OPvKN5MHxXdK3a18tbASmtAYi7OQ==
X-Received: by 2002:a5d:6203:: with SMTP id y3mr4835347wru.142.1573157830378; 
 Thu, 07 Nov 2019 12:17:10 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:09 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 05/10] Input: imx_keypad - make sure keyboard can always wake
 up system
Date: Thu,  7 Nov 2019 20:16:57 +0000
Message-Id: <20191107201702.27023-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121712_028317_CEA4993D 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <anson.huang@nxp.com>

[ Upstream commit ce9a53eb3dbca89e7ad86673d94ab886e9bea704 ]

There are several scenarios that keyboard can NOT wake up system
from suspend, e.g., if a keyboard is depressed between system
device suspend phase and device noirq suspend phase, the keyboard
ISR will be called and both keyboard depress and release interrupts
will be disabled, then keyboard will no longer be able to wake up
system. Another scenario would be, if a keyboard is kept depressed,
and then system goes into suspend, the expected behavior would be
when keyboard is released, system will be waked up, but current
implementation can NOT achieve that, because both depress and release
interrupts are disabled in ISR, and the event check is still in
progress.

To fix these issues, need to make sure keyboard's depress or release
interrupt is enabled after noirq device suspend phase, this patch
moves the suspend/resume callback to noirq suspend/resume phase, and
enable the corresponding interrupt according to current keyboard status.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: I576fa685e1ab2c764703e5f65a3443e794bdafdd
---
 drivers/input/keyboard/imx_keypad.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/input/keyboard/imx_keypad.c b/drivers/input/keyboard/imx_keypad.c
index 20a99c368d16..a5a4c83f2632 100644
--- a/drivers/input/keyboard/imx_keypad.c
+++ b/drivers/input/keyboard/imx_keypad.c
@@ -531,11 +531,12 @@ static int imx_keypad_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static int __maybe_unused imx_kbd_suspend(struct device *dev)
+static int __maybe_unused imx_kbd_noirq_suspend(struct device *dev)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct imx_keypad *kbd = platform_get_drvdata(pdev);
 	struct input_dev *input_dev = kbd->input_dev;
+	unsigned short reg_val = readw(kbd->mmio_base + KPSR);
 
 	/* imx kbd can wake up system even clock is disabled */
 	mutex_lock(&input_dev->mutex);
@@ -545,13 +546,20 @@ static int __maybe_unused imx_kbd_suspend(struct device *dev)
 
 	mutex_unlock(&input_dev->mutex);
 
-	if (device_may_wakeup(&pdev->dev))
+	if (device_may_wakeup(&pdev->dev)) {
+		if (reg_val & KBD_STAT_KPKD)
+			reg_val |= KBD_STAT_KRIE;
+		if (reg_val & KBD_STAT_KPKR)
+			reg_val |= KBD_STAT_KDIE;
+		writew(reg_val, kbd->mmio_base + KPSR);
+
 		enable_irq_wake(kbd->irq);
+	}
 
 	return 0;
 }
 
-static int __maybe_unused imx_kbd_resume(struct device *dev)
+static int __maybe_unused imx_kbd_noirq_resume(struct device *dev)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct imx_keypad *kbd = platform_get_drvdata(pdev);
@@ -575,7 +583,9 @@ err_clk:
 	return ret;
 }
 
-static SIMPLE_DEV_PM_OPS(imx_kbd_pm_ops, imx_kbd_suspend, imx_kbd_resume);
+static const struct dev_pm_ops imx_kbd_pm_ops = {
+	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_kbd_noirq_suspend, imx_kbd_noirq_resume)
+};
 
 static struct platform_driver imx_keypad_driver = {
 	.driver		= {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
