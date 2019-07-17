Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6531B6B668
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWLXeDVUbQxYXvOxs5Zg6ZKvG5ncldTBKAyT8pvxjlg=; b=MHKcx+8ICYceN2
	cBMKqA7JU7ntbir/LGLBa6UpZH/CnvtJUevl5y3JVDgHSrEDTVBtuUSjaGggz0f9cV0T9fxPPijne
	rIRQcw07QLqA0YFhJPpuZsKnsVTWyzZkF/hIw2Gax5sWJrcTHz8Ht3psnOLUc0pFyWakwibtd+EEV
	as85Zhl3OJxnalCM4PJaBNSnlDbJ+7tXqKS5v2B0kT9PAPRSSCs+8y+7UHNpwBZjlb+y4ZnFzQ5wq
	ldJDbQrklzaTIUlpVChVBHQQcPWd3CaP2McVY0SV3JP5vL+DuM8uzvw5pybyX+xJNRseFodNHpDMn
	H7DJ4p1g/jU/kb1y8zxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndBw-0008EE-QT; Wed, 17 Jul 2019 06:13:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hndBc-0008Ae-2M
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:13:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so10295086pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 23:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=98wHL3V8M3pNyD7AjD/VjmdvFc90F9O3DnpKK14WS+8=;
 b=DXblnYwgj3/tbURi1UsD4ktaRj5BJuWdPdDx2aRF+ahc2OC9u5xmYevXLh6oHpMwWy
 7hqdBA7l4KtXHRkTTp62+KZNyXi257cnXVrXLf6vLBCEEbHH6dTtIlPfeHxlkr+ZxR30
 aB/ZUGP/pdGBn7Dlttvi1kBzIrUqOn0biGEPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=98wHL3V8M3pNyD7AjD/VjmdvFc90F9O3DnpKK14WS+8=;
 b=P909Uj49T/NjjE0XiWSVy9WIQUbBIUIb+VO9Qa06ywistl85FXFr8pHtztdDkWt4Wv
 VzMw5Er3UMPC5esRddmAjP6VW12oYnwPmIwYoYprepFPQcvAxr5Llf3b5xCflepDXfDJ
 bv0z7y/N5xvbSWXunTNNBBDMV4JQCNq3+kXRqWgj3ReQ1JX/D1aMExiSnBJDAR0kF/T0
 FnM0WgqsLHUymC2o1+ZHdVGKifvYpFwe0UUSr9iG8OcTp1Sn8WRPd/a4QtE68+F+K5CX
 J7kNjnA8fokiD/TEINTiP96PPI/V4VP8QHCa3SDfdUgPQQfujC6DBomgd6T0XsdtbG99
 FuFw==
X-Gm-Message-State: APjAAAUKxaQtg7aU5sAFozY3hoBXF/PnUyX4HEkZHNTDP5esFPVNWlG1
 y42UcsViCivYWX35JxIOQI+lAZGBgQ8hwQ==
X-Google-Smtp-Source: APXvYqw0QPqTLvm4/cwncq8kMZs1M60f3vtMOpvmiHWE5FPXcczz63uk9yFFWGip4Q4mA9MXPHtqIg==
X-Received: by 2002:a17:90a:a410:: with SMTP id
 y16mr42325982pjp.62.1563343987347; 
 Tue, 16 Jul 2019 23:13:07 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id y23sm24079706pfo.106.2019.07.16.23.13.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 23:13:06 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RFC v2 2/2] cpufreq: mediatek: Support vproc shared by
 multiple component
Date: Wed, 17 Jul 2019 14:11:27 +0800
Message-Id: <20190717061124.453-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190717061124.453-1-hsinyi@chromium.org>
References: <20190717061124.453-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_231308_135399_D5EFE5EB 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "MyungJoo Ham \)" <myungjoo.ham@samsung.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

mt8183-cci shares vproc with small cluster. If the regulator is shared
between several devices then the lowest request voltage that meets the
system constraints will be used.

However, previous mediatek cpufreq implementation would cause race condition
if vproc is shared by multiple devices, which would crash device due to
incorrect voltage supply.

A race condition example:
cci sets vproc 90 --> vproc=90
cpu0 sets vproc 50 --> vproc=max(50,90)=90
cpu0 sets vproc 70 --> cpu0 reads vproc 90, target is lower, so decide to scale
                       up frequency first, but before it set voltage...
cci sets vproc 60 --> vproc=max(60,50)=60. cpu0 already set freq to 70, but
                      before it set voltage, vproc becomes 60, which is not
                      sufficient for cpu0.

Let cpu and cci manages their own previous target voltage can avoid such race.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/cpufreq/mediatek-cpufreq.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
index 7282834e8fe2..f5e737b862f0 100644
--- a/drivers/cpufreq/mediatek-cpufreq.c
+++ b/drivers/cpufreq/mediatek-cpufreq.c
@@ -46,6 +46,7 @@ struct mtk_cpu_dvfs_info {
 	struct notifier_block opp_nb;
 	int opp_cpu;
 	unsigned long opp_freq;
+	int old_vproc;
 };
 
 static LIST_HEAD(dvfs_info_list);
@@ -196,11 +197,16 @@ static int mtk_cpufreq_voltage_tracking(struct mtk_cpu_dvfs_info *info,
 
 static int mtk_cpufreq_set_voltage(struct mtk_cpu_dvfs_info *info, int vproc)
 {
+	int ret;
+
 	if (info->need_voltage_tracking)
-		return mtk_cpufreq_voltage_tracking(info, vproc);
+		ret = mtk_cpufreq_voltage_tracking(info, vproc);
 	else
-		return regulator_set_voltage(info->proc_reg, vproc,
-					     vproc + VOLT_TOL);
+		ret = regulator_set_voltage(info->proc_reg, vproc,
+					     MAX_VOLT_LIMIT);
+	if (!ret)
+		info->old_vproc = vproc;
+	return ret;
 }
 
 static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
@@ -218,7 +224,9 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
 	inter_vproc = info->intermediate_voltage;
 
 	old_freq_hz = clk_get_rate(cpu_clk);
-	old_vproc = regulator_get_voltage(info->proc_reg);
+	old_vproc = info->old_vproc;
+	if (old_vproc == 0)
+		old_vproc = regulator_get_voltage(info->proc_reg);
 	if (old_vproc < 0) {
 		pr_err("%s: invalid Vproc value: %d\n", __func__, old_vproc);
 		return old_vproc;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
