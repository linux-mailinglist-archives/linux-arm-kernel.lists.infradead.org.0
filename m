Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9604117E16E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 14:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wy4HOgF/UxW58PrFT+OqYTsazF1jUYy0hk19/5mltnQ=; b=rgc
	/PHDaY1VOU98lsOenVKg3R3wpIF7T2PyOye9yCc1GoiRI0S6z8tZYktgn7z7MqqLD8jZqDV6L3h/T
	qbLZaK86BU7h8lRFJiaPOT6XW/Z7F3mSDdbnb2umLUqlaHomaKqalikBIEuedTGzatPTEvBRB2YpO
	LZljuUcsrqKHU0lyR3yayCGapUgLjnEfwf/NGgmbssFlotDa3ix8KhRv885/tcIJnsFI3M70iW3oB
	LtyCVLael4FGqmB5NQk1ZMLlPwaNPwQdZGjAqUvt55xyc9LbqW1QuEEqFcVOrBNeK9iYntmrE1+Lt
	cMAXl3CTOnTU0dKnDvTqGW0ntlQu0Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIfK-0002gX-8z; Mon, 09 Mar 2020 13:41:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIf6-0002fq-3c; Mon, 09 Mar 2020 13:41:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A01830E;
 Mon,  9 Mar 2020 06:41:39 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6F7213F67D;
 Mon,  9 Mar 2020 06:41:28 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v4 0/4] Add support for devices in the Energy Model
Date: Mon,  9 Mar 2020 13:41:13 +0000
Message-Id: <20200309134117.2331-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_064140_239668_9521E7EB 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 bsegall@google.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, daniel.lezcano@linaro.org, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, orjan.eide@arm.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 javi.merino@arm.com, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, rdunlap@infradead.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This patch set introduces support for devices in the Energy Model (EM)
framework. It will unify the power model for thermal subsystem and make it
simpler. The 1st patch refactors EM framework and adds support for devices.
The 2nd patch changes dev_pm_opp_of_register_em() in OPP/OF which now should
take as an argument struct device pointer. It touches a few trees
(OMAP, NXP, Mediatek) updating their CPUfreq drivers to the new interface.
Patch 3/4 changes thermal devfreq cooling removing old code for calculating
local power table. It simplifies the code and uses EM for requested power
calculation. Last patch 4/4 adds EM to Panfrost driver.

The patch set is based on linux-next tag next-20200306.

Changes:
v4:
- devfreq cooling: added two new registration functions, which will take care
  of registering EM for the device and simplify drivers code
  (suggested by Robin and Rob)
- Energy Model: changed unregistering code, added kref to track usage, added
  code freeing tables, added helper function
- added return value to function dev_pm_opp_of_register_em() and updated
  CPUFreq drivers code, added debug prints in case of failure (which might
  help in case CPU cooling was expecting EM)
- updated comments in devfreq cooling removing statement that only
  simple_ondemand devfreq governor is supported to work with power extensions
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

Lukasz Luba (4):
  PM / EM: add devices to Energy Model
  OPP: change parameter to device pointer in dev_pm_opp_of_register_em()
  thermal: devfreq_cooling: Refactor code and switch to use Energy Model
  drm/panfrost: Register devfreq cooling and attempt to add Energy Model

 Documentation/power/energy-model.rst        | 133 ++---
 Documentation/scheduler/sched-energy.rst    |   2 +-
 drivers/cpufreq/cpufreq-dt.c                |   4 +-
 drivers/cpufreq/imx6q-cpufreq.c             |   7 +-
 drivers/cpufreq/mediatek-cpufreq.c          |   5 +-
 drivers/cpufreq/omap-cpufreq.c              |   6 +-
 drivers/cpufreq/qcom-cpufreq-hw.c           |   4 +-
 drivers/cpufreq/scmi-cpufreq.c              |  13 +-
 drivers/cpufreq/scpi-cpufreq.c              |   4 +-
 drivers/cpufreq/vexpress-spc-cpufreq.c      |   4 +-
 drivers/gpu/drm/panfrost/panfrost_devfreq.c |   2 +-
 drivers/opp/of.c                            |  57 ++-
 drivers/thermal/cpufreq_cooling.c           |  10 +-
 drivers/thermal/devfreq_cooling.c           | 506 +++++++++++---------
 include/linux/devfreq_cooling.h             |  39 +-
 include/linux/energy_model.h                | 111 +++--
 include/linux/pm_opp.h                      |  15 +-
 include/trace/events/thermal.h              |  19 +-
 kernel/power/energy_model.c                 | 463 ++++++++++++++----
 kernel/sched/fair.c                         |   2 +-
 kernel/sched/topology.c                     |   4 +-
 21 files changed, 909 insertions(+), 501 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
