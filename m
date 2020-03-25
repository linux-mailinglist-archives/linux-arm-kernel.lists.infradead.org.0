Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A343193225
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:48:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4+xl6BUiT8z/U5oVmz5735851aRu8OL4qF+OsesKmI=; b=mYf7aIS00n7ClP
	N9rtQsk9RMSVmEwnMTOej8jGbTw7MrbxE/kHOYN7zoyyG0i3Msf3nrelyez9961HMpMr/Iqyxu4X+
	qOO5YVQq3u40bLPGFKHTwfw9dGG5TGx8Ho+JZK6+zgs7GeBau9WTRYt7SsPaH4n8g0aCTGEecqubv
	zqLQBdPYEB+/uYNhkzJLRWD46pCZK6uTFhEwBqKFd7EpOmdNWKTi4BzkONnybezV8IJhEJCUWQ9lL
	hGlPqAz72frBwkhzmHKQDt11icZzqBuLRn/ywTqc8JHChPX5BJ4TZ27x0nZ8UTO26g/ZTp9Qz8C06
	qjQcV2pdyUz0CUjeDbUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCwl-0004UB-Tf; Wed, 25 Mar 2020 20:48:19 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCvr-0003py-0Q
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:47:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02PKl7F2077591;
 Wed, 25 Mar 2020 15:47:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585169227;
 bh=yP+/2QQ21dm+k32bJ2x5S+0UixUTNaUZxRajYNPkMK4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=C1N2WfsjQWsdRUY1SBiJwvpKohYdH6OJaSGMF/Hihj9R06mH3j7btF8NzbZoqLkNE
 awqvyreE09dCSLa/wK9g9DuTxC/kZR07tGIe63QwK4JZYR5/wpqxDaEDUVYbqauuNy
 PRz/n56lGLtg9pc/Ty/ynO2z7vcXe143JmTk936E=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02PKl7HP053266
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 25 Mar 2020 15:47:07 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 25
 Mar 2020 15:47:07 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 25 Mar 2020 15:47:07 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02PKl7Oo018669;
 Wed, 25 Mar 2020 15:47:07 -0500
Received: from localhost ([10.250.35.147])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 02PKl7uP063399;
 Wed, 25 Mar 2020 15:47:07 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 3/4] remoteproc: add support for a new 64-bit trace version
Date: Wed, 25 Mar 2020 15:47:00 -0500
Message-ID: <20200325204701.16862-4-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200325204701.16862-1-s-anna@ti.com>
References: <20200325204701.16862-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_134723_147416_FEE97231 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a new trace entry resource structure that accommodates
a 64-bit device address to support 64-bit processors. This is to
be used using an overloaded version value of 1 in the upper 32-bits
of the previous resource type field. The new resource still uses
32-bits for the length field (followed by a 32-bit reserved field,
so can be updated in the future), which is a sufficiently large
trace buffer size. A 32-bit padding field also had to be added
to align the device address on a 64-bit boundary, and match the
usage on the firmware side.

The remoteproc debugfs logic also has been adjusted accordingly.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 drivers/remoteproc/remoteproc_core.c    | 40 ++++++++++++++++++++-----
 drivers/remoteproc/remoteproc_debugfs.c | 37 ++++++++++++++++++-----
 include/linux/remoteproc.h              | 26 ++++++++++++++++
 3 files changed, 87 insertions(+), 16 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 53bc37c508c6..b9a097990862 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -609,21 +609,45 @@ void rproc_vdev_release(struct kref *ref)
  *
  * Returns 0 on success, or an appropriate error code otherwise
  */
-static int rproc_handle_trace(struct rproc *rproc, struct fw_rsc_trace *rsc,
+static int rproc_handle_trace(struct rproc *rproc, void *rsc,
 			      int offset, int avail, u16 ver)
 {
 	struct rproc_debug_trace *trace;
 	struct device *dev = &rproc->dev;
+	struct fw_rsc_trace *rsc1;
+	struct fw_rsc_trace2 *rsc2;
 	char name[15];
+	size_t rsc_size;
+	u32 reserved;
+	u64 da;
+	u32 len;
+
+	if (!ver) {
+		rsc1 = (struct fw_rsc_trace *)rsc;
+		rsc_size = sizeof(*rsc1);
+		reserved = rsc1->reserved;
+		da = rsc1->da;
+		len = rsc1->len;
+	} else if (ver == 1) {
+		rsc2 = (struct fw_rsc_trace2 *)rsc;
+		rsc_size = sizeof(*rsc2);
+		reserved = rsc2->reserved;
+		da = rsc2->da;
+		len = rsc2->len;
+	} else {
+		dev_err(dev, "unsupported trace rsc version %d\n", ver);
+		return -EINVAL;
+	}
 
-	if (sizeof(*rsc) > avail) {
+	if (rsc_size > avail) {
 		dev_err(dev, "trace rsc is truncated\n");
 		return -EINVAL;
 	}
 
 	/* make sure reserved bytes are zeroes */
-	if (rsc->reserved) {
-		dev_err(dev, "trace rsc has non zero reserved bytes\n");
+	if (reserved) {
+		dev_err(dev, "trace rsc has non zero reserved bytes, value = 0x%x\n",
+			reserved);
 		return -EINVAL;
 	}
 
@@ -632,8 +656,8 @@ static int rproc_handle_trace(struct rproc *rproc, struct fw_rsc_trace *rsc,
 		return -ENOMEM;
 
 	/* set the trace buffer dma properties */
-	trace->trace_mem.len = rsc->len;
-	trace->trace_mem.da = rsc->da;
+	trace->trace_mem.len = len;
+	trace->trace_mem.da = da;
 
 	/* set pointer on rproc device */
 	trace->rproc = rproc;
@@ -652,8 +676,8 @@ static int rproc_handle_trace(struct rproc *rproc, struct fw_rsc_trace *rsc,
 
 	rproc->num_traces++;
 
-	dev_dbg(dev, "%s added: da 0x%x, len 0x%x\n",
-		name, rsc->da, rsc->len);
+	dev_dbg(dev, "%s added: da 0x%llx, len 0x%x\n",
+		name, da, len);
 
 	return 0;
 }
diff --git a/drivers/remoteproc/remoteproc_debugfs.c b/drivers/remoteproc/remoteproc_debugfs.c
index 3560eed7a360..ff43736db45a 100644
--- a/drivers/remoteproc/remoteproc_debugfs.c
+++ b/drivers/remoteproc/remoteproc_debugfs.c
@@ -192,7 +192,8 @@ static int rproc_rsc_table_show(struct seq_file *seq, void *p)
 	struct resource_table *table = rproc->table_ptr;
 	struct fw_rsc_carveout *c;
 	struct fw_rsc_devmem *d;
-	struct fw_rsc_trace *t;
+	struct fw_rsc_trace *t1;
+	struct fw_rsc_trace2 *t2;
 	struct fw_rsc_vdev *v;
 	int i, j;
 
@@ -205,6 +206,7 @@ static int rproc_rsc_table_show(struct seq_file *seq, void *p)
 		int offset = table->offset[i];
 		struct fw_rsc_hdr *hdr = (void *)table + offset;
 		void *rsc = (void *)hdr + sizeof(*hdr);
+		u16 ver = hdr->st.v;
 
 		switch (hdr->st.t) {
 		case RSC_CARVEOUT:
@@ -230,13 +232,32 @@ static int rproc_rsc_table_show(struct seq_file *seq, void *p)
 			seq_printf(seq, "  Name %s\n\n", d->name);
 			break;
 		case RSC_TRACE:
-			t = rsc;
-			seq_printf(seq, "Entry %d is of type %s\n",
-				   i, types[hdr->st.t]);
-			seq_printf(seq, "  Device Address 0x%x\n", t->da);
-			seq_printf(seq, "  Length 0x%x Bytes\n", t->len);
-			seq_printf(seq, "  Reserved (should be zero) [%d]\n", t->reserved);
-			seq_printf(seq, "  Name %s\n\n", t->name);
+			if (ver == 0) {
+				t1 = rsc;
+				seq_printf(seq, "Entry %d is version %d of type %s\n",
+					   i, ver, types[hdr->st.t]);
+				seq_printf(seq, "  Device Address 0x%x\n",
+					   t1->da);
+				seq_printf(seq, "  Length 0x%x Bytes\n",
+					   t1->len);
+				seq_printf(seq, "  Reserved (should be zero) [%d]\n",
+					   t1->reserved);
+				seq_printf(seq, "  Name %s\n\n", t1->name);
+			} else if (ver == 1) {
+				t2 = rsc;
+				seq_printf(seq, "Entry %d is version %d of type %s\n",
+					   i, ver, types[hdr->st.t]);
+				seq_printf(seq, "  Device Address 0x%llx\n",
+					   t2->da);
+				seq_printf(seq, "  Length 0x%x Bytes\n",
+					   t2->len);
+				seq_printf(seq, "  Reserved (should be zero) [%d]\n",
+					   t2->reserved);
+				seq_printf(seq, "  Name %s\n\n", t2->name);
+			} else {
+				seq_printf(seq, "Entry %d is an unsupported version %d of type %s\n",
+					   i, ver, types[hdr->st.t]);
+			}
 			break;
 		case RSC_VDEV:
 			v = rsc;
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 526d3cb45e37..3b3bea42f8b1 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -243,6 +243,32 @@ struct fw_rsc_trace {
 	u8 name[32];
 } __packed;
 
+/**
+ * struct fw_rsc_trace2 - trace buffer declaration supporting 64-bits
+ * @padding: initial padding after type field for aligned 64-bit access
+ * @da: device address (64-bit)
+ * @len: length (in bytes)
+ * @reserved: reserved (must be zero)
+ * @name: human-readable name of the trace buffer
+ *
+ * This resource entry is an enhanced version of the fw_rsc_trace resourec entry
+ * and the provides equivalent functionality but designed for 64-bit remote
+ * processors.
+ *
+ * @da specifies the device address of the buffer, @len specifies
+ * its size, and @name may contain a human readable name of the trace buffer.
+ *
+ * After booting the remote processor, the trace buffers are exposed to the
+ * user via debugfs entries (called trace0, trace1, etc..).
+ */
+struct fw_rsc_trace2 {
+	u32 padding;
+	u64 da;
+	u32 len;
+	u32 reserved;
+	u8 name[32];
+} __packed;
+
 /**
  * struct fw_rsc_vdev_vring - vring descriptor entry
  * @da: device address
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
