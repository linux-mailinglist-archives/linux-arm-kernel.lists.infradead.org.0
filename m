Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CC21AFCA0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQSsx79CbwpaT01PF/xQchk5mS02UUx9wc+YUA+Hcgk=; b=ebST+TZobUxKhD
	hxv7PRLLZB5ub1J9Pa7rPA4ciQZtGJMK+7lDFpbPXOBaV99orVS3pnAL4L9gl+zM4jGA59KHB+a91
	5Day3IsYnIm4bjOZH9sMkLqQrkYHlbcDSrUeXv9lHaeuBW7LzD1/p6DY4I6bXvWidarw/Fx0kD8dd
	GjbXZsiNCdGDcB045LE2sw5NdFvR8C0BlntA1dE62QC1EfBe3Yonv1T4VKy/TSrjVSsgPSNpEm1iL
	Alxm1rDn4E7oQ5F52CECQgsP/bZfeC1y8PzCUJo5oXfNxN0K1jSaZ2LbBY5rQ51T9CCvOGSe4HFCE
	5EMcQ//pUGuqVk2Y/2Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDVv-0008S3-D1; Sun, 19 Apr 2020 17:13:51 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQr-0001z1-A6
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:38 +0000
Received: by mail-ot1-f66.google.com with SMTP id h11so519298ots.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=217EOOrFw1JguCx9/rRQyxEPzTa4GJD9mwcwW7ZPvKs=;
 b=GrEXYlXlBzj6N6ArocMcxr/Pw+Vpa2JqI/dApNYnj3FtozE2JAUYAGxVsBa2/qgNdd
 9WR/NtPA7KUv3p5BcN2Pyh8vG1IA/gpEgrCrAZwKMydyYZuyU5GCT5CLSKRfOFqJKQ/5
 ma7KWJpnmOj0xAoe4pX7/cHUN+zwPeLarkB4d+q/eLI78MsnW4RTOcndcP6a+2R5FBnk
 qjNLmfF5nBjvGOQp2qHu2n99q1nR7uVVudNDyC92qbyATFp+6gigshIcsCPnrbfY30qf
 UlH2+vE11Sio4btvmdJu/tKtgbYSTeSwqSyOxXCubHKNUpAD7YHY4QqW+op9IsdoDuoX
 ER+w==
X-Gm-Message-State: AGi0PuazUt3+1Csn0fgMKvHu9X4upYyN/0CQX+twOiFRql68BHTlloAd
 5SSuXUNr72UL/eOSUXtX8g==
X-Google-Smtp-Source: APiQypLTklldq06zQ7DWUiIK2HKqDOCjCs+VI4+8LpUA7eim5gCSTJk6qg/zaDS+25wQx2aPTMUM0g==
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr3045929ots.250.1587316115620; 
 Sun, 19 Apr 2020 10:08:35 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:35 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 17/17] ARM: vexpress: Don't select VEXPRESS_CONFIG
Date: Sun, 19 Apr 2020 12:08:10 -0500
Message-Id: <20200419170810.5738-18-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100837_417353_0BE48208 
X-CRM114-Status: GOOD (  10.81  )
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

CONFIG_VEXPRESS_CONFIG has 'default y if ARCH_VEXPRESS', so selecting is
unnecessary. Selecting it also prevents setting CONFIG_VEXPRESS_CONFIG
to a module.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
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
