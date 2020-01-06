Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D127130FB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A97pb+ZCKoAVnBiKw6EZQRiYccnAUCkX852A94eQxhc=; b=bNS
	cnSN1mC1aQsgrvSNNMqUgnbe+GLJ2qxULenF0CWqkXiGnaDJ0ittcuSHxu+prGFeKoZqgRKglQFdu
	i4NUy1wR9tywuim4Y2wKVlhewg1b9qEKW1TWUMA07zyfw9tIVqsAW+cqNFMLEpMjPYUM1Weara6IS
	7bucmkoHGCMIB/2B3llHRtR6Pcmk/dpt5T0RHwSoI5lucPqrbkxwcSQUg1I+QPZIDYWoApdrbMh1y
	VABdVaZFF3WaYBdbxN0OBz/3QtZXtkbJbmYumzcHK6PaAW6pPCgFVZbZCZVC3HiyFxluw90Li0kX0
	NTQ2311el5B927fXW6XbqAHzRoeobpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOw5-0007Pw-5n; Mon, 06 Jan 2020 09:44:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOvy-0007Oz-E9
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:44:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id x8so26638420pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 01:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KtGrKb7t1nXkvA9RAp03OXaiGM0Udf6t6g9rmOrwqQA=;
 b=h3uH4bw2GU+o7uTeRb6skr6Lw6iWOzi9RYNZW+55FiG0+SlNjQei6NHPEjTEDs+5nI
 HxYgS7bX6DgDzLlZRkirtbIM6O4tvP+ZtsdYxpaHg34HubMIlgcROK9AjKM+YESs6juR
 4FA4EJiZq2VK5wshg1aBt5whcBt33ETeDV9DxiBzYCd9vyiMm7dWgfpK++DrsLul5NCz
 +gSjZOjPIr0sgF+BpSEIE/Hei4C82qIjjGUfC+ATL4FqVOV5fbfk8NXlcqehG2W85uUe
 uqBbmBXCt9uqRNSWkCTDWHtpZ2NovetviHdgDzrlhKnoc6MJl4mCF0vnyXMdyV9yS5U/
 Ya8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KtGrKb7t1nXkvA9RAp03OXaiGM0Udf6t6g9rmOrwqQA=;
 b=HBxpZymvKdH/f7x3BrcrXBg+EE9EiKypQL8fwaDYie2hhzLRGI99LSJZF/lpXTKLxa
 /BGACbwTujKipS3wPqb+fr7141mIKjkHIHygJMsjWbFPdS4M8nveVWXJlK1feUErGOnx
 uMw0Z5WG+DBi2vmdIzkCaO6bH1chxBstk4kOCDtX/oU+Pg7IGwo70BOzZ9soFckT8PCm
 sHbjp1w15xx9hlwtEnw6zYGEhxWL78SLNb7BQVVainRZ4axi1gY3gdUvcUc9MdgxpnBQ
 TiJ/AOSyJwCXjszoIX1JZKnczyiFs049/4z0b+NSuoA94D1iGOmFaI5B7Z+rOwsJ1Yrh
 eQAw==
X-Gm-Message-State: APjAAAVXQpuwkKYeXxJccyPAvYDkZazJ3P73gnI+srVAYX8TqWoDSwk9
 sabeT4qQy1g1OuWDgmNRBpprgE7xbOc=
X-Google-Smtp-Source: APXvYqwXV771FUqOJJoDqNegv2vvgsnsYNEq3vey/xKO088jvc38DW99nYZ6CpWk+IyeSVRKLC6AAQ==
X-Received: by 2002:a63:6c82:: with SMTP id
 h124mr109322399pgc.328.1578303865779; 
 Mon, 06 Jan 2020 01:44:25 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id u26sm74215521pfn.46.2020.01.06.01.44.24
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Mon, 06 Jan 2020 01:44:25 -0800 (PST)
From: qiwuchen55@gmail.com
To: kgene@kernel.org, krzk@kernel.org, rjw@rjwysocki.net,
 viresh.kumar@linaro.org
Subject: [PATCH v2] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Date: Mon,  6 Jan 2020 17:44:21 +0800
Message-Id: <1578303861-7217-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_014426_494830_226F9A72 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, chenqiwu <chenqiwu@xiaomi.com>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: chenqiwu <chenqiwu@xiaomi.com>

There is a potential UAF issue in xxx_cpufreq_reboot_notifier_evt() that
the cpufreq policy of cpu0 has been released before using it. So we should
make a judgement to avoid it.

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
changes in v2:
 - use the combination of cpufreq_cpu_get() and cpufreq_cpu_put()
   instead of cpufreq_get_policy() in s3c2416-cpufreq.c
---
 drivers/cpufreq/s3c2416-cpufreq.c | 12 +++++++++++-
 drivers/cpufreq/s5pv210-cpufreq.c | 11 ++++++++++-
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
index 1069103..f07c5d1 100644
--- a/drivers/cpufreq/s3c2416-cpufreq.c
+++ b/drivers/cpufreq/s3c2416-cpufreq.c
@@ -304,6 +304,7 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
 {
 	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
 	int ret;
+	struct cpufreq_policy *policy;
 
 	mutex_lock(&cpufreq_lock);
 
@@ -318,7 +319,16 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
 	 */
 	if (s3c_freq->is_dvs) {
 		pr_debug("cpufreq: leave dvs on reboot\n");
-		ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
+
+		policy = cpufreq_cpu_get(0);
+		if (!policy) {
+			pr_debug("cpufreq: get no policy for cpu0\n");
+			return NOTIFY_BAD;
+		}
+
+		ret = cpufreq_driver_target(&policy, FREQ_SLEEP, 0);
+		cpufreq_cpu_put(policy);
+
 		if (ret < 0)
 			return NOTIFY_BAD;
 	}
diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
index 5d10030..e84281e 100644
--- a/drivers/cpufreq/s5pv210-cpufreq.c
+++ b/drivers/cpufreq/s5pv210-cpufreq.c
@@ -555,8 +555,17 @@ static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
 						 unsigned long event, void *ptr)
 {
 	int ret;
+	struct cpufreq_policy *policy;
+
+	policy = cpufreq_cpu_get(0);
+	if (!policy) {
+		pr_debug("cpufreq: get no policy for cpu0\n");
+		return NOTIFY_BAD;
+	}
+
+	ret = cpufreq_driver_target(policy, SLEEP_FREQ, 0);
+	cpufreq_cpu_put(policy);
 
-	ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
 	if (ret < 0)
 		return NOTIFY_BAD;
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
