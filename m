Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015931BD9C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mKpKT3Bnrpo8ceV4oVBbvoYSMeywQ+wuMyp5doTuJIQ=; b=ZMIN9DI4PJ0XJEcroCoGVKGTDl
	uB5NidSmsLTD0mocjkGfKIeILpftdGLNwKd7Vt81P2c+A5KOVrKLoPRsNxrt+Q/m8fV9/Au5QPt+i
	rXWf1fKjcto7cFHzHS9rpGgPZ1n4X3o42QYV73wKMp8kMI99SPp2PNEygtij1wF2MYgoRmqMKdMWN
	4/MIb9YI5ZEWHxYxHTZsFytfdQHblfXmdFh26SkkukEUa23aiPiMIs1iYK47lXhkoJiu1SJocGdrY
	8lc+tXhOw/EmCvbnKhRFtgD+d5oin9iB0GjWh+W/NOz980ZfnFRtIBBWKeZrvoXP32agl7PPUmMgd
	ZvihG7XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTk5x-0003mv-5S; Wed, 29 Apr 2020 10:37:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTk5o-0003m0-RO
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:37:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id u16so1453058wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 03:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ajg0V3YAnieY8dp7jTqVJrYiDVgIPrXCOEB/FDyd0IQ=;
 b=DIXfay/duBznmXB5ADvUzPnyxxtfIxj2kizhan9HisAwxNdjLTa9l9i34gr0wqk+xa
 2uanBNCtdDDTcrKxiKdyuGrCXH7HBG+yfZXWa2pdBp8lCpCnGKL0Ls2zQkox09/Mpzhw
 FZGjZ7b4fdPWGsKhHWwwHmbv/9x9fX8Wz+BHSQZYT+yxx89w0Fiqa8v3d5jRt8Jbtf8s
 8s5RCIs36RQOsJvNFWuPXx7N6wNGWHwA5BhBM8VCLlZAfOlTHJQCLZ0mudu5YNzTwJbf
 u7P+sm/ev50j2OXnv85QUHDySZCx66DCWZOUPqqDrwJi29iaIJ/S6F81weuQ/XuYqzRe
 RFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ajg0V3YAnieY8dp7jTqVJrYiDVgIPrXCOEB/FDyd0IQ=;
 b=b6+feNEjuuxPs2JWtN3lPEcrAzM05vUhz9nw+51a6obnCPBnbWQEX7ybTpkxpOWAF6
 Mgo4hTl0V6/OTd2Lzr5TzItqM7tFIX9UzvyQ4wNtAbxJMW9oCVL5Q9rm+BIVGz92B3ep
 nTnImog1IKglXLO2gTvEgsiGlWi6pvt1+b0l88oDleJATH7ejmkAcRKu4Uku2L9SPskW
 tMCfr1ora5h2S25H+FCjuTeOvTFD5ZRc5iFRaTHMljlfPYWPvVFuI3UqAuWLMKfXiELh
 dqpZvlMyP6JMUoChEqihNnAAztqjy3verTyQVVEQM5heBGVQuJyN+ZmcmfnZjT+cdEgT
 k8zg==
X-Gm-Message-State: AGi0PuaHfZ9UD0Lp2novtWtWTcANH2C19M+L5r0bFFqzyrx+ytm/R7dI
 /CHI1HT+/qWJ+y/flZcSCCtzAA==
X-Google-Smtp-Source: APiQypL2Sn2tfnITVPTTIZTbiEuPWWxOp8fRjGWJTovGUEqEE9S7DWyLRwyQAHtRin4DiTrlvqRpGQ==
X-Received: by 2002:a1c:bd08:: with SMTP id n8mr2479044wmf.23.1588156646488;
 Wed, 29 Apr 2020 03:37:26 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:d494:5741:b700:698f])
 by smtp.gmail.com with ESMTPSA id f23sm6899576wml.4.2020.04.29.03.37.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 03:37:25 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	rui.zhang@intel.com
Subject: [PATCH v4 4/4] thermal: cpuidle: Register cpuidle cooling device
Date: Wed, 29 Apr 2020 12:36:42 +0200
Message-Id: <20200429103644.5492-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429103644.5492-1-daniel.lezcano@linaro.org>
References: <20200429103644.5492-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_033728_886132_FA21C7CA 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, lukasz.luba@arm.com
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
 - V4:
   - Do not check the return value as the function does no longer return one
---
 drivers/cpuidle/cpuidle-arm.c  | 3 +++
 drivers/cpuidle/cpuidle-psci.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/cpuidle/cpuidle-arm.c b/drivers/cpuidle/cpuidle-arm.c
index 9e5156d39627..8c758920d699 100644
--- a/drivers/cpuidle/cpuidle-arm.c
+++ b/drivers/cpuidle/cpuidle-arm.c
@@ -8,6 +8,7 @@
 
 #define pr_fmt(fmt) "CPUidle arm: " fmt
 
+#include <linux/cpu_cooling.h>
 #include <linux/cpuidle.h>
 #include <linux/cpumask.h>
 #include <linux/cpu_pm.h>
@@ -124,6 +125,8 @@ static int __init arm_idle_init_cpu(int cpu)
 	if (ret)
 		goto out_kfree_drv;
 
+	cpuidle_cooling_register(drv);
+
 	return 0;
 
 out_kfree_drv:
diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index bae9140a65a5..1f38e0dfc9b2 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -9,6 +9,7 @@
 #define pr_fmt(fmt) "CPUidle PSCI: " fmt
 
 #include <linux/cpuhotplug.h>
+#include <linux/cpu_cooling.h>
 #include <linux/cpuidle.h>
 #include <linux/cpumask.h>
 #include <linux/cpu_pm.h>
@@ -313,6 +314,8 @@ static int __init psci_idle_init_cpu(int cpu)
 	if (ret)
 		goto out_kfree_drv;
 
+	cpuidle_cooling_register(drv);
+
 	return 0;
 
 out_kfree_drv:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
