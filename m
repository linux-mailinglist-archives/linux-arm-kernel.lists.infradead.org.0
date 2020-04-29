Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFB91BE97E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMeBo6BnFhpE1YgSeH0bATO5EucR2RSuVB+mpZ7WaPc=; b=HJOZ5Qfs9mRvh+
	bJDMBHHGlDatXbXAOmKuPKOw+mu22YFIuJkbzR0BCYlqQHMM3dQZN5ZFBI2c9ClKLzMYzRuO76XXh
	n/OCIkmirB02w6CDIZyVKRXyoWSIHLePk4z59wfUGCV+PYU7R2DuwUSCKDbGDn/0+Iu+7hWUkIAjy
	1/b6T5/9KvjLxc7KjxBjLYchMqxi51Wh54YyG5VxmMkRGx/A91NdqlGbs6EUNcOW3Cg4pKxr0cp5c
	7cPdBeOA/jh8q2OzYEj2P9gB9+pE8OowzxX6XKOr9Yl2RtDDrk/lmKsMKSD5Myts3KA5o/c/0L52J
	8jGF4UxOiLdspCH/NiLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtsA-0003C7-SU; Wed, 29 Apr 2020 21:04:02 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtnA-0005MU-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:55 +0000
Received: by mail-ot1-f66.google.com with SMTP id c3so2978913otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cAdoTZHLltMFOVfGrqWdl37EO5vwkDwGDKM22JQICTM=;
 b=kSLr2aeEmqLxNCSlnAKdIwu3ZTiE8JllZqI+d5JS/KYV0fUmnbSZN95SVgwRBqZR/O
 xVDF141bEdGVApfKqYOeKVDN9b6NCo0/yoKKKSBXktwvuFX3+QBExUR+TeGzOxpyMn/0
 iO7ozrgttc0OuL2qXAB5HMfLJRTm2bMrFxfbjOerEb/AqZua2OWU7QgggM+NLC/JWy1s
 cOhqatbHMyQPI9vbiJA3ffEwMj+QOPYyCDw1EmgUyAu5dN3WF1zl6U+z5sBILiZe+kFu
 k4z2Gnk6hSNEz2QTdsrhWRQKmT18cRGnRCAh4JkTY93kGD3yXiiQ78IBD7scFrOyA+36
 Elmw==
X-Gm-Message-State: AGi0PuZuKzn0+nOUYRrWlP8JFmQ+Y9n3uoVEpteV8vhaEsbYH/XvlxII
 9NKeoRcQLk7D7ruxjANsNQ==
X-Google-Smtp-Source: APiQypLaRwS1DB9c2Fr/UQVYYitfrqYIOoI7sUirq8Ad0qUr/66dbbAtO3c5FnIEbYo/svvyYQtMXA==
X-Received: by 2002:a05:6830:3112:: with SMTP id
 b18mr26344468ots.97.1588193931043; 
 Wed, 29 Apr 2020 13:58:51 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:50 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 16/16] ARM: vexpress: Don't select VEXPRESS_CONFIG
Date: Wed, 29 Apr 2020 15:58:25 -0500
Message-Id: <20200429205825.10604-17-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135853_184893_9F7A66D0 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_VEXPRESS_CONFIG has 'default y if ARCH_VEXPRESS', so selecting is
unnecessary. Selecting it also prevents setting CONFIG_VEXPRESS_CONFIG
to a module.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-vexpress/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 065e12991663..8391a5b3cd78 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -19,7 +19,6 @@ menuconfig ARCH_VEXPRESS
 	select POWER_SUPPLY
 	select REGULATOR if MMC_ARMMMCI
 	select REGULATOR_FIXED_VOLTAGE if REGULATOR
-	select VEXPRESS_CONFIG
 	help
 	  This option enables support for systems using Cortex processor based
 	  ARM core and logic (FPGA) tiles on the Versatile Express motherboard,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
