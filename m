Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6731AFC76
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhMyEAJTjhvzBAHnAzDsy4VEMurRujHAtyzKo9xaJr4=; b=YG/ikaGmkNwGMa
	oGEeqRXzsKP1CU9yZStoLlbDOp4WU04YWRJmUA8Tb3Kv5i8LQ0Xz+f9tO3Nj5/3HJZxTtcGiUNPAw
	3HtpqyFaOtUV5rtEkp/TfI4nO+MgIsb0oDfbphpjWM+b5cHTu5rCTBiek109zP/mXjndXJHSrngbh
	1ZAyTtlIWoejD9hsjIYbyevRuzAw6gNObrTAy2YVh5cWDJksp1/TZ1rUL8psn5HkBvXzf9KNh6yxt
	Mmxpt8q+u/TKs0ARMIRRwoTdfYJu9994stVD0QJxM7dX43kjE6i6nDiWBSsDM/LjyJdbTGPPBFzO4
	ciiTOoDA3JwXrIF1aqrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDRb-0002Ga-98; Sun, 19 Apr 2020 17:09:23 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQW-0001gx-He
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:17 +0000
Received: by mail-oi1-f194.google.com with SMTP id a2so2125539oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HR2vyc2PYWWn8G5dom55PqoQEPYuAFLiyICb8T+CViI=;
 b=gq+Zd/eShv9htH2o7Qkegxgp4Xd1oqJj55VIvNLEK578pkqPaDFy/i6dyPjtlR7wWb
 PSmXq/rE3lDoYs6zR0YacCKASh73HhgGK6KNJwBF8Mnmo+WDvIj3neYVy54ntEFPLkbv
 stGuFdszJrpCNpJTukX9fEuDxkW9nmfnoABmRFAirK35pj+m8K+zBwppdDZIVI3ufAg1
 nODo1mxBqYqOZjqjJZZIZryyAMGNn4zjOg5CVaDp+Nbzk2DxG9iNod5G6WaovqJpRGc4
 QvixzkUq1RLQ6W7xnksjRPUDldU+/RV8CF2L7h6mr1OlikG69aPi2nMvBpvT2UNs+Z7K
 2aug==
X-Gm-Message-State: AGi0PuZpyaJmYIZIsVWaWPSDEq7Ce47jw7iafjEkLa7DCBevrXQgWi0M
 LWIIZF8l9GCk8oopXj0yNA==
X-Google-Smtp-Source: APiQypIN7x474BTSx5XNa9RZW9WcGvmIkvA4In5cY3QG7AbDCZt9ElM/lzxg5ccexbNWUlxXVVHWkg==
X-Received: by 2002:aca:450a:: with SMTP id s10mr7885862oia.25.1587316095961; 
 Sun, 19 Apr 2020 10:08:15 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:15 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 02/17] arm64: vexpress: Don't select
 CONFIG_POWER_RESET_VEXPRESS
Date: Sun, 19 Apr 2020 12:07:55 -0500
Message-Id: <20200419170810.5738-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100816_578102_20F71EDA 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
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

The VExpress power-off/reset driver is not needed on 64-bit platforms as
PSCI power-off and reset can be used instead. Stop selecting it so it
can be disabled and not always built-in.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm64/Kconfig.platforms | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 55d70cfe0f9e..9c084f995e0f 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -278,7 +278,6 @@ config ARCH_VEXPRESS
 	select GPIOLIB
 	select PM
 	select PM_GENERIC_DOMAINS
-	select POWER_RESET_VEXPRESS
 	select VEXPRESS_CONFIG
 	help
 	  This enables support for the ARMv8 software model (Versatile
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
