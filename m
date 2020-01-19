Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E930141CB2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 08:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5u2ZYbxi0GcO+Ya02r7v1XqW2yuydzfswCbKY6SbDk4=; b=jTN
	a5LPk5npMgCK+thm44q5IiGi9UBdcYetTKShgsUNTdiWWpWaxPZybpAPZyHK3g50RTUw+bgxWg82/
	a4taktA1x3t8RjJuOBHSgOiqVyRV9RfGJBnIriHEYvQ85nVxviak5PyJS+719ExjaOhRgGCL2YlHt
	2WfJGYYr5DkQ3LjO0HSyXqQlOEMJTF9E9hMf034kwXlXhJj/MOySz8UOO85BIeAQis/drnHqaHUqk
	JMpaLakbeLsJURXaRm/0a9geA1OYl0uKcM74/fB65C4cpGYit8ZPIh+lLOtlSj+onzHl1d9WCrfsp
	GHvCLSQRasOclTfrlT+NYd5AlYzA0fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it4i6-0005AG-3P; Sun, 19 Jan 2020 07:09:26 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it4hx-00058v-9q
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 07:09:18 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n59so5495473pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Jan 2020 23:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sbvECZSSaHMAVDSY442RQUtEQVv5nwhO7gX5LMPOXE8=;
 b=qPhDIkwPUi53pqaoMKRqIfieeqj1ieqrpyJEMQPUUMScs48YcTxa7ImvmRv3k7/AMi
 doIoxyETRKZEkj6NCki5WqfOCBvcRRzaBP3ysRi29m8PlKmdNY5hfO/afpv/uQKyYaWu
 QW8Mm8XJjO8WYObFpBZwFUpXm+8Pnf2Jp1kdRZCdFWch7kFbe2hZDa0yfZIgcvYZelWW
 LRj7jwDUQi4ryg/+zDUrpKhX2dGGMkejfsU4SqMGMxiLrBBJppdmanqIHHC2Bgbp/J/+
 52MDikL4ufrTNtXDq3iZY2MsHGBDwKnbRAxoFRY6gf2uMW8OSev4BW00KWiPDsQ+NZqm
 Vbtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sbvECZSSaHMAVDSY442RQUtEQVv5nwhO7gX5LMPOXE8=;
 b=FjaGBr5EFLPkEU7rDPNtKBiqSGt2LtOebvTrYFjPEKa5C8egLODZR638eymgf3F5qC
 /3jroXnVgGUKY2ai+X6ao0ZZCAPyh+Mr4ftM+67sxpQYxZe+EkEtleFOvuFTqyNQKI/j
 Ak6fRoNoJgQgIswUfxDeraCiOWnAjFkXG4yY4jbaOfY35iB+ZDcJ9lVRD/E1XO9SXSjI
 XxzzbB6pxwU4onU1iBqAi/miX8Ny7mb5WPh3iK0e/vO6qPzjwS2bJJL9L/AvRTTD0oLr
 ithJ56ecE9sAZet/eVs55PouCNWFhnpQaEYQlOvdQfqcNVa7dLvLPslladslI0U2BDaX
 gpGw==
X-Gm-Message-State: APjAAAV65qyg0KGSixqckTa3nbja6ARegr9iFquKyHuhgfWMGhSFhhLC
 sn3cFzfvlVDW4ZUgbs7oUxDyT4PFwOE=
X-Google-Smtp-Source: APXvYqylvUE9U5kKGJKKCtFF5R4wOSj4PgYC36wH2joJSvO8f1bw+0REf9K1UBn1pMFr84tkV4BQrA==
X-Received: by 2002:a17:902:6805:: with SMTP id
 h5mr8058684plk.275.1579417755652; 
 Sat, 18 Jan 2020 23:09:15 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id c184sm34015130pfa.39.2020.01.18.23.09.14
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 18 Jan 2020 23:09:15 -0800 (PST)
From: qiwuchen55@gmail.com
To: mmayer@broadcom.com, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 f.fainelli@gmail.com
Subject: [PATCH v3] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Date: Sun, 19 Jan 2020 15:09:10 +0800
Message-Id: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_230917_367622_9117B0AC 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: chenqiwu <chenqiwu@xiaomi.com>

brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq policy,
meanwhile, it also increments the kobject reference count to mark it busy.
However, a corresponding call of cpufreq_cpu_put() is ignored to decrement
the kobject reference count back, which may lead to a potential stuck risk
that the cpuhp thread deadly waits for dropping of kobject refcount when
cpufreq policy free.

For fixing this bug, cpufreq_get_policy() is referenced to do a proper
cpufreq_cpu_get()/cpufreq_cpu_put() and fill a policy copy for the user.
If the policy return NULL, we just return 0 to hit the code path of
cpufreq_driver->get.

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 77b0e5d..ee0d404 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -452,8 +452,16 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
 
 static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
 {
-	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
-	struct private_data *priv = policy->driver_data;
+	struct cpufreq_policy policy;
+	struct private_data *priv;
+
+	/*
+	 * In case cpufreq policy has been released, just return 0.
+	 */
+	if (cpufreq_get_policy(&policy, cpu))
+		return 0;
+
+	priv = policy.driver_data;
 
 	return brcm_avs_get_frequency(priv->base);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
