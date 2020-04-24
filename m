Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35C51B80A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XU8VdhvEHONM0M91KQ6qH+McL6zR1FpD9GMqMo/FVNg=; b=g/2dpuI9shdtFq
	+FiwfMj1TOKhobWaSlK9NPOH4oqP5/eYSWRAfemMorgQHBKEIRsQUZevqXU2A34pGXl7V8cWjLQQg
	yqTIUpVBT2d/EMCGqJljtHlsg24VBaH+2gYtEeIe/RGWMikrrS36+r2ROWHJ66gjqLf+TuD0F81tM
	PLlKucodjLSBgNQSSV1Anw+yznxbqNWyy8bgPAGTrlHoGarhzihVDJXErFuFMjmIcCc1FsjVbZcZ6
	mF7LuUdo+haFo68sQv+0DT28DlHxU5c2Z8PCba5PK4gY460T33Ukx9eJt1eFjfw6B1TkyFW1Jo7gd
	zIkXWfHTdywa1MVtFwHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4v8-0006Z5-K1; Fri, 24 Apr 2020 20:27:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4su-0004hb-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:18 +0000
Received: by mail-pg1-x542.google.com with SMTP id s18so2481741pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b/9JpqDGNjADvobyqVov6ERIhhQq5sF+ThZw9VRS9LA=;
 b=xQjAWYd18hiyO5V0QYqMaeY/LOdTA4JZkq26bNfHGDnNHufoeImakGwcRqMqD/UJ/i
 sdrA3YIk6Lfs+FNXCOoz3StXLJ4psRo+5Yh358CRePGLe7idf/RriCP5/ghspMrKrmeo
 T5vJhITHRiJoRuvvzHAzt6EOde+AQhFYK+U4Gb2HTyDwNV5NQdy9Iurcg1StWCblJt83
 j8tWeyYw5FFZldBDlWNPMYpfW6rG+zP/mRhLcAAt9klkpEOfYlLcGkNTDK9ol2He5pM2
 YMjoSOhkewz8RIFgQvMkUI9NmYLBU3RlG3KpqUH16yeJ0CnVEHCBEd4qinSRilbr0opl
 JxZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b/9JpqDGNjADvobyqVov6ERIhhQq5sF+ThZw9VRS9LA=;
 b=AkTydb5YKNlDmCTgv+Ci9E45nVBNoCDDmJYYzIOeISIkAt9w0XxIHOrYkB7F/Lj1LG
 VYA/X8MTVlxzj6XBPkGv9L93Cqz6pWpdP0P6wGoT55TGP8SiwyAGJ2PSnpxhgqh4psc0
 WTMssh267+4W9c4xV/H+mTRAPEE9UJiu5mxrR0hVXCX3PPKnL2iDD/59QqOTPb2tdJpJ
 RI9ykr5s4gqJR9Aj9dKQCt857BABweLeTep+tddWGvyDTcj74NP5ZphzRSAPXtAZEBl6
 K96IxuAc5qIiLvr+mFE5CaNi+bJRLB2PuKv17hwT8PgCEmDxKuJfRxFZgSaUIsJHBJPZ
 SLDg==
X-Gm-Message-State: AGi0PuaLb7ZDmAg0v7vhspv460EjWaj7w6eKf7IX0J7QMVrlFS9U6CBG
 b/+8emqRL8Ch0zf5Oft4gtDNKQ==
X-Google-Smtp-Source: APiQypKvE8p2FywM7VzGssyzNtyoJ0xFr1VQpH55vlxHbQ3oxi6AN5pG5j6hhe2QldpyI8sgdKvZxQ==
X-Received: by 2002:a63:b954:: with SMTP id v20mr10481894pgo.100.1587759915628; 
 Fri, 24 Apr 2020 13:25:15 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:15 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 07/12] remoteproc: stm32: Get loaded resource table for
 synchronisation
Date: Fri, 24 Apr 2020 14:25:00 -0600
Message-Id: <20200424202505.29562-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132516_573050_CF3379D7 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Get the resource table location when synchronising with the M4 so
that the remoteproc and rpmsg subsystem can be initialised properly.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 66 ++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 89fbd2ffac93..8ba69e903851 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -87,6 +87,7 @@ struct stm32_rproc {
 	struct stm32_mbox mb[MBOX_NB_MBX];
 	struct workqueue_struct *workqueue;
 	bool secured_soc;
+	void __iomem *rsc_va;
 };
 
 static int stm32_rproc_pa_to_da(struct rproc *rproc, phys_addr_t pa, u64 *da)
@@ -654,6 +655,65 @@ static int stm32_rproc_get_m4_status(struct stm32_rproc *ddata,
 	return regmap_read(ddata->m4_state.map, ddata->m4_state.reg, state);
 }
 
+static int stm32_rproc_da_to_pa(struct platform_device *pdev,
+				struct stm32_rproc *ddata,
+				u64 da, phys_addr_t *pa)
+{
+	struct device *dev = &pdev->dev;
+	struct stm32_rproc_mem *p_mem;
+	unsigned int i;
+
+	for (i = 0; i < ddata->nb_rmems; i++) {
+		p_mem = &ddata->rmems[i];
+
+		if (da < p_mem->dev_addr ||
+		    da >= p_mem->dev_addr + p_mem->size)
+			continue;
+
+		*pa = da - p_mem->dev_addr + p_mem->bus_addr;
+		dev_dbg(dev, "da %llx to pa %#x\n", da, *pa);
+
+		return 0;
+	}
+
+	dev_err(dev, "can't translate da %llx\n", da);
+
+	return -EINVAL;
+}
+
+static int stm32_rproc_get_loaded_rsc_table(struct platform_device *pdev,
+					    struct stm32_rproc *ddata)
+{
+	struct device *dev = &pdev->dev;
+	phys_addr_t rsc_pa;
+	u32 rsc_da;
+	int err;
+
+	err = regmap_read(ddata->rsctbl.map, ddata->rsctbl.reg, &rsc_da);
+	if (err) {
+		dev_err(dev, "failed to read rsc tbl addr\n");
+		return err;
+	}
+
+	if (!rsc_da)
+		/* no rsc table */
+		return 0;
+
+	err = stm32_rproc_da_to_pa(pdev, ddata, rsc_da, &rsc_pa);
+	if (err)
+		return err;
+
+	ddata->rsc_va = devm_ioremap_wc(dev, rsc_pa, RSC_TBL_SIZE);
+	if (IS_ERR_OR_NULL(ddata->rsc_va)) {
+		dev_err(dev, "Unable to map memory region: %pa+%zx\n",
+			&rsc_pa, RSC_TBL_SIZE);
+		ddata->rsc_va = NULL;
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
 static int stm32_rproc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -693,6 +753,12 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 		state = M4_STATE_OFF;
 	}
 
+	if (state == M4_STATE_CRUN) {
+		ret = stm32_rproc_get_loaded_rsc_table(pdev, ddata);
+		if (ret)
+			goto free_rproc;
+	}
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
