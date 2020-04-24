Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E401B80A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULw3V9tH9ORb6T1ABThv1BMW6OPauNVvyxDkoI1mPwA=; b=udAEBWuQPFL8KO
	q5A/0eI1kHE7+JY/k3UGB0XenrecLQ6aGmeEiQolh4B4+kWCX2tLR6c20MiijLgDVIGmg2rxvQNKm
	xk6x1xJXlAG/wl9Wwhh0Ua8jBC2Vf/d4ILgXq8wL5A3JbYszBbo26pGFiHLXOKAKiPRzY/dAZMHmZ
	86I0zmJDg1uUHICpplgp0C8IoqtQuUSBm+q2vdLkeDYgwaNnCrf2eENE922dJbijLvOmRHRBhgNR9
	Fwl7WKshBunoLeluFMMlU/SJ5f/75jip5CQpSaf6rSXK7LEIQ1RVqOLEjcnDIyAq1nvxQmy9cOwRB
	pNj3GNeWxutAaZ2kBtyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4uP-0005j9-J3; Fri, 24 Apr 2020 20:26:49 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sr-0004gQ-WE
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:16 +0000
Received: by mail-pj1-x1043.google.com with SMTP id y6so4336743pjc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8pkHvjPLwA96bIGz2NSSF7mXbbhD0VV71pWPGube4rE=;
 b=bBYjk7oGchLHLu2fhyb+5w8E3eMQmDXLajYwnSEoNKZRaYmkH0vi8FbFTDbUvVRsr8
 1kQ/9bmhSE9nEd0h8GciZnigyFT77H7YY3aEtLzrHHMfMG/paQO+0fWET24ArhZqHg3c
 vqdwlGoPskGInUqnaGxRnd2S8rBW6Fmj3W7VsY8JPtJkKnY/T5nKIfI7iR74vB69yuvV
 LmlaLQ8SiaFPpCkXS+0veavIxJ+YUQQsis25rSSvRTKWi/soBPN2Bdaf8IYVJ0TNJuqM
 zs5BXVrG20QdavJxkRWBiRJ0w9dkN4jxu1vN6mAggY6wBIiWECeO1jFR6r+iMr8S6B1k
 HarA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8pkHvjPLwA96bIGz2NSSF7mXbbhD0VV71pWPGube4rE=;
 b=ebGypO6zNf81qpFoHzI29WkHVc5MPvUhg4xAO3CixZ7JeePpRfpdxBxFHDkcH2zkkJ
 WBn4AzyIWehVf1UcpRD051KW4/8gY+qy6skxScSN5L4POTx/CIPPZyXQVuiA3iZBOND1
 Ag6KbnekSdgpcXfqVQJCk1R1Mfmkl3EpwAbfVg7yrkjZmeNgzQPFQ7DnnQ5c9qyZVIhn
 u2sA4UXYtwUSArBf4pgOJKJMo4RuUnlHis0ky0pxLklSEitFQJLsjN9z8mdK2LyXTCTs
 45q1G8g9GC0L5aapOsNNGN4oQbJp0AZwYOlG/EtFjZw1J2+GTnclv2pTuoZtTPzINSOW
 efLg==
X-Gm-Message-State: AGi0PuZY754NSWTYG+kc8IAGcbhzTvdQ/6oxZHhoEgMO6GHfSS4n0Aa8
 Cdti6hDCYgrR7ZepjSEhCJT6NA==
X-Google-Smtp-Source: APiQypI45S+tU5qGacvuJcZRdZ1Rko8UnR0Z/uIU3/5Gk8Rmx2uzncC3GiqshF8IMa1UpBS4OILd+Q==
X-Received: by 2002:a17:90a:101:: with SMTP id
 b1mr8385987pjb.154.1587759913129; 
 Fri, 24 Apr 2020 13:25:13 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:12 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 05/12] remoteproc: stm32: Parse syscon that will manage M4
 synchronisation
Date: Fri, 24 Apr 2020 14:24:58 -0600
Message-Id: <20200424202505.29562-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132514_049124_CC837750 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

Get from the DT the syncon to probe the state of the remote processor
and the location of the resource table.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 658439d4b00a..a285f338bed8 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -70,6 +70,8 @@ struct stm32_rproc {
 	struct reset_control *rst;
 	struct stm32_syscon hold_boot;
 	struct stm32_syscon pdds;
+	struct stm32_syscon m4_state;
+	struct stm32_syscon rsctbl;
 	int wdg_irq;
 	u32 nb_rmems;
 	struct stm32_rproc_mem *rmems;
@@ -606,6 +608,30 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
 
 	*auto_boot = of_property_read_bool(np, "st,auto-boot");
 
+	/*
+	 * See if we can check the M4 status, i.e if it was started
+	 * from the boot loader or not.
+	 */
+	err = stm32_rproc_get_syscon(np, "st,syscfg-m4-state",
+				     &ddata->m4_state);
+	if (err) {
+		/* remember this */
+		ddata->m4_state.map = NULL;
+		/* no coprocessor state syscon (optional) */
+		dev_warn(dev, "m4 state not supported\n");
+
+		/* no need to go further */
+		return 0;
+	}
+
+	/* See if we can get the resource table */
+	err = stm32_rproc_get_syscon(np, "st,syscfg-rsc-tbl",
+				     &ddata->rsctbl);
+	if (err) {
+		/* no rsc table syscon (optional) */
+		dev_warn(dev, "rsc tbl syscon not supported\n");
+	}
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
