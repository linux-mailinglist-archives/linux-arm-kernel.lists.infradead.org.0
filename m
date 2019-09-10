Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276CFAECC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2LVlaLoy3BAWHXmISRM5ophr+F1fdlq9PMdUrQIjB9Q=; b=pez
	ccJUvgsAS9So2MIKAfg4AKDxCi70mIbOiYKTjysH1yaXsZZsy6Sa6S8zluiiTHqXAsIdcJ2UeWp19
	I3KXoZ5/SRYy2s16J3Jups50aiPWAzN7if/ZclQc5RRc852S4OlnvtYve6yBeUTjWJoYVHQRVeJ7y
	GimlNnPGkczHUSI6mXqnFAuvKe0pea6SymJcMnNYsnOULl8rWpqnWVo7Dt0IAMz6rdaMcJuM7i2cF
	XFl1DuY1c9HHda9DQgTJcdyk5edTTjdutW8uV7PlHs9VL0rspCV2Xzv2ucwU1TssOkDHiFE7MzDwU
	fypPpErLX/leiGGftCp8mhFEMvJV9KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gw9-0000tH-GQ; Tue, 10 Sep 2019 14:16:05 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gvr-0000kK-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:15:49 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id zqFW2000k05gfCL01qFWtr; Tue, 10 Sep 2019 16:15:34 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i7gva-0001al-HK; Tue, 10 Sep 2019 16:15:30 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i7gva-0005Tv-F5; Tue, 10 Sep 2019 16:15:30 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH] gpio: htc-egpio: Remove unused exported
 htc_egpio_get_wakeup_irq()
Date: Tue, 10 Sep 2019 16:15:29 +0200
Message-Id: <20190910141529.21030-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_071548_288558_7C09BC2C 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
 0.0 SUBJ_OBFU_PUNCT_MANY   Punctuation-obfuscated Subject: header
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Philipp Zabel <philipp.zabel@gmail.com>,
 Paul Parsons <lost.distance@yahoo.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This function was never used upstream, and is a relic of the original
handhelds.org code the htc-egpio driver was based on.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/gpio/gpio-htc-egpio.c                | 14 --------------
 include/linux/platform_data/gpio-htc-egpio.h |  3 ---
 2 files changed, 17 deletions(-)

diff --git a/drivers/gpio/gpio-htc-egpio.c b/drivers/gpio/gpio-htc-egpio.c
index 9d3ac51a765c1405..6eb56f7ab9c94e73 100644
--- a/drivers/gpio/gpio-htc-egpio.c
+++ b/drivers/gpio/gpio-htc-egpio.c
@@ -118,20 +118,6 @@ static void egpio_handler(struct irq_desc *desc)
 	}
 }
 
-int htc_egpio_get_wakeup_irq(struct device *dev)
-{
-	struct egpio_info *ei = dev_get_drvdata(dev);
-
-	/* Read current pins. */
-	u16 readval = egpio_readw(ei, ei->ack_register);
-	/* Ack/unmask interrupts. */
-	ack_irqs(ei);
-	/* Return first set pin. */
-	readval &= ei->irqs_enabled;
-	return ei->irq_start + ffs(readval) - 1;
-}
-EXPORT_SYMBOL(htc_egpio_get_wakeup_irq);
-
 static inline int egpio_pos(struct egpio_info *ei, int bit)
 {
 	return bit >> ei->reg_shift;
diff --git a/include/linux/platform_data/gpio-htc-egpio.h b/include/linux/platform_data/gpio-htc-egpio.h
index 9a3e78082883f366..eaefba0b6465b48c 100644
--- a/include/linux/platform_data/gpio-htc-egpio.h
+++ b/include/linux/platform_data/gpio-htc-egpio.h
@@ -50,7 +50,4 @@ struct htc_egpio_platform_data {
 	int                   num_chips;
 };
 
-/* Determine the wakeup irq, to be called during early resume */
-extern int htc_egpio_get_wakeup_irq(struct device *dev);
-
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
