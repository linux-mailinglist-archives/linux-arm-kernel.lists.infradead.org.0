Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D2D890BD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 10:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P3Ca5WVnsUKlvUyfTkMRaXxgW0VAFIGy+H/Ru5CPL7E=; b=Kn1F4ykeCncPKZ
	HNu6/zE9f3+JvEPUNmsuRxrFjL+kwGQLKyL8M126ZMX34D3ajqlVUqZlz64Xs3G55VpzYZfWE8LJi
	2B3h//yTc8zhDuCRx7/fMxDlmT0ENa+z7RXzplgUV/d4eE3jhwgdvGmciEsctEvyFbtQTdOSqbPJ+
	vEHdcjTytoA4azIZNVwF/kPhXYKsy//edzWnHQOHtVf3tgzb+kn2kSdEdF+qZd65LgirgDB8gM01I
	FohEtvgsaZAE3QQVP2VKlQtD9ulcN+lHVhK85aiQr7iwIBBiqiGhVf/iaBAAeJ2t+rdbywYmnwxFQ
	Yha3NahxRD61EBIwixdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwjWm-0000wv-Fq; Sun, 11 Aug 2019 08:48:36 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwjWY-0000wc-Sz
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 08:48:24 +0000
Received: by mail-lj1-x242.google.com with SMTP id h13so285759ljc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 01:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pXHasjFTPMOY9kq0PL7JOaC1aEi+PxAZiTuH1S1KxPY=;
 b=k62jIKVLNEu0Be0N/7l+wYBc7wVgvBzJUQXjpCeyJS3gbRqwdPYFBfHiK2zFRkxPO/
 OUsBzs1m/cwMfxr7+qlEX9MAa/8hNqiRwT/RaoxM7BDP93INRIHdW7ScRFJVXn93Zkg0
 D0joxhEV1nxkjYMotGQQW029J/hWfjQHoi2WPedN6XNWb1VHf+J1bEOLMEctkUerrI0d
 YvgQ/iazH+JjR4zwMrCP4RAVsA/XwZirTW2p2YnUH1y4Qkj78o/whSTzW5sVSlxtIOTk
 iPCaGFB1tf70KItAywSwXxscFYdixzF9Xl7grRT/iJVPb2V7u4P8TIz1fyoYDgr9QFvW
 /vLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pXHasjFTPMOY9kq0PL7JOaC1aEi+PxAZiTuH1S1KxPY=;
 b=FXVeezyG7WajRhl6WursCr/Wd+5s5B10RpKbrh6CLQKJtlCZoHk6f32jXicApDJiHh
 siD6E6uCg68mdDMMCxFElPfs2VOqjUZwoEekaTK9jKZqhyAANQyuEp6KsRvu9mMjjlQQ
 iWOKKmDSJkJcjQ5ugR6ZbhPVIn7ND5PoheTP4qxQtppxSTsuG3WikQpD6x5dyLwOy6XA
 sVluI+TGFwFmUvC+RrYHPoj4k9yZ5xcr7yS//+jzdmNznZHwV+MVf9N8R9gCA4dP4atQ
 CTu1tb+8GCE2JWmgm2/QTuC7QaO7Z1oNtT6VVBvLhMsEWm3YIsGXdX0e4NFgbtdEBq7x
 hADw==
X-Gm-Message-State: APjAAAXiyu51yMTpdnspQpaksxzAZo5gAry0UEh6yxvXe0GIh6WxTCyy
 LnkzIRHCtuj7UCpNxLA4U84=
X-Google-Smtp-Source: APXvYqwnlKb4Nta1kIvQyP6WUPknA1M8NdVMu8eeJdxxX6zeqV5kJDCOIXhMt+XQpSwveJeh6SKI8A==
X-Received: by 2002:a2e:968f:: with SMTP id q15mr16037437lji.30.1565513300534; 
 Sun, 11 Aug 2019 01:48:20 -0700 (PDT)
Received: from z50.gdansk-morena.vectranet.pl
 (109241207190.gdansk.vectranet.pl. [109.241.207.190])
 by smtp.gmail.com with ESMTPSA id l22sm20242598ljc.4.2019.08.11.01.48.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 01:48:19 -0700 (PDT)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>,
	Tony Lindgren <tony@atomide.com>
Subject: [PATCH for v5.3] ARM: OMAP1: ams-delta-fiq: Fix missing irq_ack
Date: Sun, 11 Aug 2019 10:48:02 +0200
Message-Id: <20190811084802.630-1-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_014822_965697_305C6591 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jmkrzyszt[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-omap@vger.kernel.org, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Non-serio path of Amstrad Delta FIQ deferred handler depended on
irq_ack() method provided by OMAP GPIO driver.  That method has been
removed by commit 693de831c6e5 ("gpio: omap: remove irq_ack method").
Remove useless code from the deferred handler and reimplement the
missing operation inside the base FIQ handler.

Should another dependency - irq_unmask() - be ever removed from the OMAP
GPIO driver, WARN once if missing.

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 arch/arm/mach-omap1/ams-delta-fiq-handler.S | 3 ++-
 arch/arm/mach-omap1/ams-delta-fiq.c         | 4 +---
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap1/ams-delta-fiq-handler.S b/arch/arm/mach-omap1/ams-delta-fiq-handler.S
index 81159af44862..14a6c3eb3298 100644
--- a/arch/arm/mach-omap1/ams-delta-fiq-handler.S
+++ b/arch/arm/mach-omap1/ams-delta-fiq-handler.S
@@ -126,6 +126,8 @@ restart:
 	orr r11, r11, r13			@ mask all requested interrupts
 	str r11, [r12, #OMAP1510_GPIO_INT_MASK]
 
+	str r13, [r12, #OMAP1510_GPIO_INT_STATUS] @ ack all requested interrupts
+
 	ands r10, r13, #KEYBRD_CLK_MASK		@ extract keyboard status - set?
 	beq hksw				@ no - try next source
 
@@ -133,7 +135,6 @@ restart:
 	@@@@@@@@@@@@@@@@@@@@@@
 	@ Keyboard clock FIQ mode interrupt handler
 	@ r10 now contains KEYBRD_CLK_MASK, use it
-	str r10, [r12, #OMAP1510_GPIO_INT_STATUS]	@ ack the interrupt
 	bic r11, r11, r10				@ unmask it
 	str r11, [r12, #OMAP1510_GPIO_INT_MASK]
 
diff --git a/arch/arm/mach-omap1/ams-delta-fiq.c b/arch/arm/mach-omap1/ams-delta-fiq.c
index 43899fa56674..0254eb9cf8c6 100644
--- a/arch/arm/mach-omap1/ams-delta-fiq.c
+++ b/arch/arm/mach-omap1/ams-delta-fiq.c
@@ -70,9 +70,7 @@ static irqreturn_t deferred_fiq(int irq, void *dev_id)
 			 * interrupts default to since commit 80ac93c27441
 			 * requires interrupt already acked and unmasked.
 			 */
-			if (irq_chip->irq_ack)
-				irq_chip->irq_ack(d);
-			if (irq_chip->irq_unmask)
+			if (!WARN_ON_ONCE(!irq_chip->irq_unmask))
 				irq_chip->irq_unmask(d);
 		}
 		for (; irq_counter[gpio] < fiq_count; irq_counter[gpio]++)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
