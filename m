Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A125154548
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IJ6+X2NkygnoV/Z4TrMWFDI2M9Dq05ZmetXjFFI+yt8=; b=TGl
	w6r3gDn39wagHf1RpbVyMvzO1QirtXCQ0gQaaLwACQ3m5s9k++PVaJyzRmj/Y8D2CbRuxWf1OLZEO
	LKbAHabeeRSvJMG93EogEYxyMJGOLRPb0Kp3+ovmGb1sSBqNVqOp6DcRmnBXwlnVga+7Wl6q/P57f
	DjQK1FWzZZXy6VRduDh6DButRiKIcha2Mp2NnPJXgzkeYcopB41gORKqF9095SXX/+8cs0QMZX7Fi
	4gED5rwCmgXZw0TOZKWkFKTQ9MgwlbJr5l1clcjo9Y5cdGJRytHGJ1Bt1K4QN8xCQ1BBNJCVFXLLr
	XtmoG/Hit8htUm3Rxj6WGFCqiqHFEBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhUw-0003HM-Gc; Thu, 06 Feb 2020 13:47:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhUp-0003Cj-OU; Thu, 06 Feb 2020 13:47:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFCB730E;
 Thu,  6 Feb 2020 05:47:04 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 648223F52E;
 Thu,  6 Feb 2020 05:46:52 -0800 (PST)
From: lukasz.luba@arm.com
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v2 0/4] Add support for devices in the Energy Model
Date: Thu,  6 Feb 2020 13:46:36 +0000
Message-Id: <20200206134640.11367-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_054707_884829_72001BD9 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 alyssa.rosenzweig@collabora.com, daniel@ffwll.ch, b.zolnierkie@samsung.com,
 s.hauer@pengutronix.de, rostedt@goodmis.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 javi.merino@arm.com, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, shawnguo@kernel.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 ionela.voinescu@arm.com, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lukasz Luba <lukasz.luba@arm.com>

Hi all,

This patch set introduces support for devices in the Energy Model (EM)
framework. It will unify the power model for thermal subsystem and make it
simpler. The 1st patch refactors EM framework and adds support for devices.
The 2nd patch changes dev_pm_opp_of_register_em() in OPP/OF which now should
take as an argument struct device pointer. It touches a few trees
(OMAP, NXP, mediatek) updating their CPUfreq drivers to the new interface.
Patch 3/4 changes thermal devfreq cooling removing old code for calculating
local power table. It simplifies the code and uses EM for requested power
calculation. Last patch 4/4 adds EM to Panfrost driver.

The patch set is based on linux-next tag next-20200206 but also applies on
top of today's Linus's master.

Changes:
v2:
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


Lukasz Luba (4):
  PM / EM: add devices to Energy Model
  OPP: change parameter to device pointer in dev_pm_opp_of_register_em()
  thermal: devfreq_cooling: Refactor code and switch to use Energy Model
  drm/panfrost: Register to the Energy Model with devfreq device

 Documentation/power/energy-model.rst        | 129 +++---
 drivers/cpufreq/cpufreq-dt.c                |   2 +-
 drivers/cpufreq/imx6q-cpufreq.c             |   2 +-
 drivers/cpufreq/mediatek-cpufreq.c          |   2 +-
 drivers/cpufreq/omap-cpufreq.c              |   2 +-
 drivers/cpufreq/qcom-cpufreq-hw.c           |   2 +-
 drivers/cpufreq/scmi-cpufreq.c              |  11 +-
 drivers/cpufreq/scpi-cpufreq.c              |   2 +-
 drivers/cpufreq/vexpress-spc-cpufreq.c      |   2 +-
 drivers/gpu/drm/panfrost/panfrost_devfreq.c |   3 +
 drivers/opp/of.c                            |  45 +--
 drivers/thermal/cpufreq_cooling.c           |  10 +-
 drivers/thermal/devfreq_cooling.c           | 427 +++++++++-----------
 include/linux/devfreq_cooling.h             |  17 -
 include/linux/energy_model.h                | 108 +++--
 include/linux/pm_opp.h                      |  14 +-
 include/trace/events/thermal.h              |  19 +-
 kernel/power/energy_model.c                 | 399 ++++++++++++++----
 kernel/sched/sched.h                        |   2 +-
 kernel/sched/topology.c                     |   4 +-
 20 files changed, 712 insertions(+), 490 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
