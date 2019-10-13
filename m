Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4DAD55F6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 13:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fiRAp9bTSruxj5HTMEPxc+6uUzJ7KMss1vjXNQX4Xoo=; b=KDTDq8BWAZLctK2g3Dm8ZwfiMq
	WV7gNX2gG/I/QW/jYhcbO4Aq7bISeoA7Uu0h1H1udKiUzfcA/0kIZT+HI+Q138SuKyaiba5ccG/7C
	HmWJi6sNoyfDaxZCMvyil80w4UceLRB9EeKyIdVZBG0HfCbkdJJ5EeZ3MUueCIuuOaxQnwG+A8w/G
	PfvYiZJ8Bx9KnTs6DmvAeLPkOleIFjXHTgai5T5jQeu2LVpCm6e1hmezoD90jf+3x2w4UkL3mGv7Q
	Q5a5Expd+EqCVVFzd+vBELA00/IFjXVXeeqfRvJ01OMFFzwVKH6pxxQ6SQp6nMwV5suq6aZMKe58a
	zjiTFvoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJcGP-0007qe-Lb; Sun, 13 Oct 2019 11:42:17 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJcFJ-00074S-9n
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 11:41:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id e15so413525pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 04:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7S85Z16eqmxjvMi+R450sz/jCD08hapdQq20bxkJhIQ=;
 b=H4jNSTdI5Utco2tyI+uH4DR1jB5MYkjGkGQxM479hgCZU/ZNemoRjc11r/XAqI1YW4
 26yTn/C4RbX8Yj7MzC/EqAoQUsbQ7LwcxAqg8SPPU/u9+LBCVv5Zt4wtRpser3p7QNoK
 Bd6KA1c7v/uXAgzcCLODw8zyKcYj4k0Cc9x4HNaL+9mzESQ39HKoaVzLP5u8rUS6h3QS
 xqNl9HDBKn1KsgV7mpdOki5g3wMAYmVod4OwM9VDcJhxnJJfuKatl7tmyiOmAOOiQWs8
 fZGZ1RyuZcIcc7zP/xADrB5d7ntJyFr4HyrJ5vBpnqlHJnitWVJYL+lZ6+u+M2cj3u6T
 Li7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7S85Z16eqmxjvMi+R450sz/jCD08hapdQq20bxkJhIQ=;
 b=CMt8aC6uY6/8mp6SfVom5sIhI7/CXS9LSYyjxLxZdQD9EXMsIwXZMPS1P525/R9gMp
 XYj+ztW7yiHAlJ/ZhlBYfKPb26Vu504jpLZxk+Bd8p8Je0UJOy0VeingyKt2d/mzNnHR
 4cChIE8mTu/UK2vlBj0IBjYFT/qia8qIONJSBs8QPTxH+PX5WaKJQ2OVL0SSvOJ6eYlC
 5V50NK6BbWlw6/6EkF5X5FKvy2yFrDjBpZuxJThrZEYOkc624/UMDzof/IMErCeniTVZ
 XAfieIyaZCC6h0XqLXCa8U5IZiB4vN5QXxEIafw3Gu403vxJTSjF7L4bDUmJ+62BSKsy
 DpLg==
X-Gm-Message-State: APjAAAUPtKmmM27CR/PeA37e80wig3w8aPxyv4aodEoMG9M9e0w3FrC3
 sSk5XstlTJPJEcBxfxfYv8h6uuVegQ==
X-Google-Smtp-Source: APXvYqyMf//YphrDSapCyYZlFpndVYwzVoxvk6U4mfcZQ1EDwhJ5RM7JEHNQxeaT6p0MQgWyo+MMUQ==
X-Received: by 2002:a63:1d60:: with SMTP id d32mr5831688pgm.37.1570966868275; 
 Sun, 13 Oct 2019 04:41:08 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:8e:4f53:b957:652b:7622:f311])
 by smtp.gmail.com with ESMTPSA id
 g12sm23165736pfb.97.2019.10.13.04.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 04:41:07 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH 4/4] MAINTAINERS: Add entry for RDA Micro GPIO driver and
 binding
Date: Sun, 13 Oct 2019 17:10:37 +0530
Message-Id: <20191013114037.9845-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191013114037.9845-1-manivannan.sadhasivam@linaro.org>
References: <20191013114037.9845-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_044109_401353_87C3983E 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-unisoc@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for RDA Micro GPIO driver and devicetree binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a69e6db80c79..0303502cd146 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2150,9 +2150,11 @@ L:	linux-unisoc@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm/boot/dts/rda8810pl-*
 F:	drivers/clocksource/timer-rda.c
+F:	drivers/gpio/gpio-rda.c
 F:	drivers/irqchip/irq-rda-intc.c
 F:	drivers/tty/serial/rda-uart.c
 F:	Documentation/devicetree/bindings/arm/rda.yaml
+F:	Documentation/devicetree/bindings/gpio/gpio-rda.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/rda,8810pl-intc.txt
 F:	Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
 F:	Documentation/devicetree/bindings/timer/rda,8810pl-timer.txt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
