Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862D47AF55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLw4JBzRbt23toFvqnRNdZ4wiaXvbsDMXU/vVQYH/rc=; b=hNS5/cKauw0q+n
	ad/1wQYCN/27HAyufzZ4DNBoWyI3aIczYGjrNbdYCDYZN4NREw6zcUcarakZpUEM7EZyuiP5Z2MC/
	qAOthtwZZP4Kx2P151MnbMyXVmvjBLpoad1a6NB1urxGwOPVDH/j22Dc0paqiSmn0I3a7zYFhlegP
	Jvp8EqUxhJSQijMOWot3kaoai/0ulqIA+W9c1QPYmqK4kQMHse+moR2h/vIh3fo81Lf9XsepU7q/q
	ptEBCbORwlC7xT0WwzaSEPHTQeoatc9IZC23r1E5mUyRJI2Q4pF9IS7jxUPBfw2vt19Rg0NZo3efN
	QfbLyaHExtwX/ZKw3tVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVfi-0005jF-4S; Tue, 30 Jul 2019 17:12:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdg-0003zP-QG
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id x1so16704624wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2jx9uRBt6JB5ilMndbuQtI4fuwVo1oth3W6XlcI98xo=;
 b=H+L0aLW5CdeY4D/XejT1s8llSymAxTF1yyCNR3v7feiNOM83jgP4TZR6O3mV8kKFIa
 67C2l0UlaRSBBRAXtFJz6sp9jdzXIuUkuT5EnmR30fIkGNwZ7BBkQaWu3KN8L1J1OD/3
 jBqRD7sHA9ALOUxEizou112ro7cotPtzJaXVO+gA72McPD8/59VMG4kNMvyWLFu+vBob
 OiHc5wDspQX169M6Vxs4kcSxnqAxxYg4UizBgbAlNFrdfP+SM8Sx8x/IVqaIXod/DL+Z
 Cy51jN1Kp5yI965m9w9emiOfRfnDMViXboa9EPjjZPk4NGZDzXIpAMBddlIeYlP7FWgU
 JOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2jx9uRBt6JB5ilMndbuQtI4fuwVo1oth3W6XlcI98xo=;
 b=Adjx7fj0m+xso/yOkwShAx20j7uNfa3rcEj9ZYsptubFS8MjsAul5cgLmGZ3L3tq+D
 juXGm1PZhzPSIiAkiKuUC0ZV+xRmS7VPaAbm6cCxDTPGxm7YgtHc01tT+gKl7NQ84Ax2
 HKr9A9D07E1ImwPDKhNkJ70bwTOtWkRXtVwWcQY5WxuVcVMc9/5UpgpDYOHPHwLRGNsF
 jdMQGCKqY3hVbGGC1jgB/iMN+LTL/RWDgD7Vyx6zpKqzmiNHCO+1j2XCqNkdK34A9b7t
 ISM81ms54kc9KA2MLnaGTLFXOz45rsm2Gmm7fVhDeD6v96T0PZMSFkzxAntMMkUY6Kah
 gGjQ==
X-Gm-Message-State: APjAAAW05+9FI/++AfzbqAqcCADtusP5Ixmgi1YMaMNAewLervyedN+B
 lk0xLVmqTdVpeOhOSjBWfsdem/Qd
X-Google-Smtp-Source: APXvYqzycZSrm0esL/eLQiwlzq8G51YnZ68F3nWXoIV0MnnSl5kTIqDLuiFnNM+pV3FbAPx25q7eog==
X-Received: by 2002:a5d:4e4d:: with SMTP id r13mr40131142wrt.295.1564506615247; 
 Tue, 30 Jul 2019 10:10:15 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:14 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 07/13] ARM: tegra: Add tegra_pm_park_secondary_cpu()
Date: Tue, 30 Jul 2019 20:09:49 +0300
Message-Id: <20190730170955.11987-8-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101016_906396_C1948E41 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

This function resembles tegra_cpu_die() of the hotplug code, but
this variant is more suitable to be used for CPU PM because it's made
specifically to be used by cpu_suspend(). In short this function puts
secondary CPU offline, it will be used by the new CPUIDLE driver.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/pm.c | 14 ++++++++++++++
 include/soc/tegra/pm.h   |  6 ++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm/mach-tegra/pm.c b/arch/arm/mach-tegra/pm.c
index 4cc64a135a3e..7d9ef26e52a7 100644
--- a/arch/arm/mach-tegra/pm.c
+++ b/arch/arm/mach-tegra/pm.c
@@ -427,4 +427,18 @@ void __init tegra_init_suspend(void)
 
 	suspend_set_ops(&tegra_suspend_ops);
 }
+
+int tegra_pm_park_secondary_cpu(unsigned long cpu)
+{
+	if (cpu > 0) {
+		tegra_disable_clean_inv_dcache(TEGRA_FLUSH_CACHE_LOUIS);
+
+		if (tegra_get_chip_id() == TEGRA20)
+			tegra20_hotplug_shutdown();
+		else
+			tegra30_hotplug_shutdown();
+	}
+
+	return -EINVAL;
+}
 #endif
diff --git a/include/soc/tegra/pm.h b/include/soc/tegra/pm.h
index 2fbee9efda21..08477d7bfab9 100644
--- a/include/soc/tegra/pm.h
+++ b/include/soc/tegra/pm.h
@@ -27,6 +27,7 @@ int tegra30_pm_secondary_cpu_suspend(unsigned long arg);
 void tegra_pm_clear_cpu_in_lp2(void);
 void tegra_pm_set_cpu_in_lp2(void);
 int tegra_pm_enter_lp2(void);
+int tegra_pm_park_secondary_cpu(unsigned long cpu);
 #else
 static inline enum tegra_suspend_mode
 tegra_pm_validate_suspend_mode(enum tegra_suspend_mode mode)
@@ -55,6 +56,11 @@ static inline int tegra_pm_enter_lp2(void)
 {
 	return -ENOTSUPP;
 }
+
+static inline int tegra_pm_park_secondary_cpu(unsigned long cpu)
+{
+	return -ENOTSUPP;
+}
 #endif /* CONFIG_PM_SLEEP */
 
 #endif /* __SOC_TEGRA_PM_H__ */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
