Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439681A3C52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 00:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nPayRLJ83J99ItKSh164ivzFdx1sPx3O7y4kNSL+KnU=; b=lVpSKGN51PXCeT
	zpzL2KqGjZ71+QP0glt1cVgGxyZIoo5EZOqJB5LCuEJ7wnjperB9v6eMD0pT6y+WrlwVO2NIKw6Sz
	HU6cubxukhqpy5WUObJFSyUhn9SCB7MkQjzRrk3MpDO7N7DcZcyI43A81avMz7E6ZP7GTh8WVz15N
	2en2ECMIp31JGsrCmBbf/f6FJ+c0ywL32UhrevjAXW4axkoewQnWv3pq+Ya9VOLXgCz6OZr3BMNnC
	LEH0tUhJ8zasOp11rFtW2N8/I98/0vvuwWfqYHNEm1VCtIEn1ofkC6jXFRJgRDRapfOnEaWcKZlgM
	j5QIx305rXk3jKJo1i9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfXD-0006zv-4e; Thu, 09 Apr 2020 22:20:31 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMfWz-0006oH-Jk
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 22:20:20 +0000
Received: by mail-il1-f194.google.com with SMTP id t11so289422ils.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 15:20:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LxQ8hIWxJt82RYXwlzYNJe4tQAA9QZNde/lRW71625E=;
 b=cPQJLsnfBtNpFYs+jJZv8wTjhLGq3VrSF4DdKepLKeF9ZofAD+OCbR9IVz6F1MybW6
 zeClZv4L2D0Rh67P8wmwQAE+SBBqL0Np8eZxP4N66XqW1LtEPMFXaiRnwNgjrrE6G2KW
 2/xVl6fM9Ya1U6jY5E/sC3TQIlA6rEH1ZfoT+KbQIuK29amoApvxhobBj/aXnrTn8aWO
 gnb/hgbPCrk3Pc+wWwL2sEVIZdSJWLQL2oB9A1D0aracQO8fwmiNVfqY2bhWEtnDB07j
 A34+YRyXfIzm3FIUINByxP98bv+CZmS4ocYm6WR8yc204naOh8fb/H3cAEqICBda6Jch
 YsSg==
X-Gm-Message-State: AGi0Pua9RIH3CkkOauLs8SEniUHqcBRxW3El8R/a9ZRcGOwj2GnpFmJd
 d9J8xKfoKuf8nn90uGKErQ==
X-Google-Smtp-Source: APiQypKUFAFrmG6ifKLwGTHADSV77lxd5M1cNDLgZCQn3+mAwWkUkjk+gGEs3o5NVSSghn2K6DhPUA==
X-Received: by 2002:a92:aa0e:: with SMTP id j14mr2294676ili.52.1586470815493; 
 Thu, 09 Apr 2020 15:20:15 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id 79sm113144ila.54.2020.04.09.15.20.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 15:20:15 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] ARM: versatile: Drop mapping IB2 module registers
Date: Thu,  9 Apr 2020 16:20:14 -0600
Message-Id: <20200409222014.31828-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_152017_669459_3A4875EA 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of commit 153969fd952d ("ARM: versatile: Drop CLCD platform data"),
the IB2 module is not accessed in the platform code, so let's remove
mapping it.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-versatile/versatile_dt.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/mach-versatile/versatile_dt.c b/arch/arm/mach-versatile/versatile_dt.c
index c00ea4f77af6..02ba68abe533 100644
--- a/arch/arm/mach-versatile/versatile_dt.c
+++ b/arch/arm/mach-versatile/versatile_dt.c
@@ -39,8 +39,6 @@
 #define VERSATILE_MMCI0_BASE           0x10005000	/* MMC interface */
 #define VERSATILE_MMCI1_BASE           0x1000B000	/* MMC Interface */
 #define VERSATILE_SCTL_BASE            0x101E0000	/* System controller */
-#define VERSATILE_IB2_BASE             0x24000000	/* IB2 module */
-#define VERSATILE_IB2_CTL_BASE		(VERSATILE_IB2_BASE + 0x03000000)
 
 /*
  * System controller bit assignment
@@ -54,7 +52,6 @@
 #define VERSATILE_TIMER4_EnSel	21
 
 static void __iomem *versatile_sys_base;
-static void __iomem *versatile_ib2_ctrl;
 
 unsigned int mmc_status(struct device *dev)
 {
@@ -169,8 +166,6 @@ static void __init versatile_dt_init(void)
 		versatile_sys_base = of_iomap(np, 0);
 	WARN_ON(!versatile_sys_base);
 
-	versatile_ib2_ctrl = ioremap(VERSATILE_IB2_CTL_BASE, SZ_4K);
-
 	versatile_dt_pci_init();
 
 	of_platform_default_populate(NULL, versatile_auxdata_lookup, NULL);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
