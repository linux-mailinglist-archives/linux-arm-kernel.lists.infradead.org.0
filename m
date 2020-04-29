Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867A91BE973
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/Sp6RtYXE51Jx+6iMn6JE52C5I91mkDLApQx5zcldI=; b=Y8R4RWoLYikPCJ
	BVTPWsWOiMy/SXuwW8WXRX3IPYop7tgQd6huP9dN+P/IgpWaM9FiCNOwY+n9vC2olTUTD6iUeZ9vT
	VKcEFsVJ2E764Rs8zHfUfHQZ3nwiJN8OBIOBLwwqGX2CfG83ivkq+dEWyWLtwR9fYnwqVxjKfMKXK
	6tmdnO1UM1uYJXF03vE72kzu9PJqcOrR/PP1/TiKign/bCwBArcoz0LntWfMt932m4xVlq9Czx0RP
	omOc/6NC2KJd9nnSL/QE/JpDEJ4eEaaWlawoslxv3qsNiVvM9u4ilOLdfDIi5ZnxkLrcfwL5804PU
	LrQX/fTO+hLYxRQjK98A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtq0-0001Fn-TK; Wed, 29 Apr 2020 21:01:48 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtmy-0005CX-HJ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:41 +0000
Received: by mail-ot1-f67.google.com with SMTP id g19so2989095otk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hakhZUZroxvAZ8LX2cygtT4A2MYBSWJTm8hRJv5ywvQ=;
 b=Kobm3nzqejp+8SO6rUI2IBVdFZNOrvW7eY5nKQl/hPwppCVF52x5kI31AoLRu+ocM7
 MG4hGYBOLjcVOPYORrBfEf6Qk9Rzih3rPGsQsOtxqiigMjHTUx6h1GmKGq8C9BLz4X16
 xgk5RJlbndYBJAhqaR+wLwPKGqvw1gPtN0TRsvLshGae0wvImawSR/IY7L6vkbWfZoRK
 0k0jUFYXR+KImT2mlQKMpkQnHanusRj4k4vj7+HYDlUvNuYm16hzqHfK79nheX+DTsjA
 UcI1afjZI5KK4QsmkdcHhV0zrzUMqAa9xUpF0ByP7XTgzMf/Sdc2DoSEbSogm3QHBgoi
 +Xfg==
X-Gm-Message-State: AGi0PuaauXjxp2MRE6WEOxu9uxkL5X8vEk/bBvBjsqmM5biBiKdmU+we
 ZyX3LRkGESdIqiTL2XTP4w==
X-Google-Smtp-Source: APiQypIgNRez4TEHYcezYK5SwxhTnNcYbS+rD9SCdgQFKtZmZsnxMPq9TxJ46RQV5tla7GggKhl6iQ==
X-Received: by 2002:a05:6830:16d9:: with SMTP id
 l25mr27963192otr.108.1588193919798; 
 Wed, 29 Apr 2020 13:58:39 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:39 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 08/16] mfd: vexpress-sysreg: Drop selecting
 CONFIG_CLKSRC_MMIO
Date: Wed, 29 Apr 2020 15:58:17 -0500
Message-Id: <20200429205825.10604-9-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135840_597554_942EE71E 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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

Nothing in the VExpress sysregs nor the MFD child drivers use
CONFIG_CLKSRC_MMIO. There's the 24MHz counter, but that's handled by
drivers/clocksource/timer-versatile.c which doesn't use
CONFIG_CLKSRC_MMIO either. So let's just drop CONFIG_CLKSRC_MMIO.

As the !ARCH_USES_GETTIMEOFFSET dependency was added for
CONFIG_CLKSRC_MMIO, that can be dropped, too.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
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
