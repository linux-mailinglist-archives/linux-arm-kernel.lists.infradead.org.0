Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CE57AF61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQD5z+dvqZ+v/fUnqRmIYk30NOu+uZx3jZFN5HtkMyY=; b=GU82+69+RMKr5E
	W1/zb6runvtCS2tguT8T5bXuA0XTYOcZJNbdmuytV4Xlkr3wApq8eTXq7C9JGBDmNk7CoxfdGRNc+
	OJcWv7iBOzcvzJk3f2LVmApfOEx3ClOO3Irf6AedzHeS00TuKoWgVOyjK+/A1K5N0YqHbQmHA/tX2
	9YIpn7pObO1CVEXxMjTVgEv1lFoUFOe+PDbO0sLdhWslCHHyf4c6kisQfUzm0C3ViF4ofY2i6GjlX
	z4yTQeKeQh6/f4yApQ+exmJifLwYdxtlK+vChGLn77lgqb8XEzr6uJ6PE5x5LghqL627lduwJJFWW
	qru3BgYZZ87G0//ItKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVgg-0006h5-Jy; Tue, 30 Jul 2019 17:13:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdl-000447-HW
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so57326511wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ez/DtEbZm91hvKH3/uYPobJLTWojYBqiK7N01oWP7xA=;
 b=JUaIZUxSEsHYmEI0ls5DWjv2KtKHaJgHFG3N27a0nlkFxaWBeI/a41JkQPG77U3hA+
 YNfod7UD+3ituq/uQz3v6CY1gQOv3M7d6qm0TRK6M9cardOBH/FiPY1mc4OzkRD2j6I6
 BSedX9kbsx/9cD5RQdGeJUOmuvPvboOw5kN8yeefcxa9ySR9G8FfgqmXLH1/lpaj1gJD
 0IveRqBqUHVN7opIfPG6bQ0fkPiJ5jF4glGe/oAWpelaiQGT1zQANa2+hRTe3/udsOr6
 7aEkuN/NQbigsX+jdv3SKe2+kvZCmrNhfPuwaN2dz9LhsSxK8O0iCz5oX8TYjL79Fm4q
 hFdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ez/DtEbZm91hvKH3/uYPobJLTWojYBqiK7N01oWP7xA=;
 b=S6nOmAByhN5Fx8/2gEoJQM6NgyuHfxJGLecyJ2+og32HxKYtXm1UWw2xIaR3vf/4zE
 VvEfl8FRfUdW5yYNtCAFZYGZqqPKVa6zJMwKwXUTCUCtAFfB3pghTUw4tzhz0Yfbbgq0
 D1qx6iYe8N4JYpRQAPFhdSUNXKiAsZNypmMb1KoLA5PGF1+NQizNmPJRQ+BGOii0Wjrv
 VonlnVe+6JP9WLgGw5eycNYGL71xPSeGOPknln8ZI83X2IbYSNdvABIYcqgZKS15hY06
 UvCpqqFacGyKvg0xOFrk6d5MeBrbU7NkyI7Yespy6zG9QT/PtlKzuKfKtV/hVWihfA7n
 dJUQ==
X-Gm-Message-State: APjAAAWKnwHwfxHsyxRrOaPw4kB/DCTo0bm4LHNPfBSJQGFnE0IWMteh
 30HxNTEAt8nggts+4Iek6us=
X-Google-Smtp-Source: APXvYqw6zcbOYrRen1/+NlRr06lBi6pn7loELvbKEaRD5+06q7HkgvTKT8/fRNYwNoe5DkkXTAAIZg==
X-Received: by 2002:a1c:770d:: with SMTP id t13mr32874121wmi.79.1564506620301; 
 Tue, 30 Jul 2019 10:10:20 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:19 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 11/13] ARM: tegra: Create simple platform device for
 cpuidle driver
Date: Tue, 30 Jul 2019 20:09:53 +0300
Message-Id: <20190730170955.11987-12-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101022_513240_EA5D2FA1 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
