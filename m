Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B94D7AF51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGRd1sWLs7ZKMRF8UGheusLH9TNQ0LBEODaXHb5vevQ=; b=f1pUs8Fab17J8a
	BOVnIG+LR0oKYXbtvEZk/PyXCIbxs72lIoqVGRKfKU7CH0vui2Y/DanvSwqlsVdHcTAn3xK9UmJJT
	x/mv/XKTFJBm/fXoeWbjbz8m0UAhe5ZNXMY5DodGqEcYV636EHqSD0RmSDQb35lGDSSh6TwUBc3Dc
	FGTu9fhjzGU9EMgqwXD81IrtwOzQ/KC7hwEGOUz6mAlwKFzDEgRfx6BG/By0TmNdexH8xa8XPnylQ
	rSCXcXZKbRyNH4GgDPtppUD1Ikgdb+Z33ZlnAlOf3lJ5UxpnjQEdb+J9tbMtc7+xUWk06DMRpVFiK
	q7Syb49GKsC99jTOBbrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVey-0004zH-2r; Tue, 30 Jul 2019 17:11:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdb-0003qW-0s
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id h19so45748960wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wAZS/gHavS5YSEczNZRmVNHcV03HXfR9BNASQHjKGJI=;
 b=mPkGQygw4DLGPaWr3Xz6lNid26MhTAQMHZSDAUjMdOiRdQRy8tzlX9LXZ7GVTRy/xp
 uvkQCTAHNzKHQ693JiJECQwTjVZwF7iFp2vJnConQOY22HRswmkJzzO/DOsJ9ZqZ/A7u
 mOgKrAdV8nEjSAaERryHV1p0s5gPMdrY7dB6UaDlSjfA+VXKJcesKj8F7uH0ZUWnt5AB
 Kmqw/WnrK3bUsvebYuKZvRtvOs/dIwU0fnn9NABXblAFXHwgLRMLpml+NUxqhg3eqWsn
 0YeIgYWaD7zqeI57244itDOuh9ssy2pcJNe8naIGpA0A8TcVbP4FBMpRJyZMxKCGfMpj
 LhGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wAZS/gHavS5YSEczNZRmVNHcV03HXfR9BNASQHjKGJI=;
 b=PLJic/VXwPGq7bb9IdujycKPsPBD7CIGYHooZYaGavtpvUW+pePgzNu5d7J7EAZYxx
 f6kvP4Bi3jdQHswuX2lPC/IZJE+qWqo0hbj91m/56/KeYkL2wPeLAHEg/tsNQR+73NSX
 XV3syqNMTsiGLsPcwI8qQrsn5RrIcQfNbAfTnMy/TuAAJtfo33cm4n/RWPHInVSm6G9+
 ljdR/bmvFvMW5hXza/bNJfzXZBj0Z4lGj0YI4QE0GTTrmuwx+MQwY3HVkBMfofH25ReS
 L2w/J1pdPgDkxmYnQ2R2BqJdbGiMHeiB9BwlUab83ixcEKlLILFjWFjJ35uRrLmXAchH
 WOow==
X-Gm-Message-State: APjAAAXJsKlJEgGPeERJ7TYYQxxWisGRsz0Qat9SCeHQKWCNezQ2KScJ
 f5LljrdmIPEBzpeMNscspy0=
X-Google-Smtp-Source: APXvYqxqywZ/f3YPM1E07qXbT0nfalXAksZ5rQLa+eyisBEzK65LQzg/zGpVdV9V4834zuJHCBk7ug==
X-Received: by 2002:a7b:c081:: with SMTP id r1mr56445150wmh.76.1564506608653; 
 Tue, 30 Jul 2019 10:10:08 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:07 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 02/13] ARM: tegra: Change tegra_set_cpu_in_lp2() type to
 void
Date: Tue, 30 Jul 2019 20:09:44 +0300
Message-Id: <20190730170955.11987-3-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101011_105267_B52529B8 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
