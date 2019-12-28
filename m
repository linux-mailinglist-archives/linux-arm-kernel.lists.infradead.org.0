Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95B412BD91
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 13:40:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/jpe5ZuEOlmstWG9CO2nsEmEpxEta40HSyYLH7QPKfE=; b=k2M
	KEMvxVz7gaLrXrc3xFySq63P7Jh9/6MgDfU1VxZe7fJ/RTiyvyh2g0HP+4Mp2tvca0vBbLO0OWOaD
	ihv5MpLzGJhwX7AKkmYeOFbFsN9AOW4bVIy8oEBwR5tzMlSSyQE056wMZ6m72I8HtO87j93Yr381p
	Ts7HzPxvH9E7HN6sTK7rK2Pj6QDvCXdwDFqIOP/ydfYREF5XR7pQW6zUXjv3kxwqjDk4HoENQfqrd
	Gx36KoXbCXR6cJaNrLytbxV1ydwYe+gv35Ua2VIIXqYWJeM8C5D5DdoxEwfpW9k5CPWrwTMmlJ5Po
	gqDw6fXmMHOHJbvF0xOeI0+tvHCPm4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilBO1-0001Fi-6B; Sat, 28 Dec 2019 12:40:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilBNp-0001Et-4z
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 12:39:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id z16so16057266pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 04:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4pJrCuN0L5h2pRp7MOQkfd0sd+WwqLihlGnkEFbuKkg=;
 b=CkSmL4KadJeaRXr+W7ibOUAh1ewv/4KZJkZyH2I4ignNeb7Vw8fyMAOeiUUhF0Wm4K
 mdHvQD/pxSFMsGjBNPt6OlzBcp/1KjwEn8o7N2MuBW89ldUaW47pGC4vSm0MrfTt41Am
 vt7F0xD95QhQiphpbdkax6/s4FNlGvs8dFgDMU0gGJmEGu4kghMuTsYMbUF+lEjXfkvG
 MWRSffRmtitR8cvJp34/JhFqLcd+bhoFCrVG0iEqcBX4TVk6Or+bt9Y2VPMcW9DUf6+o
 DIAKGatwoh/AvftKaGdLHH3tLeVfpBnQqkQnC63uCoSGQnPlJYO9vTvNNIOnDSzkaSBJ
 4FWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4pJrCuN0L5h2pRp7MOQkfd0sd+WwqLihlGnkEFbuKkg=;
 b=UD7nwRLsTnvUIE0bMGqGPpSjkYuPtaf3aTztm4QD8q6DUPi+aIY2DCcIik7+0SnXZT
 GjN+UIZqsL/p04sgCp3Ua308cayEiYlBVwgXVaYLh4FMPQZE3jDKHixx2fEDGwQ5I+HB
 GTB0XzRtrYgIJH8A2a1Tlp+imcnhx6clzjHV+qsdQeFIqtdk+ovkENndYT3A5gsM7WJn
 dgajdqoj2at8EbO3deNlGs6rybHN408DsgcpPQcUeM4Fhyje42Uqk3Pn0NUQZNKQnvzP
 H3dyJ46LDWJDv5h3ZvhZV9rDpLUC/5oYFR5pSb1TTBZORaPO98PNxUFJ2ttF3Dz2n9ig
 nZ0g==
X-Gm-Message-State: APjAAAX/n27enGTfk6LgXNYUEQUrnOcC8+tMi3h9fpVHcrxbx6yMFuvT
 L42KHg9NwtujHnrT+AnQ5vk=
X-Google-Smtp-Source: APXvYqyFDhOvCHysU4l3DIouO5mcmq97FftOVvq1y/WhnCUf0Ut9o+2exJHn7ZeYo0cbcuUi2MGCDg==
X-Received: by 2002:a62:75d0:: with SMTP id
 q199mr43137436pfc.158.1577536791526; 
 Sat, 28 Dec 2019 04:39:51 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id w6sm46281368pfq.99.2019.12.28.04.39.50
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 28 Dec 2019 04:39:50 -0800 (PST)
From: qiwuchen55@gmail.com
To: mmayer@broadcom.com, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 f.fainelli@gmail.com
Subject: [PATCH] cpufreq: brcmstb-avs-cpufreq: avoid a stuck risk and UAF
 issue in brcm_avs_cpufreq_get()
Date: Sat, 28 Dec 2019 20:39:37 +0800
Message-Id: <1577536777-24966-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_043953_217599_F813B582 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: chenqiwu <chenqiwu@xiaomi.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: chenqiwu <chenqiwu@xiaomi.com>

brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get cpufreq policy,
meanwhile, it also increments the kobject reference count of policy to
mark it busy. However, a corresponding call to cpufreq_cpu_put() is
ignored to decrement the kobject reference count back, which may lead
to a potential stuck risk that cpuhp thread deadly wait for dropping
of refcount when cpufreq policy free.

The call trace of stuck risk could be:
cpufreq_online()  //If cpufreq initialization failed, goto out_free_policy.
    ->cpufreq_policy_free()	//Do cpufreq_policy free.
        ->cpufreq_policy_put_kobj()
            ->kobject_put()       //Skip if policy kfref count is not 1.
                ->cpufreq_sysfs_release()
                    ->complete()  //Complete policy->kobj_unregister.
                ->wait_for_completion() //Wait for policy->kobj_unregister.

A simple way to avoid this stuck risk is use cpufreq_cpu_get_raw()
instead of cpufreq_cpu_get(), since brcmstb-avs driver just wants
to get cpufreq policy.

What's more, there is a potential UAF issue in cpufreq_notify_transition()
that the cpufreq policy of current cpu has been released before using it.
So we should make a judgement to avoid it.

Thanks!
Qiwu

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 77b0e5d..7c4d60a 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -452,8 +452,15 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
 
 static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
 {
-	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
-	struct private_data *priv = policy->driver_data;
+	struct cpufreq_policy *policy = cpufreq_cpu_get_raw(cpu);
+	struct private_data *priv;
+
+	if (!policy)
+		return NULL;
+
+	priv = policy->driver_data;
+	if (!priv || !priv->base)
+		return NULL;
 
 	return brcm_avs_get_frequency(priv->base);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
