Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F27E699CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNNvQ8HG01fIi/L+t3ZP3IoRCpSdEeprJRtrLetwbhU=; b=RbFFdrpnR0jeGj
	Tm5U5BqdHh/l9kr87aOFYiXkOGERXAAmYoDAb4H3tMNQOJ7qv7Zl+01Nek900W26kDCks+ACEFx/F
	fqaIn/eyT/V5Gf2kgUnoE2Neo/PtZWG/JDQDRDkQtuaf1jWTZ++WWp6HHBERTzL/24WT91DvsUnJt
	dAytpKGkQ0ZCsoXzHeBY1GBib708AEkeFnpe9d2bVR7okrdcBVwjr56oRhqy1SgDeG5VIls9eXU8z
	1Hhk4D4sIstv9a0ZL5ThWpHQ1g4qcgp95LHwX7KHkpfbAdFn0XKs6gaN1wFKX5jA0UgpjeDt1F2tJ
	9WvO19pG+cZkKTGWdYGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4ok-0001rh-Iu; Mon, 15 Jul 2019 17:31:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nO-0008Dj-6D
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id x25so17126972ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FDvoYJijQDj0e5NVUU9jZaC+GnZsfGAQXtnAmVIR6ZQ=;
 b=vCDCTz4k6ibrzwfwNdeN+QpnCYvtQK66tnraZCMhEnIysb+LegW/a5Uc64VRj4SaU2
 8Guoou6qyCgc364/AgBeS6Oj9/PRUt5lhi/C25kV5E0jZ+2IWfgGw91u0PBTrWXDwjcn
 aMaOOvwW+PYPX8vhhpxRw0TjW8cIRyHVj51xe3ZaS3GrLIVwWM5U23xNq87CH+y0cycH
 r5arqIdqvAClhNL9WNLnllouWyl3JNkQA9RJ/go+uJuFtoVaSYxubNenlPueb1o7WW/W
 swt5B/PhZC8orVlaNFvTw8M8gH4f2SSveJtKIypnEOXWMeWuGzbCJtzjT/BTtJJhk7Cf
 8SFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FDvoYJijQDj0e5NVUU9jZaC+GnZsfGAQXtnAmVIR6ZQ=;
 b=fjm8u6E/vxBYngSGKFpR8umpQ0O8UdAbfna+h7+OHjfRtI+aGZVzOw4S/3RrEkMhlm
 AYau+y/7DgGPCZoiEO5U23fX85TyyyXj9fCaz3pwIZOXJRnL0ZVdSEGOfIxXH2GaXoF2
 26xgKXVbwKvtPXQjcy05QZze7eKG4Fq3+nm//I/j5k81zILqeRHltqP6cZ9IUU8TDEcE
 10a5JZRg9bZAkAWEmdrQNQA/WPKTkCjYg881ctnKdG/MyBKldT57vWGhF3tv2nK8pJb8
 4VtgXbLCzz+GHyRysJDnU7QBILuMxMgmKj9sO67Wy9G6wK36dk/c5Bpauv3Jv7jE0MUp
 rGSA==
X-Gm-Message-State: APjAAAVcmLRFiNIzK+nVmOdDCnFahlMiiutkUbR7P4eYsEQYCoHqh6ZC
 vxZKAv8zbyabga6rlm5phSq99XRx
X-Google-Smtp-Source: APXvYqzGgMxupCB4y5ESBKTMjENgc8s/BGZx9EIFl4ilpmAfr/qequ4G3zvviFCti3oOxbKWcNwAcQ==
X-Received: by 2002:a2e:301a:: with SMTP id w26mr14325712ljw.76.1563211788725; 
 Mon, 15 Jul 2019 10:29:48 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:48 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 04/13] ARM: tegra: Compile sleep-tegra20/30.S
 unconditionally
Date: Mon, 15 Jul 2019 20:26:20 +0300
Message-Id: <20190715172629.4437-5-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102950_244511_02904B5E 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
