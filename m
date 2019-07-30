Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF6D7AF5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfEIcb40voP4NnRjQoQpi9UG6ZtylcJV4cgI6gOEMNM=; b=uhu/isE4tF8le7
	3pvDbZz5K8pcuUPiVx6sBBXtF/jeaGxzfwBi6c/r4giqGsOBGcUEr8GlA20DOaKcSH2n/kLY/juJl
	0MJeP+s/8uX7P+yxBY8DKYg9+YOq5n4Nr3SXU32NKLZWeyOzEqfPEeAPCsU6/qhBwI3bKe22qzVYC
	+naPi1lvKh/2FmMgTKJnMvjIfs/7Rc/Mxd0Ov7kUoIaF9bKnjWmI/YfmwOti6mtPHjxjKaSO5eDwT
	fnFa/cCRbVYm4TzR4GY+P90e1tYFIzK9lMLBsaPE8SzA2dMU4sORxh+4T2oGjTaYRj1NIa6FvZTRc
	T/+yrhYHsh5Bicv14H/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVg0-00064A-7K; Tue, 30 Jul 2019 17:12:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVdi-00040o-1p
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:10:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so66589342wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YB/K51J2yBjrGqQBOAGlFNTt2rdW770Na58VRvSkzkE=;
 b=uJe3a6TOWAkM0mBZl1xcGfff3uOQlBMGjTwvrJW7ConUXBv8e7wLGzXhofdwzjNFY9
 2HlDM46hjPxrc53kIIOgBuH+rCdbssmvt9zLn7g1gKix1tS1LJl4bPfPC+V6NiI+A2hZ
 6O0oJX5RJ2V9bMAvPDErMcmBHO5YaIJ1fiDxpwtElaBtLEveFNJc5blNA0L3QEMolX7q
 hVmh39pREkZYztrVqnB8OgixwzPLzRpTBC2L0HqKwdTqBo3txkwaM5QlSNOHo/lmrqYr
 zmBwD6Oae7caejyIxycYDFQUIcUGJmHOAu4hOjyGkmPDheWKRtSf3ggM8r1ZzGWPdTdX
 uLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YB/K51J2yBjrGqQBOAGlFNTt2rdW770Na58VRvSkzkE=;
 b=LV4mDAdD+1pmMaJbijNelnLnHwMi5fFYrBj+WZZPvO5wx78MgGSPEJ0rLJeXQROWal
 8gRxk2ahEfoZvifE7q1zCN8K1AuvOWKgY9Z9bIMiJTmnQnuRsdmHhFjWnoMVxB5u+CGH
 qsgAJxyZRRj5i0IPWr6FvjGvYfbu0ntJY2N2NZNW5wIktVCNr+QUL8wDbf76/KUB8qIQ
 g1//YasWR4/3I7aLfzMHqca7N+w0G0MgTz3+JNhAj2rT2yp0n2ptofEHbn4GmX0EBaP1
 Z305D72kh5IAU5I5QO7dZLZ2Ez2skLBlWwSdn7jrt868VfV/ZZ+SCHpoZ8JoxVxA9ndx
 g6kQ==
X-Gm-Message-State: APjAAAWd3BD1l+dYqsh7kdRm0SftJrtZPAIwelY/y3OkMpgZVIxen3MJ
 4FQgensJ0qDD/q9DAydXweQ=
X-Google-Smtp-Source: APXvYqwWUAkefGUrF7CbjIjQzU6py/KkUB1MLPIDQTIp7IrpU1U4AQIrh4JiKWRfXqEHCPhNed0DSQ==
X-Received: by 2002:a5d:69c4:: with SMTP id s4mr98720282wrw.163.1564506616472; 
 Tue, 30 Jul 2019 10:10:16 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.gmail.com with ESMTPSA id i13sm58897736wrr.73.2019.07.30.10.10.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:10:16 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v4 08/13] clk: tegra: Add missing stubs for the case of
 !CONFIG_PM_SLEEP
Date: Tue, 30 Jul 2019 20:09:50 +0300
Message-Id: <20190730170955.11987-9-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730170955.11987-1-digetx@gmail.com>
References: <20190730170955.11987-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101018_204920_82E2500B 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

The new CPUIDLE driver uses the Tegra's CLK API and that driver won't
strictly depend on CONFIG_PM_SLEEP, hence add the required stubs in
order to allow compiling of the new driver with the CONFIG_PM_SLEEP=n.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 include/linux/clk/tegra.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/clk/tegra.h b/include/linux/clk/tegra.h
index b8aef62cc3f5..cf0f2cb5e109 100644
--- a/include/linux/clk/tegra.h
+++ b/include/linux/clk/tegra.h
@@ -108,6 +108,19 @@ static inline void tegra_cpu_clock_resume(void)
 
 	tegra_cpu_car_ops->resume();
 }
+#else
+static inline bool tegra_cpu_rail_off_ready(void)
+{
+	return false;
+}
+
+static inline void tegra_cpu_clock_suspend(void)
+{
+}
+
+static inline void tegra_cpu_clock_resume(void)
+{
+}
 #endif
 
 extern void tegra210_xusb_pll_hw_control_enable(void);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
