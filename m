Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7131BE965
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUsjHcS/wvWy6BQtttPbrZdMHK5b5XEUX+awzSbN/9o=; b=RGVFRBedVo5PRA
	ADoIZBmOLFT3H4HftFFCsYUktSKzTLZKDSoPyMoPBKJPFn1EyoPSPdHAACJ9nyVGzG0KBa/1mLE5c
	182UwoPp9zeGXmj28Dx8yloxRHwlv7K8JPzfwQIIW21k8eNHD3cOpcafZswr1ksSaE/DI+zdqbM6G
	CexiM3A7ChJ99g+Ga2rapggTOTKr6O3LKgGLL9ygn8ycokza4n4KiCVSFcuoenGG2SCpEUsavPih9
	u77vwBDjGuyyN84djlsiV0Ox/67Q078e5GFeS6bJY7sT+FM/a+k3HA47+QvPa1ID4UARVEpgi9BhZ
	75bLvolB34M8jr9PXE0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtnr-0005e7-Nu; Wed, 29 Apr 2020 20:59:35 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtmp-00052u-VE
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:33 +0000
Received: by mail-oo1-f65.google.com with SMTP id t3so759303oou.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5GEo8L05GfOsrETFUSYjrPBx8MpWGlvpLKnzBBG4Zk0=;
 b=h9lBF7d0GWcLj73+92pUsJVhefcLmw0JGYZpgOuGI4z3ij6giOv+w1umGuQFImXxIE
 7AfdGpvgwg98j+w1M7n2ZAQFY4NT9DP1zKbcWRiK/PmUZOh/fiGEC2ErYrUeQdnoEqWa
 5PFThECmlj4cPbNQtZkHdiGxUpBB1YdAUED7maa2l7hm6vxyPyrebKoMcA0G26OXqJTS
 UZwbezIN4jwdca+HzGRPwrHYAyPHhefHxpQfKq+pEMKA1wdHBOX+kn/NYSXNmR4wi7yi
 qGfbUZ03IvcW49QDwczqt9RyC41CRwODRRAHSAB6l9H6BaZSPYtC8vG4KGEllQ9giuiu
 a0Dg==
X-Gm-Message-State: AGi0PuYlnS8yzNPWSc7VQTRNXC+DucFkUPecZU4jEPl3OFNp3ejdM+Os
 LqaJW4ASZtpdDpU/VGB4sg==
X-Google-Smtp-Source: APiQypKiIIo1iL3b/WKj8zsWqGEh+qK+DtjFWH1bOfzxAP684pSi5OWlTJPWn1gRh6hDHj5NzKd/5w==
X-Received: by 2002:a4a:621d:: with SMTP id x29mr11304095ooc.92.1588193911048; 
 Wed, 29 Apr 2020 13:58:31 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:30 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 02/16] arm64: vexpress: Don't select
 CONFIG_POWER_RESET_VEXPRESS
Date: Wed, 29 Apr 2020 15:58:11 -0500
Message-Id: <20200429205825.10604-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135832_001600_68158EB8 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
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

The VExpress power-off/reset driver is not needed on 64-bit platforms as
PSCI power-off and reset can be used instead. Stop selecting it so it
can be disabled and not always built-in.

CONFIG_VEXPRESS_CONFIG can also be dropped as it was a dependency for
CONFIG_POWER_RESET_VEXPRESS.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
  - squash dropping CONFIG_VEXPRESS_CONFIG select into this patch
---
 arch/arm64/Kconfig.platforms | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 55d70cfe0f9e..5c38dc56b808 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -278,8 +278,6 @@ config ARCH_VEXPRESS
 	select GPIOLIB
 	select PM
 	select PM_GENERIC_DOMAINS
-	select POWER_RESET_VEXPRESS
-	select VEXPRESS_CONFIG
 	help
 	  This enables support for the ARMv8 software model (Versatile
 	  Express).
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
