Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB3EFBC75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 00:22:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mohssFsBAasvpTcoK6EpvD6rd6kx+EnafprCuN5KNyI=; b=tIW
	4CB/atFeH3t7LlvRHdU02Ax476U/Y85rc0tpLHCMniDzp05WN8dU+vB6TWJzXscsTDjtBdGmTLSUo
	qa+kMfjDmpyA+b4Eyrssfy4S9VOdAIcIN9hpqsEm+t3NcNyXEdFTpkmi/InUDfiOprkXXUfYpQbUR
	YC5BHscwFWQIBuQnEboqM+lXkeu6fB/hjbYCd1jTwdDuSOLGkRgBe5xupcTOgb44whMY2pqhJ3jj0
	aKMSTlETAxrPHHGgVhm1q546DlVna0hRUKlpBgh3DM+K/8XqwqUPzgEOO2UZnldsfFNh7d6uEWtAL
	Lw8X4cj0jVTjssBidxs62UZrh8doQ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV1xR-0007TO-Oa; Wed, 13 Nov 2019 23:21:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV1xG-0007QY-Ae
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 23:21:44 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8CBD8200199;
 Thu, 14 Nov 2019 00:21:38 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7F2F5200139;
 Thu, 14 Nov 2019 00:21:38 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0F83B205D5;
 Thu, 14 Nov 2019 00:21:38 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: [PATCH 0/5] PM / devfreq: Don't take lock in devfreq_add_device
Date: Thu, 14 Nov 2019 01:21:30 +0200
Message-Id: <cover.1573686315.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_152142_509018_93C9858F 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now the devfreq_add_device takes devfreq->lock as soon as the device is
allocated, this is awkward and unnecessary. In general an object should be
initialized in isolation and only be made available to the system when it's in
a consistent state.

Locking the device during initialization causes problems (lockdep warnings)
when interacting with other subsystems that also use heavy locking. There are
also a few fields (such as trans_table) which are initialized after
device_register even through they're readable from sysfs, these are now
allocated earlier.

This was spawned by the attempt to add dev_pm_qos support. I split this series
here because it might benefit from separate discussion.

Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
need to take devfreq->lock, this means that in order to prevent possible
deadlocks all initialization of dev_pm_qos must be performed outside the
devfreq->lock.

PM QoS requests from sysfs should be initialized before the device is
registered (because they're touched from sysfs) but all of that is currently
done with devfreq->lock held!

This series makes some tricky changes but the end results is easier to
understand and maintain. For example it removes a scary unlock/lock pair
around set_freq_table, maybe this also caused problems in the past?

Alternative solutions exist: all PM QoS setup could be done after device_add
just like governor setup and the min/max_freq_store could return an error if
the qos request is not yet properly initialized.

It might even be possible to modify dev_pm_qos to call notifiers without
holding internal locks? That is generally a good idea for all notifiers.

Changes since split from PM_QOS:
* Add a patch which moves devm from devfreq->dev->parent to devfreq->dev.
See: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=196443

Leonard Crestez (5):
  PM / devfreq: Don't fail devfreq_dev_release if not in list
  PM / devfreq: Split device_register usage
  PM / devfreq: Move more initialization before registration
  PM / devfreq: Don't use devm on parent device
  PM / devfreq: Don't take lock in devfreq_add_device

 drivers/devfreq/devfreq.c | 41 ++++++++++++---------------------------
 1 file changed, 12 insertions(+), 29 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
