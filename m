Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153C31AFC7F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAfEC6MAXWZP2Ib5Zv3ThucrCqF3hWUWEonQ4vylsCc=; b=LSCiCOWe4CvR0w
	ViznihwqVJZ0+NtUKrjEdlx5bkl/kIiQh8dDRm+QGhofzkCQRRObm2RGpqnxR2E17BW5oJjD0sCOn
	zaQNHPjcEZRBHVXpOm2K8+zviM6/HsfWoWjlhXSgtO2ExmzjNXQGTq2rIaFFDIzLGqbi8bC5cUdHg
	S3BNn/B1GfWXEVbD52jPpcIA5fNmrWB/EwAiJuDn5dhJHN/WC3vKUIpkE/eZaED3vbh4YqyNcp4Rw
	+4wRuw3jwpZgoUQcXS/7Uuwicnu0aEmEXhPeM82tpZ0vPcebDdSnOZEgrz5J63MlVU+SmAXFuu9/z
	jap42Vox5aSiDb6JakyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDTh-0006Sx-Vi; Sun, 19 Apr 2020 17:11:34 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQf-0001on-Se
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:27 +0000
Received: by mail-ot1-f66.google.com with SMTP id j26so5980891ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lL7kUnqrt4NzPOQyXcvp2n9d+Q96MUmdmOUa848dWDw=;
 b=Yp39RGEtMc2p59APjBbZjYmc9DFWc5TTLm7GYkwaw8MJe7blhavIwYQsVmcO5wDyyJ
 4s8wgfbaJfqM5zQzWsW/JS4oDaBfeuWiB5BewPkSqT8d5a+RTbHbCn8bjMrTUcbasG5L
 WuV1meQzqfiZaD6GUudC47d63Dl81gM9yQxDSGi6oOYmBw4MU1yef8Sxs7+2BCsQk0A3
 bYQilvo9JfWOQe46EyEG3KXL9cwPw7JgIiFojMouOVdg1pB1XnQz7RHk7igTcz8FSTf3
 q0uZLg6fC/xoy88gEHNe+K3GAmJrVOT2JxlKUG8dOBobSdJ8J0uqimlapikHJn9RnKM8
 TWZw==
X-Gm-Message-State: AGi0PuZf2Ch5P34heVA5g6unAbovLbUvskiFotOqD/mkfoY8+gfsdru7
 fBvmWofOck6U93sXP9h02w==
X-Google-Smtp-Source: APiQypKx5UHUpB9QQwwicGLNrpuxItDEsWq2VRAkb1J7481iH3Fbl73Y40DGbCP6jlP+0VPeKXgkNg==
X-Received: by 2002:a9d:2dc1:: with SMTP id g59mr6383687otb.90.1587316105171; 
 Sun, 19 Apr 2020 10:08:25 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:24 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 09/17] mfd: vexpress-sysreg: Drop selecting CONFIG_CLKSRC_MMIO
Date: Sun, 19 Apr 2020 12:08:02 -0500
Message-Id: <20200419170810.5738-10-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100825_944213_9C099C6A 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Nothing in the VExpress sysregs nor the MFD child drivers use
CONFIG_CLKSRC_MMIO. There's the 24MHz counter, but that's handled by
drivers/clocksource/timer-versatile.c which doesn't use
CONFIG_CLKSRC_MMIO either. So let's just drop CONFIG_CLKSRC_MMIO.

As the !ARCH_USES_GETTIMEOFFSET dependency was added for
CONFIG_CLKSRC_MMIO, that can be dropped, too.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/mfd/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 0a59249198d3..b1311dea2da1 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2029,9 +2029,8 @@ endmenu
 
 config MFD_VEXPRESS_SYSREG
 	bool "Versatile Express System Registers"
-	depends on VEXPRESS_CONFIG && GPIOLIB && !ARCH_USES_GETTIMEOFFSET
+	depends on VEXPRESS_CONFIG && GPIOLIB
 	default y
-	select CLKSRC_MMIO
 	select GPIO_GENERIC_PLATFORM
 	select MFD_CORE
 	select MFD_SYSCON
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
