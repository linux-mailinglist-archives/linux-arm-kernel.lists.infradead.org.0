Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041541B80AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDvNKYmltsYAdfNNtvKprXvjHL1A/PnlnCan4uwVbOE=; b=gKlM8H76X+iMgV
	hmeTlkO/oeWLw0V+z4vHIXmnfi5XNlWswx9RdAIV7SmRHKqg/u7ULDKAJca8NFGJRRNrRVEZgSWzQ
	bXS/l7wllvmCvotCas08nsBDcC1A/Qghlwc/qHgJjF1U/LSHhe/6ZbGhrtOL+3cC1BMTnGFswn/FQ
	3FnTnwuqbFSLwoHtQH5bt21DpqLL1s4I+zlcdtRwaKs0hlzC36k3AGD0W5hi/+AMc71WxLw4j0Hry
	uh6IWsSmeutyrpMYSY+cRQwMjx5Jx7xc4zXmgv2v41SUKIn62PRrANX3t/OXYdGI///WfBT0j+8Wf
	YCYJfw0LY0hcAYZUHVsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4wU-0007rb-Od; Fri, 24 Apr 2020 20:28:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4t0-0004nR-OZ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id r14so5349509pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kG2iXiDOAlrBuv2wqeB6r8YKH3F8C14k21yMdoM6KR8=;
 b=IYmAPTxMHxW01D1OdVg6js0cI3JraeOKhnKiDvx7CwBKWa6HBJ5zMo2JXOk06e/Sk6
 z+nio/13fncpMdAUX7spt/kaAdFvjjhFr27I5IGkEnpyq5itIbJ0DZadSC1kV0kfU/VG
 KIXb/wx4Kwy0Mv7cMRsloIra5uyuvT9FtN9fxkamelqavtEsRm76jY+Wvkc4oyMTAquw
 rC3J1uAtJ2ew8ID6OijjWwnBJ8HaNk8LwVmSMfuZ5btvxQLoMOiTZl0oQtLYU4f9iD3j
 WRpWAniZVy7XJpx+Zexi4t9p9A9yjEGUR2K8OpOexgNyGxG/SY7LUmS5ytP8iAuFCN7J
 yHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kG2iXiDOAlrBuv2wqeB6r8YKH3F8C14k21yMdoM6KR8=;
 b=ZfMKJaS4yITY6zOUwMZT1+4ShJnPZwh1ernzvjmJTO73lNgj6Bm/sFNqcyE3QDs4RK
 pJD/jqrm5HaZDd6N655dVSvr80g1/kZHxVkZS6Oi4A/yWKx+vvQTyFRT21NODD1GYW2g
 zsO7hJNjDC/2OPsLqGUdQzLufID6SzxjTNPshK7EX/yZpjRFo0Z6eR88pKZvIjSH4b2M
 myqRcEmJi+QrdiRac1O7iWQYL4CrmNQv8Y7mEi0pU4GtK+Cv87MmRVUx8DnQswgx+682
 EvCJHIbfwDT3uKVbB0obcZbCcfJoITECrISUwItZtwDgC/FnjAq17CtHjT+HRNEKCynA
 QhNw==
X-Gm-Message-State: AGi0PubZCb+Ez6J6pzgdgzguqp0Tc7oKRfPT1DtM1U1TZlGXKFfngypA
 XfIPjy+aeM1qmnb521b08Txt8Q==
X-Google-Smtp-Source: APiQypKviZ6PkeE83136I1kJAdKrTrljVnv7Q8b8j/LsmS+zqipjOpZk/taRmaQdP/cWXjJXLqB8TA==
X-Received: by 2002:a63:4a59:: with SMTP id j25mr10666444pgl.336.1587759921334; 
 Fri, 24 Apr 2020 13:25:21 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:20 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 12/12] remoteproc: stm32: Set synchronisation state machine
 if needed
Date: Fri, 24 Apr 2020 14:25:05 -0600
Message-Id: <20200424202505.29562-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132522_798003_7A7E2A74 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Set the flags and operations to use if the M4 has been started
by another entity than the remoteproc core.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index dcae6103e3df..02dad3f51c7a 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -598,13 +598,20 @@ static struct rproc_ops st_rproc_ops = {
 	.get_boot_addr	= rproc_elf_get_boot_addr,
 };
 
-static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
+static struct rproc_ops st_rproc_sync_ops = {
 	.start		= stm32_rproc_sync_start,
 	.stop		= stm32_rproc_stop,
+	.kick		= stm32_rproc_kick,
 	.parse_fw       = stm32_rproc_sync_parse_fw,
 	.find_loaded_rsc_table = stm32_rproc_sync_elf_find_loaded_rsc_table,
 };
 
+static struct rproc_sync_flags st_sync_flags = {
+	.on_init = true, /* sync with MCU when the kernel boots */
+	.after_stop = false, /* don't resync with MCU if stopped from sysfs */
+	.after_crash = false, /* don't resync with MCU after a crash */
+};
+
 static const struct of_device_id stm32_rproc_match[] = {
 	{ .compatible = "st,stm32mp1-m4" },
 	{},
@@ -803,6 +810,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	struct stm32_rproc *ddata;
 	struct device_node *np = dev->of_node;
 	struct rproc *rproc;
+	struct rproc_sync_flags sync_flags = {0};
 	unsigned int state;
 	bool auto_boot = false;
 	int ret;
@@ -837,11 +845,17 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	}
 
 	if (state == M4_STATE_CRUN) {
+		auto_boot = true;
+		sync_flags = st_sync_flags;
 		ret = stm32_rproc_get_loaded_rsc_table(pdev, ddata);
 		if (ret)
 			goto free_rproc;
 	}
 
+	ret = rproc_set_state_machine(rproc, &st_rproc_sync_ops, sync_flags);
+	if (ret)
+		goto free_rproc;
+
 	rproc->auto_boot = auto_boot;
 	rproc->has_iommu = false;
 	ddata->workqueue = create_workqueue(dev_name(dev));
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
