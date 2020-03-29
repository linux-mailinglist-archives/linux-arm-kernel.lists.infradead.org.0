Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D024B1970B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 00:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nRY6YssMgKkDldXgz6ws802HlL92EoE9y9N+G85/ihs=; b=GyXHwkTJyzL4B0n+Ni5uYdC8PR
	CPnl5I2uQhDDoEn+ezltIP4mynAxD8CzQTlesRvhdIWX/Kx9bxxBkOrcAi2JPaBoQoKA4vgy0iewQ
	bJpVnNRsyzyOqp6BbaO0PEvlHgCvZm2U2fgH6MN/SP+6vmwnKmM91oAu37bQoJ6zkxoCXO6azlARq
	7zec7K7S+Gs7bnyAobdQZVS8jzdkmaKdF3jmKDdY0Fc2NPGs5B5XIH6/TXDJtCr6al73I0RtQMkZe
	G5Nv8YezcT0yNu6huEAKCkEXvP1e/OpgGyuFRn9sow+kNFfuJIP5/5ZjTNmLFoN1qhWZEa3OEq9eY
	QTe/vjMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIg5b-0001UT-7d; Sun, 29 Mar 2020 22:07:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIg5R-0001Tc-IM
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 22:07:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id h15so18913948wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Mar 2020 15:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1LHaTJUSb6YlKNJo8uEXGOXHLnntD8wG0lKLYJJal8o=;
 b=ncVvgdoulw7o7+hBR1P2C+5Gs5JoBGlqRw0Sy1xicTm6q81nvOAS+m7a5UAWRL9hRH
 yEbh65k8Qx8xlZhH0t43wKusHLa9vKtTn3P+o7chr1k8b9HOg212dwNDe5UIqqTkPvM5
 NjK59RhAv/AjjS9C+ePeOxUTr8KWfjEGW0BnrhZMLZGYwJHih6Qa7NlJ/q3h/TBv2CvI
 qzt8o6Axgo5Rp3OXRAuFzRgZOB7AaPhJpa0QD51Rx0V4DJiIolUALmRUp3al9xzVNBGD
 TgMdtaHIkMZxLrKJPW3dDuRzt6b6bi9q5B+CInP1E93ReaqlZkh762PlTAokY1xMgBP/
 HxFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1LHaTJUSb6YlKNJo8uEXGOXHLnntD8wG0lKLYJJal8o=;
 b=YvlqpY/PldXIRmdXY969/3ASjRpnvsyUcF1SNGfji0i1DMfoC5U9hdfX7PsUSi0QMP
 oSoUWsNRnB/AL8JX/coii+DCVo2LyQ4vq/uifDUBDj04EFWPFJ8Lubzie/8W1w+4rLQm
 glkUjfNYwuWs5tcUinKzE4oBx++wEbThQwmFjcOruvpvylQ4h8KviDj2PZXun45qEs9F
 0m1P5vlCdiaBMwxDMl9BLaiXQGeaAYIITXb/S1GHfZ+z1g7MCqHUU4t46fY6r7wzPb6Z
 pBRRpTsDBRChwwj8voTxQJb+1q0fYnb5jc3n6CHSLdjPdmF8wvDOHUGSjowDlyNHA2W/
 HwAg==
X-Gm-Message-State: ANhLgQ1uB2Ev1H9cTmhP5HFeUMLgMlEmv7Fw7LR34/YIfBlPU6bQmoyw
 W0uAuKWk4EUB1fs8wJKP58Y1og==
X-Google-Smtp-Source: ADFU+vuZAg1AC05bxtW27+WzlliBGq0FOpLpXh2o2GNXEgxWNashf38ZSEyqqKofOBjuURsc40gIDw==
X-Received: by 2002:a5d:4d07:: with SMTP id z7mr11842551wrt.92.1585519639340; 
 Sun, 29 Mar 2020 15:07:19 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:78b1:4459:6959:42d0])
 by smtp.gmail.com with ESMTPSA id j188sm20026740wmj.36.2020.03.29.15.07.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 15:07:18 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: rafael@kernel.org,
	robh@kernel.org
Subject: [PATCH 4/4] thermal: cpuidle: Register cpuidle cooling device
Date: Mon, 30 Mar 2020 00:03:20 +0200
Message-Id: <20200329220324.8785-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200329220324.8785-1-daniel.lezcano@linaro.org>
References: <20200329220324.8785-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_150721_608413_DEFAE10E 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 daniel.lezcano@linaro.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
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
