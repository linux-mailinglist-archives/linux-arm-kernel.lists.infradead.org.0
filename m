Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15BCC924F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 21:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kuFVpqeuBmlzfW/to+WBDVgSziSaZGy1dpNKHQnp9Gk=; b=PH7
	T98x765/zi/xomhR1ojqAl1bPmYibOjj/+YKdAc1QFy3xSgO+VwPqZp4rbhzI4klJ8RdSBSkkdvCA
	Vz+2Fua5tF2J5mROYacfvAh07UKg2ozapuAedAvEvX2Re28beoOOI3AizTA3qkFRsqmtrnNdeP8Hy
	YaqXVls6QrKShExzxsH7XcQfThIDdxKu4IKY6I1eGAT8LfStzYRFPkqZXh54yuLOFL60xlCFPYDCc
	HQ17a5jIDy4ZVHxATgQowQG/cgVxdcQn0ESqCoezm8bcpsRb19yRr8QOgJGOGVQyn0p0ERx3k9rdD
	cD+T6xnoyNk6x9HEZwdb0vAQIeRWaVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFkFg-0000Gd-4m; Wed, 02 Oct 2019 19:25:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFkFV-0000EF-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 19:25:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5000F2006D6;
 Wed,  2 Oct 2019 21:25:15 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 41DB52006AC;
 Wed,  2 Oct 2019 21:25:15 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 8D71D2060C;
 Wed,  2 Oct 2019 21:25:14 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: [PATCH v9 0/8] PM / devfreq: Add dev_pm_qos support
Date: Wed,  2 Oct 2019 22:25:03 +0300
Message-Id: <cover.1570044052.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_122522_002128_A1ED1032 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dev_pm_qos notifiers to devfreq core in order to support frequency
limits via dev_pm_qos_add_request.

Unlike the rest of devfreq the dev_pm_qos frequency is measured in Khz,
this is consistent with current dev_pm_qos usage for cpufreq and
allows frequencies above 2Ghz (pm_qos expresses limits as s32).

Like with cpufreq the handling of min_freq/max_freq is moved to the
dev_pm_qos mechanism. Constraints from userspace are no longer clamped on
store, instead all values can be written and we only check against OPPs in a
new devfreq_get_freq_range function. This is consistent with the design of
dev_pm_qos.

Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
need to take devfreq->lock. Notifier registration takes the same dev_pm_qos_mtx
so in order to prevent lockdep warnings it must be done outside devfreq->lock.
Current devfreq_add_device does all initialization under devfreq->lock and that
needs to be relaxed.

Some of first patches in the series are bugfixes and cleanups, they could be
applied separately.

---
Changes since v8:
* Fix incorrectly reading qos max twice in get_freq_range.
* Make devfreq_notifier_call set scaling_max_freq to ULONG_MAX instead of 0 on
error. This avoids special-casing this in get_freq_range.
* Add a fix for devfreq_notifier_call returning -errno.
* Replace S32_MAX with PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE. This seems cleaner
and avoids overflow when multiplying S32_MAX with 1000 on 32bit platforms. It
overflowed to 0xfffffc18 hz so it was mostly safe anyway.
* Warn when encountering errors on cleanup (but continue).
* Incorporate other smaller comment and printk adjustments from review.
Link to v8:
https://patchwork.kernel.org/cover/11158383/

Changes since v7:
* Only #define HZ_PER_KHZ in patch where it's used.
* Drop devfreq_ prefix for some internal functions.
* Improve qos update error message.
* Remove some unnecessary comments.
* Collect reviews
Link to v7: https://patchwork.kernel.org/cover/11157649/

Changes since v6:
* Don't return errno from devfreq_qos_notifier_call, return NOTIFY_DONE
and print the error.
* More spelling and punctuation nits
Link to v6: https://patchwork.kernel.org/cover/11157201/

Changes since v5:
* Drop patches which are not strictly related to PM QoS.
* Add a comment explaining why devfreq_add_device needs two cleanup paths.
* Remove {} for single line.
* Rename {min,max}_freq_req to user_{min,max}_freq_req
* Collect reviews
Link to v5: https://patchwork.kernel.org/cover/11149497/

Changes since v4:
* Move more devfreq_add_device init ahead of device_register.
* Make devfreq_dev_release cleanup devices not yet in devfreq_list. This is
simpler than previous attempt to add to devfreq_list sonner.
* Take devfreq->lock in trans_stat_show
* Register dev_pm_opp notifier on devfreq parent dev (which has OPPs)
Link to v4: https://patchwork.kernel.org/cover/11114657/

Changes since v3:
* Cleanup locking and error-handling in devfreq_add_device
* Register notifiers after device registration but before governor start
* Keep the initialization of min_req/max_req ahead of device_register
because it's used for sysfs handling
* Use HZ_PER_KHZ instead of 1000
* Add kernel-doc comments
* Move OPP notifier to core
Link to v3: https://patchwork.kernel.org/cover/11104061/

Changes since v2:
* Handle sysfs via dev_pm_qos (in separate patch)
* Add locking to {min,max}_freq_show
* Fix checkpatch issues (long lines etc)
Link to v2: https://patchwork.kernel.org/patch/11084279/

Changes since v1:
* Add doxygen comments for min_nb/max_nb
* Remove notifiers on error/cleanup paths. Keep gotos simple by relying on
dev_pm_qos_remove_notifier ignoring notifiers which were not added.
Link to v1: https://patchwork.kernel.org/patch/11078475/

Leonard Crestez (8):
  PM / devfreq: Don't fail devfreq_dev_release if not in list
  PM / devfreq: Fix devfreq_notifier_call returning errno
  PM / devfreq: Set scaling_max_freq to max on OPP notifier error
  PM / devfreq: Move more initialization before registration
  PM / devfreq: Don't take lock in devfreq_add_device
  PM / devfreq: Introduce get_freq_range helper
  PM / devfreq: Add PM QoS support
  PM / devfreq: Use PM QoS for sysfs min/max_freq

 drivers/devfreq/devfreq.c | 310 ++++++++++++++++++++++++++------------
 include/linux/devfreq.h   |  14 +-
 2 files changed, 224 insertions(+), 100 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
