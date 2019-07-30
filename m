Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CE87AF13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+jj/p6bnGVqiLr7/TLODcemrlRkMRY2DnMaZpxF42k=; b=dByhBFf1WwFo7H
	1UGUfsuilOo2Mf8LXdUCFNQ249EApoKKzofaRmOfDem/HQ7ggdBP1UwV8dUMEHBnwccNnvJC+J8PM
	GrFDmpSEI8tp5Q5xJ5a8LB6YvpfXBWYNz6qylYeqFHfrmRvuYZzFTeF8vq5pW10TqN1o+mGUMdqD+
	EiImUC8c3fcPyQxWaqkC/E6exAp4+zdEtdAdTtKUH9k79zTvmcx+B443+18b8/H9WPlTMJAg7nhkx
	YClnKCrK1ReXYw0sdjUJUt++2FZCIBdMWnpcJBHofRjGsBvg811oltk0Aqfb35td9ifdb764SVjZJ
	F0luKdvuXGNWGq5F52kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVeV-0004UV-G8; Tue, 30 Jul 2019 17:11:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdb-0003tl-97
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so57326070wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RatHWh+WSZJO51BDaAO/tJPgTyTi6HlHiiIlwIODHqM=;
 b=AUGPMfrpqrLf6isEeDUZRDdvbrSFitLmYvA1aUHmA2+cEgeNdiyBKXZCozthcYdBQA
 ZSSiHINPOdowc1qIMNAACfppNURt8zRnMpcAbypCWz5VN1tRgoLJNpsSDsNGoIFuHr+1
 O/jauIkMgJWseP/JNrREARwj6+mT1Y3Y1+1Is5VcU3gNHZIdJKjsBLd0ESnrLMGk9aYB
 Zrf4SgsFaYcYtOBzz6oFhaAdo9HVc0lXY2BTbSEmOwYGX4rWm/li5rYLCVCho0urjI7I
 nCPu8s2E8friZy5xk0SQ2Q+Q0XyNl9tJh57x+ui2gvv7dglddj8xknyykp0D41O5W15F
 venA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RatHWh+WSZJO51BDaAO/tJPgTyTi6HlHiiIlwIODHqM=;
 b=NhBPm/6DrmT1IE6s/47TY+pUfY8kW+s7Ou5clXLNqajBcoDurzMk41nzgyuTEO9LYK
 PofZWaEIJ69GSXkyW4Bt7kAQO37WV1QUP8crpmhSrR4zJJD3RwkTr0uciegz01lFmDac
 tfF4qM0IHgwsvbyrEe8VBP6jVB11uf6ZuJjT5FS0NoAHJHd31Qnf4LK+CFyJRzBPYF50
 mqKGSWnEern/mzMVipIKGJsm9g9xrwQTaa3YWXA+IFPeKUzX+O+zj+XwbILcdPrtrxHq
 IMhWb6YcZA/7zF10WG3sDBd4G+VVDG779h3/3x35LPyAoStwyOyeTMEivrjSjsNHQbQG
 PahA==
X-Gm-Message-State: APjAAAU7yo4n2V8DdLmvWRBrsHAjOtq82lQJN7CkJ7aEKbIAzQqTbwIn
 J70w8vGNKBP0PO+m3w7xHjk=
X-Google-Smtp-Source: APXvYqyf3AuU7dHOUhFwQ6/nJUqRu6dqjccLVp6uRnAKN5itoppColHM+3D79FhzEVVE/ssL0RBr/g==
X-Received: by 2002:a7b:ce83:: with SMTP id q3mr110401178wmj.116.1564506610113; 
 Tue, 30 Jul 2019 10:10:10 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:09 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 03/13] ARM: tegra: Propagate error from
 tegra_idle_lp2_last()
Date: Tue, 30 Jul 2019 20:09:45 +0300
Message-Id: <20190730170955.11987-4-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101011_364671_5786372B 
X-CRM114-Status: GOOD (  13.05  )
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

The cpu_suspend() may fail, it's never good to lose information about
failure because it may become very useful for the caller. The new CPUIDLE
driver will handle all of possible error cases, including the case of
tegra_idle_lp2_last() failure.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/pm.c | 8 ++++++--
 arch/arm/mach-tegra/pm.h | 2 +-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-tegra/pm.c b/arch/arm/mach-tegra/pm.c
index 2f6fb54be9f8..f9c9bce9e15d 100644
--- a/arch/arm/mach-tegra/pm.c
+++ b/arch/arm/mach-tegra/pm.c
@@ -189,14 +189,16 @@ static void tegra_pm_set(enum tegra_suspend_mode mode)
 	tegra_pmc_enter_suspend_mode(mode);
 }
 
-void tegra_idle_lp2_last(void)
+int tegra_idle_lp2_last(void)
 {
+	int err;
+
 	tegra_pm_set(TEGRA_SUSPEND_LP2);
 
 	cpu_cluster_pm_enter();
 	suspend_cpu_complex();
 
-	cpu_suspend(PHYS_OFFSET - PAGE_OFFSET, &tegra_sleep_cpu);
+	err = cpu_suspend(PHYS_OFFSET - PAGE_OFFSET, &tegra_sleep_cpu);
 
 	/*
 	 * Resume L2 cache if it wasn't re-enabled early during resume,
@@ -208,6 +210,8 @@ void tegra_idle_lp2_last(void)
 
 	restore_cpu_complex();
 	cpu_cluster_pm_exit();
+
+	return err;
 }
 
 enum tegra_suspend_mode tegra_pm_validate_suspend_mode(
diff --git a/arch/arm/mach-tegra/pm.h b/arch/arm/mach-tegra/pm.h
index 3f3164ad04b7..ae68fc7db576 100644
--- a/arch/arm/mach-tegra/pm.h
+++ b/arch/arm/mach-tegra/pm.h
@@ -25,7 +25,7 @@ void tegra30_sleep_core_init(void);
 
 void tegra_clear_cpu_in_lp2(void);
 void tegra_set_cpu_in_lp2(void);
-void tegra_idle_lp2_last(void);
+int tegra_idle_lp2_last(void);
 extern void (*tegra_tear_down_cpu)(void);
 
 #ifdef CONFIG_PM_SLEEP
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
