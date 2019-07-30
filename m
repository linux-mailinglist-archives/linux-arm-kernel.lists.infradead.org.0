Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 375CE7AF49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNNvQ8HG01fIi/L+t3ZP3IoRCpSdEeprJRtrLetwbhU=; b=NBB7dHlDYyxhj8
	w1h1T0jES/DIDyJDH6ydkhs625XtwFCqw16A2ISz9Cz2YFunuVqNtYP/RqoU54po0XN6aYhMw+ncX
	chdqh3/K1/NY8y25ed9b5y0RbC1kdwX2QEP9XgdTzBZqWECW7p0jX5qpu6xkq0Vli1e39zutiVhM8
	maw1iD7C8lv8Q3Tw1kT/6ofV5P6NDGzkZDpXwlAILxrmeRXgH11sdBvsuv3lz2c/s1osqQ1kaVWpK
	mHDezb+NPo2KT/h2JL3cH/dMGP+I7x1MILrl1o/tkzpxuEmx1EgOTwc1McfzjzH/t4YaIZd4CQElW
	pwOACDNvGGdMz3ddFL5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVek-0004lI-SG; Tue, 30 Jul 2019 17:11:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdc-0003vV-Mx
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id x15so57902943wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FDvoYJijQDj0e5NVUU9jZaC+GnZsfGAQXtnAmVIR6ZQ=;
 b=XJm1ipzjBWgrVFPPb5UvbmM8LfdE+bpPm1dczBNYrddV/g+tKGwrJ1FaK8Dl/BhURJ
 CTvOxcKmVPF/rlHWuK7BHX0+V1FAlFp1Q+U5hM+U76juHAapequTchs8H+QjfyBJZIvR
 ITyEjYEa6BMtKV0RomplhERSvJjylmAp9YAQ2OCF8KulF3X1SC60V9fUWBAhXVx5tV35
 0E5+fBIb4eZgNPcQ2iOPDZShIMBbnASXODqVCn+jfpUc3pudF3KiOL33bqkuSUtrDRYd
 IGid9Ewjicy+DbKdY6cDjMIPRCsyUGd7L/VBJbqGFEHh8WhI3tf+3eR7yWhy+4AIKgd8
 WS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FDvoYJijQDj0e5NVUU9jZaC+GnZsfGAQXtnAmVIR6ZQ=;
 b=bCS7dPIEAIR4W14/rbC2kV04BjndWdPxBsJcCF8brgz/2LD5yY0SEwsE5m8j74QX9y
 E9Y0sDepR+1Nh4SqoXDV/Vy+wFGbL4l1FXQa86MSTIxB4wotfkDv10zP/iEs8jUlBby0
 yL/1fPJe0EZt15sGTtXE8sCzLF8Lulu4C7Fiputl+aaaQHzhyGI3U+Fi/sq4eigyiqwO
 q78VSae90AK7dxJoslp1Yc2kGttCnYwlobqkD/DUHde5mUcyOy/whba/UKNbXwbbLFMm
 VVon7ANNXoWFmugPoOx55cLAurT0f6+sqdF5wjINFoplQe4BVhIOSt7ESvqtYCQ1oqkc
 r3eA==
X-Gm-Message-State: APjAAAW5xoPTIuEytMARGVtWwnaGEWCbFFxfuM80lcs2bRwwJPUnjuDS
 La7YyL8zZ2Zre3I89l8CanI=
X-Google-Smtp-Source: APXvYqzMVl2dKRvFwele7lGvgMMwXksO/r6Jg2l1V5MYJ4X2utW1ib9WVxkej6z3koAhW7JRKzAkMA==
X-Received: by 2002:a1c:ac81:: with SMTP id
 v123mr108902879wme.145.1564506611385; 
 Tue, 30 Jul 2019 10:10:11 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:10 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 04/13] ARM: tegra: Compile sleep-tegra20/30.S
 unconditionally
Date: Tue, 30 Jul 2019 20:09:46 +0300
Message-Id: <20190730170955.11987-5-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101012_790977_379656F2 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sleep-tegra*.S provides functionality required for suspend/resume
and CPU hotplugging. The new unified CPUIDLE driver will support multiple
hardware generations starting from Terga20 and ending with Tegra124, the
driver will utilize functions that are provided by the assembly and thus
it is cleaner to compile that code without any build-dependencies in order
to avoid churning with #ifdef's.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/Makefile | 10 ++++------
 arch/arm/mach-tegra/sleep.h  |  2 --
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 5d93a0b36866..3bb44246d928 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -8,16 +8,14 @@ obj-y					+= reset.o
 obj-y					+= reset-handler.o
 obj-y					+= sleep.o
 obj-y					+= tegra.o
-obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= sleep-tegra20.o
-obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= pm-tegra20.o
-obj-$(CONFIG_ARCH_TEGRA_3x_SOC)		+= sleep-tegra30.o
-obj-$(CONFIG_ARCH_TEGRA_3x_SOC)		+= pm-tegra30.o
+obj-y					+= sleep-tegra20.o
+obj-y					+= sleep-tegra30.o
 obj-$(CONFIG_SMP)			+= platsmp.o
 obj-$(CONFIG_HOTPLUG_CPU)               += hotplug.o
 
-obj-$(CONFIG_ARCH_TEGRA_114_SOC)	+= sleep-tegra30.o
+obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= pm-tegra20.o
+obj-$(CONFIG_ARCH_TEGRA_3x_SOC)		+= pm-tegra30.o
 obj-$(CONFIG_ARCH_TEGRA_114_SOC)	+= pm-tegra30.o
-obj-$(CONFIG_ARCH_TEGRA_124_SOC)	+= sleep-tegra30.o
 obj-$(CONFIG_ARCH_TEGRA_124_SOC)	+= pm-tegra30.o
 
 obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= board-paz00.o
diff --git a/arch/arm/mach-tegra/sleep.h b/arch/arm/mach-tegra/sleep.h
index d219872b7546..4978def9db46 100644
--- a/arch/arm/mach-tegra/sleep.h
+++ b/arch/arm/mach-tegra/sleep.h
@@ -118,10 +118,8 @@ void tegra_resume(void);
 int tegra_sleep_cpu_finish(unsigned long);
 void tegra_disable_clean_inv_dcache(u32 flag);
 
-#ifdef CONFIG_HOTPLUG_CPU
 void tegra20_hotplug_shutdown(void);
 void tegra30_hotplug_shutdown(void);
-#endif
 
 void tegra20_tear_down_cpu(void);
 int tegra30_sleep_cpu_secondary_finish(unsigned long);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
