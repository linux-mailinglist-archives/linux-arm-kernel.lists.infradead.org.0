Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 235F210ADC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iOjj8JbNcHU66TKDK7NnqXAlaR089XVbksucVnplwX0=; b=Ib/+ilkZ9TVqNaDxpcDoaLl1Ut
	luvkYsP/o5tvibiLBLshDkJvjmxiZt5bH7k2Ta5sjQ8fPa8Jc87DBYzpEDMqLUXUwkzaDs6h1L72P
	004yUoZ+VIMi0QlXYkkL0SfCFx5+t/ythsP20SgzjgFq7pJi8/LUOvdNEUD3+8UfJwrD8wd+CoosL
	JAfJmrJ2YagGuoAygsLSG3E3RmK35zytFhXZl+kVPpGg4td0moOKjzUU9g5L2knMQQl38ontq30Po
	sDysGsYeJAyCIgq07zN9Rkp57tOA60dzVOXvL4FkYsv7EzhxnEswD63JCbAtpVbBdqr57hFgSwidN
	MRlt88yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZucm-0000sI-Js; Wed, 27 Nov 2019 10:32:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZi-0005jg-J2
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id 203so16677488lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H5+j5Ryi1tcJuLiRKgHOPY8E8R9ryoJD8uowAry+jGY=;
 b=N7r2gMe8G20i4xmM7Fj5dmDMNSlBcg92v0Zsh8Zkfro8HKOvwra+VU7kUM/k15UbmK
 wsSJOn5K0mvUtqKKaDCKfZW/kfDmH9dkVz985JblmnDAefBdwkBUnxZha3ALcPmALmxQ
 XFG0eCAjobF34aNMzFbcKlFhIorfiDhJdnIQNU7iOtc93ROi0bXG2r93CuJmbJBPkHwS
 pSnk/gyjQdBF2MBy3QVva+bnO9+SeUxN0xuIzwXvuSaUa159rXefXFHi1RRSXwyMKmtD
 /uIlo2tu8tJOqVtmqpzICZIy00kfTjrmT819Ph4Rr9XSkdHn9WHwW8IEM6DdsM8hLkGV
 NkBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H5+j5Ryi1tcJuLiRKgHOPY8E8R9ryoJD8uowAry+jGY=;
 b=JYWObUP0NEWuunYP2XMjZNQYDQAxlL6JOQjxnruCX8Tz/s/IDAyYZmPN1abU6PjKhJ
 zWvYoLqCZd0dUmpo96Y6LrziKSAzfzuGojMn6VfDBRPVBzkyPfJ4RuttNjNbqR+iIfZ5
 P80iJ9ZwvkvYyTTAbaVyvG/rbR0rFThIaGKcas4nM4mcBYGI28bFeYde6+j/g8p7jwqX
 1OwSbNRxxQYbR1lQGNpsDydT5r8cCNTA3MCtspvJUdBqx5wXJByOwU1dtYt+P147dacu
 mb3wTJ2LHFtwz0QddQaoCRwooMmDM3ncvGOc3+50nITzwsut2EyIS6gNO1syTjIhD5vB
 YpQA==
X-Gm-Message-State: APjAAAWeFpTrsZBZlAqbwhOhIWugV4hjDLKKPhzXeWsD8GhAjkXdZf6i
 c8Rzh0jRzTtyX9iXAjx7181nHg==
X-Google-Smtp-Source: APXvYqxdSHrsudanOS4bJyuEoaPbKV0mRhbX9ISO6drVkAYmASp9F3ZgFpV3xbFQtUMBfSeYv4YHQg==
X-Received: by 2002:ac2:5464:: with SMTP id e4mr28237342lfn.47.1574850572190; 
 Wed, 27 Nov 2019 02:29:32 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:31 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 10/13] cpuidle: psci: Prepare to use OS initiated suspend
 mode via PM domains
Date: Wed, 27 Nov 2019 11:29:11 +0100
Message-Id: <20191127102914.18729-11-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022934_905244_051CD4D1 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The per CPU variable psci_power_state, contains an array of fixed values,
which reflects the corresponding arm,psci-suspend-param parsed from DT, for
each of the available CPU idle states.

This isn't sufficient when using the hierarchical CPU topology in DT, in
combination with having PSCI OS initiated (OSI) mode enabled. More
precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
idle state the cluster (a group of CPUs) should enter, while in PSCI
Platform Coordinated (PC) mode, each CPU independently votes for an idle
state of the cluster.

For this reason, introduce a per CPU variable called domain_state and
implement two helper functions to read/write its value. Then let the
domain_state take precedence over the regular selected state, when entering
and idle state.

To avoid executing the above OSI specific code in the ->enter() callback,
while operating in the default PSCI Platform Coordinated mode, let's also
add a new enter-function and use it for OSI.

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v3:
	- Avoid executing any OSI specific code in psci_enter_idle_state(),
	while operating in the default PSCI Platform Coordinated mode.

---
 drivers/cpuidle/cpuidle-psci.c | 52 ++++++++++++++++++++++++++++++----
 1 file changed, 46 insertions(+), 6 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 167249d0493f..fd664e134c3f 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -29,14 +29,47 @@ struct psci_cpuidle_data {
 };
 
 static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
+static DEFINE_PER_CPU(u32, domain_state);
+
+static inline void psci_set_domain_state(u32 state)
+{
+	__this_cpu_write(domain_state, state);
+}
+
+static inline u32 psci_get_domain_state(void)
+{
+	return __this_cpu_read(domain_state);
+}
+
+static inline int psci_enter_state(int idx, u32 state)
+{
+	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
+}
+
+static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
+					struct cpuidle_driver *drv, int idx)
+{
+	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
+	u32 *states = data->psci_states;
+	u32 state = psci_get_domain_state();
+	int ret;
+
+	if (!state)
+		state = states[idx];
+
+	ret = psci_enter_state(idx, state);
+
+	/* Clear the domain state to start fresh when back from idle. */
+	psci_set_domain_state(0);
+	return ret;
+}
 
 static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
 	u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
 
-	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
-					   idx, state[idx]);
+	return psci_enter_state(idx, state[idx]);
 }
 
 static struct cpuidle_driver psci_idle_driver __initdata = {
@@ -79,7 +112,8 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 	return 0;
 }
 
-static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
+static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
+					struct device_node *cpu_node,
 					unsigned int state_count, int cpu)
 {
 	int i, ret = 0;
@@ -118,6 +152,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 		goto free_mem;
 	}
 
+	/* Manage the deepest state via a dedicated enter-function. */
+	if (dev)
+		drv->states[state_count - 1].enter =
+			psci_enter_domain_idle_state;
+
 	data->dev = dev;
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
@@ -129,7 +168,8 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 	return ret;
 }
 
-static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_count)
+static __init int psci_cpu_init_idle(struct cpuidle_driver *drv,
+				     unsigned int cpu, unsigned int state_count)
 {
 	struct device_node *cpu_node;
 	int ret;
@@ -145,7 +185,7 @@ static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_count)
 	if (!cpu_node)
 		return -ENODEV;
 
-	ret = psci_dt_cpu_init_idle(cpu_node, state_count, cpu);
+	ret = psci_dt_cpu_init_idle(drv, cpu_node, state_count, cpu);
 
 	of_node_put(cpu_node);
 
@@ -201,7 +241,7 @@ static int __init psci_idle_init_cpu(int cpu)
 	/*
 	 * Initialize PSCI idle states.
 	 */
-	ret = psci_cpu_init_idle(cpu, ret);
+	ret = psci_cpu_init_idle(drv, cpu, ret);
 	if (ret) {
 		pr_err("CPU %d failed to PSCI idle\n", cpu);
 		goto out_kfree_drv;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
