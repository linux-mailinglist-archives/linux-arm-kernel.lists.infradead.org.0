Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00DE1CD7F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cZtaGFBv+wHpGFA3K/D2Mc9Ft36CztMC035jOOBL5oM=; b=JBbnZ7SJLls4JHpjg6mgrWpdyz
	KDyOpmZndr1DyiREGXHUkri/+jFP4I/NEY/CbJOLPF1afXCtQk+7Xwtx/cS2k3N3hD/9rj1KXw6If
	GmjROCGNRV3dEPm8cUn3uVfULqG7JT9VQ7/Sn5ylbgepVmDYAP0rTXWnt/EioCH/c92ze1tnEsz5L
	20HrD7MYwRpj9vclPbsF0BVXlt8XbiWn3Eq9fBPM67EkObUHTuAX9BFUoWSlMQE4UdoiDrL+W0DS0
	IwjMvKFDnx5IFT1j8uWTD0zeqXJb71j6C08gj6Nfk3aeurh4Ud1sxM/n/M3ApNW69EBzucnxkFjqA
	iTDqhhzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6WS-0001CS-TU; Mon, 11 May 2020 11:23:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6UN-0007fX-EF; Mon, 11 May 2020 11:20:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D10471045;
 Mon, 11 May 2020 04:20:50 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 61F8F3F305;
 Mon, 11 May 2020 04:20:40 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v7 07/15] Documentation: power: update Energy Model description
Date: Mon, 11 May 2020 12:19:04 +0100
Message-Id: <20200511111912.3001-8-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511111912.3001-1-lukasz.luba@arm.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042051_585323_DED10FD2 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, mka@chromium.org, robh@kernel.org,
 amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com, khilman@kernel.org,
 daniel.lezcano@linaro.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, orjan.eide@arm.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Energy Model framework supports also other devices than CPUs. Update
related information and add description for the new usage.

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 Documentation/power/energy-model.rst | 135 +++++++++++++++------------
 1 file changed, 75 insertions(+), 60 deletions(-)

diff --git a/Documentation/power/energy-model.rst b/Documentation/power/energy-model.rst
index 90a345d57ae9..a6fb986abe3c 100644
--- a/Documentation/power/energy-model.rst
+++ b/Documentation/power/energy-model.rst
@@ -1,15 +1,17 @@
-====================
-Energy Model of CPUs
-====================
+.. SPDX-License-Identifier: GPL-2.0
+
+=======================
+Energy Model of devices
+=======================
 
 1. Overview
 -----------
 
 The Energy Model (EM) framework serves as an interface between drivers knowing
-the power consumed by CPUs at various performance levels, and the kernel
+the power consumed by devices at various performance levels, and the kernel
 subsystems willing to use that information to make energy-aware decisions.
 
-The source of the information about the power consumed by CPUs can vary greatly
+The source of the information about the power consumed by devices can vary greatly
 from one platform to another. These power costs can be estimated using
 devicetree data in some cases. In others, the firmware will know better.
 Alternatively, userspace might be best positioned. And so on. In order to avoid
@@ -25,7 +27,7 @@ framework, and interested clients reading the data from it::
        +---------------+  +-----------------+  +---------------+
        | Thermal (IPA) |  | Scheduler (EAS) |  |     Other     |
        +---------------+  +-----------------+  +---------------+
-               |                   | em_pd_energy()    |
+               |                   | em_cpu_energy()   |
                |                   | em_cpu_get()      |
                +---------+         |         +---------+
                          |         |         |
@@ -35,7 +37,7 @@ framework, and interested clients reading the data from it::
                         |     Framework       |
                         +---------------------+
                            ^       ^       ^
-                           |       |       | em_register_perf_domain()
+                           |       |       | em_dev_register_perf_domain()
                 +----------+       |       +---------+
                 |                  |                 |
         +---------------+  +---------------+  +--------------+
@@ -47,12 +49,12 @@ framework, and interested clients reading the data from it::
         | Device Tree  |   |   Firmware    |  |      ?       |
         +--------------+   +---------------+  +--------------+
 
-The EM framework manages power cost tables per 'performance domain' in the
-system. A performance domain is a group of CPUs whose performance is scaled
-together. Performance domains generally have a 1-to-1 mapping with CPUFreq
-policies. All CPUs in a performance domain are required to have the same
-micro-architecture. CPUs in different performance domains can have different
-micro-architectures.
+In case of CPU devices the EM framework manages power cost tables per
+'performance domain' in the system. A performance domain is a group of CPUs
+whose performance is scaled together. Performance domains generally have a
+1-to-1 mapping with CPUFreq policies. All CPUs in a performance domain are
+required to have the same micro-architecture. CPUs in different performance
+domains can have different micro-architectures.
 
 
 2. Core APIs
@@ -70,14 +72,16 @@ CONFIG_ENERGY_MODEL must be enabled to use the EM framework.
 Drivers are expected to register performance domains into the EM framework by
 calling the following API::
 
-  int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
-			      struct em_data_callback *cb);
+  int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
+		struct em_data_callback *cb, cpumask_t *cpus);
 
-Drivers must specify the CPUs of the performance domains using the cpumask
-argument, and provide a callback function returning <frequency, power> tuples
-for each capacity state. The callback function provided by the driver is free
+Drivers must provide a callback function returning <frequency, power> tuples
+for each performance state. The callback function provided by the driver is free
 to fetch data from any relevant location (DT, firmware, ...), and by any mean
-deemed necessary. See Section 3. for an example of driver implementing this
+deemed necessary. Only for CPU devices, drivers must specify the CPUs of the
+performance domains using cpumask. For other devices than CPUs the last
+argument must be set to NULL.
+See Section 3. for an example of driver implementing this
 callback, and kernel/power/energy_model.c for further documentation on this
 API.
 
@@ -85,13 +89,20 @@ API.
 2.3 Accessing performance domains
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
+There are two API functions which provide the access to the energy model:
+em_cpu_get() which takes CPU id as an argument and em_pd_get() with device
+pointer as an argument. It depends on the subsystem which interface it is
+going to use, but in case of CPU devices both functions return the same
+performance domain.
+
 Subsystems interested in the energy model of a CPU can retrieve it using the
 em_cpu_get() API. The energy model tables are allocated once upon creation of
 the performance domains, and kept in memory untouched.
 
 The energy consumed by a performance domain can be estimated using the
-em_pd_energy() API. The estimation is performed assuming that the schedutil
-CPUfreq governor is in use.
+em_cpu_energy() API. The estimation is performed assuming that the schedutil
+CPUfreq governor is in use in case of CPU device. Currently this calculation is
+not provided for other type of devices.
 
 More details about the above APIs can be found in include/linux/energy_model.h.
 
@@ -106,42 +117,46 @@ EM framework::
 
   -> drivers/cpufreq/foo_cpufreq.c
 
-  01	static int est_power(unsigned long *mW, unsigned long *KHz, int cpu)
-  02	{
-  03		long freq, power;
-  04
-  05		/* Use the 'foo' protocol to ceil the frequency */
-  06		freq = foo_get_freq_ceil(cpu, *KHz);
-  07		if (freq < 0);
-  08			return freq;
-  09
-  10		/* Estimate the power cost for the CPU at the relevant freq. */
-  11		power = foo_estimate_power(cpu, freq);
-  12		if (power < 0);
-  13			return power;
-  14
-  15		/* Return the values to the EM framework */
-  16		*mW = power;
-  17		*KHz = freq;
-  18
-  19		return 0;
-  20	}
-  21
-  22	static int foo_cpufreq_init(struct cpufreq_policy *policy)
-  23	{
-  24		struct em_data_callback em_cb = EM_DATA_CB(est_power);
-  25		int nr_opp, ret;
-  26
-  27		/* Do the actual CPUFreq init work ... */
-  28		ret = do_foo_cpufreq_init(policy);
-  29		if (ret)
-  30			return ret;
-  31
-  32		/* Find the number of OPPs for this policy */
-  33		nr_opp = foo_get_nr_opp(policy);
-  34
-  35		/* And register the new performance domain */
-  36		em_register_perf_domain(policy->cpus, nr_opp, &em_cb);
-  37
-  38	        return 0;
-  39	}
+  01	static int est_power(unsigned long *mW, unsigned long *KHz,
+  02			struct device *dev)
+  03	{
+  04		long freq, power;
+  05
+  06		/* Use the 'foo' protocol to ceil the frequency */
+  07		freq = foo_get_freq_ceil(dev, *KHz);
+  08		if (freq < 0);
+  09			return freq;
+  10
+  11		/* Estimate the power cost for the dev at the relevant freq. */
+  12		power = foo_estimate_power(dev, freq);
+  13		if (power < 0);
+  14			return power;
+  15
+  16		/* Return the values to the EM framework */
+  17		*mW = power;
+  18		*KHz = freq;
+  19
+  20		return 0;
+  21	}
+  22
+  23	static int foo_cpufreq_init(struct cpufreq_policy *policy)
+  24	{
+  25		struct em_data_callback em_cb = EM_DATA_CB(est_power);
+  26		struct device *cpu_dev;
+  27		int nr_opp, ret;
+  28
+  29		cpu_dev = get_cpu_device(cpumask_first(policy->cpus));
+  30
+  31     	/* Do the actual CPUFreq init work ... */
+  32     	ret = do_foo_cpufreq_init(policy);
+  33     	if (ret)
+  34     		return ret;
+  35
+  36     	/* Find the number of OPPs for this policy */
+  37     	nr_opp = foo_get_nr_opp(policy);
+  38
+  39     	/* And register the new performance domain */
+  40     	em_dev_register_perf_domain(cpu_dev, nr_opp, &em_cb, policy->cpus);
+  41
+  42	        return 0;
+  43	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
