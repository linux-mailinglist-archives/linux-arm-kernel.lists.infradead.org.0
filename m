Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E18810CFC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 23:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J9YfasiZXjiPQr8Ep+TlpoGNMpwgVALFktZEL3k52bI=; b=tr5RzNarkogx1k
	RyvCWDY5T/MkW3qRJ87pbHAXa0EqZxONGuWBnZbrNXwwLGAByyaTX8Sx/LMxUKsq1pPYG56wTs/tw
	Ko938M5HuGFIe3zxwu22Cru5pxcfCBw/M12LEL5GNmue/HQtmmQRMuhuYP+9au3gMA3GkAREx9/Sd
	MFKVY9Lx3o8qebA6s/2XWza8HWXmhPj3RphVwx9nMHApQttp46Z+mKKemzB7W7uVBFoUj/V1oPfMc
	OjbASCfkdYwvdEQExTvOK9Eh+QRSHeyIBwVND7xuvTbUzEG55dWRKkufkazcapd9CFWoaERhNAY0C
	+JXhGE5CBb4DjxYu1nCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaSQN-00079z-8j; Thu, 28 Nov 2019 22:38:11 +0000
Received: from [2601:1c0:6280:3f0::5a22]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaSQF-00079Q-PF; Thu, 28 Nov 2019 22:38:03 +0000
To: Linux PM list <linux-pm@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] cpuidle: minor Kconfig help text fixes
Message-ID: <b0e9d1df-8bb9-9eee-f433-c7a8e8269e06@infradead.org>
Date: Thu, 28 Nov 2019 14:38:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

End sentences in help text with a period (aka full stop).

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-pm@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/cpuidle/Kconfig.arm |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

--- lnx-54.orig/drivers/cpuidle/Kconfig.arm
+++ lnx-54/drivers/cpuidle/Kconfig.arm
@@ -65,21 +65,21 @@ config ARM_U8500_CPUIDLE
 	bool "Cpu Idle Driver for the ST-E u8500 processors"
 	depends on ARCH_U8500 && !ARM64
 	help
-	  Select this to enable cpuidle for ST-E u8500 processors
+	  Select this to enable cpuidle for ST-E u8500 processors.
 
 config ARM_AT91_CPUIDLE
 	bool "Cpu Idle Driver for the AT91 processors"
 	default y
 	depends on ARCH_AT91 && !ARM64
 	help
-	  Select this to enable cpuidle for AT91 processors
+	  Select this to enable cpuidle for AT91 processors.
 
 config ARM_EXYNOS_CPUIDLE
 	bool "Cpu Idle Driver for the Exynos processors"
 	depends on ARCH_EXYNOS && !ARM64
 	select ARCH_NEEDS_CPU_IDLE_COUPLED if SMP
 	help
-	  Select this to enable cpuidle for Exynos processors
+	  Select this to enable cpuidle for Exynos processors.
 
 config ARM_MVEBU_V7_CPUIDLE
 	bool "CPU Idle Driver for mvebu v7 family processors"



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
