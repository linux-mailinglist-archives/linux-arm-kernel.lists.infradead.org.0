Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DB97AF5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRXqIcUvxPjyAHcCoCDGSZNWHPBEALOpOdpqHs0E/vg=; b=WOxVNp8t2+7D/p
	D6n4Y8uRi9U3o+NkLGZ5bFX94k2+qcThgo34lNzVlaq2pZ8Z+gAZb+QZ1Hxd0p8I/75i15AWF3K5o
	65Au5S9j5xvZ8OnBYO2ZZs6CFOpc8JU8AGrPkymCmUAvZuteq92iFYNzPpQ4chXAqgb/CvB+U3S8G
	z7kSShrN4HlznEiGshYw3RFFHBVZ5t2zYGGtEgyHw/ycujSRl4TY2kChC+UNrQjpfqTUSsh5cdwgO
	wUT+IChqRH6uV+q+lZTBHcveLr7w3llHaK+sHJfsZQ1quZDmYPbzED5yeHccpd4KMiMPi+kPE/zUG
	NVA5gvJObD7bleZ2YCmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVgK-0006PH-CD; Tue, 30 Jul 2019 17:13:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdk-00043o-15
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so57893636wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/8nZZlhkjH8gmOBLsrwLlw6x1w6bpTtxl5DUoKSzyGY=;
 b=RdQSw1juEsmNYUQ1d0WQk7AOJYHlWOgVUmS234Op8YJXCCWsiauFHUEIOZVyHo/0eo
 MJgFvkIadkVQI89foGSQJn0woeBf4wvyyVM+ct4U9QQwF8r1SR92UKFWKmPmYGskpvWo
 975AjHl5mM+zKzJ6HJ/W4xn+b03UXXAgt/AB+rT2AV1OMMnMJkhN5Hsc4l8iT8gdXDfU
 LuQC8kdpyMEcEXefuzv6MPkj8d+5smo92vNXpPB9huhhw3VsTy6sqjgx765f2SrkTsEC
 T0vPlcRka1RDYIh2gvWwLhy9B5x2tYAfYcCu+rkKybzBhgcWs6DMRYcfXiMDrgDugyCU
 3uOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/8nZZlhkjH8gmOBLsrwLlw6x1w6bpTtxl5DUoKSzyGY=;
 b=UadGH0AEh5c3PPmoR6RX4M8DQ8g39E5itBm9MtEmOyUthUEyaAh6Zld7douQ3vWQm3
 bgQ16/GoVNPcyQ2ZqQWb+K7wfWjiBBnB1XwS8WKBmm72xgAFu6OEiewJNUXPNCyAbjCg
 h7gq7EEr98IsuxubXQKhXe7oKZzfrzU5580+xR13t3w1nUVX3aGt0iCcsONcx9T9ZRvq
 p6N2hfI1KSG9TtOsb8w6VTRu6bxTxZtOmRP8sbAvJLJr7HmwQclP3R6iQI2n9PeSlpcd
 Vds7jpju+rZkZnsQFNdtSXS4wq6TfV6H3vDLaotaFC6hiO7YnxYz4KO71HB4+gldq0JV
 Lsew==
X-Gm-Message-State: APjAAAWsPalCK1MiOgZvTkz+AQtCzSzF0JWWqXK7Ly2+pkyBoVMLV4CC
 4X8fcDhpM6zgJiAQOqlNTno=
X-Google-Smtp-Source: APXvYqwCVF92t4LAwe29F7M9D7NcwGu25M05HbpWbYMfDD0c2QSQVYsjUBd3P5BDXZHWyZChlcvSyw==
X-Received: by 2002:a1c:a1c5:: with SMTP id
 k188mr106228570wme.102.1564506618949; 
 Tue, 30 Jul 2019 10:10:18 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:18 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 10/13] cpuidle: tegra: Support CPU cluster power-down state
 on Tegra30
Date: Tue, 30 Jul 2019 20:09:52 +0300
Message-Id: <20190730170955.11987-11-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101021_248398_BB1F9CFC 
X-CRM114-Status: GOOD (  14.33  )
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

The new CPU Idle driver has all necessary features in order to allow
the deepest idling state on Tegra30 SoC where the whole CPU cluster is
power-gated using the coupled idle state.

Note that outer_disable() now need to be invoked directly since it
produces erroneous warning message about secondary CPUs being online
because it doesn't know that secondaries are turned off at that point
by the cpuidle driver.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/pm.c        | 7 ++++---
 drivers/cpuidle/cpuidle-tegra.c | 1 -
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-tegra/pm.c b/arch/arm/mach-tegra/pm.c
index 7d9ef26e52a7..16a02937d3da 100644
--- a/arch/arm/mach-tegra/pm.c
+++ b/arch/arm/mach-tegra/pm.c
@@ -146,9 +146,10 @@ static int tegra_sleep_cpu(unsigned long v2p)
 	 * if any of secondary CPU's is online and this is the LP2-idle
 	 * code-path only for Tegra20/30.
 	 */
-	if (trusted_foundations_registered())
-		outer_disable();
-
+#ifdef CONFIG_OUTER_CACHE
+	if (trusted_foundations_registered() && outer_cache.disable)
+		outer_cache.disable();
+#endif
 	/*
 	 * Note that besides of setting up CPU reset vector this firmware
 	 * call may also do the following, depending on the FW version:
diff --git a/drivers/cpuidle/cpuidle-tegra.c b/drivers/cpuidle/cpuidle-tegra.c
index 867c0403ea81..9e1659e93af6 100644
--- a/drivers/cpuidle/cpuidle-tegra.c
+++ b/drivers/cpuidle/cpuidle-tegra.c
@@ -324,7 +324,6 @@ static int tegra_cpuidle_probe(struct platform_device *pdev)
 		tegra_idle_driver.states[TEGRA_C7].disabled = true;
 		break;
 	case TEGRA30:
-		tegra_idle_driver.states[TEGRA_CC6].disabled = true;
 		break;
 	case TEGRA114:
 	case TEGRA124:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
