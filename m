Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC011CD803
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7dJzKk0SSuuYFDndu0oPylJgRBj5+ZSgMb2ziIanvKw=; b=g+yVMshN/4ztcKfXQKmHwo/BaV
	ECN5kNQXrX4n0FrRDDwySxs3K18Am4Qew/gdKdS1KcAsEYVp4+SbStqQARaiOFN8LgjwPJ+F4mEuQ
	84X31kbILukxgEqaEZ7p4wZz3hEp8QpiexvHwLiiQyjSu+w/EI3Neu186SF23syvfcfZQt9M6NZ7U
	xopnVwAIWOCPi6Wuir1/Lwfh7wGcAjseQqk7VwOCjrgB9aemHau8SPFTY0qgEV8NugvZHo3EeVEMf
	K8a4uZxku1e5/WTZRAAUwPht6E9KDvHQFcEebkPMwrAwlcOr4uSqSmKx0fhl/NkJd7ymoxWTrROf1
	+XBkpTTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6Xo-0002Pg-Kq; Mon, 11 May 2020 11:24:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6V3-0008Lo-By; Mon, 11 May 2020 11:21:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5831101E;
 Mon, 11 May 2020 04:21:32 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 766E33F305;
 Mon, 11 May 2020 04:21:22 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v7 11/15] thermal: devfreq_cooling: work on a copy of device
 status
Date: Mon, 11 May 2020 12:19:08 +0100
Message-Id: <20200511111912.3001-12-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511111912.3001-1-lukasz.luba@arm.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042133_570513_50BCEE20 
X-CRM114-Status: GOOD (  11.01  )
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

Devfreq framework can change the device status in the background. To
mitigate this situation make a copy of the status structure and use it
for internal calculations.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 drivers/thermal/devfreq_cooling.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/devfreq_cooling.c b/drivers/thermal/devfreq_cooling.c
index 396f16bb6566..36ec6a48606c 100644
--- a/drivers/thermal/devfreq_cooling.c
+++ b/drivers/thermal/devfreq_cooling.c
@@ -348,14 +348,20 @@ static int devfreq_cooling_power2state(struct thermal_cooling_device *cdev,
 {
 	struct devfreq_cooling_device *dfc = cdev->devdata;
 	struct devfreq *df = dfc->devfreq;
-	struct devfreq_dev_status *status = &df->last_status;
-	unsigned long freq = status->current_frequency;
+	struct devfreq_dev_status status;
 	unsigned long busy_time;
+	unsigned long freq;
 	s32 dyn_power;
 	u32 static_power;
 	s32 est_power;
 	int i;
 
+	mutex_lock(&df->lock);
+	status = df->last_status;
+	mutex_unlock(&df->lock);
+
+	freq = status.current_frequency;
+
 	if (dfc->power_ops->get_real_power) {
 		/* Scale for resource utilization */
 		est_power = power * dfc->res_util;
@@ -367,8 +373,8 @@ static int devfreq_cooling_power2state(struct thermal_cooling_device *cdev,
 		dyn_power = dyn_power > 0 ? dyn_power : 0;
 
 		/* Scale dynamic power for utilization */
-		busy_time = status->busy_time ?: 1;
-		est_power = (dyn_power * status->total_time) / busy_time;
+		busy_time = status.busy_time ?: 1;
+		est_power = (dyn_power * status.total_time) / busy_time;
 	}
 
 	/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
