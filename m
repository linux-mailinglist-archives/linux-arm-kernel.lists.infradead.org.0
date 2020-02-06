Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4662C154558
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B3Jb530c4DxutaERefroRqsN6OsOEbypal7k/PygA1A=; b=WbH/jKBdpp5bdH9+BaON5dZj2p
	XWunYVJCcrIQ9b9JBNXg+VHnrC1WHpyOkqF92ZHa89NNV/ZJF/8E/2HA5lB9GVJcCs3hhu51QwdDY
	ZAuGHUQ3QCDtI+YHy902/JJLYM/XI5kJqMQYK2CKcbzDkn2eVTzxoskt0VJI/PsXXED8rAA4Ejqli
	s2CVgF9dIqdIVL10GCI5cP771wZwkPX+PU1gMMWxbAUJJ1TErM6sq0s9h0XQ3ehTVsOoI+Z1U9Ppl
	h7Hl2QGA5KYHeKUU3C0R3PfuV1KvG8cehHRU4Ivy/nFB1LhqamSNclDLKMWCcBnuqyYquiSDEMSUb
	g0eg6T7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhWP-0004b2-8A; Thu, 06 Feb 2020 13:48:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhVe-000465-OB; Thu, 06 Feb 2020 13:48:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A200730E;
 Thu,  6 Feb 2020 05:47:57 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 489483F52E;
 Thu,  6 Feb 2020 05:47:44 -0800 (PST)
From: lukasz.luba@arm.com
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v2 4/4] drm/panfrost: Register to the Energy Model with
 devfreq device
Date: Thu,  6 Feb 2020 13:46:40 +0000
Message-Id: <20200206134640.11367-5-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200206134640.11367-1-lukasz.luba@arm.com>
References: <20200206134640.11367-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_054758_850606_207C37E6 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
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

Add device to the Energy Model framework. It will create a dedicated
and unified data structures used i.e. in the thermal framework.
The power model used in dev_pm_opp subsystem is simplified and created
based on DT 'dynamic-power-coefficient', volatage and frequency. It is
similar to the CPU model used in Energy Aware Scheduler.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 413987038fbf..d527a5113950 100644
--- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
+++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
@@ -105,6 +105,8 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	}
 	pfdev->devfreq.devfreq = devfreq;
 
+	dev_pm_opp_of_register_em(dev, NULL);
+
 	cooling = of_devfreq_cooling_register(dev->of_node, devfreq);
 	if (IS_ERR(cooling))
 		DRM_DEV_INFO(dev, "Failed to register cooling device\n");
@@ -118,6 +120,7 @@ void panfrost_devfreq_fini(struct panfrost_device *pfdev)
 {
 	if (pfdev->devfreq.cooling)
 		devfreq_cooling_unregister(pfdev->devfreq.cooling);
+	dev_pm_opp_of_unregister_em(&pfdev->pdev->dev);
 	dev_pm_opp_of_remove_table(&pfdev->pdev->dev);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
