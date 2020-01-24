Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE57A147609
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:17:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6A36pgHc8OaOzsRJuFy5jEZaH8X+XuASYxKOQJdlcU=; b=tob6M5FnZDzQG9
	p3UzHg0IJc0tVKTT7nETzfupG24qlESQx6S2JJTwRWKTpZh9dM02NYWbcaUpCGfn4eRC/4hV+RqB3
	Utl4aj+kOF2Q8s0jRUV8aRsI3/Ifu0krRy6ak0zitGzIQ/neGtBgWDrzk+QyIUihxtC/pRPZA56ks
	63kJIi+rKs/aPcpmoAHNvkXeT6Gi7ITMYY17SU5BnevNyNkjDkVn5S1T881ybG5jqzWZCbix0D4jN
	ZlRV/pPaSqCWaCkGNvhitnsagjRAbrVXqgJDkDH7H2LYCXAp9giiZjmQAPR4oLfowQ4ZDR9znt9fJ
	pWoTUDzDWkgExMdlc8fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iunbe-0002eZ-8J; Fri, 24 Jan 2020 01:17:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iunbC-0002XC-Hz
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:17:27 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9431E21D7D;
 Fri, 24 Jan 2020 01:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579828646;
 bh=YgsZRwJQo5NDjLt5Mz+9Gt6+Z3gsDcXgk385OZZSpSo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gRKXkNMr90SG3qiom6HQ/MM7zJDYFVbpkmKVSwTaSYvUCUvIAQUpgGhZg9l1uLyLb
 Jta+68oL4OekJXt4mHoJqs9GiQfPNCZmuJhQXMHjwDTKI91UXblPq8wgJ+WFWrNTbA
 fWMhfaRMFLSWs1O82cKC9cYVrkJaQ/VupM6lpGOw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 15/33] perf/imx_ddr: Add enhanced AXI ID filter
 support
Date: Thu, 23 Jan 2020 20:16:50 -0500
Message-Id: <20200124011708.18232-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011708.18232-1-sashal@kernel.org>
References: <20200124011708.18232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_171726_635380_75271C2B 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Will Deacon <will@kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joakim Zhang <qiangqing.zhang@nxp.com>

[ Upstream commit 44f8bd014a94ed679ddb77d0b92350d4ac4f23a5 ]

With DDR_CAP_AXI_ID_FILTER quirk, indicating HW supports AXI ID filter
which only can get bursts from DDR transaction, i.e. DDR read/write
requests.

This patch add DDR_CAP_AXI_ID_ENHANCED_FILTER quirk, indicating HW
supports AXI ID filter which can get bursts and bytes from DDR
transaction at the same time. We hope PMU always return bytes in the
driver due to it is more meaningful for users.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 63 +++++++++++++++++++++-----------
 1 file changed, 42 insertions(+), 21 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index ce7345745b42c..2a3966d059e70 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -45,7 +45,8 @@
 static DEFINE_IDA(ddr_ida);
 
 /* DDR Perf hardware feature */
-#define DDR_CAP_AXI_ID_FILTER          0x1     /* support AXI ID filter */
+#define DDR_CAP_AXI_ID_FILTER			0x1     /* support AXI ID filter */
+#define DDR_CAP_AXI_ID_FILTER_ENHANCED		0x3     /* support enhanced AXI ID filter */
 
 struct fsl_ddr_devtype_data {
 	unsigned int quirks;    /* quirks needed for different DDR Perf core */
@@ -178,6 +179,36 @@ static const struct attribute_group *attr_groups[] = {
 	NULL,
 };
 
+static bool ddr_perf_is_filtered(struct perf_event *event)
+{
+	return event->attr.config == 0x41 || event->attr.config == 0x42;
+}
+
+static u32 ddr_perf_filter_val(struct perf_event *event)
+{
+	return event->attr.config1;
+}
+
+static bool ddr_perf_filters_compatible(struct perf_event *a,
+					struct perf_event *b)
+{
+	if (!ddr_perf_is_filtered(a))
+		return true;
+	if (!ddr_perf_is_filtered(b))
+		return true;
+	return ddr_perf_filter_val(a) == ddr_perf_filter_val(b);
+}
+
+static bool ddr_perf_is_enhanced_filtered(struct perf_event *event)
+{
+	unsigned int filt;
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+
+	filt = pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER_ENHANCED;
+	return (filt == DDR_CAP_AXI_ID_FILTER_ENHANCED) &&
+		ddr_perf_is_filtered(event);
+}
+
 static u32 ddr_perf_alloc_counter(struct ddr_pmu *pmu, int event)
 {
 	int i;
@@ -209,27 +240,17 @@ static void ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
 
 static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
 {
-	return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
-}
-
-static bool ddr_perf_is_filtered(struct perf_event *event)
-{
-	return event->attr.config == 0x41 || event->attr.config == 0x42;
-}
+	struct perf_event *event = pmu->events[counter];
+	void __iomem *base = pmu->base;
 
-static u32 ddr_perf_filter_val(struct perf_event *event)
-{
-	return event->attr.config1;
-}
-
-static bool ddr_perf_filters_compatible(struct perf_event *a,
-					struct perf_event *b)
-{
-	if (!ddr_perf_is_filtered(a))
-		return true;
-	if (!ddr_perf_is_filtered(b))
-		return true;
-	return ddr_perf_filter_val(a) == ddr_perf_filter_val(b);
+	/*
+	 * return bytes instead of bursts from ddr transaction for
+	 * axid-read and axid-write event if PMU core supports enhanced
+	 * filter.
+	 */
+	base += ddr_perf_is_enhanced_filtered(event) ? COUNTER_DPCR1 :
+						       COUNTER_READ;
+	return readl_relaxed(base + counter * 4);
 }
 
 static int ddr_perf_event_init(struct perf_event *event)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
