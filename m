Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D9D1FCA0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GugI6WRuNNWSdp6EQ1+xpKlkv6FUUb1+vvBeCXz8qo8=; b=V2OQ4JGNaYs1Qr
	mV4TpghzFhCVzM7TiMiKmWgYfHaYHKc53C4j8PrD0dDsqkbQrXh575kwUiJblRSvjKhUj0EtcKWMk
	SpMts1Oe9/Rwu/EV2C0z4jry87G4W4/pWGfLZdf6r3vXQr9B8GL6o0AI7/gf6yhkII4IQ9pFt56aL
	OjfhDAx5sHDQucC6XBdejKjSYI2QMyaaXZ3uSlXWTjCmuxXmIhGcq3nYPqiu3K03H5pzXLmT3hv7J
	r8i4kYzET0fiMibMqiY9PrrdSQZ1Gn++WpLDyBEc1vXMQB9K86Rt5ygsJV69fEDKw7emJ3k/wZYVK
	PRrvxx413X7k998KM61Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUcA-0005Xw-IG; Wed, 17 Jun 2020 09:44:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUc2-0005Wi-Op
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:44:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6956431B;
 Wed, 17 Jun 2020 02:44:04 -0700 (PDT)
Received: from ubuntu.arm.com (unknown [10.57.54.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7CE393F6CF;
 Wed, 17 Jun 2020 02:44:02 -0700 (PDT)
From: Nicola Mazzucato <nicola.mazzucato@arm.com>
To: linux-kernel@vger.kernel.org, sudeep.holla@arm.com, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 1/2] firmware: arm_scmi: Add fast_switch_possible() api
Date: Wed, 17 Jun 2020 10:43:31 +0100
Message-Id: <20200617094332.8391-1-nicola.mazzucato@arm.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024406_849138_048C4F75 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new fast_switch_possible interface to the existing
perf_ops api to export the information of whether or not
fast_switch is possible in this driver.

This can be used by the CPUFreq driver and framework to
choose proper mechanism for frequency change.

Suggested-by: Lukasz Luba <lukasz.luba@arm.com>
Signed-off-by: Nicola Mazzucato <nicola.mazzucato@arm.com>
---
 drivers/firmware/arm_scmi/perf.c | 12 ++++++++++++
 include/linux/scmi_protocol.h    |  2 ++
 2 files changed, 14 insertions(+)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index eadc171e254b..ef747a9bb948 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -697,6 +697,17 @@ static int scmi_dvfs_est_power_get(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
+static bool scmi_fast_switch_possible(const struct scmi_handle *handle,
+				   struct device *dev)
+{
+	struct perf_dom_info *dom;
+	struct scmi_perf_info *pi = handle->perf_priv;
+
+	dom = pi->dom_info + scmi_dev_domain_id(dev);
+
+	return (dom->fc_info && dom->fc_info->level_set_addr);
+}
+
 static struct scmi_perf_ops perf_ops = {
 	.limits_set = scmi_perf_limits_set,
 	.limits_get = scmi_perf_limits_get,
@@ -708,6 +719,7 @@ static struct scmi_perf_ops perf_ops = {
 	.freq_set = scmi_dvfs_freq_set,
 	.freq_get = scmi_dvfs_freq_get,
 	.est_power_get = scmi_dvfs_est_power_get,
+	.fast_switch_possible = scmi_fast_switch_possible,
 };
 
 static int scmi_perf_protocol_init(struct scmi_handle *handle)
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index ce2f5c28b2df..19e50b89117e 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -118,6 +118,8 @@ struct scmi_perf_ops {
 			unsigned long *rate, bool poll);
 	int (*est_power_get)(const struct scmi_handle *handle, u32 domain,
 			     unsigned long *rate, unsigned long *power);
+	bool (*fast_switch_possible)(const struct scmi_handle *handle,
+			struct device *dev);
 };
 
 /**
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
