Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03A71320BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 08:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FVawGF1K0lBB66+/o+3SKSZvaqMTc4xYa2ctFyUzysQ=; b=I8i
	lItAd0Vo3UhZMiiKpO+T4AkTXypLyyjrEsq8DY3h+Rm7J4KInnUYuh9SlwQMRznujPe8sV4fRrH9V
	UmAs36cHbFTh6N6PbnT17R5yQ+/dOo0PDflie0sd+rD/SOVJnSg2f9E+jgD0QqmAH9qDUuW6G+rET
	MnPB726eQV8eUZCA12x1FXxNkxMY6j2AWMHfP8QGLZfM7M+OMXLuJcqygsOaBiwmpUk6oJPGu+Wjc
	21NO5n9x/ELf4xH6zmW3ko8qwAjQRBQ7kyHGsX2Ro8ghN5kssLHoKL77/JVCGEnR0KFI6dfA5Qucs
	8C0HyjYa2pqhEJfVYenIjNoqZa+buhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojgC-0004hd-Mc; Tue, 07 Jan 2020 07:53:32 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojg5-0004h8-KE
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 07:53:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id z16so28206914pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 23:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GMdG9C8gJ7OZ2qYcwQfhLhwA7M4DoIR48FAZQb2CpY4=;
 b=mfvZ+nl2VOwro4m+RGPrIAHd9QL3VAMj3xze93E0KgwrT0CEke/1XWO1ksUbFoD4WT
 mwb4yEhiHZW4gKn0HFkuzy5VMYspLmyyrQ9kIfG9FFl+AYlwio5Iy7jG1g29eMIDBjnh
 zJOQ1VXVnxKLhntqNVi2P1TC0V8yoOc+hv+dRj72dMHKjwVuJJQOlRDXlUEY51oahwiC
 ykJgdkzEWOq3oLpn6VEBq37SYqjVvFE0jyKtYW1BFdmA0X+u2a7Hj0R3Twh8lNKdyF1c
 jncMj52STZjNx3adg2l2H32sU49Mq8sJtysKoQVRczxWbOu+EBOFjsgy9UjmBD02Z6T5
 E9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GMdG9C8gJ7OZ2qYcwQfhLhwA7M4DoIR48FAZQb2CpY4=;
 b=K353GV3eTKmiqUxLtEeEFvMMDjsGI5W1uf6NiiWnoNo1ufpI8J7cg8ami1yA8JKBr3
 hZ1ja8fY9hthYXkZj/jpgmSzcvpqzs3bQQ/rsKb3DgutnJdVhmES+aKROf0WZntuiUnG
 ZKZ8qOF+5xLN4679SwSMSxy6W1w0zs9HAdbB4lChw86jB3iUFLPdAyHQ7PyGopIbQaY1
 GzCco2XT5XVkwPZ0FiJWBFFCSshjw+ygIlgXpCstdBVpcinOd6z/5JsE5+BCc5AFyEH1
 7yIAPtxehrGbJkHiKlGrCCRsHXsD0WzSldlIITx2eayuVM1N04Wb1YGJU3JSejHhQDLx
 qwbw==
X-Gm-Message-State: APjAAAUEIGXlK9ywdhgoT6P6Jltbp6C8Jhr39xq0Lj4ZFbig6L4Z9elT
 r1VG78h/fzQwwc6Dzx0ynkk=
X-Google-Smtp-Source: APXvYqxUraKm+6Ut4JR7yPdItBEf0sH/C13LFJ1ca0YNFjLZ6M9LUSaQ2Eoxggm0c3PCL30r99EpfQ==
X-Received: by 2002:a63:190c:: with SMTP id z12mr106706246pgl.1.1578383604790; 
 Mon, 06 Jan 2020 23:53:24 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id g67sm79798005pfb.66.2020.01.06.23.53.23
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Mon, 06 Jan 2020 23:53:24 -0800 (PST)
From: qiwuchen55@gmail.com
To: kgene@kernel.org, krzk@kernel.org, rjw@rjwysocki.net,
 viresh.kumar@linaro.org
Subject: [PATCH v3] cpufreq: s3c: fix unbalances of cpufreq policy refcount
Date: Tue,  7 Jan 2020 15:53:19 +0800
Message-Id: <1578383599-11207-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_235325_665489_0367730C 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

The cpufreq_reboot_notifier_evt() call cpufreq_cpu_get() to get the
cpufreq policy of cpu0, meanwhile, it also increments the kobject
reference count to mark it busy. However, a corresponding call of
cpufreq_cpu_put() is ignored to decrement the kobject reference count
back, which may lead to a potential stuck risk that the cpuhp thread
deadly waits for dropping of kobject refcount when cpufreq policy free.

With this patch, the cpuhp thread can be easily exercised by attempting
to force an unbind of the CPUfreq driver.

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
changes in v3:
 - Rewrite title and commit message.
---
 drivers/cpufreq/s3c2416-cpufreq.c | 12 +++++++++++-
 drivers/cpufreq/s5pv210-cpufreq.c | 11 ++++++++++-
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
index 1069103..5c221bc 100644
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
+		ret = cpufreq_driver_target(policy, FREQ_SLEEP, 0);
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
