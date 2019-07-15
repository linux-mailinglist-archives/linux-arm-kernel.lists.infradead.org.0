Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFB0699EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLw4JBzRbt23toFvqnRNdZ4wiaXvbsDMXU/vVQYH/rc=; b=sEbxV4TkunM35c
	Jq3oYadk0k1hUn/Rn1L1WvNkwju6R8xul9StTYA9vrNwNm5DfMbSlxWvoSYMlbGfgkyc74LZp8MCv
	7074UAAQsKCJY8AhF7n+YgwsPJJZHWid2Js72lh3rrj/IpcvfZHhF3xgu2ZXbHWF4UxG3gy91pnAJ
	uo9e1JpKesp1bxwac6q+4euz1usnxjGL8BjCWpKjxAtCcK1WMohBHHk+teuVahHBgS22i9vd16fAc
	qsJPWy8nVkhqBtiYx9WqLIZbtbRXjYl0s4q51inyQ7eSKvaindjdsGSHtK6XkbF5zjm0QENzx0wUj
	x7p1oPRP2YAJPpm0mwNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4q1-0002sf-JZ; Mon, 15 Jul 2019 17:32:33 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nR-0008Gl-T1
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:55 +0000
Received: by mail-lj1-x244.google.com with SMTP id m8so17081556lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2jx9uRBt6JB5ilMndbuQtI4fuwVo1oth3W6XlcI98xo=;
 b=cDT1znoqQWzRJFOuhr0qRvKpnWLvvS4JZtHOJ0pnhS2O4VqXGT2we1djhYEtlUYLtw
 RNpBqAHAKF/FLRHo+2oNA+TrWzuzzqiHAv2XxirbKykExj06nGx0BRhcy4ynrSoI1U2u
 IKj1sdMEyahxMJKA9wlyu7Wgrw2BCgvlivEr3/2iYcqwvapa5ooouf0WwhiOREEA8FIi
 nJBjLtfvmRHnzDAZj8tYyNzHhf34bmGl7mELLt1bgSdx6RsdWfuWoLIm1vJnqiGmhvET
 XDnZQZgcOVaz8Y5GVFFUkQ8vQIa8+9TCgPangt4RfTc6qjf1CO/J6kumoqhMBkVmPqCM
 8cVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2jx9uRBt6JB5ilMndbuQtI4fuwVo1oth3W6XlcI98xo=;
 b=CzS2N7kzx3NQqz2pVoMtijaU+BUkFtfpEgWEQ6oCUJKu8MyMNCKaNbHGJg3CQzsys1
 n/9JOjeJ/LuJuqEqV6Iecymrc6Z9agSAVBC/Vf/sQMfMLLMILYsGZLb2TbSn+/3kZeeE
 yJ5QgAJhESivh+93xnMDi/s8wc6SAtDeYVArDitBAYBRysHy/bEmLU+hATfZ8thfGwXk
 2JmDtKxC8xvWiVZh8kM7m1HQTWMsMclPcytpGG85xeo5Grp0PxMZWWk9lLxiylXhA4Es
 QfPDumBDr6TirEMewXDFSX+RNP4eqneZkWUKHtLBar1VpsyAnxHMPVPtb+IPkV64Jyyp
 Zq5Q==
X-Gm-Message-State: APjAAAVLUZWD3fYXr0bsFx75CYAGLYndWh9PbQ81HfDE09hiHoUSDoTn
 T5IAUeV6h2dte4RbdV5LY0w=
X-Google-Smtp-Source: APXvYqze+EZiOztxVZvleQZu2rs5ndgzoFDphhDcPCAcS1ClN92DcBQASC9SZaVqn3r9Bzb3uJXCuA==
X-Received: by 2002:a2e:730d:: with SMTP id o13mr13837571ljc.81.1563211791659; 
 Mon, 15 Jul 2019 10:29:51 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:51 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 07/13] ARM: tegra: Add tegra_pm_park_secondary_cpu()
Date: Mon, 15 Jul 2019 20:26:23 +0300
Message-Id: <20190715172629.4437-8-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102953_952736_3273F132 
X-CRM114-Status: GOOD (  13.43  )
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
