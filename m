Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635501E3E41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6fCxkev4/K4mtYu16Xf31ixx94QWE3xhqoeRv0hRnPY=; b=duN
	dgo25Rbfzqw09dRTFjPXjvBeBn+JCsOsPHTIgGaoYAFcMgOHuWoS+uqWL9TH3QMmHcqO+TSo8k0Te
	cZ583UIltE9msukvc2/h34Ma2SuA4HVExGyVmeypzc/n2REialS2fcofWqXCskK/MWmYuBtU9JZrR
	6Hi1C7XuoZYoA9kf+BFd1Ucmczba5fvzPiISvtmjiJSuuiaWkzwvXbGfqbtaEIFexv5trbPqPM9k3
	+nM+MBU7PGKaqiPrWqn7jEgSP7IAOBCzSitdWVKKncB7lBl4fsXT3t8T0+SCZGhNXsfPR9LYtDDYf
	4u9JcvbrQNeA7r3yBRS5xvqAzTIa+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsrP-0005QP-5e; Wed, 27 May 2020 10:00:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsrC-0005Pe-Qw; Wed, 27 May 2020 10:00:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17F5E55D;
 Wed, 27 May 2020 03:00:16 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B0B5C3F6C4;
 Wed, 27 May 2020 03:00:05 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v8 0/8] Add support for devices in the Energy Model
Date: Wed, 27 May 2020 10:58:46 +0100
Message-Id: <20200527095854.21714-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_030018_960186_A02311B5 
X-CRM114-Status: GOOD (  22.46  )
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

Background of this version:
This is the v8 of the patch set and is has smaller scope. I had to split
the series into two: EM changes and thermal changes due to devfreq
dependencies. The patches from v7 9-14 which change devfreq cooling are
going to be sent in separate patch series, just after this set get merged
into mainline. These patches related to EM got acks and hopefully can go
through linux-pm tree. The later thermal patches will go through thermal
tree.

The idea and purpose of the Energy Model framework changes:
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

The patch set is based on linux-pm branch linux-next 813946019dfd.

Changes:
v8:
- split the patch set in two: EM changes and thermal changes
- re-based on top of linux-pm branch linux-next (asked by Daniel)
- EM: changed comments content pointed out by Quentin
- added Acked-by from Quentin to almost all EM patches
v7 [7]:
- EM: added em_perf_domain structure into struct device in order to simplify
  code (suggested by Daniel)
- EM: removed kref, em_pd, debug_dir from em_device (suggested by Daniel)
- EM: refactored code and removed unsed functions
- EM: refactored checking if EM exists for a CPU and deleted em_cpus_pd_exist()
- EM: simplified em_pd_get() and em_cpu_get()
- EM: removed em_debug_type_show()
- EM: removed a few unused debug prints
- EM: changed debug dir name in order to remove em_debug_type_show() and
  em_debug_dev_show() functions
- EM: removed em_dev_list and em_device since it is now possible to use
  struct device
- thermal: split patch 9/10 from v6 as requested by Daniel and created 5 new:
-- patch v7 9/15 with only tracing change - exactly the same code so I keep
   'Reviewed-by # for tracing code' from Steven Rostedt
-- patch 10/15 and 11/14 takes more consistent state of devfreq device
-- patch 12/15 which adds Energy Model register/unregister functions
-- patch 13/15 adjust headers license into ne SPDX
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
[7] https://lkml.org/lkml/2020/5/11/326


Lukasz Luba (8):
  PM / EM: change naming convention from 'capacity' to 'performance'
  PM / EM: introduce em_dev_register_perf_domain function
  PM / EM: update callback structure and add device pointer
  PM / EM: add support for other devices than CPUs in Energy Model
  PM / EM: remove em_register_perf_domain
  PM / EM: change name of em_pd_energy to em_cpu_energy
  Documentation: power: update Energy Model description
  OPP: refactor dev_pm_opp_of_register_em() and update related drivers

 Documentation/power/energy-model.rst   | 135 ++++++------
 drivers/cpufreq/cpufreq-dt.c           |   2 +-
 drivers/cpufreq/imx6q-cpufreq.c        |   2 +-
 drivers/cpufreq/mediatek-cpufreq.c     |   2 +-
 drivers/cpufreq/omap-cpufreq.c         |   2 +-
 drivers/cpufreq/qcom-cpufreq-hw.c      |   2 +-
 drivers/cpufreq/scmi-cpufreq.c         |  11 +-
 drivers/cpufreq/scpi-cpufreq.c         |   2 +-
 drivers/cpufreq/vexpress-spc-cpufreq.c |   2 +-
 drivers/opp/of.c                       |  76 ++++---
 drivers/thermal/cpufreq_cooling.c      |  12 +-
 include/linux/device.h                 |   5 +
 include/linux/energy_model.h           | 149 +++++++------
 include/linux/pm_opp.h                 |  15 +-
 kernel/power/energy_model.c            | 285 ++++++++++++++++---------
 kernel/sched/fair.c                    |   2 +-
 kernel/sched/topology.c                |  20 +-
 17 files changed, 441 insertions(+), 283 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
