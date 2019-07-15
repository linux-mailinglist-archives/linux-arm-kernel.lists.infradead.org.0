Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5155E699C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGRd1sWLs7ZKMRF8UGheusLH9TNQ0LBEODaXHb5vevQ=; b=UI1Cs3cYM/kTaF
	l+qqmAAtcQAAIxHw10D2H9B6p0yqAUaaEqab36adxiLcC4PJHbWFWylWDA3lQ7LQOo1EojJKz3J95
	RW+XdoAJHGNgCJLFJB170qvUW29cyEOw4HUvRo/7OMvtKU/yMDypJutS6q2mGxoRU17l3eNNuGYVQ
	5uGmezItTMLFHTcp4Km/pPnMehnECoeXdCu4XDiemaZ6Yq5+vunGYvBkBJkbipmU22RGXAVKA/48R
	5Lku+Yc2OeB9dG3+3Mrb0uuese1GdPl+9Qlg4OkT7T2/VXzG3P73WJ9+vF7d0eB0fdqERuGDRDz9N
	/lla024gEGMT4RC/yJIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4oA-0001KZ-Mv; Mon, 15 Jul 2019 17:30:38 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nM-0008D4-8W
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:49 +0000
Received: by mail-lj1-x242.google.com with SMTP id d24so17102650ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wAZS/gHavS5YSEczNZRmVNHcV03HXfR9BNASQHjKGJI=;
 b=Jst9Ui9qHEGJyoR820DT+dbzNqmoyU0griYCNuZ+AAWmlsLDSbF4r4hKBnx9FiGw6s
 oqMpVKkdKs3dwznQ9d0PKfyxuuI8cPmU59grmhvotih4QLX3FJkKCL6yLghvu05Fbc5H
 la0RYf84/EMum0P2XfBh13fdfWn7OYABemb0hJawquoRbUB4dDRnZNWIXR0utvX2dnLW
 mcHgtrH7GNnAaKQCkPAWF3yBW9MY8O3Z2gsBNpnl18rO0+OTXeLd9U9HV23+M8rzjW/+
 OZ3ecwiWSduDbZYK5iZwDoDqUtmlmNPJLBI7C1Q42+W1nE1kZ7GgGDjZTx1XPxJjNRVF
 dzbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wAZS/gHavS5YSEczNZRmVNHcV03HXfR9BNASQHjKGJI=;
 b=Ca/6yNmMPNjpa4ft6is++9/s6xDR+O6KITqkn9iZRbqofjqKoLowNNUcuaB6Hmr0c7
 17mZY1BEyQmVXunglpLL87RLkZXD/lE/tjDxAqYzDsz9lOlJMVidmkp9+m0cg4l7+H+P
 eRxIjQRWy0fWz+w5PUz9w0cGtAl0+7hmceuACBx1KryeHVMflnPjKW6T2a3tL067XN0O
 Z//xNKs8ntfg5bASHsgaCT+cTSBdm9hp3t5hyTpBYSoWM6f7nwPlU0X4NJpv3xeQiJwo
 5ltw/JVUV2B7L7pSNk/lw92V16q76AbQdCgxro3g2k/EHNqzQMM+NnYu8o0oaNwuL6OL
 YULQ==
X-Gm-Message-State: APjAAAU0R1q6a8VoRsmbd/P/XObUbAHK0R4jLzZMSGzOFw0pw6xiheic
 9dowYVM2X+I5M/XNTTyJqIE=
X-Google-Smtp-Source: APXvYqz/YOgCfk53IIHGcYQxyANpzzg7RT4bR0PVoEUmFsvNwc8I9plE9nCfBGaGoEESIt9W98AkeA==
X-Received: by 2002:a2e:7818:: with SMTP id t24mr14310263ljc.210.1563211786801; 
 Mon, 15 Jul 2019 10:29:46 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:46 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 02/13] ARM: tegra: Change tegra_set_cpu_in_lp2() type to
 void
Date: Mon, 15 Jul 2019 20:26:18 +0300
Message-Id: <20190715172629.4437-3-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102948_374345_BB4B7B39 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

The old Tegra30 CPUIDLE driver had intention to check whether primary
CPU was the last CPU that entered LP2 (CC6) idle-state, but that
functionality never got utilized by the old-removed driver because it
never supported the CC6 while secondary CPUs were online. The new driver
will properly support CC6 on Tegra30, including the case where secondary
CPUs are online, and that knowledge about what CPUs entered CC6 won't be
needed at all because new driver will use different approach by making use
of the coupled idle-state and explicitly parking secondary CPUs before
entering into CC6.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/pm.c | 8 +-------
 arch/arm/mach-tegra/pm.h | 2 +-
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-tegra/pm.c b/arch/arm/mach-tegra/pm.c
index 6aaacb5757e1..2f6fb54be9f8 100644
--- a/arch/arm/mach-tegra/pm.c
+++ b/arch/arm/mach-tegra/pm.c
@@ -123,11 +123,9 @@ void tegra_clear_cpu_in_lp2(void)
 	spin_unlock(&tegra_lp2_lock);
 }
 
-bool tegra_set_cpu_in_lp2(void)
+void tegra_set_cpu_in_lp2(void)
 {
 	int phy_cpu_id = cpu_logical_map(smp_processor_id());
-	bool last_cpu = false;
-	cpumask_t *cpu_lp2_mask = tegra_cpu_lp2_mask;
 	u32 *cpu_in_lp2 = tegra_cpu_lp2_mask;
 
 	spin_lock(&tegra_lp2_lock);
@@ -135,11 +133,7 @@ bool tegra_set_cpu_in_lp2(void)
 	BUG_ON((*cpu_in_lp2 & BIT(phy_cpu_id)));
 	*cpu_in_lp2 |= BIT(phy_cpu_id);
 
-	if ((phy_cpu_id == 0) && cpumask_equal(cpu_lp2_mask, cpu_online_mask))
-		last_cpu = true;
-
 	spin_unlock(&tegra_lp2_lock);
-	return last_cpu;
 }
 
 static int tegra_sleep_cpu(unsigned long v2p)
diff --git a/arch/arm/mach-tegra/pm.h b/arch/arm/mach-tegra/pm.h
index 1e51a9b636eb..3f3164ad04b7 100644
--- a/arch/arm/mach-tegra/pm.h
+++ b/arch/arm/mach-tegra/pm.h
@@ -24,7 +24,7 @@ void tegra30_lp1_iram_hook(void);
 void tegra30_sleep_core_init(void);
 
 void tegra_clear_cpu_in_lp2(void);
-bool tegra_set_cpu_in_lp2(void);
+void tegra_set_cpu_in_lp2(void);
 void tegra_idle_lp2_last(void);
 extern void (*tegra_tear_down_cpu)(void);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
