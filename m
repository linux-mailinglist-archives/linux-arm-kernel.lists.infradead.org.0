Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427221B80AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYEO9h3LSjSXFAk1LlVJrFgXGVC30RejgD8+E8DqpG8=; b=u+PpMROzdVbQSO
	stHjxQUi1hWG0iyisa1Q5bUhLVrRdgCD+PazP1/vUBK6iDGHadG7eR4qmc4FEnL2VnDveyfPFLwV4
	LW1Ss+hDMgr2YJWjUcvcFJ3H0QKMo12VRRaDKqy3iNbS2MjvTg+F3Bu4mfX85VzWRKUMmTUOxMfp9
	j4vf97/lMBlceHB41b2q3HbVEFJRLhnwdYv5AwjFvi+UhKVwz2QP3MnL8o3Jfv7bYX5ViUEG0WBGy
	Pg/z/YdqrSOh/eV7g7jLTu7MW96Ucw2qICZr4a08ffAzo1c6CvI0GFGq0vgSZONSmJxqM4xiB1Pbc
	JYVHLq22bE+4JzcLEpSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4vw-0007Kd-Qy; Fri, 24 Apr 2020 20:28:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sy-0004kQ-5V
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:22 +0000
Received: by mail-pg1-x543.google.com with SMTP id d17so5174016pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fqZ+BJyxifVcrtE3LQT7/v41/moffbFoiyW2JFMtzmM=;
 b=KlbzOYZF4XuoC0+4q2eozDIEdNHu5c84JN2Jf1E9xX5EKrw3Hnkon8pPEloKgp49+B
 yt4yJ04XEeH1shSmHH+bhF1X3jfdN6XbStt0azopWfmuHfy4E/gC2oIuOvSSFmYTV93O
 324Qicy4CJQfu8A4yNSGQc9dbaCQL+9hbsiYPPB14/HrEBMhNau/1cn+E+2JAakqiOpT
 4SU/HfyRKARtZuxSB499DIXysvhRzB1QI6EpaLSGjayRHkbn37cYV/35aYaQSm1nNBFj
 sCiNGzO0wbcSkC5BJgpqu1fKqXFSjHTiA+L/L1vlUWzHZek6UgAFb6k2ODMxwG+NZzy9
 6R5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fqZ+BJyxifVcrtE3LQT7/v41/moffbFoiyW2JFMtzmM=;
 b=Og5/s6xKQADP2qVxGnsWih7VxSJGPma8fYI6KA+bKx3OsUwaKARrCIoxtyVMbu0SWu
 XkIwtrrJAKN4IlkgBF6BS5GEMEic2smXs+9F2XwPKVytn9TJ9w8IF1hFEaPlzX6WyCzM
 /tTbXTbNBUGtyCakUtpiDeGLYflvDiURqOxbkm9AbJKQbss5xm98pDeuUddpnAf3JxRG
 EcEts5P6B00ekp7ckeis+Ys1+M2rt0o399cFWAmlOdaY5IZ8I1CnPCl9ol/6t0U5/2pg
 yNyIU/0rLh9aVd0AmJF4mtKD8jdZ8T7J7a2x5VahyurFOrM6fQ5Pwjs8PIDxvP+Nq3cv
 n5yQ==
X-Gm-Message-State: AGi0PubyMxl5xauxngNQGpBhHIImZNVGpkTbLKG8dPO9XngzijlP2SY1
 iGE1JrF071RmJDF4o7xfhR3RuQ==
X-Google-Smtp-Source: APiQypJ/18O8EzmmOyV9pza2XTZukTkmU7hCPlE0hRPLSf//lsxriH6VEC17D+y2boj6LQTLZh8jOw==
X-Received: by 2002:a65:6250:: with SMTP id q16mr11309222pgv.9.1587759919091; 
 Fri, 24 Apr 2020 13:25:19 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:18 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 10/12] remoteproc: stm32: Introduce new parse fw ops for
 synchronisation
Date: Fri, 24 Apr 2020 14:25:03 -0600
Message-Id: <20200424202505.29562-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132520_243931_6574E8A8 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce new parse firmware rproc_ops functions to be used when
synchonising with an MCU.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 51 +++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 86d23c35d805..b8ae8aed5585 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -215,7 +215,34 @@ static int stm32_rproc_elf_load_rsc_table(struct rproc *rproc,
 	return 0;
 }
 
-static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
+static int stm32_rproc_sync_elf_load_rsc_table(struct rproc *rproc,
+					       const struct firmware *fw)
+{
+	struct resource_table *table = NULL;
+	struct stm32_rproc *ddata = rproc->priv;
+
+	if (ddata->rsc_va) {
+		table = (struct resource_table *)ddata->rsc_va;
+		/* Assuming that the resource table fits in 1kB is fair */
+		rproc->cached_table = kmemdup(table, RSC_TBL_SIZE, GFP_KERNEL);
+		if (!rproc->cached_table)
+			return -ENOMEM;
+
+		rproc->table_ptr = rproc->cached_table;
+		rproc->table_sz = RSC_TBL_SIZE;
+		return 0;
+	}
+
+	rproc->cached_table = NULL;
+	rproc->table_ptr = NULL;
+	rproc->table_sz = 0;
+
+	dev_warn(&rproc->dev, "no resource table found for this firmware\n");
+	return 0;
+}
+
+static int stm32_rproc_parse_memory_regions(struct rproc *rproc,
+					    const struct firmware *fw)
 {
 	struct device *dev = rproc->dev.parent;
 	struct device_node *np = dev->of_node;
@@ -268,9 +295,30 @@ static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
 		index++;
 	}
 
+	return 0;
+}
+
+static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
+{
+	int ret = stm32_rproc_parse_memory_regions(rproc, fw);
+
+	if (ret)
+		return ret;
+
 	return stm32_rproc_elf_load_rsc_table(rproc, fw);
 }
 
+static int stm32_rproc_sync_parse_fw(struct rproc *rproc,
+				     const struct firmware *fw)
+{
+	int ret = stm32_rproc_parse_memory_regions(rproc, fw);
+
+	if (ret)
+		return ret;
+
+	return stm32_rproc_sync_elf_load_rsc_table(rproc, fw);
+}
+
 static irqreturn_t stm32_rproc_wdg(int irq, void *data)
 {
 	struct platform_device *pdev = data;
@@ -544,6 +592,7 @@ static struct rproc_ops st_rproc_ops = {
 static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
 	.start		= stm32_rproc_sync_start,
 	.stop		= stm32_rproc_stop,
+	.parse_fw       = stm32_rproc_sync_parse_fw,
 };
 
 static const struct of_device_id stm32_rproc_match[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
