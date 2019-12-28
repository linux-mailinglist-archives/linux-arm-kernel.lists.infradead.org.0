Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE7912BCE6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 07:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N0Lb4ciD7osONlVuVOI985f42DjR/EZVZGXwMf+46hg=; b=cSg
	Ye8ojhFRyqbZVR8lYNRA3WmvU2mhl6u4pm3fnIMpJbvTWgwcdgJR0g/KPA9MQbem8ESbEVpDLP+XJ
	bO4snl3IGlUyXKoopQZamOycM4AsV7b2DPIlPAroPrEVwCXwuWGrPAj/ul/BYfivt9MnJULHg/+fE
	Z0VnIY8GDks+Vr6xiGzmQMzFexkDJcUMX2PFyx9W2PJ/9St5Od0lcB3bBta2pvn3L3C0vNgNsFRVK
	TCzn2B7ChxTN8ahoIO7NdWiwe9r2xtGkaljxy4PcZCQOxBQueYvSjoDDlSs1AXJrNVURh6cH20TM5
	QOctIqFHjIStEPBLgz9Jq6RJ13Zbh5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il5pi-0000ml-RJ; Sat, 28 Dec 2019 06:44:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il5pV-0000mP-T1
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 06:44:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id a33so15470051pgm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Dec 2019 22:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=k/Zh0wd0iyh47HJcj26AK+VtSYrhhFOp9r5l6dctHRg=;
 b=cQ87Up34bttOiGDEXDLiZ+4e4O19HR8fqNNWjDzMEWGjLJeDt12PbmxIzk/sHUID9c
 yPTUXIf5hAOPK1T2/s1zzolWudNsW/MYZkhVlRhXpj3Q8czVxQcMThExn6rkBiilqYLq
 dz6cInYDh3jNyF8o/vex+/jNRJSs1g+OnegrFoWJtB/Ygj9clWo4AGnQsxtPXXK+K/mg
 Jpd7VylXheG7lEVoyg9PUUlvvGYkyMSef7i/+xpgeTk0nUggIvdaAyX7jBWjWjKBLOn/
 aDjUziw1rZ2zHCWzWzdk0QbXv70r+eWvqiN1mNHhZyUnzLWetCycgQMezieDHqOWEB9M
 ZCCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=k/Zh0wd0iyh47HJcj26AK+VtSYrhhFOp9r5l6dctHRg=;
 b=i7TWCKTrhz/l+UFpTTNdpZ1neOyjKe6DigvvzjXMuA9XDUGInhLfUeYlq6gikJyccl
 rsWAqUcUSxrKihl5geqVf1757lOSpGBNR/nB8AvmTRUNSsfQS0MorLzl/iXqd+PZTiYQ
 b2AXDiywy85AFd+ZhMEfOO8NqucG4eyaoFDHOuVLXSFzL9xSJN8UPqmYwBo/r9tIXE5V
 lrf5f+TFI4dPDWQEAwkxI3UDfAB79qaSPrJa/s9Ue7UxnBvpLRbypZ3HoppWMukpkaaw
 pVJ5B3n6RrlwGTt67TiZ3bYrN65IcbJ6Wp4bsPMgX1nQUDQU8vxzutN7pt4+BA5GEVnH
 BSww==
X-Gm-Message-State: APjAAAWPG5cuwe7DWOtiMTzCgL7m0qDYR3JnJH21NPdyErESuoCoEZVl
 qUZA0d9RjqqX/9eU7JqYx2g=
X-Google-Smtp-Source: APXvYqxS56Xo+lxmahknG9q55wIA+ODBR3wY7WgCdNMBd37PV7FVIa4xuPsJ37k352RZ05q1fDWlBA==
X-Received: by 2002:a65:66d7:: with SMTP id c23mr60290506pgw.40.1577515444820; 
 Fri, 27 Dec 2019 22:44:04 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id q15sm39751585pgi.55.2019.12.27.22.44.03
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Fri, 27 Dec 2019 22:44:04 -0800 (PST)
From: qiwuchen55@gmail.com
To: kgene@kernel.org, krzk@kernel.org, rjw@rjwysocki.net,
 viresh.kumar@linaro.org
Subject: [PATCH] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Date: Sat, 28 Dec 2019 14:43:59 +0800
Message-Id: <1577515439-14477-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_224405_963002_CF9E83FB 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
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
 drivers/cpufreq/s3c2416-cpufreq.c | 11 ++++++++++-
 drivers/cpufreq/s5pv210-cpufreq.c | 10 +++++++++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
index 1069103..0f576ba 100644
--- a/drivers/cpufreq/s3c2416-cpufreq.c
+++ b/drivers/cpufreq/s3c2416-cpufreq.c
@@ -304,6 +304,7 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
 {
 	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
 	int ret;
+	struct cpufreq_policy policy;
 
 	mutex_lock(&cpufreq_lock);
 
@@ -318,7 +319,15 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
 	 */
 	if (s3c_freq->is_dvs) {
 		pr_debug("cpufreq: leave dvs on reboot\n");
-		ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
+
+		memset(&policy, 0, sizeof(policy));
+		ret = cpufreq_get_policy(&policy, 0);
+		if (ret < 0) {
+			pr_debug("cpufreq: get no policy for cpu0\n");
+			return NOTIFY_BAD;
+		}
+
+		ret = cpufreq_driver_target(&policy, FREQ_SLEEP, 0);
 		if (ret < 0)
 			return NOTIFY_BAD;
 	}
diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
index 5d10030..d99b4b1 100644
--- a/drivers/cpufreq/s5pv210-cpufreq.c
+++ b/drivers/cpufreq/s5pv210-cpufreq.c
@@ -555,8 +555,16 @@ static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
 						 unsigned long event, void *ptr)
 {
 	int ret;
+	struct cpufreq_policy *policy;
 
-	ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
+	policy = cpufreq_cpu_get(0);
+	if (!policy) {
+		pr_debug("cpufreq: get no policy for cpu0\n");
+		return NOTIFY_BAD;
+	}
+
+	ret = cpufreq_driver_target(policy, SLEEP_FREQ, 0);
+	cpufreq_cpu_put(policy);
 	if (ret < 0)
 		return NOTIFY_BAD;
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
