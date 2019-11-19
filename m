Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C85E10290C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:13:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y7zaLH/mZhL0E0tuy69ufMz7gGHoTRpngDKav8b939o=; b=WXV
	TQxV6jCoiYxlYPiaOHyvfuJIQbZ2PlAktZ7ZasgJ3JWj3GTwRimxC0il6MfHqgx8R6ZQQRJr4jnkS
	Jvg1jtAMkPfBhbf/l9Cq1jE6OWNy3J/UJEUw6uRHOcTuyVQMbgK6dgCKQfRwVoh7kVQ318CIJGNxd
	vXMAYQo5+VUxIvF0un1HT1ZPBFudRr7tkIgEYFnUERsUd7Ym8h2FTqR6cXXTEqDFaN7VBRXCIs0m7
	wNG3ZMTb97RHjRsMDsKXjdrw7BRf12aYqoNxsSvC64iDobSwZtEnREkuPxBJbvG7Ry05WKyJ22IQp
	Bx2fev91eemxjQgSrAmliczQKir3kaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX67v-0008MT-Bb; Tue, 19 Nov 2019 16:13:15 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX67n-0008L2-6B
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:13:09 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 33C351A000D;
 Tue, 19 Nov 2019 17:13:01 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 270F91A0065;
 Tue, 19 Nov 2019 17:13:01 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3E43D2039B;
 Tue, 19 Nov 2019 17:13:00 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: [PATCH RFC 0/2] PM / devfreq: Add dev_pm_qos support with minimal
 changes
Date: Tue, 19 Nov 2019 18:12:12 +0200
Message-Id: <cover.1574179738.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_081307_505758_4A6F9602 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dev_pm_qos notifiers to devfreq core in order to support frequency
limits via dev_pm_qos_add_request.

Unlike the rest of devfreq the dev_pm_qos frequency is measured in kHz,
this is consistent with current dev_pm_qos usage for cpufreq and
allows frequencies above 2Ghz (pm_qos expresses limits as s32).

Like with cpufreq the handling of min_freq/max_freq is moved to the
dev_pm_qos mechanism. Constraints from userspace are no longer clamped on
store, instead all values can be written and we only check against OPPs in a
new devfreq_get_freq_range function. This is consistent with the design of
dev_pm_qos.

Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
need to take devfreq->lock, this means that calls into dev_pm_qos while holding
devfreq->lock are not allowed (lockdep warns about possible deadlocks).

Fix this by only adding the qos request and notifiers after devfreq->lock is
released inside devfreq_add_device. In theory this means sysfs writes
are possible before the min/max requests are initialized so we guard
against that explictly. The dev_pm_qos_update_request function would
otherwise print a big WARN splat.

Alternatively devfreq initialization could be refactored to avoid taking
devfreq->lock but that requires several intricate changes:

	https://patchwork.kernel.org/cover/11242865/

I considered making dev_pm_qos call notifiers outside the lock but
that's another complex refactoring and it's difficult to ensure
correctness. If two identical qos requests are made in parallel then the
second shouldn't return until all notifiers are completely executed for
the first and QOS is enforced; otherwise it mostly defeats the purpose
of making proactive requests.

This series implements the minimal changes in order to implement dev_pm_qos
support for devfreq. It only costs a little defensive programming.

This series is also marked as [RFC] because it depends on restoring
DEV_PM_QOS_MIN/MAX_FREQUENCY inside the pm core:

	https://patchwork.kernel.org/cover/11250413/

---
Changes since "big version" v10:
* Drop accepted cleanups
* Work with current locking approach (split cleanups into other series)
* Drop acks and deliberately relabel as a new series. It still incorporates
most previous discussion but takes a different approach to locking.
* Don't print errors if devfreq_dev_release is called on error cleanup from
devfreq_add_device, just accept that requests and notifiers might not be
registered yet. I wish dev_pm_qos cleanups behaved like standard "kfree" and
silently did nothing when there's nothing to be done.
Link to v10: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=196443

Leonard Crestez (2):
  PM / devfreq: Add PM QoS support
  PM / devfreq: Use PM QoS for sysfs min/max_freq

 drivers/devfreq/devfreq.c | 151 ++++++++++++++++++++++++++++++++++----
 include/linux/devfreq.h   |  14 +++-
 2 files changed, 145 insertions(+), 20 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
