Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225DE1EA90B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqjjgV6STArtKIcbA9qsn/vAmNbTfzM3+gqmrtVxWhk=; b=pUUi/3ex2nc9nj
	K/vgNQoDjOg+TZLx1ytKKXDYr2uvd4g773LJFDpZGMk/W/GN1NbwK+AqInGt97+94JWW6k/zNr1Km
	iZ2fm5yee5/g6k4CkZGICMf/0HCwDd+U/57jokf10CdviEdZAEbbV0mKwDnHMxQbMFsawaH8yjkXn
	+7bUCoWI4l5jmcuHKq95D21OGD9PVf8eSTkHU2r8pWbNLcpVjZD5vJBHJv5oFLIo11s5uzQzSPllH
	mtH9NvqSyJWB7T9NtlwcqC0Z1kdJKTnBM5LqXuf1zQ2O2kC2DIS2/DnbIE7ONvUiHRjTha3A76479
	7mC1m6gUg9yewxGp3rHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfohS-0006X6-Se; Mon, 01 Jun 2020 17:58:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofO-0004aP-3j
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:56:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id n9so264172plk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UGa03lX7GA8URIieK7PnLLIsoaCKdhXRKV0c6GJ73tI=;
 b=fHad1ZlRXRd6UFFqcnWYGebp/1qiqu6I6YG7lmTYQPfLmvzU3ili028ezh0WLK6pL9
 Soka818wrsXboZC9AvizDk68exysKOKDQ1RcJCPKrE+/0vdSZ/cmiawUXYna4OKrGuv8
 tBBUKyqOoaSXMrxEoXGWa+62ZlZXjm7bGFY5nIm1riaCWiEDMRngQrWDF45EXUCBin4K
 ZyX2u202Adr0pTbCPrmrJOn7CDMj65Tcgy6v/bALMyxvMBhv/9dfcX6yUpJTZ/esArXm
 QzGuovIftcEXt3zk1WrFNj7qPB6ldEVUAqa4wN8mb2ouUlCm02CQW4ojpI7EKCJiXb1S
 fbrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UGa03lX7GA8URIieK7PnLLIsoaCKdhXRKV0c6GJ73tI=;
 b=RQ36Xe5iNQKR7WWVpqiJcQOAVewajcyI27mJUsbedP8u1ZVMccBg3z8zOlEcD9rs0g
 y4ckH6f9/3TwIGRqhtgTyf2OJBo6M2/MouEezvOrO0IPV/Kaxx3TrTKo3hq6EG7XjSdV
 2VL66r8XwcVbN8lzAkiKwooiqssVLwNO6GAfdxE3btADe8iIyYEZRkpXYNbjsZyEUrp+
 XpAoJxJjU3RvRdZk72s49TShKjGFxqY2q44LN+huFdC5buBRvNu0mYQthaJsGEqLHLXd
 Lu1xZbReMHlCtZlBNi/fz65ObNj3id+gHNHNAA0hgfkecW9J5oslDQFa3PGaQQv2nqIj
 e8aQ==
X-Gm-Message-State: AOAM533qZFdpK7OvkvNaiTDhUgthqU+Rg+Rg4/1G6VSiZC+mV4bRWB/T
 kP/G1s6o8eRkRrX37v2sYY3nEA==
X-Google-Smtp-Source: ABdhPJxo+rRAuznsmQHkRYV/lgJKQUgNvxDihegVF54QvvvmZmMN1dJgN7m3M9TYTxlxRQLGujQuYA==
X-Received: by 2002:a17:90a:7787:: with SMTP id
 v7mr598171pjk.199.1591034164890; 
 Mon, 01 Jun 2020 10:56:04 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.56.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:56:04 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 08/11] remoteproc: stm32: Split function
 stm32_rproc_parse_fw()
Date: Mon,  1 Jun 2020 11:55:49 -0600
Message-Id: <20200601175552.22286-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105606_162630_63E1CD06 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Split function stm32_rproc_parse_fw() in two parts, the first one
to parse the memory regions and the second one to load the
resource table.  That way parsing of the memory regions can be
re-used when attaching to the remote processor.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 2154c8b90a2a..9316ce3b03c2 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -212,7 +212,7 @@ static int stm32_rproc_elf_load_rsc_table(struct rproc *rproc,
 	return 0;
 }
 
-static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
+static int stm32_rproc_parse_memory_regions(struct rproc *rproc)
 {
 	struct device *dev = rproc->dev.parent;
 	struct device_node *np = dev->of_node;
@@ -265,6 +265,16 @@ static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
 		index++;
 	}
 
+	return 0;
+}
+
+static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
+{
+	int ret = stm32_rproc_parse_memory_regions(rproc);
+
+	if (ret)
+		return ret;
+
 	return stm32_rproc_elf_load_rsc_table(rproc, fw);
 }
 
@@ -692,15 +702,20 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (ret)
 		goto free_rproc;
 
-	if (state == M4_STATE_CRUN)
+	if (state == M4_STATE_CRUN) {
 		rproc->state = RPROC_DETACHED;
 
+		ret = stm32_rproc_parse_memory_regions(rproc);
+		if (ret)
+			goto free_resources;
+	}
+
 	rproc->has_iommu = false;
 	ddata->workqueue = create_workqueue(dev_name(dev));
 	if (!ddata->workqueue) {
 		dev_err(dev, "cannot create workqueue\n");
 		ret = -ENOMEM;
-		goto free_rproc;
+		goto free_resources;
 	}
 
 	platform_set_drvdata(pdev, rproc);
@@ -719,6 +734,8 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	stm32_rproc_free_mbox(rproc);
 free_wkq:
 	destroy_workqueue(ddata->workqueue);
+free_resources:
+	rproc_resource_cleanup(rproc);
 free_rproc:
 	if (device_may_wakeup(dev)) {
 		dev_pm_clear_wake_irq(dev);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
