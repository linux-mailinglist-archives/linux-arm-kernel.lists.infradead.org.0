Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E92A131345
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pjX5GHGRzOJrbC8u84mdIuPWmGAxNZiB5ovsqCg9kO0=; b=auNBZPs48e+JoG
	+27i0t44CCtTMa/B+hoApFNs4FncS9jqh8EcXME7m33A0eUH4eqjE9Bpjy28D8YB4d2NpBM9bjYF+
	D+RoiKOz9nLvh2wQNQ/xinzO8/5IrdNHAVboI4lScuUt/HlwyFo4zwlP5xh22jgvBgPHmdjAk8h3B
	jjlRgXoH+bmH2i75utj7T2cD+JBHo/ecdmXeqH1v/Scky5Wq8NWe9JGtHvgzyyX5IacpmdMFiK0Me
	AXPZUZW/xVjpN1fnECS43lu5Aoq3ed/BOqLmeIGDf5SS57sQzNGZeNHbIHoIGKoU1mmgWjmIsH+tm
	oigz2eFg+8ScKITYlmEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSsw-000877-44; Mon, 06 Jan 2020 13:57:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSsp-00086n-Pr
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:57:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so15055888wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 05:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YQDFMpYyGBn6bXzxZ449ZPkj1Jf1C+zZL4H3jiyqIIA=;
 b=iT8ZO8xKQksEOxISYiRCdatyU1Jo6C8LHzxnO+k8NguYoJDiwzKtDYa3AGqVqh6NRZ
 om+HCqJG0mXk7U0N5bZMWxFO6iX/ckiakq3U8rn5txan+6MWrRkx3Pc5Q5djyL256ieL
 WSZoROj8lhODtQmWn1PU/LZJif5Qa+a2kKboxMmsCvYSh/TO/w79/rSj0KRv+iQ6tzqM
 2HBHKgPwnY5pg/lFmttejq29r/g3vHjHGqiM7SoSWmKXoXm697K/ko775+ioLDDRyXme
 g8uD5HlXjusIf+pRPEyqJYnlJfDZ73XZn01Z7hQ4vWNf6qRHLUg4zH1JtqK6ztpXC32u
 hhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YQDFMpYyGBn6bXzxZ449ZPkj1Jf1C+zZL4H3jiyqIIA=;
 b=qAkg9PxtwA5x6rY7lx3it8L7WU4MBBJmwIh6dnkUFBSMsg8prasvMFRsc0jmoUNOr3
 MEj3gL9mWYbJT+EWUY4UIUEMz5uJjfCbWQU3kmXK6PyjPq2lr/bZmQ6T/AGKqxQclGcf
 yDq1CwJ76r0GTGEOMqjCxY1rR9f9/o4864OhjWjlbqk6V5qUSO/IhgyebIR3f4YH93Cv
 hAIQ8o8J/0hbzaSOb42p7NHqTLsMTW/btGOl0yFxKDqTeLOXm1bKkeaR68i/pHHVcclt
 z/RpJcCbAtfDU+s7Yv3TqopoXXy9+EMR316O/5fBUwQJxySAjKSOXicpVM1nVD/U5QK2
 URdQ==
X-Gm-Message-State: APjAAAWNPxIeM11g3bt46+VemMIDAsjxP1myzXSssf1nJdgu0cAO9MDs
 /ktdXUaxNSfGj4khAMSihwu8gA==
X-Google-Smtp-Source: APXvYqzlPEFlJdR8xklm5Wdu2DsFlg+3S3h22rrEphj9UIzDu689PptdBUTN1JDDDZ3EIPamzu+dNA==
X-Received: by 2002:a7b:cf39:: with SMTP id m25mr35323729wmg.146.1578319046260; 
 Mon, 06 Jan 2020 05:57:26 -0800 (PST)
Received: from localhost.localdomain (93-137-254-179.adsl.net.t-com.hr.
 [93.137.254.179])
 by smtp.googlemail.com with ESMTPSA id t1sm23239792wma.43.2020.01.06.05.57.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 05:57:25 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: agross@kernel.org, linux@armlinux.org.uk, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH] ARM: qcom: Add support for IPQ40xx
Date: Mon,  6 Jan 2020 14:57:15 +0100
Message-Id: <20200106135715.1159420-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_055727_859995_31746532 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Robert Marko <robert.marko@sartura.hr>, John Crispin <john@phrozen.org>,
 Luka Perkov <luka.perkov@sartura.hr>, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Lamparter <chunkeey@gmail.com>

Add support for the Qualcomm IPQ40xx SoC in Kconfig.
Also add its appropriate textofs.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: John Crispin <john@phrozen.org>
Tested-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>
---
 arch/arm/Makefile          | 1 +
 arch/arm/mach-qcom/Kconfig | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..3db642722af0 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -152,6 +152,7 @@ textofs-$(CONFIG_PM_H1940)      := 0x00108000
 ifeq ($(CONFIG_ARCH_SA1100),y)
 textofs-$(CONFIG_SA1111) := 0x00208000
 endif
+textofs-$(CONFIG_ARCH_IPQ40XX) := 0x00208000
 textofs-$(CONFIG_ARCH_MSM8X60) := 0x00208000
 textofs-$(CONFIG_ARCH_MSM8960) := 0x00208000
 textofs-$(CONFIG_ARCH_MESON) := 0x00208000
diff --git a/arch/arm/mach-qcom/Kconfig b/arch/arm/mach-qcom/Kconfig
index ecbf3c4eb878..1772eccb5caf 100644
--- a/arch/arm/mach-qcom/Kconfig
+++ b/arch/arm/mach-qcom/Kconfig
@@ -12,6 +12,11 @@ menuconfig ARCH_QCOM
 
 if ARCH_QCOM
 
+config ARCH_IPQ40XX
+	bool "Enable support for IPQ40XX"
+	select CLKSRC_QCOM
+	select HAVE_ARM_ARCH_TIMER
+
 config ARCH_MSM8X60
 	bool "Enable support for MSM8X60"
 	select CLKSRC_QCOM
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
