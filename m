Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A541CD795
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q38rNeh8SdVytTQq1BNUm883le3o+G/pqzt09+oLVzI=; b=NSH
	XRdPJNoKBd64FqaYqkupQlMi7G/PRU2Nnlz20izurQutX4/t8qkHLWZ38aMcspq79XzXOtfZraTtu
	vGDQhEOdmZaV0uxAR1mdjWj17ZOPxhYQhDDdRnFCpGVWZ19/ttbo1bADCfptHJ3DxojpcmApU3LAa
	cVD8odCYG9tVl43cD5QR+qI8oJr/fYHSS+fAIev3s5TURZFCChSWf8l0HIcOmC2Byc/6eE1Lhhhqp
	bkQ4faIEWwJXYx8iUX7c+hSHfbZlF0QVKv1p7UqRen658kYyj0R+eNcXMSJnNWxi7Jw+TxGHRcHnt
	VJLCIRkqrb+cpUJoSTpC6sXmpJuqwtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6TK-0004R2-LP; Mon, 11 May 2020 11:19:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6T8-0004Pz-Jj; Mon, 11 May 2020 11:19:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D1251FB;
 Mon, 11 May 2020 04:19:32 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F2E713F305;
 Mon, 11 May 2020 04:19:21 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v7 00/15] Add support for devices in the Energy Model
Date: Mon, 11 May 2020 12:18:57 +0100
Message-Id: <20200511111912.3001-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_041934_742909_976303C3 
X-CRM114-Status: GOOD (  23.82  )
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

Hi all,

This patch set introduces support for devices in the Energy Model (EM)
framework. It will unify the power model for thermal subsystem. It will
make simpler to add support for new devices willing to use more
advanced features (like Intelligent Power Allocation). Now it should
require less knowledge and effort for driver developer to add e.g.
GPU driver with simple energy model. A more sophisticated energy model
in the thermal framework is also possible, driver needs to provide
a dedicated callback function. More information can be found in the
updated documentation file.

First 7 patches are refactoring Energy Model framework to add support
of other devices that CPUs. They change:
- naming convention from 'capacity' to 'performance' state,
- API arguments adding device pointer and not rely only on cpumask,
- change naming when 'cpu' was used, now it's a 'device'
- internal structure to maintain registered devices
- update users to the new API
Patch 8 updates OPP framework helper function to be more generic, not
CPU specific.
Patches 9-14 change devfreq cooling, dropping part of old power model and
adding registration with Energy Model via exported GPL function.
The last path is a simple change for Panfrost GPU driver.

The patch set is based on linux-next tag next-20200508.

Changes:
v7:
- all the EM changes are for patch 4/10 from v6
-- added em_perf_domain structure into struct device in order to simplify
  code (suggested by Daniel)
-- removed kref, em_pd, debug_dir from em_device (suggested by Daniel)
-- refactored code and removed unsed functions
-- refactored checking if EM exists for a CPU and deleted em_cpus_pd_exist()
-- simplified em_pd_get() and em_cpu_get()
-- removed em_debug_type_show()
-- removed a few unused debug prints
-- changed debug dir name in order to remove em_debug_type_show() and
  em_debug_dev_show() functions
-- removed em_dev_list and em_device since it is now possible to use
  struct device and rely on it
- thermal: split patch 9/10 from v6 as requested by Daniel and created 6 new:
-- patch v7 9/15 with only tracing change - exactly the same code so I keep
   'Reviewed-by # for tracing code' from Steven Rostedt
-- patch 10/15 and 11/14 takes more consistent state of devfreq device
-- patch 12/15 which adds Energy Model register/unregister functions
-- patch 13/15 which uses the new Energy Model
-- patch 14/15 adjusts headers license into the SPDX
v6 [6]:
- split patch 1/5 from v5 into smaller patches as requested by Daniel
  and dropped ACK from Quentin which was in the old there
- added function em_dev_register_perf_domain as suggested by Daniel, which
  would help transition into the new API
- changed 'cs' (capacity state) in different places into 'ps' (performance state),
  since now there are many smaller patches (previously skipped because
  of too big size of the patch with main features and left to do later)
- changed cpumask_equal() to cpumask_intersects() when checking if 'cpus' coming
  as an argument to registration function might overlap with already known;
  this shouldn't be an issue when cpufreq policy is OK, but a check doesn't harm
- added Reviewed-by from Alyssa into Panfrost related patch
- dropped Matthias patch with PM QoS from the series since it's in the next now
v5 [5]:
- devfreq cooling: rebased on top of pending patch introducing PM QoS limits
- devfreq cooling: added Matthias's patch to make this series build check pass
- devfreq cooling: removed OPP disable code and switched to PM QoS
- devfreq cooling: since thermal code always used a pointer to devfreq_dev_status,
  switched to work on a local copy and avoid potential race when either busy_time or
  total_time could change in the background
- devfreq cooling: added _normalize_load() and handle all scenarios when
  busy_time and total_time could have odd values (even raw counters)
- Energy Model patch 2/4: removed prints from cpufreq drivers and added print inside
  dev_pm_opp_of_register_em()
- update patch 2/4 description to better reflect upcoming changes
- collected ACK from Quentin for patch 1/4 and Reviewed-by from Steven for 4/4
v4 [4]:
- devfreq cooling: added two new registration functions, which will take care
  of registering EM for the device and simplify drivers code
  (suggested by Robin and Rob)
- Energy Model: changed unregistering code, added kref to track usage, added
  code freeing tables, added helper function
- added return value to function dev_pm_opp_of_register_em() and updated
  CPUFreq drivers code, added debug prints in case of failure
- updated comments in devfreq cooling removing statement that only
  simple_ondemand devfreq governor is supported to work with power extentions
- fixed spelling in the documentation (reported by Randy)
v3 [3]:
- added back the cpumask 'cpus' in the em_perf_domain due potential cache misses
- removed _is_cpu_em() since there is no need for it
- changed function name from em_pd_energy() to em_cpu_energy(), which is
  optimized for usage from the scheduler making some assumptions and not
  validating arguments to speed-up, there is a comment stressing that it should
  be used only for CPUs em_perf_domain
- changed em_get_pd() to em_pd_get() which is now aligned with em_cpu_get()
  naming
- Energy Model: add code which checks if the EM is already registered for the
  devfreq device
- extended comment in em_cpu_get() describing the need for this function
- fixed build warning reported on x86 by kbuild test robot in devfreq_cooling.c
- updated documentation in the energy-model.rst
- changed print messages from 'energy_model' to 'EM'
- changed dev_warn to dev_dbg, should calm down test scripts in case the
  platform has OPPs less efficient in the OPP table (some of them are there for
  cooling reasons, we shouldn't warn in this case, debug info is enough)
v2 [2]:
- changed EM API em_register_perf_domain() adding cpumask_t pointer
  as last argument (which was discussed with Dietmar and Quentin)
- removed dependency on PM_OPP, thanks to the cpumask_t argument
- removed enum em_type and em->type dependent code
- em_get_pd() can handle CPU device as well as devfreq device
- updated EM documentation
- in devfreq cooling added code which prevents from race condition with
  devfreq governors which are trying to use OPPs while thermal is in the middle
  of disabling them.
- in devfreq cooling added code which updates state of the devfreq device to
  avoid working on stale data when governor has not updated it for a long time
- in devfreq cooling added backward compatibility frequency table for drivers
  which did not provide EM
- added Steven's Reviewed-by to trace code in thermal
- added another CPUFreq driver which needs to be updated to the new API
The v1 can be found here [1].

Regards,
Lukasz Luba

[1] https://lkml.org/lkml/2020/1/16/619
[2] https://lkml.org/lkml/2020/2/6/377
[3] https://lkml.org/lkml/2020/2/21/1910
[4] https://lkml.org/lkml/2020/3/9/471
[5] https://lkml.org/lkml/2020/3/18/351
[6] https://lkml.org/lkml/2020/4/10/108


Lukasz Luba (15):
  PM / EM: change naming convention from 'capacity' to 'performance'
  PM / EM: introduce em_dev_register_perf_domain function
  PM / EM: update callback structure and add device pointer
  PM / EM: add support for other devices than CPUs in Energy Model
  PM / EM: remove em_register_perf_domain
  PM / EM: change name of em_pd_energy to em_cpu_energy
  Documentation: power: update Energy Model description
  OPP: refactor dev_pm_opp_of_register_em() and update related drivers
  thermal: devfreq_cooling: change tracing function and arguments
  thermal: devfreq_cooling: get device load and frequency directly
  thermal: devfreq_cooling: work on a copy of device status
  thermal: devfreq_cooling: add new registration functions with Energy
    Model
  thermal: devfreq_cooling: remove old power model and use EM
  thermal: devfreq_cooling: update license to use SPDX
  drm/panfrost: Register devfreq cooling and attempt to add Energy Model

 Documentation/power/energy-model.rst        | 135 ++++---
 drivers/cpufreq/cpufreq-dt.c                |   2 +-
 drivers/cpufreq/imx6q-cpufreq.c             |   2 +-
 drivers/cpufreq/mediatek-cpufreq.c          |   2 +-
 drivers/cpufreq/omap-cpufreq.c              |   2 +-
 drivers/cpufreq/qcom-cpufreq-hw.c           |   2 +-
 drivers/cpufreq/scmi-cpufreq.c              |  11 +-
 drivers/cpufreq/scpi-cpufreq.c              |   2 +-
 drivers/cpufreq/vexpress-spc-cpufreq.c      |   2 +-
 drivers/gpu/drm/panfrost/panfrost_devfreq.c |   2 +-
 drivers/opp/of.c                            |  76 ++--
 drivers/thermal/cpufreq_cooling.c           |  12 +-
 drivers/thermal/devfreq_cooling.c           | 426 ++++++++++----------
 include/linux/devfreq_cooling.h             |  51 ++-
 include/linux/device.h                      |   5 +
 include/linux/energy_model.h                | 148 ++++---
 include/linux/pm_opp.h                      |  15 +-
 include/trace/events/thermal.h              |  19 +-
 kernel/power/energy_model.c                 | 283 ++++++++-----
 kernel/sched/fair.c                         |   2 +-
 kernel/sched/topology.c                     |  20 +-
 21 files changed, 692 insertions(+), 527 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
