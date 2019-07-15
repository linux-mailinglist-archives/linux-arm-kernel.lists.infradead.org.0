Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D79E699FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQD5z+dvqZ+v/fUnqRmIYk30NOu+uZx3jZFN5HtkMyY=; b=SqopAIfQoU9xPC
	G4OR5ctWJSoXG6PGI2iYBLTJnSfbM36lpWOuEWZ58g709AKDqQaPMJuoQqqNFQY8m/2KLinlRV76H
	K+KotcqOx2qEMCWniV5YE3hHOToMWYPCEqr4BSd7npddj0P0B2qz5Ll5VHZL7LkncsVcgDd1R0G4Y
	/hANyqwedGc+eaosrbTA6+q0j+gC0tuuAsbJKm46u/G3nXUzNYKYxPUgRu5fMaSOxDSHwba215mkT
	xGk+iFzDs775b4xyWixpasnrypxdO2Fbtm28YG3edde7ABEsl+zX8D+FsYCj5eeov7FCVRTW7G2zG
	jLt0cWLXAf+sey2HA6LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4rS-00048h-G4; Mon, 15 Jul 2019 17:34:02 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nV-0008K6-6a
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:59 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so17053682lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ez/DtEbZm91hvKH3/uYPobJLTWojYBqiK7N01oWP7xA=;
 b=GHWqqrP8MGo5usVZkesx/S/t3wUr6lK7Nh0zI9P8FCe6cwHfY1ofjS8rd2gkTNi1AB
 Xm6F8B6VWn52y6oG1ygaM2YdtR3QGK2RXJfjHVrjwHu/sFWreOak530bov65iaoUMLJu
 KBGIvqd4yq9Q5zRRzj7+uQc4gyLN471CLYZMIsExyTXS92hIwYhZqNYelURn1kTt7bVE
 MWZG8K6dRRASsmhu+fBv5+eUBn8gSjvRsHDTF73myDkOcRkmgwKFkDwXxYCnqrRmCt8c
 3v587cKJL0VM2o8h8pgRbifzPatUeq4IVvF/9NClJtjb+38k1SWH+v85RQj2zvDGAry6
 167Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ez/DtEbZm91hvKH3/uYPobJLTWojYBqiK7N01oWP7xA=;
 b=Rv7juJ7ud29uYJEwL8YSZXzjPM8TLe6SK6V8DQZMRQPGBLccLSz6lizcHAwBmEakf3
 cwdUEbPUhcSEgMmZ76QlQ+ryfuq25yEfDsRSMOoBVgCg2F2bw9RIK5nTXtot6fyCnlSV
 ae1cGon6Oq8DV+aHmsG+Lv/WH0i1irBW0C9lx6dEG/b/sic315EjoEVzwTlto6kDmCgt
 eBsYjjt0r5CmOAxKaYf5ZZxcyg44kbSlwygn6sgA5ZvDuQybkCnvetFkTzfJ0dXPKrTt
 BU93/06TgGvHWOPERFmUgdkLo9FjcoVP4iMomVe7+nldRuxmWU5empCKYBeBy8BYY7Px
 EMhw==
X-Gm-Message-State: APjAAAWU2uFjGsGOAMUIOSuNcxkbBuKnrvtMakYPfN3MY60nk4nwpgaa
 wE3mEppez3jPm317F3Qr54k=
X-Google-Smtp-Source: APXvYqyDNuo3sjvpZZ1PrzvsKvNjDFwHsZyeZMQ0175G+DbtEMIV/KWgUicezlDGR98tOBvk4oyIHg==
X-Received: by 2002:a2e:9ec9:: with SMTP id h9mr14042084ljk.90.1563211795641; 
 Mon, 15 Jul 2019 10:29:55 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:55 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 11/13] ARM: tegra: Create simple platform device for
 cpuidle driver
Date: Mon, 15 Jul 2019 20:26:27 +0300
Message-Id: <20190715172629.4437-12-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102957_343378_FDEC3826 
X-CRM114-Status: GOOD (  13.05  )
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

The new CPUIDLE driver now is a proper platform driver, hence it needs
a platform device in order to be functional. Register the platform device,
like we do that for the CPUFreq driver. Note that on some Tegra114(124)
devices PSCI may be used for the CPU hotplugging and CPUIDLE driver
doesn't support that case, thus CPUIDLE device won't be registered if
PCSI presents.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/tegra.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-tegra/tegra.c b/arch/arm/mach-tegra/tegra.c
index d9237769a37c..f1ce2857a251 100644
--- a/arch/arm/mach-tegra/tegra.c
+++ b/arch/arm/mach-tegra/tegra.c
@@ -36,6 +36,7 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/time.h>
 #include <asm/mach-types.h>
+#include <asm/psci.h>
 #include <asm/setup.h>
 
 #include "board.h"
@@ -92,6 +93,9 @@ static void __init tegra_dt_init_late(void)
 	if (IS_ENABLED(CONFIG_ARCH_TEGRA_2x_SOC) &&
 	    of_machine_is_compatible("nvidia,tegra20"))
 		platform_device_register_simple("tegra20-cpufreq", -1, NULL, 0);
+
+	if (IS_ENABLED(CONFIG_ARM_TEGRA_CPUIDLE) && !psci_smp_available())
+		platform_device_register_simple("tegra-cpuidle", -1, NULL, 0);
 }
 
 static const char * const tegra_dt_board_compat[] = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
