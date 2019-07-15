Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50B2699C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+jj/p6bnGVqiLr7/TLODcemrlRkMRY2DnMaZpxF42k=; b=GKJVxRnev1q3ks
	1C9CN3ZHIZG8ixMZkle6rBeAM7ofp9UojzxbPFdvKfwhDBnKVf5fuoJ8bBPQ/E1xvsIsaIYEbmUFk
	nmOJMwD65kPLD1DRYowcYNQctDT0rHqdbhZXeRrkLH1ej/lzLm9q1tjzi/Z/v8L0uJ0m8ecACQdxB
	EoXdLWATBMlUYR65ZYUjSQGtDit1rEFFGG9PZ5qATj7U/l8M2xn0L6x3MgBX42Z3pgk0nULW+CQmk
	MxaxKF8ecMKf+spe+n9pRMTe5dJbox8e2fTqU6k5iQLKVmcdLFiP/PvU1Q3E4+HxIjm1IWqZ/E1oO
	9WAchcYUjTsE7rprf2Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4oT-0001by-Sl; Mon, 15 Jul 2019 17:30:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nN-0008D6-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:51 +0000
Received: by mail-lj1-x244.google.com with SMTP id m8so17081301lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RatHWh+WSZJO51BDaAO/tJPgTyTi6HlHiiIlwIODHqM=;
 b=YCxjBQ0dgT+LIdjwWrqKjoEqsb1bDymfKP3kPV6zR9IjEopiAu0/EqlOebUUfHDX5w
 zz+4Tvgg0oDcoZ2pVEGcgghbm0LXuJN142WjlGSdRDdgrpRvwAHQ+jNjbsKkhyhGAElY
 P5D6/38/7GcB1LVFXGCNkSLfs8eLXr/pIwRbh9lm2+HvDzYK7mbn2snTjQ3+5J8GR5aV
 ehv5RjiXuc74y3AEAXMa0yBTmOWtGeGLlqc6pUj+A2YfHTXnM/GHXjEadwLyUBrDK3le
 x1JgQS5hd85AZzGH0WxnyNnEuxnGNW8PEbDcWM1IxSjE9cnDlr4lViHNlTq8LPkQ+bWu
 oZig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RatHWh+WSZJO51BDaAO/tJPgTyTi6HlHiiIlwIODHqM=;
 b=FZ6DIwK4VJcfYGpF7Rl4w0AI7sjE4lTMKF8LGH7C20e+yKogQqf/2fObyJfZyOvdWd
 WxbuF7/W6PZmlDpt9aY4YWMk3vCN62gHC0N7hy6D2pC44jhPsOtiClPRtf5vLat3ErnT
 KrHsjzQ0Rv6M/yIAq+nz+kgUvT2lckbx862DoNsnp49doDEGv7vNY6t+6ZjN1HUzhdoH
 Xz/4kXQkFEfkonq21TsKAaM80eW3gL1WZmdU6AcS2+HSBaQqskmFqJjOaRJrmoN9UOTF
 xE+/sl9rLpA22qTtw567pfowqa+mxYaMi4rDqLXgCsz2uv2UufLqAp8G0QUfPOLltsQC
 2J4w==
X-Gm-Message-State: APjAAAVSwRg1ZBKrq/XKYf+3hWAsb/v7ai324kWoj4TwG29LG/FglBdX
 p02vbZW1xNjWFwK/bjNqBZAWXTPz
X-Google-Smtp-Source: APXvYqybrC/BDz0zU8yBa2W+gs2MV9KsGr77hQlEYneiZ1tKRQSVHKyXIgKDtPbQLztrw5DYuoDAWA==
X-Received: by 2002:a2e:80d6:: with SMTP id r22mr14795572ljg.83.1563211787757; 
 Mon, 15 Jul 2019 10:29:47 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:47 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 03/13] ARM: tegra: Propagate error from
 tegra_idle_lp2_last()
Date: Mon, 15 Jul 2019 20:26:19 +0300
Message-Id: <20190715172629.4437-4-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102949_102279_02BA0C8E 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

The cpu_suspend() may fail, it's never good to lose information about
failure because it may become very useful for the caller. The new CPUIDLE
driver will handle all of possible error cases, including the case of
tegra_idle_lp2_last() failure.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/pm.c | 8 ++++++--
 arch/arm/mach-tegra/pm.h | 2 +-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-tegra/pm.c b/arch/arm/mach-tegra/pm.c
index 2f6fb54be9f8..f9c9bce9e15d 100644
--- a/arch/arm/mach-tegra/pm.c
+++ b/arch/arm/mach-tegra/pm.c
@@ -189,14 +189,16 @@ static void tegra_pm_set(enum tegra_suspend_mode mode)
 	tegra_pmc_enter_suspend_mode(mode);
 }
 
-void tegra_idle_lp2_last(void)
+int tegra_idle_lp2_last(void)
 {
+	int err;
+
 	tegra_pm_set(TEGRA_SUSPEND_LP2);
 
 	cpu_cluster_pm_enter();
 	suspend_cpu_complex();
 
-	cpu_suspend(PHYS_OFFSET - PAGE_OFFSET, &tegra_sleep_cpu);
+	err = cpu_suspend(PHYS_OFFSET - PAGE_OFFSET, &tegra_sleep_cpu);
 
 	/*
 	 * Resume L2 cache if it wasn't re-enabled early during resume,
@@ -208,6 +210,8 @@ void tegra_idle_lp2_last(void)
 
 	restore_cpu_complex();
 	cpu_cluster_pm_exit();
+
+	return err;
 }
 
 enum tegra_suspend_mode tegra_pm_validate_suspend_mode(
diff --git a/arch/arm/mach-tegra/pm.h b/arch/arm/mach-tegra/pm.h
index 3f3164ad04b7..ae68fc7db576 100644
--- a/arch/arm/mach-tegra/pm.h
+++ b/arch/arm/mach-tegra/pm.h
@@ -25,7 +25,7 @@ void tegra30_sleep_core_init(void);
 
 void tegra_clear_cpu_in_lp2(void);
 void tegra_set_cpu_in_lp2(void);
-void tegra_idle_lp2_last(void);
+int tegra_idle_lp2_last(void);
 extern void (*tegra_tear_down_cpu)(void);
 
 #ifdef CONFIG_PM_SLEEP
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
