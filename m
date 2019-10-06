Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35F6CD2B4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7em1ddWZOlS/5X9nXfj9m+NFK0UqTYcyU/y27z+PfSg=; b=uL7JGRBh6tcG0M
	ZassXPo0evjL8B57d7w5kNrhCCgnT0JvGcnAAP/M65LlBiiUxmza0Mq4sVhmSX8AAeI/cG5d7EKd2
	FUI8tA1llelGeNQ96ITp4VSl5cFRNPUDarPbOPxOABnk/DtyMRL/520+MJbAtNE8yyata7f1JLyHz
	K0gTbPE5DbiLSX6WV3gv0f2uZEWQTyJmhFIisZIKC4ZK+BkphOI9zotolv2xkj90PHtd+xMuZVPF4
	oe7KY62msZAWrykRQIBuOL01vMUf1QtIMHBOsFmub/Ga97lBAUkbnQahG8C7bghLtdiA53pfuIg+r
	sQ2tJxX9PqIyyFrmiQSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8Fz-0003g8-H1; Sun, 06 Oct 2019 15:15:35 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8CN-0007z3-9o
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:11:52 +0000
Received: by mail-yw1-xc41.google.com with SMTP id r134so4189178ywg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 08:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;
 b=n/Wb2z5ac4SZMTalEqwdc7QDCe8+Ouu08UZL+YXF3fcBU4QhQnOMhYZBFIzxQG4hr+
 7C/35KQoh+qGUCchTX2qESlNO6SVio+Kv04lyzZGh1FMtQffTTC3dxC8hVsWx2WgyTS0
 ukDGrl3CBCtNLegJ9flr0vpfmEvXTNq8RIwNfTbZ2Eh94osR07ZfF0O+MadLHMDzkp9u
 uNF3t4OunvnaFox2C78G4FKI+1i5Vtk+bbUQMoSR14BiwFhy1wRmsvd78QuW5mlGIX2G
 EGuf6JVI63VPyySprvZeTPr/Pty862/HPJ/ONMnztf4HVBAna45wfvpe0GYfdVAec3ZM
 RXaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;
 b=gTpB4ESRq6bTXGOWA/BCiZojZXOCHPDpmxGU74TBe9OXWEyvag0+q03DpR1TDM6Ipb
 t9QNlxe0bgWCYVL3NwiHSbQSWv2Ncb0MIAKnH6Y49HykiQcw69+rq+0eEpIcZL1KTYYZ
 iKRKYrkUWF/+RUc8k4WdK50+7OgZJt++Q+Q/0DQG2q5jzie3gzBYjZ5rFOZWOoN/PORt
 TpiB8Jchn5g+yUhEecjMRczWAIm/ByIqoqxOALN2F283507p588ZftdBf4Q+o93ECPRw
 4HoMRxhtZr5/eJ29Ck5DcgLdyKFdf6ncdV+FKFZnZqJ8AMHJKPeH9VGea5hZvupHUKjT
 wGwg==
X-Gm-Message-State: APjAAAVACKVp2BKp+8c+lq80hhH8rysn+Q83IVpJbFTayGvUgxCyf6Ut
 ycR/T0r7aEhqjnqbwHhMsGs=
X-Google-Smtp-Source: APXvYqxxXXJnm8HJzt/VyDIzw3iepOO/WG++Zq0TXsTwYRrBCos7MQOYzUhEmVHDR38fp+Ki9kRL9Q==
X-Received: by 2002:a81:7743:: with SMTP id s64mr17250968ywc.183.1570374709825; 
 Sun, 06 Oct 2019 08:11:49 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id e82sm2662434ywc.43.2019.10.06.08.11.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 08:11:49 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v16 12/14] gpio: pisosr: Utilize the for_each_set_clump8 macro
Date: Sun,  6 Oct 2019 11:11:09 -0400
Message-Id: <19e98b4a648026055d0642d238dbf5ed5a4b4117.1570374078.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570374078.git.vilhelm.gray@gmail.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_081151_373472_CDE3CBD3 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 William Breathitt Gray <vilhelm.gray@gmail.com>, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace verbose implementation in get_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Cc: Morten Hein Tiljeset <morten.tiljeset@prevas.dk>
Cc: Sean Nyekjaer <sean.nyekjaer@prevas.dk>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-pisosr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpio-pisosr.c b/drivers/gpio/gpio-pisosr.c
index f809a5a8e9eb..9ab2c044ef52 100644
--- a/drivers/gpio/gpio-pisosr.c
+++ b/drivers/gpio/gpio-pisosr.c
@@ -96,16 +96,16 @@ static int pisosr_gpio_get_multiple(struct gpio_chip *chip,
 				    unsigned long *mask, unsigned long *bits)
 {
 	struct pisosr_gpio *gpio = gpiochip_get_data(chip);
-	unsigned int nbytes = DIV_ROUND_UP(chip->ngpio, 8);
-	unsigned int i, j;
+	unsigned long offset;
+	unsigned long gpio_mask;
+	unsigned long buffer_state;
 
 	pisosr_gpio_refresh(gpio);
 
 	bitmap_zero(bits, chip->ngpio);
-	for (i = 0; i < nbytes; i++) {
-		j = i / sizeof(unsigned long);
-		bits[j] |= ((unsigned long) gpio->buffer[i])
-			   << (8 * (i % sizeof(unsigned long)));
+	for_each_set_clump8(offset, gpio_mask, mask, chip->ngpio) {
+		buffer_state = gpio->buffer[offset / 8] & gpio_mask;
+		bitmap_set_value8(bits, buffer_state, offset);
 	}
 
 	return 0;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
