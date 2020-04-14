Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AD91A8E3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 00:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nRY6YssMgKkDldXgz6ws802HlL92EoE9y9N+G85/ihs=; b=bkXf0GnEa1IIcUV9WDJlACfsS3
	sMOkjL8b/B4uC8jE64ylAXyFP+VeTyqY8qZ2WX8c2lxfxCmv5ruJ3AXVPeTAeG7MNn1CGLc4lLmUR
	2/5Tr+st7SDU6Z2cVZ0HvfK/T/UId5U0QB45h3yisyLgKsN5h6hyPC0pLk+napp5LROY9KCJ/gOzj
	ICLREGzOXSJiadwfTwRaYlFSnfQtaiZA9xk4yEk//vFoWVY7ypCvCZKftes0JwBYnE4Ox/V8YbT3/
	4/D14gcfJJcRUe3lapz989WGb7yjrMqsAj5zRriGWOf5pN/mn0PrHqYltkayiBOK+Zr4EQG9rrr7g
	O21+TmwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTjz-0002C0-0e; Tue, 14 Apr 2020 22:09:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOTjq-0002BZ-T8
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 22:09:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id a81so16193576wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 15:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1LHaTJUSb6YlKNJo8uEXGOXHLnntD8wG0lKLYJJal8o=;
 b=pDG1h0WC2l6d+f8gKVw4nIQv4pwuJvFp5v/pEj2Ej+aQGcAYfdxMwxHlGR2KPikBrG
 gm3LjeGPmIer6c6UQcjCLwsewXTnPsijjzDGXkIjU1goeSIBqj9/rujqCsi1G2/tqonr
 JU3A3l89/ENhF1HfgBjCb79ZfDWmUkIlnmph8vbjCrPNjv/+OTh6ZWF8pl+FiNOR+ieK
 SIb5805ZLif7vcibXWvbr2D3dbjNsq+nisSOV01wv2z6Da3AZyCGidMHeYPJTymBnPYw
 XUlrMDABgf7VreSSN0/5Wisng7C2roZHe9ev+0honyQY4Vkn3GrGX2xVtKeLwUfMCfVc
 l0Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1LHaTJUSb6YlKNJo8uEXGOXHLnntD8wG0lKLYJJal8o=;
 b=nKHtoJzV6/nqn3qNfaNl3pyXObQv67m8XcquOZbPzXrhXYF1LKX9bpv6XJ2MbVaNnq
 8iwzESUEYHWQmmq0ZlsuHeKBGs6UwY1/1o5PtNlzWAH7ebRdCJ7hdmLE12x3pN5RsIA8
 47Ubf4od1o+Qxn2kvJPz9lZSDBxpXrLJWZvtaceJxfL0Tkv1NwXZSgG3dZrYUBnfqVk7
 TiuOcnglblGCmyAgJzayoFvaV9UmxoWel9BDn2n7pV5X0sVpN3fygaRR2uxQDLjSYHs2
 RrJKiZhpO/7W/JGfDEyOM9EWDeJLIA9CJBIcK+JBYzV0q7eie/KcLXySVew/XnGSlruq
 bIlA==
X-Gm-Message-State: AGi0PubcGmDgDcVoLbsYUzWLAwzx0NHJaUw5y/x8bjkS8PoUEkeWrgpP
 WQzJX21obMCZx54SIR3VvHFd+Q==
X-Google-Smtp-Source: APiQypIRvJtGrIVTCK0IyHmrOcpJv9MiXSRrpOpgvddruNqcOcON9TV5nJ6vkoKOsKdMyUBeF3QwXg==
X-Received: by 2002:a05:600c:414b:: with SMTP id
 h11mr1899810wmm.9.1586902140997; 
 Tue, 14 Apr 2020 15:09:00 -0700 (PDT)
Received: from localhost.localdomain
 (lns-bzn-59-82-252-135-148.adsl.proxad.net. [82.252.135.148])
 by smtp.gmail.com with ESMTPSA id a7sm4099973wrs.61.2020.04.14.15.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 15:09:00 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	rui.zhang@intel.com
Subject: [PATCH v3 4/4] thermal: cpuidle: Register cpuidle cooling device
Date: Wed, 15 Apr 2020 00:08:33 +0200
Message-Id: <20200414220837.9284-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414220837.9284-1-daniel.lezcano@linaro.org>
References: <20200414220837.9284-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_150902_947136_37FDD76B 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: amit.kucheria@verdurent.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The cpuidle driver can be used as a cooling device by injecting idle
cycles. The DT binding for the idle state added an optional

When the property is set, register the cpuidle driver with the idle
state node pointer as a cooling device. The thermal framework will do
the association automatically with the thermal zone via the
cooling-device defined in the device tree cooling-maps section.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/cpuidle/cpuidle-arm.c  | 5 +++++
 drivers/cpuidle/cpuidle-psci.c | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/cpuidle/cpuidle-arm.c b/drivers/cpuidle/cpuidle-arm.c
index 9e5156d39627..2406ac0ae134 100644
--- a/drivers/cpuidle/cpuidle-arm.c
+++ b/drivers/cpuidle/cpuidle-arm.c
@@ -8,6 +8,7 @@
 
 #define pr_fmt(fmt) "CPUidle arm: " fmt
 
+#include <linux/cpu_cooling.h>
 #include <linux/cpuidle.h>
 #include <linux/cpumask.h>
 #include <linux/cpu_pm.h>
@@ -124,6 +125,10 @@ static int __init arm_idle_init_cpu(int cpu)
 	if (ret)
 		goto out_kfree_drv;
 
+	ret = cpuidle_cooling_register(drv);
+	if (ret)
+		pr_err("Failed to register the idle cooling device: %d\n", ret);
+
 	return 0;
 
 out_kfree_drv:
diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index edd7a54ef0d3..8e805bff646f 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -9,6 +9,7 @@
 #define pr_fmt(fmt) "CPUidle PSCI: " fmt
 
 #include <linux/cpuhotplug.h>
+#include <linux/cpu_cooling.h>
 #include <linux/cpuidle.h>
 #include <linux/cpumask.h>
 #include <linux/cpu_pm.h>
@@ -305,6 +306,10 @@ static int __init psci_idle_init_cpu(int cpu)
 	if (ret)
 		goto out_kfree_drv;
 
+	ret = cpuidle_cooling_register(drv);
+	if (ret)
+		pr_err("Failed to register the idle cooling device: %d\n", ret);
+
 	return 0;
 
 out_kfree_drv:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
