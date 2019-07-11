Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4DA65094
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdou13HUWsHiRafdeRfWIvm/kQwi9QelRSH95AyuPhs=; b=owRMYcbOXfPO6C
	UgKlz2kNEFIUOagskjejRyLTFUebZWslJ3meOLglhD2zJQe0X7XiZgqnBOth7JSlyMwzwiq1OS7Ie
	XQ4mtisWZ8iJJqW1TlbbC7PLA2X+tuWAbclo2QRy4bQkRz68OPoP2wbROjrpmVGfl+65bY/toVBvy
	hzqZsAPJYrbj3FMl0BlqvydXDcP9d7ztK5KeDtRcNJtioZ37sr4B3nKa7tPz98jOILgmSTp/9RqdU
	ndaunMks8x9KcehDdryz6ag6hbzf5jZNOBCLFeosuuhhTz3qdWrPGogQmw55/adRZOIj622oqNRo4
	rbWq2dsaZl5C8SBpOOZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPY5-0002uz-Nb; Thu, 11 Jul 2019 03:15:10 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPWe-0002AE-Hs
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:13:42 +0000
Received: by mail-lj1-x242.google.com with SMTP id h10so4197996ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 20:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sFkiOd23q9EvJCGM6pGQ1kpqTDNZadVb1n2KsuaSyUw=;
 b=ERMyB1Q4XqTA31kKW7Ssb16HrXJwGgQYJJ1xQihR4GHlPleyQIWmHIM1Qv3bWwupRz
 DGYO3yW9gpM2MVQ3Cf2iPqz541oS6QJnT9J3xqsGwCeO24NdOSmIoLGUYam4y8UahI2L
 SSA3aGPxdelFefk/URt+/aSAuTfZLXclmsLV03H93weH1A9wo7H/77hEtDGSloYp728v
 K8yeNPZnTpL1nFjdAkW1ucQcCJtioDqCXc0xv53qRWC6eQxu7I2yEaCbD0QY7JSQd2Zh
 2CfxM7OJdr2L5Smb2jnn7B1hvCwY9MxIfSKeqoH5URdSZlpAboeLMEGA0kXF7DnC4AM2
 npuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sFkiOd23q9EvJCGM6pGQ1kpqTDNZadVb1n2KsuaSyUw=;
 b=K+NV7l4eDK/Px9X4j71WiZo60cuvvlzAtbrjPfGXJZf4yNNZf3R9QmpO+UyGWdPDph
 bPrmKdSuZ0WmAMAaxqeFFx5wmIxCqUk9swtuQ9fiFqZ72ED6DRO+E9hXacZCpDPISvo+
 tSOW6wazenn6g2894XKoWbabckDbLf7zyi++1fDtle57rFfsUMa9cEJhhHLSGvGF3l62
 v9ZWXJJZtnZYDvustTBGaz45XqzJ6aunRw/Fi4PCZvpRr5kUiKwMl5x1GTu8ibrInQxJ
 xkr5MhXkWh6tpWWU6AsPZg5OKuTDZodSEYr3AJ1FZVKTn7OPrJPYHd6kflYpBDt6jdHq
 t53A==
X-Gm-Message-State: APjAAAUSUs7xMY1b4HEfgqny7ukqCd7jkdzzi5e+FPeIcC4HquFL3c1O
 fthCHk8HLB689W5+Nw552x4=
X-Google-Smtp-Source: APXvYqwERzyTA76rDln2OycEkk/XL9J2Jaz9orJC5T4/Jq0hdYJ4zYFK6CeGVmyNyRvHS/qKBJpPgw==
X-Received: by 2002:a2e:86cc:: with SMTP id n12mr852397ljj.146.1562814819236; 
 Wed, 10 Jul 2019 20:13:39 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id h84sm753915ljf.42.2019.07.10.20.13.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 20:13:38 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 4/6] cpuidle: tegra: Support CPU cluster power-down on
 Tegra30
Date: Thu, 11 Jul 2019 06:13:10 +0300
Message-Id: <20190711031312.10038-5-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190711031312.10038-1-digetx@gmail.com>
References: <20190711031312.10038-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_201340_743222_A0231459 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 arch/arm/mach-tegra/pm.c        | 4 ++--
 drivers/cpuidle/cpuidle-tegra.c | 1 -
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-tegra/pm.c b/arch/arm/mach-tegra/pm.c
index f9c9bce9e15d..cc941b0c97e8 100644
--- a/arch/arm/mach-tegra/pm.c
+++ b/arch/arm/mach-tegra/pm.c
@@ -146,8 +146,8 @@ static int tegra_sleep_cpu(unsigned long v2p)
 	 * if any of secondary CPU's is online and this is the LP2-idle
 	 * code-path only for Tegra20/30.
 	 */
-	if (trusted_foundations_registered())
-		outer_disable();
+	if (trusted_foundations_registered() && outer_cache.disable)
+		outer_cache.disable();
 
 	/*
 	 * Note that besides of setting up CPU reset vector this firmware
diff --git a/drivers/cpuidle/cpuidle-tegra.c b/drivers/cpuidle/cpuidle-tegra.c
index 54974cd2255f..1412c4b0f6ee 100644
--- a/drivers/cpuidle/cpuidle-tegra.c
+++ b/drivers/cpuidle/cpuidle-tegra.c
@@ -278,7 +278,6 @@ static int tegra_cpuidle_probe(struct platform_device *pdev)
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
