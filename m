Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62E9115C4A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 14:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9yzssJzjCc0lSmec/hPNua0d6o5Gyk7ujPTIQHE5Vkc=; b=q6fQip5GarQHi7KErVElAikaK3
	SXn/FFiWstN9ZnL6umHmRuDVdat1qIUplZzpRCZKUQGWmLzKZftqVCg0+gCqxeoTRXvNXq1791KCx
	a+Xr+hEZpEZ1kf7IiA5A7D480B9+CrjEC7MxVqH8YgRzuaCPzVQtH3lTAX3pKnb/I/LAe2quR4rPa
	u9wtQJHb+r6Lj425aAqPfjJni3PlG+npR2vwwxNfYOZN5TDPzAl7YR9i3BQzWi9/vGhY58s8OKRRc
	ukPsD7/1kQcoxzo55AMSc5kxcWQ7uaZ1f1qx4AUTVQ3t8UZiJQ6xRkE/1xNBhoSknqEPLlNw1X+9p
	2/mLnWPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idZiI-0001jt-C4; Sat, 07 Dec 2019 13:01:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idZi6-0001el-JH
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 13:01:23 +0000
Received: by mail-pf1-x443.google.com with SMTP id n13so4830528pff.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Dec 2019 05:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dG8vxX7uZglDTdab2aKg6N47zqValFwiCvXmsp/VnHc=;
 b=dKihn8JERK6MPaKyRKVunDCCS+72eAMzM0U++7ADDGPUSgHz+FlDa6R/xkFq23ujtD
 okzoaNRMQ7Uw5xku1m0ONEItGidb46BDIJ5vfDc7J8UBWL3BEjYV13yHOlXV5YEb1uSj
 6pYtjz8lB9gOl913KrqhTFCZq8RMOmVZhoXFbbFqUxQIt1A6fxYTMUmTrkeCGe83EhKS
 GTjy4TivYDJWQXs1W05QZ69pFlBmJ28I1LmqfJY3tYNeACSpiv/V6X/krR8tT4imPSVD
 dOrl2ZxnRjXVPCbm7DJjkLyKJjlBUE7tUxfCPtHwKmxGwmAxEgk30o8J9aCjgTvQ5Kt+
 VcAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dG8vxX7uZglDTdab2aKg6N47zqValFwiCvXmsp/VnHc=;
 b=gh9+bTXf3lZU9/6k0HPLHX7tg9Yj1ph5f05teslwFeQvH8gsBIbE0gRQUttRSVu6IN
 0YpCEaMsxYaQijM3bBKwDKE9TJg8yrBt5YylgQ9JVZ8lmQLl9d+G6tKzz66wVFb3XjJj
 v7PM0/2qJ3DFMxmMsY19qsBFVELnhCEUrjhnDeZIQJOKgaMxP5ZZZhJ/hOXqwqtH86ZR
 0zBoDbvfQfdJfsRmHFowXstnfrIKJ6rJC/YW91UWuqSyhHrOE/ej6fTY1URC+SEpv8At
 8n4m383vVHueN+chLKvs6VfmJkvFPQgutkxbknK5vtNwLxDXy+qLzpAlyalQWRJpX6JI
 PSMA==
X-Gm-Message-State: APjAAAVpSYAlckEOUVULynGBMlrmll7GkiVJyQt9jFhpZfyYOEObftnf
 Uap+/ie3L2Eq4s9RF8HMd0c=
X-Google-Smtp-Source: APXvYqz+k3c87NitGmT2B9GRr1u3gfx0IO0f+nvexgDJ2siS9kivL7lqN+FrZVU/+FSSz+hMdFFSxw==
X-Received: by 2002:aa7:8f05:: with SMTP id x5mr19707044pfr.86.1575723681648; 
 Sat, 07 Dec 2019 05:01:21 -0800 (PST)
Received: from localhost.localdomain ([211.243.117.64])
 by smtp.gmail.com with ESMTPSA id f7sm10241246pfk.183.2019.12.07.05.01.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 05:01:21 -0800 (PST)
From: Hyunki Koo <hyunki00.koo@gmail.com>
To: linux@armlinux.org.uk, kgene@kernel.org, krzk@kernel.org,
 tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org
Subject: [PATCH 1/2] irqchip: define EXYNOS_IRQ_COMBINER
Date: Sat,  7 Dec 2019 22:00:48 +0900
Message-Id: <20191207130049.27533-2-hyunki00.koo@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191207130049.27533-1-hyunki00.koo@gmail.com>
References: <20191207130049.27533-1-hyunki00.koo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_050122_658031_C8B1C9AF 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hyunki00.koo[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hyunki Koo <hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hyunki Koo <hyunki00.koo@samsung.com>

Not all exynos device have IRQ_COMBINER.
Thus add the config for EXYNOS_IRQ_COMBINER.

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
---
 drivers/irqchip/Kconfig  | 7 +++++++
 drivers/irqchip/Makefile | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index ba152954324b..3ed7b7f2ae26 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -499,4 +499,11 @@ config SIFIVE_PLIC
 
 	   If you don't know what to do here, say Y.
 
+config EXYNOS_IRQ_COMBINER
+	bool "Samsung Exynos IRQ combiner support"
+	depends on ARCH_EXYNOS
+	help
+	  Say yes here to add support for the IRQ combiner devices embedded
+	  in Samsung Exynos chips.
+
 endmenu
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index e806dda690ea..60d7c7260fc3 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -9,7 +9,7 @@ obj-$(CONFIG_ARCH_BCM2835)		+= irq-bcm2835.o
 obj-$(CONFIG_ARCH_BCM2835)		+= irq-bcm2836.o
 obj-$(CONFIG_DAVINCI_AINTC)		+= irq-davinci-aintc.o
 obj-$(CONFIG_DAVINCI_CP_INTC)		+= irq-davinci-cp-intc.o
-obj-$(CONFIG_ARCH_EXYNOS)		+= exynos-combiner.o
+obj-$(CONFIG_EXYNOS_IRQ_COMBINER)	+= exynos-combiner.o
 obj-$(CONFIG_FARADAY_FTINTC010)		+= irq-ftintc010.o
 obj-$(CONFIG_ARCH_HIP04)		+= irq-hip04.o
 obj-$(CONFIG_ARCH_LPC32XX)		+= irq-lpc32xx.o
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
