Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C131EA90F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcrfFMxHtZRfzn87dDu/FQYc8eQU779ymHPmSAXEZn0=; b=TEFpGyVp1Z9RQa
	drKcBHxSGJsRd6S7UXkra8gJl/B/aJF7gRHkOuqfIkaTszzt6BJsObPUMOhc4hYC3FWB6iUSWu2aV
	KEOQaVBA92fJIg7dieEJBo7DtFiBFE77UysIS9jzK9idRViIgpnuh2lOMkyUyQowCODLZZvKILCOP
	Y6t6aXtftelDxR56CGxxX1A5MlGbmrixVr3KZMVi8cgCWsCh1zwkuPH1qJ4uivEs4I0JUcX9D31pm
	fKZTlAdVllhm375HvHw8XXmN50jdY/8YwPkMWS2f/haiAM4/BE0AKF3Okn+m4L7HEaEsHXsU3wLRq
	zzqbxC1jNb4IrBg44iwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfoiF-0007Os-Ll; Mon, 01 Jun 2020 17:59:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofS-0004fO-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:56:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so255752plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u4RFNd9FFVlTeJLx02SSeMMgnm0C5Ocm0tA+r0cHo1Y=;
 b=jDpwCbFHHHOdFSOjq6a7d0+Jeda1zij/0s2YyarOhbL1q9jo+DgjNl/BLDo6Qai070
 2WLbe7LDYhcsR6Al9tIXcUq1hjSNSkJ5b37HvFu9BL8DAe3zZ4z6jWGtsBOh2laDL+VM
 IgVYA3Iv8FKeM1mbOVzl5grl6P2IqcPgjEioI8VvPUiDEJQ+s5y90Ie9Llm9B/aJnsaU
 1hJvyLWdtmO4dmDCoEE3OeIZsDrXfT+6CtGYWf0Ggvlf2vTy+KrKvrZ8VY1hoTFyQSkm
 rHd7p4AW41iHcMeRgg5GQN+kpaRrhnsrW+1K29gPT5lgGZ3DvVXMWW5RjsknN+xU8GPN
 uZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u4RFNd9FFVlTeJLx02SSeMMgnm0C5Ocm0tA+r0cHo1Y=;
 b=HHhsONQ7KL+3f8l149nXRBA0K4weOP5L2vL8a2x13Cu6iLoyRtAAqc3pe90n+aiAve
 JtaEeIfuOSeq2oKGOuqd0A5rQZxZgINQrW9ak86wb6Y4llSYsFWim4ucBUuOQQKaGvaW
 Lv2AsX2XWEWrlSLNghhzcfEeTZ+dIyUQ86XGjtIeLgZukox0IdnVR965eN3RZ5KOMH8I
 m01AHYq5+nbd+9gRE+Uv7/nUE1iYz7zAYqSEQYehau4LyzIdU1/+xzv62xEF4z6IYwOi
 RdwdaBAvc6bWLGYDsFMCh86AVNnRN0xMogUHxZmZNzL209v1FPE/5wOgsJg4FV0ZcxDh
 qrGA==
X-Gm-Message-State: AOAM533PcoHmPPB3AvgoVrkGSdwHGap/kJCGZIkdiMysda0n/efALMho
 xPj0MuhUxBFkInRQ+ecqdgvBIw==
X-Google-Smtp-Source: ABdhPJyPL4cWZZg61WZPJde8LyrsdhiEW14iaC+dVSSpI6qDWDL94WZSK2PfRnxce1jBtWI4z5ay6w==
X-Received: by 2002:a17:902:8d83:: with SMTP id
 v3mr4455323plo.27.1591034168449; 
 Mon, 01 Jun 2020 10:56:08 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.56.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:56:08 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 11/11] remoteproc: stm32: Update M4 state in
 stm32_rproc_stop()
Date: Mon,  1 Jun 2020 11:55:52 -0600
Message-Id: <20200601175552.22286-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105610_305144_3F728861 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Update the co-processor state in function stm32_rproc_stop() so that
it can be used in scenarios where the remoteproc core is attaching
to the M4.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 77a20a638e0c..ad0307aaf3d5 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -503,6 +503,18 @@ static int stm32_rproc_stop(struct rproc *rproc)
 		}
 	}
 
+	/* update coprocessor state to OFF if available */
+	if (ddata->m4_state.map) {
+		err = regmap_update_bits(ddata->m4_state.map,
+					 ddata->m4_state.reg,
+					 ddata->m4_state.mask,
+					 M4_STATE_OFF);
+		if (err) {
+			dev_err(&rproc->dev, "failed to set copro state\n");
+			return err;
+		}
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
