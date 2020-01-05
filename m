Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421D513080A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 13:51:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0rHhp/JZFZj6SGrjvx0kKB/NiGzj+2FWiN8QAji/EJo=; b=IUJ
	fP7iBvTqsi08ERdRKH9nCCg+Had46RNTDujgQYSbvkfPp9PZ4XIwlMa5KUCgG3/OZKvimoJ70DblA
	FgA8yj8UROKHiw2FWLvOvUPrXcVpQuVMj0qOlT9oTJUgeWhgavln7hpm93lx3cN4nq1KsKeVATvww
	ax6AGmuZuMdSfY+iG/sKS3AeOWHtBHITLCJqBRAkT+wzFOjL2YnTaw9Ew8eT3T9bKiNoe6JiIXVA+
	uSoZfQaaXGjZqVRr+6rJXvKaDcMCfE00VMo9KuK0cULNe9s2pnfZyL4W+h2x/Jkpyml2AjIk7lcHS
	qABsBzOSYi7qoFxB+ufjBETdzQNPykw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io5N2-0002CK-UA; Sun, 05 Jan 2020 12:51:04 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io5Mw-0002Bi-8u
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 12:51:00 +0000
Received: by mail-pg1-x542.google.com with SMTP id r11so25585345pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 04:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O73F02mr1vEr7ShVhQ/rPt/DWjk1N7vtrWpN2HwbxPw=;
 b=RxnpqQhvQ5bv7z0xIAnD8gdhFyHKqKqpdXwTBhsUdEpg4sSugA+Vrg+Lmzf2NpnmLO
 k22F3pGksCJ5uQ+ueN0NIRXsZNOZuD1vRoDmkDrxuHiRk6/pl0MzljAmGMdmWfGPQFjF
 MZWdUkytwQeduUN8GEa4mwe+wZ2F3Krq2JVCeI+/Pyf/cuxId0btKL3aCfzLBsSwv1rp
 slF/9GvYZkEQ5yxavZwbu0zKrbowEHUqxJ4GsYFcAcxmKtp90yi1nke2ieHiW/Y7W8rs
 Pv0qHXykJtQjq3Ag0JxThiJ0f+3T4jeeYm2rTkdjGLbaIp/Z0LZ6y8p/qj/x0xjdFpBB
 QY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O73F02mr1vEr7ShVhQ/rPt/DWjk1N7vtrWpN2HwbxPw=;
 b=q2Xn1BjCDISXZGLYYycoaiZaYHZa7r9ZDhVNKA9Xhw7Eg4M4gvp0u5HM2lXZb/5D0/
 6FDD9/wiPHoRHS87fAzCPqcla3pVCk4465DL9Y8GwU4wrMtDZwn8r7jH+glPdZDJCo0O
 O+FxE8EYJ5dCwHEVPCcaxuGPgjHUzJ3IrVJCgzVetNgEzX5Q4UYmX+FEWh/V1NbuFtWE
 Ve2AZMTJxcMxWCYH+25wlHD80hQXJj33vTxogNGZAGl2/2gYlKrN52D/9BU2Yas/Of+9
 65Not/v/zryPfdsbFGR6my0pU32r309ZA74NCgTV/Rs3IPy9/Zo+BhUAkZEz7VM+Orvr
 hOnA==
X-Gm-Message-State: APjAAAWMjBDLGgfDypR+kMc97rJDr5JzB2qSrYt6AaRnqzQPLzmhxo22
 TqWDxP1b/sMEg8xLQ9zAJiw=
X-Google-Smtp-Source: APXvYqxUgpmdlnIXGhbVIEYm+2ZG/SLeZ4ocWYD5rb0O++qhXkZAxHm0/oxmD2mMWohAObY+FG5NaQ==
X-Received: by 2002:a62:e908:: with SMTP id j8mr93764073pfh.55.1578228656502; 
 Sun, 05 Jan 2020 04:50:56 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id z130sm70081453pgz.6.2020.01.05.04.50.55
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 05 Jan 2020 04:50:56 -0800 (PST)
From: qiwuchen55@gmail.com
To: mmayer@broadcom.com, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 f.fainelli@gmail.com
Subject: [PATCH v2] cpufreq: brcmstb-avs-cpufreq: avoid potential stuck and
 UAF risk
Date: Sun,  5 Jan 2020 20:50:50 +0800
Message-Id: <1578228650-17157-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_045058_338515_DA7B21F9 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
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
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: chenqiwu <chenqiwu@xiaomi.com>

brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get cpufreq policy,
meanwhile, it also increments the kobject reference count of policy to
mark it busy. However, a corresponding call of cpufreq_cpu_put() is
ignored to decrement the kobject reference count back, which may lead
to a potential stuck risk that percpu cpuhp thread deadly waits for
dropping of kobject refcount when percpu cpufreq policy free.

The call trace of stuck risk could be:
cpufreq_online()  //If cpufreq online failed, goto out_free_policy.
    ->cpufreq_policy_free()     //Do cpufreq_policy free.
        ->cpufreq_policy_put_kobj()
            ->kobject_put()       //Skip if policy kfref count is not 1.
                ->cpufreq_sysfs_release()
                    ->complete()  //Complete policy->kobj_unregister.
                ->wait_for_completion() //Wait for policy->kobj_unregister.

A simple way to avoid this stuck risk is use cpufreq_cpu_get_raw()
instead of cpufreq_cpu_get(), since this can be easily exercised by
attempting to force an unbind of the CPUfreq driver.

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 77b0e5d..6d2bf5c 100644
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
+		return 0;
+
+	priv = policy->driver_data;
+	if (!priv || !priv->base)
+		return 0;
 
 	return brcm_avs_get_frequency(priv->base);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
