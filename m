Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB481C440A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6vqVeMGzQdBCSWj/vNaxef8ivqlA4rYRAhxsLe0Mc1o=; b=XBMk1LAEt6a/X8ZBuTvGrV5tA7
	mrKZYA3I267t93PVaGXKSnRe3pR75o5fSo6Y449zR4wMAv2TnSSTn7woiAJ1SP8q0eV043OblnVgS
	oUGxlTVr2vkJlgos6n9NVp+jQ4RZ7SMN0oAWc5VauimnGAEeF4VzR9vrdB7mm8EKicAISLI9iif3q
	qEBFF3/rvbXNS0N7/ZEGpNnxoDkNCkvi/clqyPP+04r2qIqRjJtM7KqyspL7mYcpgyKF5PQk3zuSp
	3TFnCvQDCfRP1xuHPkJLYmUpHNaLHtMOZNA621vEKTYUnYQkG0qAPfdDZfo6WubSF6z/gZDgfnROP
	pJQNluiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQyv-0008IW-Ua; Tue, 01 Oct 2019 22:50:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQx7-0005Pg-Au; Tue, 01 Oct 2019 22:49:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id a2so9160565pfo.10;
 Tue, 01 Oct 2019 15:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lByhQoUDqedSEy5jA6OCeRd6BYLoC/Hj4IwADVyV/Nw=;
 b=WJKIPqAEY/H0PHzfcKZu5++4lceWw/qRVIiktl/qkBV5K8aji5rGiLHvtt1Cr8aWCg
 vHOm9JrCRK7xr1153NTkjsc0wU0cAcshM094iSds+eyFSWlYTQoVu7Bh2AbjxGTculz5
 xg5kp0Knv81SN4PRMiBE51WSrSvd9E+V4W2ixzJQL7ZKUqF3vew/gHPNEAz4UVvg7Z5p
 dv9iaFQcPGH/qptes9jzQ2m115mWkiNI0kHmh9t3S5UuzdD1UvLqocJBnnErTS4Q8lMY
 ciyNzzVDOivzD0AkRSstw9gaoFBbOErtTFSEIY999ST6fcqZQeQAPCiu+eD+xkEacaJC
 QBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lByhQoUDqedSEy5jA6OCeRd6BYLoC/Hj4IwADVyV/Nw=;
 b=rVROjI17lnO1LHgxEkvwCfsqLkOzV2NGyoezOm7OHD1TmPkf5D80FALdA0cMuMCVZY
 MeCF/VNKvo51MvET7I2r3zLOGT1PMWhdU4Gxp/4Q3v3xWcu0vt+Zxa4qwl9JoL1CsVUK
 m2YvvVcWbzalHYSz/N4Xvq0JSkFt+gJ22BiFSl+ElfIbpD72fh4ZqdVeVQW/0Gkh50EN
 1lUYXush0pMtoCJ/I/n+KmFsiOOa8fR2fQbjtsRqVuYCbTHq7+oYWca3gk1Yo4z5rdlj
 5SvAgilTSbmO2pt3FcXsohn8tiCUrGaxZo9/fRvWvT2taKmo50EAJZhLCEFpe74N4buX
 0SLw==
X-Gm-Message-State: APjAAAWhFg8BsTOT6alY3sF+nUnX82AMfW0KP4jUGrsN6+wUyMmHY47k
 2u/t6P5JvydXWoGPGXCnG4k=
X-Google-Smtp-Source: APXvYqw2VJmCyzOsAOxBdOzNbTd0KkoYIRi/7Y88yuuzid05BfYRTc439EhGBxpTHYxv5uBbtXSdPw==
X-Received: by 2002:a63:4616:: with SMTP id t22mr256877pga.123.1569970144635; 
 Tue, 01 Oct 2019 15:49:04 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c128sm20913506pfc.166.2019.10.01.15.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:49:04 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] irqchip/irq-bcm283x: Add registration prints
Date: Tue,  1 Oct 2019 15:48:42 -0700
Message-Id: <20191001224842.9382-8-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001224842.9382-1-f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_154905_406156_17EE4BEE 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With many different kind of interrupt controllers available and used on
7211, add prints to help determine which ones are registered.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/irq-bcm2835.c | 9 +++++++++
 drivers/irqchip/irq-bcm2836.c | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/drivers/irqchip/irq-bcm2835.c b/drivers/irqchip/irq-bcm2835.c
index 55afc3487723..ae23e9ec86d0 100644
--- a/drivers/irqchip/irq-bcm2835.c
+++ b/drivers/irqchip/irq-bcm2835.c
@@ -76,6 +76,12 @@ enum armctrl_type {
 	ARMCTRL_BCM7211
 };
 
+static const char *armctrl_type_str[] = {
+	[ARMCTRL_BCM2835] = "BCM2835",
+	[ARMCTRL_BCM2836] = "BCM2836",
+	[ARMCTRL_BCM7211] = "BCM7211",
+};
+
 static const int reg_pending[] __initconst = { 0x00, 0x04, 0x08 };
 static const int reg_enable[] __initconst = { 0x18, 0x10, 0x14 };
 static const int reg_disable[] __initconst = { 0x24, 0x1c, 0x20 };
@@ -205,6 +211,9 @@ static int __init armctrl_of_init(struct device_node *node,
 		set_handle_irq(bcm2835_handle_irq);
 	}
 
+	pr_info("registered %s intc (%pOF)\n", armctrl_type_str[type],
+		node);
+
 	return 0;
 }
 
diff --git a/drivers/irqchip/irq-bcm2836.c b/drivers/irqchip/irq-bcm2836.c
index 77fa395c8f6b..b159dc91919d 100644
--- a/drivers/irqchip/irq-bcm2836.c
+++ b/drivers/irqchip/irq-bcm2836.c
@@ -240,6 +240,8 @@ static int __init arm_irqchip_l1_intc_of_init_smp(struct device_node *node,
 
 	set_handle_irq(bcm2836_arm_irqchip_handle_irq);
 
+	pr_info("Registered BCM2836 intc (%s)\n", node->full_name);
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
