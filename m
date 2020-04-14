Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75FE1A84CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nRY6YssMgKkDldXgz6ws802HlL92EoE9y9N+G85/ihs=; b=TKVSBbCYPFVcSs4CW9T/F1BeMh
	U5c7n0y9SQy4wR2RgGRYJOBwK9okwdJkuUO60wGMGUDEYEIhiLB3cRrCeBOxbS6vGucRyjLqq7HPr
	Zdd6i+N1JlfvZ827GLmjg+2lWN51+dIFzPkq50II5iLIv410vI7ztGPXo79WQx9JOJASG8OZNZSJL
	ASCmgvm3KJuk27NpH5fxTTDK0+BsvbuhbVsztmz9uXexJVkIgfkrZLSUtPtmc95u0CVzJ8QB6yno7
	nzgYipqimXD3uw2Zfy5LQ+Ol0OSP+vV8hfwNX27CHMLAZKs0auS9sbgzdLKhoETns0RVC+wJy0q7i
	Q6Qqs3nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOP5-0000Eu-2Q; Tue, 14 Apr 2020 16:27:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOOv-0000Dr-3h
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:27:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id r26so14767381wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1LHaTJUSb6YlKNJo8uEXGOXHLnntD8wG0lKLYJJal8o=;
 b=asG7ZBqoRWoen0EhesYcUDuNHZ64mVYuDlESxkQtESEpYgzpIoltmbMvIkJwym3WfO
 2AklxzEPMWgE7nie+BTaMUQfmCTQGyGJdyODxxnw42vkqKO5CEroNxRTWuvzMN7xG70O
 dohNpdTqoTZfLtu4damkH5LbrNPWhK6YvpXOVDTxRijPXg8n2vkr0e0KEGDO2j9/xkSD
 48EVFBCaexm8uKohNu/q7UTdYZ0tw4qBf2yR9Dea96u6CI3rwdbAI822abZ4iBGTAdT8
 ojp/na+NR+Wsh63P61V7jL2KsnmEuuZauGX8tpdr27rDCS6qRzCWQx8AtUwkBAQAf7Td
 zFUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1LHaTJUSb6YlKNJo8uEXGOXHLnntD8wG0lKLYJJal8o=;
 b=n1m9xbD3udNI5u2TQmzo/evYjQVT96bavZCoisZILh87SlZKBfuzCKCu/VByBzrD6r
 W5ry3NHCwhc7pkK+F5i4TjgOq5/kqcOniB3JlrT9fpqqjztHrIf14CG+TDJ+ztPlLBu6
 Heh4ArmqPzJ8gdE90XgFscqgX+cGt8RlK9hwD8xCn3Oygdzgca8fOSCoBuCUUjWQGKl5
 kJc+dURAaPqqQip3AeeEudHWHH6wjz/axrQ5b5o+/w3scirene8dVUr1kXJKxhlDjNGy
 fVqmtQ4aHmynibYc0KPj+xTUvRt87mEyfs0NOIjjuqlZwiWB/hYMyUs+Rixe/6LGfzkZ
 xeUw==
X-Gm-Message-State: AGi0PubYyidF1XPF8UpUIxumnGJ9zA9RTA8l9NfYdfTgXKil/+5HLSJa
 aXxrC6YA/2HYGQvPIwqPD/ETkQ==
X-Google-Smtp-Source: APiQypIXhFiwhUI+LtSucAg5Mlgn4tl6tvKseJNoeacHZGV9fpdzkJsacrRP9EA+xeqbcNM8KdrTlw==
X-Received: by 2002:a7b:c755:: with SMTP id w21mr637319wmk.120.1586881622774; 
 Tue, 14 Apr 2020 09:27:02 -0700 (PDT)
Received: from localhost.localdomain
 (lns-bzn-59-82-252-135-148.adsl.proxad.net. [82.252.135.148])
 by smtp.gmail.com with ESMTPSA id s14sm20199388wme.33.2020.04.14.09.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:27:02 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	rui.zhang@intel.com
Subject: [PATCH v2 4/4] thermal: cpuidle: Register cpuidle cooling device
Date: Tue, 14 Apr 2020 18:26:29 +0200
Message-Id: <20200414162634.1867-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414162634.1867-1-daniel.lezcano@linaro.org>
References: <20200414162634.1867-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_092706_842584_A097DFC6 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
