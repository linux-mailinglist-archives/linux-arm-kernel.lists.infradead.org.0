Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A1C699F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnMkuW9WT6fKKGlj3kYwGCLqNUS/Zh9mb3GIXV6D4EI=; b=Yivz1FqqodxYyJ
	rAuuxtKX7HV0oCSiuYOCfMTd9TZ/IkSCEwqNIaEGMWMW58X33VUpGKgZVhFNZI/mKY0wcY5jKtc8f
	hM98i4vVcoT/F5Rzt0Se2sxiG0qqTVswBYz5L24V6UX3kJ4XZ8wx8ztR0zn7VsQoZoiMLeNizziDz
	AOVl6DBBJTKUg3vwJysL2nT8z8ipwoSb48cCrjbkjmRivvfwiE7x7Vxa31KyhN8+8dEYbf3uUh5tT
	Ondsbo/3FFxCPau02WuQ4AFvxfMx1ZWH+ImVM8xXZgnYCybh51r7wvofr7cnL/bB/yb3t7TPYWKGU
	kfW4Dp6+1Ny1iaG1+3Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4qa-0003Og-T3; Mon, 15 Jul 2019 17:33:08 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nU-0008Iq-0x
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:57 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so17086901ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gcSOrGe+NvjMoF+zn2PIaLNd8UvLOujvhVj6vQXyo6w=;
 b=HhW3v/cibY/jUqSagSPCr1VHPYsVuGgoaPGChGpTHi/snObYasL3gJLsJRWypVcYf5
 /QVNFWMtJDlXMm/G92Mqbs+p6XvHEKSQAX6XGrWcgAUPQMaAQGGOrBOLVGaQzDlFaGjj
 Tc7/d4AyKryOJlQAzWoQ3sOhSUOg3HQBV1qF/eLskSCge9An3+JJO/J0lyx1InW59298
 ClNpJTh+HlDaJF5GYDlltoQgqyl+V01oitYm8t+2Ah7mMNz13ooCr6I4Kmf1/i7FNuBw
 jN4Vi2LkePvPbzzBHqMkte6oT/nNflE25/k0JYxqoDZM8RlztDS9p1gnS25jtgzIYOze
 tzMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gcSOrGe+NvjMoF+zn2PIaLNd8UvLOujvhVj6vQXyo6w=;
 b=PS47nr/JdsoqmXQBYwaSLSA8KK+yg/J3vwrOGXi4ruaaR6zd5Z+qA8BTk9f+gsdQ9z
 fTep2IkQRKYnBQOSze9D1UEz4EgHyhs2d91io1kPZzDVW4Gi9L6ZEt6x+SSWBmFeq0Aw
 puNkpi2eAq8xYqiknhMsI7Lnfk2xpjdBWpXpu9A1HbmNxJxPl/esecCt4pcaJY+taa9d
 RT9bldIaQeOjI1Ut9+LsFFkJqtmBJ6FjqOtFl9nZlxmFJHQMXGyV5A9gKd9Nxr1OsRSM
 LT0qlqMNVs1FHN9SCRZKXfdzIQchwfQCTanPwZnAybuPJqM0JHl+Nc4ofB0qs3jRHBdM
 lt9A==
X-Gm-Message-State: APjAAAWkswCEew9FWst/CKYaBW6q/FwpF5qHIs4Id9a9fKjRyNZwbsXj
 GLkD2W3D3URgXb9UczeOkyjcQSH4
X-Google-Smtp-Source: APXvYqyc+nXxLCxnPxpYEysbEKKxLVQGneSSFyXG+OHogwxMgfq2PeUYIDNHm30PQPkkJYMi6Z+Y7Q==
X-Received: by 2002:a2e:6e0c:: with SMTP id j12mr14618377ljc.123.1563211794677; 
 Mon, 15 Jul 2019 10:29:54 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:54 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 10/13] cpuidle: tegra: Support CPU cluster power-down state
 on Tegra30
Date: Mon, 15 Jul 2019 20:26:26 +0300
Message-Id: <20190715172629.4437-11-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102956_135918_E23CA38E 
X-CRM114-Status: GOOD (  14.84  )
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
index 7d9ef26e52a7..1845b87a7cf3 100644
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
index 2ab293343069..ea084a0aa448 100644
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
