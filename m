Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F5214244F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 08:42:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lEkopvfttv2bHKHS/FXZX2oWhMZhSjPoaBqyu/b9SKo=; b=fK2
	svI4a2iAEHvHPnLSMDe7ojklja4Zd6WxjTp12HQwwjT971KQp7vUwDMYXX0/x/mk6QNamjZnuHRPT
	15z61saCyt8zOkBp5/VhtmmqoAWXolmXuorieDxScAhDrwS+2E4mw1fjOmqOipvFQKO7gwJiE+3Wx
	tfMcVaIaosyvZf4y+tRRs19nZvwrIbqDN5q/AOZ8GNxe4VI1bV5tEL/8Tv7HUi1JvbgyzMPrgArDL
	Ip3Xs53EalmmDBrFFO9TqwHfa3dCeFs6fQJ57KeqRQCcww/GM1cl4rw/b0WEQQzdy1UzWxKPlglZl
	htcx4zboIw4rmxoyF8owNLsgLkiRfsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itRh1-0001g5-Pr; Mon, 20 Jan 2020 07:41:51 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itRgo-0001fD-Vn
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 07:41:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id b22so12808724pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 23:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6QkfOHa+fXWPbqhX4fg/BSSEFLkJC5nKGWeuXTDHy0A=;
 b=hQJu9kN9+b47FmjPHhQJd5BW+Db3y87CWJgoCXkTHKMFrCBHiUWhv9v91PO0/f8L3C
 tsdNyrTe+h3Wf3JSRuOgXRTwubD89yw2FRv0Q0QxwSz4KIsD4arZbglh90tCpYaHO77s
 g8rGQkhMpcrJuehwOdI49P/Vz7JNwi1MFZa2q2xtLB2E3YxyhttEXcZIqoImHVDE3r8E
 p7X8GnmvSP5csBnuX6YgHIOMhwuXbizslwfiIz3NtelRcK1Fa7d0KfLagPlZEZlWMVzt
 zinMMU6RRZ6gBspy01WuMYkcWtMZTmEIG/nLP4fGa4Ih48BdPxtykTRmb4VWAXiMB8np
 ePlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6QkfOHa+fXWPbqhX4fg/BSSEFLkJC5nKGWeuXTDHy0A=;
 b=n4TGU1NXsB4w/KJr6SJ3rwle+4iOwVfKb74mjCTayryBj+J5/UYejD+DtEvoGU/N6g
 UzYvOdz7f7MeVymXTW8y+rJzabRNO6eQTU5JRvuPTxSUNmDrjcuPSSTm1R0rZPmZSZNk
 /K1Bl3HGg5/3XyaahroMp5Bvl39UbjmdT5elmFWZuD9BA3zU7/Xe+WO62W4cyp7ouFTQ
 V8at35yXOuGEiBpxGuyJxR3KyjFA+p3vAdhjJ2o2MlZ97ZHfd8exkhwlpytbkMPKgZI0
 eCYISss+aPrfE6ysOWl6MlS2mUx0bk9YCviUMsGGDtVZolmxmbX7h1XwoyvkswEKyHy7
 rBqA==
X-Gm-Message-State: APjAAAUAki0RsrVcSzFma2VvNfLhL28Rdk7JKut967zTn8UszzDrYvfT
 j1nrWpwIRkaOPI+8Xy6if1c=
X-Google-Smtp-Source: APXvYqwHpqndko+Jyi28mqdGoJyYQK4968v4mpRNIcSF2VVk+2l7i7mo+JPwYIhXu7HHKEPSvO4gtQ==
X-Received: by 2002:a17:902:6904:: with SMTP id
 j4mr14045937plk.88.1579506093288; 
 Sun, 19 Jan 2020 23:41:33 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id i11sm8090946pjg.0.2020.01.19.23.41.32
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 19 Jan 2020 23:41:32 -0800 (PST)
From: qiwuchen55@gmail.com
To: mmayer@broadcom.com, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 f.fainelli@gmail.com
Subject: [PATCH v4] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Date: Mon, 20 Jan 2020 15:41:28 +0800
Message-Id: <1579506088-6736-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_234139_028054_90256292 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qiwuchen55[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qiwuchen55[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: chenqiwu <chenqiwu@xiaomi.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: chenqiwu <chenqiwu@xiaomi.com>

brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq
policy, meanwhile, it also increments the kobject reference count
to mark it busy. However, a corresponding call of cpufreq_cpu_put()
is ignored to decrement the kobject reference count back, which may
lead to a potential stuck risk that the cpuhp thread deadly waits
for dropping of kobject refcount when cpufreq policy free.

With this patch, the cpuhp thread can be easily exercised by
attempting to force an unbind of the CPUfreq driver.

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
changes in v4:
 - Rewrit commit message.
 - Use cpufreq_cpu_get() and a corresponding cpufreq_cpu_put()
   instead of cpufreq_get_policy() for promoting efficiency.
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 77b0e5d..0767206 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -453,7 +453,13 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
 static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
 {
 	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
-	struct private_data *priv = policy->driver_data;
+	struct private_data *priv;
+
+	if (!policy)
+		return 0;
+
+	priv = policy->driver_data;
+	cpufreq_cpu_put(policy);
 
 	return brcm_avs_get_frequency(priv->base);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
