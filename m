Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48220151C5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 15:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3w0bdG1RjJ3LNtlbxVfqIhxoO8xJnPf/m1wX2t+IVWs=; b=gQfUeMlI3inam7utZ2tvUl14Is
	fKVx5pZrUtvwUyPr/fqgfrTbr4PsuW2SAxOvwz03IQvU7DjdQGr1BK5kfJPgSl2qUPk2P1mhyeGF5
	+0gNGkha0LlqVnhq3juk+p+KopG2XMRqz3HaIsT4Vsh7O8Jb6s1OAxgz1t+Aju9L1OXYHJh0rFG9s
	d0u5LnwoGVxOvqp9sxPq4CLZhQ8n/KWQe1taTkoDxdIAcDmzC88z0NduuBqkq3l03Z//9AygK4dkN
	llGbT5vM0Np0ic9c5BnpWORCSovFsMrQVznvg/vsrTbQcvxe9llU5vWSspBjuEzFiD7sxzSI3zAPo
	OMxs2VCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyzJE-0001R1-E9; Tue, 04 Feb 2020 14:36:12 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyzJ7-0001Pv-Gj
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 14:36:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3663327E09CB;
 Tue,  4 Feb 2020 15:36:01 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id z3HlOqV6d2Gd; Tue,  4 Feb 2020 15:36:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8F0E227E1110;
 Tue,  4 Feb 2020 15:36:00 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8F0E227E1110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1580826960;
 bh=XzOlzmxcVW4eEwulOOoGTT5EcKYMyZPCoxdgnjnDPVw=;
 h=From:To:Date:Message-Id;
 b=T0F/xR0iEW7G/MNwhZc5rTtJs7Xo4GEZLo2qEjt1hdlmTDac9s33lf/+FkM0eMMr9
 F9vkEdZQRjwf0u8ONoHeZUNNUSFCsx+GL53xmjYjpEZ2StOY+knz9f6b75YGLT6ozD
 gkX2WXsqQtPp8vxJcSaGNOqOQeN4LlWEXxhcO3p0=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Q-nMiCGXDYFz; Tue,  4 Feb 2020 15:36:00 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6E1C527E10DF;
 Tue,  4 Feb 2020 15:36:00 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v2 1/2] remoteproc: Use u64 len for da_to_va
Date: Tue,  4 Feb 2020 15:33:42 +0100
Message-Id: <20200204143343.7011-1-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200129163013.GA16538@xps15>
References: <20200129163013.GA16538@xps15>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_063605_924329_9C1A1139 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>, linux-doc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, s-anna <s-anna@ti.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With upcoming changes in elf loader for elf64 support, section size will
be a u64. When used with da_to_va, this will potentially lead to
overflow if using the current "int" type for len argument. Change
da_to_va prototype to use a u64 for len and fix all users of this
function.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
V2:
 - Change len type from int to u64

 drivers/remoteproc/imx_rproc.c           | 5 +++--
 drivers/remoteproc/keystone_remoteproc.c | 2 +-
 drivers/remoteproc/qcom_q6v5_adsp.c      | 2 +-
 drivers/remoteproc/qcom_q6v5_mss.c       | 2 +-
 drivers/remoteproc/qcom_q6v5_pas.c       | 2 +-
 drivers/remoteproc/qcom_q6v5_wcss.c      | 2 +-
 drivers/remoteproc/qcom_wcnss.c          | 2 +-
 drivers/remoteproc/remoteproc_core.c     | 2 +-
 drivers/remoteproc/remoteproc_internal.h | 2 +-
 drivers/remoteproc/st_slim_rproc.c       | 2 +-
 drivers/remoteproc/wkup_m3_rproc.c       | 2 +-
 include/linux/remoteproc.h               | 2 +-
 12 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 3e72b6f38d4b..7ec79be5eb5d 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -208,7 +208,7 @@ static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
 	return -ENOENT;
 }
 
-static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct imx_rproc *priv = rproc->priv;
 	void *va = NULL;
@@ -235,7 +235,8 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 		}
 	}
 
-	dev_dbg(&rproc->dev, "da = 0x%llx len = 0x%x va = 0x%p\n", da, len, va);
+	dev_dbg(&rproc->dev, "da = 0x%llx len = 0x%llx va = 0x%p\n", da, len,
+		va);
 
 	return va;
 }
diff --git a/drivers/remoteproc/keystone_remoteproc.c b/drivers/remoteproc/keystone_remoteproc.c
index 5c4658f00b3d..25c01df47eba 100644
--- a/drivers/remoteproc/keystone_remoteproc.c
+++ b/drivers/remoteproc/keystone_remoteproc.c
@@ -246,7 +246,7 @@ static void keystone_rproc_kick(struct rproc *rproc, int vqid)
  * can be used either by the remoteproc core for loading (when using kernel
  * remoteproc loader), or by any rpmsg bus drivers.
  */
-static void *keystone_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *keystone_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct keystone_rproc *ksproc = rproc->priv;
 	void __iomem *va = NULL;
diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c b/drivers/remoteproc/qcom_q6v5_adsp.c
index e953886b2eb7..7518e67a49e5 100644
--- a/drivers/remoteproc/qcom_q6v5_adsp.c
+++ b/drivers/remoteproc/qcom_q6v5_adsp.c
@@ -270,7 +270,7 @@ static int adsp_stop(struct rproc *rproc)
 	return ret;
 }
 
-static void *adsp_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *adsp_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
 	int offset;
diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
index 471128a2e723..248febde6fc1 100644
--- a/drivers/remoteproc/qcom_q6v5_mss.c
+++ b/drivers/remoteproc/qcom_q6v5_mss.c
@@ -1148,7 +1148,7 @@ static int q6v5_stop(struct rproc *rproc)
 	return 0;
 }
 
-static void *q6v5_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *q6v5_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct q6v5 *qproc = rproc->priv;
 	int offset;
diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index db4b3c4bacd7..cf2cd609c90d 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -159,7 +159,7 @@ static int adsp_stop(struct rproc *rproc)
 	return ret;
 }
 
-static void *adsp_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *adsp_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
 	int offset;
diff --git a/drivers/remoteproc/qcom_q6v5_wcss.c b/drivers/remoteproc/qcom_q6v5_wcss.c
index f93e1e4a1cc0..3a6b82a16961 100644
--- a/drivers/remoteproc/qcom_q6v5_wcss.c
+++ b/drivers/remoteproc/qcom_q6v5_wcss.c
@@ -406,7 +406,7 @@ static int q6v5_wcss_stop(struct rproc *rproc)
 	return 0;
 }
 
-static void *q6v5_wcss_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *q6v5_wcss_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct q6v5_wcss *wcss = rproc->priv;
 	int offset;
diff --git a/drivers/remoteproc/qcom_wcnss.c b/drivers/remoteproc/qcom_wcnss.c
index dc135754bb9c..f893219e45a8 100644
--- a/drivers/remoteproc/qcom_wcnss.c
+++ b/drivers/remoteproc/qcom_wcnss.c
@@ -287,7 +287,7 @@ static int wcnss_stop(struct rproc *rproc)
 	return ret;
 }
 
-static void *wcnss_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *wcnss_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct qcom_wcnss *wcnss = (struct qcom_wcnss *)rproc->priv;
 	int offset;
diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 307df98347ba..9e6d3c6a60ee 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -185,7 +185,7 @@ EXPORT_SYMBOL(rproc_va_to_pa);
  * here the output of the DMA API for the carveouts, which should be more
  * correct.
  */
-void *rproc_da_to_va(struct rproc *rproc, u64 da, int len)
+void *rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct rproc_mem_entry *carveout;
 	void *ptr = NULL;
diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
index 493ef9262411..004867061721 100644
--- a/drivers/remoteproc/remoteproc_internal.h
+++ b/drivers/remoteproc/remoteproc_internal.h
@@ -50,7 +50,7 @@ void rproc_exit_sysfs(void);
 void rproc_free_vring(struct rproc_vring *rvring);
 int rproc_alloc_vring(struct rproc_vdev *rvdev, int i);
 
-void *rproc_da_to_va(struct rproc *rproc, u64 da, int len);
+void *rproc_da_to_va(struct rproc *rproc, u64 da, u64 len);
 phys_addr_t rproc_va_to_pa(void *cpu_addr);
 int rproc_trigger_recovery(struct rproc *rproc);
 
diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
index 04492fead3c8..2fd14afb3157 100644
--- a/drivers/remoteproc/st_slim_rproc.c
+++ b/drivers/remoteproc/st_slim_rproc.c
@@ -174,7 +174,7 @@ static int slim_rproc_stop(struct rproc *rproc)
 	return 0;
 }
 
-static void *slim_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *slim_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct st_slim_rproc *slim_rproc = rproc->priv;
 	void *va = NULL;
diff --git a/drivers/remoteproc/wkup_m3_rproc.c b/drivers/remoteproc/wkup_m3_rproc.c
index 3984e585c847..0e8082948489 100644
--- a/drivers/remoteproc/wkup_m3_rproc.c
+++ b/drivers/remoteproc/wkup_m3_rproc.c
@@ -80,7 +80,7 @@ static int wkup_m3_rproc_stop(struct rproc *rproc)
 	return 0;
 }
 
-static void *wkup_m3_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *wkup_m3_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
 {
 	struct wkup_m3_rproc *wkupm3 = rproc->priv;
 	void *va = NULL;
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 16ad66683ad0..f84bd5fe0211 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -374,7 +374,7 @@ struct rproc_ops {
 	int (*start)(struct rproc *rproc);
 	int (*stop)(struct rproc *rproc);
 	void (*kick)(struct rproc *rproc, int vqid);
-	void * (*da_to_va)(struct rproc *rproc, u64 da, int len);
+	void * (*da_to_va)(struct rproc *rproc, u64 da, u64 len);
 	int (*parse_fw)(struct rproc *rproc, const struct firmware *fw);
 	int (*handle_rsc)(struct rproc *rproc, u32 rsc_type, void *rsc,
 			  int offset, int avail);
-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
