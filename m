Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77077AF64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADosC1L5i/0tTnnnoCfHaSARq3yAFlBX64CrFBGQUX8=; b=RDn14wR7g4Huaj
	HzBxbQGA9JyqRzmw/eHIt6qh2Br+2k9NndQ9rYUL/sNnF6uhRmsV9NMmStXUjKBJgUWBc+tCNypiT
	81KY3z+By+V7VB+JaQCpSFoJPvsxM8+F5hotEn9ARyKEnmse5ww3cHevGmhHLynJNBJH6yaGvG3Kc
	cnmFTTwJkunOkS4Ran68eGQGgO64pS8HGMpQldACXsGgpEJz0+J/dYQsOK0llFbQZEP/w+mQEx/rK
	+anvsTqaUaJwEoe7lkVIvfyNi86mmBPwka9/mzqtGrR6xaTbHKQXXmRRjUg7vk7tJANcl1/IitCz6
	PnNbbmov2OHBm/yDhKGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVhJ-0007Lp-Ik; Tue, 30 Jul 2019 17:14:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdo-00046z-3P
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id f17so57326612wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9sbsaF7E0TrDeiv6pReKgq+pMBX4p8SmM9uYJr655g4=;
 b=krpSGAIlChVcjlUuj3EF9XDg3prNLpG+C+OGiZNzymZi9ZqV82bfPGcwmqvFnc3+ju
 zCWn11U8+25sjpM2WtTOwm/zZ167E/bKomEKYArY3EzEJW+HvesYCzR6jjMP9ypBk2Pm
 JZwi7z4OpiwPnhhW75XMUG+WbfzIP6NvlDc7NQK3ne4ljopH+g+rJK60PgUYa1U/X22p
 F5+8tynsG5zC0QvrnDKUJqLB3+AJsgds3kWkoAH1f/qp3uRy98yWSObB/rMy4BbgPOIt
 rvb9Yq5fnwmTGk7N9fwGYSADg+mhY+mbXJ1JzTN31AEcqb07PgKFF9mJ/D9LlnlTjj6u
 ku1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9sbsaF7E0TrDeiv6pReKgq+pMBX4p8SmM9uYJr655g4=;
 b=SHx5bdvxb2xNrZOYVQ5aTrqkeyB5yBAsCouBHZbkf2IT2HgnEoHSCpDw1CzLioJGNw
 1EpdiXUCUd4v1lpArFmktVWQuMd5XqVyi0opc4MaPn4SRXgYxSy+XaHx8SX0wd8FYod5
 bulbCD18Qt8mJpIOhxouO8xu8MxebwpX5eCleXbT0Tyw398BNLah8EvMH/d8GpZe71wI
 0d93EWfVr/w1/PhtFR+QHONXhOL9F1cn26E4PmKfllsj/rbrcWEdbDKeaeZPKVaZz+/r
 feBA0gUrJH+q34QQIDnMvBzdItYrnHYW90C6WrimADicQdZ+cwmo1qVcLpNIN0O4+Gq0
 EZLQ==
X-Gm-Message-State: APjAAAWXrgBjHjRjLrbUF3XXK3r5nYXz/Ppx2nt/l96+4M9Nmaq6aDyb
 FaNtpqAnvJd0BKBm4YKnU2M=
X-Google-Smtp-Source: APXvYqwo0XTcvNSkF5Ae3SJz5WKhJIWn0FKkSYOSylnFOXzO08y++ztwmKLzBsZKxOM6/2hzjnGkcQ==
X-Received: by 2002:a1c:c706:: with SMTP id x6mr103932234wmf.162.1564506622730; 
 Tue, 30 Jul 2019 10:10:22 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:22 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 13/13] ARM: tegra: Enable Tegra cpuidle driver in
 tegra_defconfig
Date: Tue, 30 Jul 2019 20:09:55 +0300
Message-Id: <20190730170955.11987-14-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101024_297530_43C21F2A 
X-CRM114-Status: GOOD (  10.25  )
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

The Tegra CPU Idle driver was moved out into driver/cpuidle/ directory and
it is now a proper platform driver.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/configs/tegra_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/tegra_defconfig b/arch/arm/configs/tegra_defconfig
index 8f5c6a5b444c..9a2f11a780a8 100644
--- a/arch/arm/configs/tegra_defconfig
+++ b/arch/arm/configs/tegra_defconfig
@@ -25,6 +25,7 @@ CONFIG_CPU_FREQ=y
 CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
 CONFIG_CPUFREQ_DT=y
 CONFIG_CPU_IDLE=y
+CONFIG_ARM_TEGRA_CPUIDLE=y
 CONFIG_VFP=y
 CONFIG_NEON=y
 CONFIG_TRUSTED_FOUNDATIONS=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
