Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80033E0EF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 02:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gti6fFA3FI/aN+xCe7pkNR2XdV3kz6yXIKRNjfTrVec=; b=KaKZQRZFh1jrW+
	pOWVjktHlNz0bqFLQlsFP5qQTmkeb/HhSfW+SF3YhKt+hQb/tTe9ji+mm7WTGKaDs/IMhHhNG+XuX
	d+FHvwPJLjF5uDOXfYUewg88nBNq7m+o51+LjlMI4I16oy8gTJzMnYn8e6PCg5P48kICAW5wXy5hV
	S0c4y6S4y9WQYP6B6PC+e/mu/kzAv9jRpq/s10P5tb2+L4ChrFqxb/v+Ly9xKbdvtbl4l4PbvDuev
	XBnWzBn5RbGccbNME6QD65e4FUBoRMR5WII9KXvNMvVggmE2eDZmRgMNUREbfg4EUOWQFvbx4+Pdy
	9h4RzONgP/M93RLuiyfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN4ED-0000EL-2k; Wed, 23 Oct 2019 00:10:17 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN4Dz-0007zW-Fq
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 00:10:05 +0000
Received: by mail-oi1-x242.google.com with SMTP id i185so15798809oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 17:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a9ez2CAEDRsC1P3a7h5jUoJezRgAM3yxFgvxTfyLf90=;
 b=T3tUit6hFzPMxQcFoOw91I2XHrgvbQxAGlDhYZb88r//APvhau+Ehsfgl3PwA4YF5I
 XKhDUIfof4etfnzaAu13fri4XmDIX6qXZjBcNGCrmS64gqkRYZ4r6rwBhCrFdhhesPXs
 EcFaIbWfY1WQ8HqOLyflznj4gEPaiZmWfhTK2ApJcZbb61DPAUJ8Yz8FkBpeD+/mIrw0
 fml0gc9uvgJlLCLAbTby1FhiT3o9tf6h2lIz7fYUqv7jfVsQsj1Nfczb9iuj7qx3J/Rc
 YMe58qxU/FYQ6+lsx0lj/SAZUTRoTbVV0loIbJIr2cH7uCsuvAB+I93f+OAHbTqWv3IP
 kRVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a9ez2CAEDRsC1P3a7h5jUoJezRgAM3yxFgvxTfyLf90=;
 b=nt9pl5y5jMCQjPdnBMKIRLoUMMpfgh0fuBGURKbQViHa3nJKy9kQptnvSklVnqvfhX
 COd2AVzV7OUcll0qgx4ksgf6wZZTQ0bT2JvnPqSYiEXlY068p9SHMvzPrWT6aBHHWXi2
 m6J8BrM3HvWgBdq2zRH7k/eQIWRDxiw5v3yPODFh8j7DbvaaMcxSfUU4eBnfG78DVEmn
 Bcot7mhCCU7HC5RCVchaRFDGHtqyPuPtSJOIWcGh6GxY3J2ZgQ1mL7J0c1KYKOtGFoNZ
 Z/fOb6cl7z7D8ffO7GHITXQsvM48FykrUe+d7DZxI0M4UhPdQ/uqq7n8IvWNpLRSce8u
 42rw==
X-Gm-Message-State: APjAAAUYWt8B6QKKuJlQEXGM6Y4XTJo/O/ZQ01yQnToC98ClaxKoFvt0
 B/jeAZWR8Zgig9AOcBxvdIg=
X-Google-Smtp-Source: APXvYqzAnJ15V0N/LujMFPCRBVS4/v+jPKDC+SHq1MB28Z0T1cc/2/2vwIysgNZqqLSZQ8K9ay+6mw==
X-Received: by 2002:aca:180e:: with SMTP id h14mr5339099oih.142.1571789399995; 
 Tue, 22 Oct 2019 17:09:59 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id t18sm5637527otd.60.2019.10.22.17.09.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 17:09:59 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Date: Tue, 22 Oct 2019 17:09:06 -0700
Message-Id: <20191023000906.14374-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_171003_540709_E008131F 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with Clang + -Wtautological-pointer-compare:

drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
's3c64xx_freq_table' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (s3c64xx_freq_table == NULL) {
            ^~~~~~~~~~~~~~~~~~    ~~~~
1 warning generated.

The definition of s3c64xx_freq_table is surrounded by an ifdef
directive for CONFIG_CPU_S3C6410, which is always true for this driver
because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
weren't, there would be a build error because s3c64xx_freq_table would
not be a defined symbol).

Resolve this warning by removing the unnecessary NULL check because it
is always false as Clang notes. While we are at it, remove the
unnecessary ifdef conditional because it is always true.

Fixes: b3748ddd8056 ("[ARM] S3C64XX: Initial support for DVFS")
Link: https://github.com/ClangBuiltLinux/linux/issues/748
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/cpufreq/s3c64xx-cpufreq.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/cpufreq/s3c64xx-cpufreq.c b/drivers/cpufreq/s3c64xx-cpufreq.c
index af0c00dabb22..c6bdfc308e99 100644
--- a/drivers/cpufreq/s3c64xx-cpufreq.c
+++ b/drivers/cpufreq/s3c64xx-cpufreq.c
@@ -19,7 +19,6 @@
 static struct regulator *vddarm;
 static unsigned long regulator_latency;
 
-#ifdef CONFIG_CPU_S3C6410
 struct s3c64xx_dvfs {
 	unsigned int vddarm_min;
 	unsigned int vddarm_max;
@@ -48,7 +47,6 @@ static struct cpufreq_frequency_table s3c64xx_freq_table[] = {
 	{ 0, 4, 800000 },
 	{ 0, 0, CPUFREQ_TABLE_END },
 };
-#endif
 
 static int s3c64xx_cpufreq_set_target(struct cpufreq_policy *policy,
 				      unsigned int index)
@@ -149,11 +147,6 @@ static int s3c64xx_cpufreq_driver_init(struct cpufreq_policy *policy)
 	if (policy->cpu != 0)
 		return -EINVAL;
 
-	if (s3c64xx_freq_table == NULL) {
-		pr_err("No frequency information for this CPU\n");
-		return -ENODEV;
-	}
-
 	policy->clk = clk_get(NULL, "armclk");
 	if (IS_ERR(policy->clk)) {
 		pr_err("Unable to obtain ARMCLK: %ld\n",
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
