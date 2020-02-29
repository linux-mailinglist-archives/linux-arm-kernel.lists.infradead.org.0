Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DACB217497A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 22:05:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fl4k0fhELImKobqSGtbu8yseQkbs/oINxJI3gariBec=; b=DVVmSReaebu5p9
	WykDXgFASHSwLJbmX9OHQkPXscTWQX4Ofm86r/s9b7SrBX3VT1aEiunNW4Hz0eDbt+5empUis6Zbd
	izajYDzSkVo+3katckYqqy41wlugro+zNksjrUGauHlleTZhJM9RSyZNDfA/42MqzT4SDDDX48bby
	yzy7p25Qbgg2jgCvIUzqLU9Rx8yOAqSRAjPer/cnYMr59B7AYLG/zM/Of0iSdRYRGRV9qu9hcqMxJ
	xM44ealHWbqQqZZC61LAlkHyYk9FQfsxwITu0hn6HNpzrxvUNZW9Ws+J7SDuKmjNzVlTLBPAaIdJ9
	6VLc0Cigi8TWL1I4YBbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j89I4-0006Ol-HZ; Sat, 29 Feb 2020 21:04:52 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j89Ht-0006OS-Qd
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 21:04:43 +0000
Received: by mail-lj1-x241.google.com with SMTP id a12so6237533ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 13:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AOjpjH41S/kgHBSjMwcx6ZjjsBe6UiMlZ8Mjmbs+mhI=;
 b=tXFJd/bHjx/mHcSMYnTUC4BjPYltPh0UFa1P4PnElJ2VDWCNXV7U8H4s1Z5RJ/vM3d
 z9SuZ/Omf5IGks4J7sEeDp4BkYbtviHy0bg1n+R7LCNMFTQxH6292NT/NnAMMWRlx1qJ
 QWB0v9ML76AdWRt2mXCD3RCuUuM6Y7gbaG4WnfHazPjkSPANAA/nUxoOlY7+60imLd4H
 SUSIY8GNzYDwRN4MVAlrNewlseYUiGAjMwMRoN9KHlAUWp1QHFVzoXjeSh9SvaJjq1vf
 x2ak3LZKh8IZi34Pk0R5/OwVaF/31kDfNJ0rRrtetAfsbN5JHMHJ9snaUxoqV3OsCfhw
 3omg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AOjpjH41S/kgHBSjMwcx6ZjjsBe6UiMlZ8Mjmbs+mhI=;
 b=ggOLvBPRrAEfvOHgRyAqV8T1wMnLyUWk82z1H6C04StFHVeZ6/qLEKShM51GlDmxcz
 Z3zdji+4FWE0kXLk0PilhvQhOnWS1QeQpM4A+AXGbS4yAHKApLnBdjCdedZuLTto3bON
 jBeN4n7TvK9g2cOLjo7CAtzcL4zJtaZ3pmNr3d3ZgIQf+YjVBzl11HNDdCF3YvKTL7xR
 +wWL5cq3kkM0/hN+KKXSpMwteBzSJGZn0Ko8xRWDmYFv28Rl8ZTmT5zpi7ZBk6o4DmZO
 pdyaMpb+lNSBcb+gTYQ6RMe9E8Byeh22zqm3A1sQ4GtmbXYJcXS+dU8Ghjv8cALsXKbQ
 z4uw==
X-Gm-Message-State: ANhLgQ3Ue3wgMvhgBYDFsRFes6fJYSdyU2MhMqP2sPSUNP9pemWvF0VH
 sIDRVF5C0XjYPQPgzxmYixP4cA==
X-Google-Smtp-Source: ADFU+vuIGBGxF3I22A3eKaB5Zo/ywHzcDjmeABkLEZqWm5ktWmgfgHUVUQpNJ7uKHeUqJB4/zngDGw==
X-Received: by 2002:a2e:9d8a:: with SMTP id c10mr6668873ljj.238.1583010277616; 
 Sat, 29 Feb 2020 13:04:37 -0800 (PST)
Received: from localhost.localdomain
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id o4sm2018005lfl.62.2020.02.29.13.04.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Feb 2020 13:04:36 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: config: multi_v7 Use schedutil cpufreq
Date: Sat, 29 Feb 2020 22:02:25 +0100
Message-Id: <20200229210225.173084-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_130441_925988_8B97CD1C 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The multi v7 config is using the ondemand governor by default,
but the schedutil is mature and enabled by default in other
defconfigs, let's encourage schedutil as governor but keep
ondemand as compiled-in instead of the other way around.

Cc: Rafael J. Wysocki <rjw@rjwysocki.net>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: if you agree please apply this directly. I think
putting this in the multi v7 as default is a good way to
actively encourage this governor, unless Viresh or Rafael
objects.
---
 arch/arm/configs/multi_v7_defconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 017d65f86eba..beec2c8d76aa 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -100,11 +100,11 @@ CONFIG_KEXEC=y
 CONFIG_EFI=y
 CONFIG_CPU_FREQ=y
 CONFIG_CPU_FREQ_STAT=y
-CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
+CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL=y
 CONFIG_CPU_FREQ_GOV_POWERSAVE=m
 CONFIG_CPU_FREQ_GOV_USERSPACE=m
 CONFIG_CPU_FREQ_GOV_CONSERVATIVE=m
-CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y
+CONFIG_CPU_FREQ_GOV_ONDEMAND=y
 CONFIG_CPUFREQ_DT=y
 CONFIG_ARM_IMX6Q_CPUFREQ=y
 CONFIG_ARM_RASPBERRYPI_CPUFREQ=y
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
