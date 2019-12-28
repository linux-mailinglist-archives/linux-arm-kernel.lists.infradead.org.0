Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA4B12BCDB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 07:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Rb6uZvKef32bg6rKNFUOZ/36amBMZjxiKlaxh6jl20o=; b=OLD
	HqG5PN+Pms0d6BlU19XZpOd8iIEXtbp8L9i4cjmHZn4QQAJzRYBSGIrc5PkVRjbwQATsDJxFD3dmw
	KNXVSYcqf0oITrGtlBQ39dHpj+cpCfGBSY1BDo5l784NxfNFzKy+dAuMQn3pKxd/3Swih/9xBCYWe
	lA2es4K743a/MgJowi4avy6AXeFVqsdyiFjCy+WHPVOICOUj7j7NdzIk3xdQBp5LfHNprZfPBWb4K
	/4ajOF25lcwKsCniPPBmUx90+uma5WXy62VZNeboC7Lp4iZj7d2mxbJsSmr/RwRY0HJN/tjhbp09D
	CNeoZS/z1R2v44ApgC9gpI6iC/rz4Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il5O8-00025P-Gj; Sat, 28 Dec 2019 06:15:48 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il5Ny-00024U-Tf
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 06:15:40 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t101so5835231pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Dec 2019 22:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qe6cSiGPXPhmquRmJ+vPfyD3fRySMNawHDWjAW0LBjw=;
 b=mSbekCGB4AVcrFqm765lc5SaSM4aAYaisiGXUoW/1H2dX9x3XCyGFhyYGvJ7CAxF0Q
 i3k//4abu6O5iYqmX0H5lFXruYG78sTBGK3mocMEcU5pUqKdsJ/Qhs8SShcAW1+mvn8k
 LCvJ1sNGbRlpgMJ+nECm555asbw4gIq1l7liz6zRp12cYiCFQUv45axwicQY0n8WbGDo
 ZejPXP7ufiq0d0sC5o/MD8vNS6TVAozMG2QFHE5Q0FzQ4cyMBe0jyc8hxb3irxY86sWX
 AYIl7Le9dcORNFwYb7IkRbUEbB457F+6Urp/7tFbwMHcE6StbYQ5l5MIdz/Vxa1HyEkm
 pGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qe6cSiGPXPhmquRmJ+vPfyD3fRySMNawHDWjAW0LBjw=;
 b=FNoVi6pCQlF9/J6HhE6m8PPGjKw53GNDBvIf8m/rLMhyRQSzJh7kj3DiOz/y/t++t0
 l//czTB5nWrhQz4uRXO2jUzRlfxByBQszw+4FzHqUdLRBJ+QYjzhX1ta1tf9OdwKC/2b
 fdqiZhS/l/zDdkKoU5PsWBmmKOUJ240N5dV9H8AOaAlLxtIPOwOz07I9iO4tA0HRXNG+
 E+A4D8bDjZWARv7CaOKWYqpjV8B2w/XIIgcGm6YDNAWSzbT87DcLRnK05A8NG/rzW7ac
 gkOFhQoizBV/8ct+yYKc36b8+0H0gf3NuXKsK/TIimNVXoVAzYDT3GhRMEa1EuY9QMCu
 bWSA==
X-Gm-Message-State: APjAAAUe3Qd06BYLbp7FtvlIkx1hhdytc627ZOSbA4Au8fsNGOoZxhyt
 KT3Y/BBCnPMVn/UIgNAXBlE=
X-Google-Smtp-Source: APXvYqz2bcxQFOhSNl7uvapbX387WUr60/UnSgG+VSIdTO4YpwUM2lqbK73iE31Un0HN1Uc2lN2I/g==
X-Received: by 2002:a17:90a:300b:: with SMTP id
 g11mr30676779pjb.123.1577513737609; 
 Fri, 27 Dec 2019 22:15:37 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id x65sm44401182pfb.171.2019.12.27.22.15.36
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Fri, 27 Dec 2019 22:15:37 -0800 (PST)
From: qiwuchen55@gmail.com
To: mmayer@broadcom.com, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 f.fainelli@gmail.com
Subject: [PATCH] cpufreq: brcmstb-avs-cpufreq: avoid a stuck risk and UAF
 issue in brcm_avs_cpufreq_get()
Date: Sat, 28 Dec 2019 14:15:30 +0800
Message-Id: <1577513730-14254-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_221538_982743_469589B0 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: chenqiwu <chenqiwu@xiaomi.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
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
cpufreq_online()	//cpufreq initialization failed, goto out_free_policy.
    ->cpufreq_policy_free()	//do cpufreq_policy free.
	->cpufreq_policy_put_kobj()
            ->kobject_put()	//skip if policy kfref count is not 1.
                ->cpufreq_sysfs_release()
                    ->complete()	//complete policy->kobj_unregister.
                ->wait_for_completion() //wait for policy->kobj_unregister.

A simple way to avoid this stuck risk is use cpufreq_cpu_get_raw() instead
of cpufreq_cpu_get(), since brcmstb-avs driver just want to get cpufreq
policy in cpufreq_notify_transition().

What's more, there is a potential UAF issue in cpufreq_notify_transition()
that the cpufreq policy of current cpu has been released before using it.
So we should make a judgement to avoid it.

Thanks!
Qiwu

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 77b0e5d..31aa76f 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -452,8 +452,17 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
 
 static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
 {
-	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
-	struct private_data *priv = policy->driver_data;
+	struct cpufreq_policy *policy = cpufreq_cpu_get_raw(cpu);
+	struct private_data *priv;
+
+	if (!policy) {
+		dev_warn(dev, "cpu %d: CPUFreq policy not found\n", cpu);
+		return NULL;
+	}
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
