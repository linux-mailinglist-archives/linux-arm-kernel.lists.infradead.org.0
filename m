Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA6F118BBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:56:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Uq7iJ/rpEfSu0VwAGyts6pgZedRdBm4RSYXHCyVyC/k=; b=VXzAtXUGXjUbWqghtgWxd5Dc5Y
	HEzHoScv95wg2NIcLXqbCr4mv7eI75kibD6/LMHcijtU6hJJMWEGB7XV1xphBquMlBaiajch9s575
	GG0RpQcqJ+4Ej3/byt6vTCaNLnE7v+8S56TzH0nTED5fsbfx0tkhICa1ETLsaUNT2kQkV2vuwmrrD
	cPNn51obdPvfIKbx0I9O3km3NEV/2v09R+sSdbe9fesFRuKJNXzjv2OFg3oXrK9n84QNs1bczmUH9
	UNZlQZ5OiLJYLe7uZYMkmPH8jnqhufEo4F2DDmH/v233WuZqezKfeT62gC9UG4v8nIPcYv2c/pZrc
	7pwi4pew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegwU-00017q-Rv; Tue, 10 Dec 2019 14:56:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtv-000652-N6
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0900A1045;
 Tue, 10 Dec 2019 06:54:11 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5A4BF3F67D;
 Tue, 10 Dec 2019 06:54:10 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 07/15] firmware: arm_scmi: Stash version in protocol init
 functions
Date: Tue, 10 Dec 2019 14:53:37 +0000
Message-Id: <20191210145345.11616-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210145345.11616-1-sudeep.holla@arm.com>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065411_882432_12CAEBAE 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to avoid querying the individual protocol versions multiple
time with more that one device created for each protocol, we can simple
store the copy in the protocol specific private data and use them whenever
required.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/clock.c   | 2 ++
 drivers/firmware/arm_scmi/perf.c    | 2 ++
 drivers/firmware/arm_scmi/power.c   | 2 ++
 drivers/firmware/arm_scmi/reset.c   | 2 ++
 drivers/firmware/arm_scmi/sensors.c | 2 ++
 5 files changed, 10 insertions(+)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 6c24eb8a4e68..b567ec03f711 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -65,6 +65,7 @@ struct scmi_clock_set_rate {
 };

 struct clock_info {
+	u32 version;
 	int num_clocks;
 	int max_async_req;
 	atomic_t cur_async_req;
@@ -344,6 +345,7 @@ static int scmi_clock_protocol_init(struct scmi_device *dev)
 			scmi_clock_describe_rates_get(handle, clkid, clk);
 	}

+	cinfo->version = version;
 	handle->clk_ops = &clk_ops;
 	handle->clk_priv = cinfo;

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 4f02bfba98ba..b1de6197f61c 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -145,6 +145,7 @@ struct perf_dom_info {
 };

 struct scmi_perf_info {
+	u32 version;
 	int num_domains;
 	bool power_scale_mw;
 	u64 stats_addr;
@@ -740,6 +741,7 @@ static int scmi_perf_protocol_init(struct scmi_device *dev)
 			scmi_perf_domain_init_fc(handle, domain, &dom->fc_info);
 	}

+	pinfo->version = version;
 	handle->perf_ops = &perf_ops;
 	handle->perf_priv = pinfo;

diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index 5a8faa369d82..d11c6cd6bbab 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -50,6 +50,7 @@ struct power_dom_info {
 };

 struct scmi_power_info {
+	u32 version;
 	int num_domains;
 	u64 stats_addr;
 	u32 stats_size;
@@ -211,6 +212,7 @@ static int scmi_power_protocol_init(struct scmi_device *dev)
 		scmi_power_domain_attributes_get(handle, domain, dom);
 	}

+	pinfo->version = version;
 	handle->power_ops = &power_ops;
 	handle->power_priv = pinfo;

diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index 438d74a2c80a..dce103781b3f 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -48,6 +48,7 @@ struct reset_dom_info {
 };

 struct scmi_reset_info {
+	u32 version;
 	int num_domains;
 	struct reset_dom_info *dom_info;
 };
@@ -221,6 +222,7 @@ static int scmi_reset_protocol_init(struct scmi_device *dev)
 		scmi_reset_domain_attributes_get(handle, domain, dom);
 	}

+	pinfo->version = version;
 	handle->reset_ops = &reset_ops;
 	handle->reset_priv = pinfo;

diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index afa51bedfa5d..aac0243e2880 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -68,6 +68,7 @@ struct scmi_msg_sensor_reading_get {
 };

 struct sensors_info {
+	u32 version;
 	int num_sensors;
 	int max_requests;
 	u64 reg_addr;
@@ -298,6 +299,7 @@ static int scmi_sensors_protocol_init(struct scmi_device *dev)

 	scmi_sensor_description_get(handle, sinfo);

+	sinfo->version = version;
 	handle->sensor_ops = &sensor_ops;
 	handle->sensor_priv = sinfo;

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
