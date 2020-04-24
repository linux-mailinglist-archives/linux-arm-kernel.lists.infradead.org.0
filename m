Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546021B80A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7C8GJ1o4XgiNKM4yx8AuI5j2P664d1XMJhwIFPjtNsA=; b=GAPPMLe0I/wdJL
	cDj1cF3mk/w+KuvqfHY60K2BH+sMN+8pjGV3bu94Om/7Cr3++wkjznmXoTlCIKcLB1Z1GR+2ToOdp
	cv19NfPwVWvOglouXJs1KiJJgjax6kuiiQinQDKISymvqsKFHWfcbgH9GFUw8aq1NvM8tyU1MzFNE
	wI+VzfEFpqOcOwS0O6a07AIsLTrmTQwiFB/ZiZk3Nsb/7gJE5xNrHO0Vp3xFX6g/k0PiQQc+BkL33
	JqP6Jzc7z6AOLu1hPLnWmMRodLhn4HmjyVKcUCw/THR2srZvo87oFHRC8HLpqrGZgfSBTOEsfAk8L
	CJYY2sGPoa4eQ1hi1P8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4uD-0005Sz-E8; Fri, 24 Apr 2020 20:26:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4ss-0004hD-To
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id 18so4123996pfv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zvzC6gFPrPdzFl23lN2WuH5nBg+m021+fv4zS7XCe30=;
 b=JeSlOzJKUAlEQUUjc556FCSgmbLt7CRMMtZBI1ImTGOTQhqVQ47j1XgWFoD7gm7l3G
 G2OyjQRAXMotr3RA+1MdoK9ggCmO/iFqzu9YHxQkHfOhYqo39Rp0RCPnIK8k8nrt/pb/
 tF7s+f7d591EiuvECYRAcbhuxwo3yLUpfrYnofrrg7WWWeZ8WjLLRuO2i3xz4j8B1jpX
 ENW4ZcVeUz+SrLcKK49KaAZ9/fUlBMlMTuOMcsFFrcDL/ZKi5HXmg1P8Yi6jcGAgf7Or
 ZUHmtP4ISsKMs/b84P2+NxEV7oiNwQ/OtOIETDBID/tue4ztejeiC3HPuVEvEJj9sgwx
 Ghjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zvzC6gFPrPdzFl23lN2WuH5nBg+m021+fv4zS7XCe30=;
 b=GiZeCFWbDPfU1tSmuLr/od2czuFxhu1fBduE/8I/KWpljHZir9wvEQN9TrNBQyD2v5
 UalXjxaVqzx/GgmCVhPXd9shCp6QGu8kvBZOU9GX0MIBeAgzxUeXqbpPXbOBBNz+gMNv
 9dIJK10TFcctOh3gPgLD+bGHGF9lmOCxtK1EH6d0yDm1mLcs9RVKdMd5DKn+DhKHJ//S
 2hld2+NpEQYVLmVMJKZctJXZ915qrgYvU8k85pELQm4BCPG4exJzy1IuYiLvgdVyZGe1
 ikXj6SJYP1E9opOXYqexw4lPHjeFPLW5n7EDjUyVDGFZkh2WCjvRUXKDaAByzR0sgdzw
 Jo4g==
X-Gm-Message-State: AGi0PuZtdHW8Kx1eEcZIHJbvxrAht3PwRANkvyyhkl3Mmwy7Vie+V7ee
 IfRTFl1ASHm+Gnu3RFw5brO8iA==
X-Google-Smtp-Source: APiQypL/FJQ9p9P0ruo1sUrpqRRDWLFXA2JvJ7Rs260rkeJu2EjUNFy/ALDcgjJW5wPGudCeO89+Yg==
X-Received: by 2002:a63:1e1f:: with SMTP id e31mr3966444pge.393.1587759914468; 
 Fri, 24 Apr 2020 13:25:14 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:13 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 06/12] remoteproc: stm32: Get coprocessor state
Date: Fri, 24 Apr 2020 14:24:59 -0600
Message-Id: <20200424202505.29562-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132514_980754_2E974646 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Introduce the required mechanic to get the state of the M4 when the
remoteproc core is initialising.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
---
 drivers/remoteproc/stm32_rproc.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index a285f338bed8..89fbd2ffac93 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -38,6 +38,15 @@
 #define STM32_MBX_VQ1_ID	1
 #define STM32_MBX_SHUTDOWN	"shutdown"
 
+#define RSC_TBL_SIZE		(1024)
+
+#define M4_STATE_OFF		0
+#define M4_STATE_INI		1
+#define M4_STATE_CRUN		2
+#define M4_STATE_CSTOP		3
+#define M4_STATE_STANDBY	4
+#define M4_STATE_CRASH		5
+
 struct stm32_syscon {
 	struct regmap *map;
 	u32 reg;
@@ -635,12 +644,23 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev,
 	return 0;
 }
 
+static int stm32_rproc_get_m4_status(struct stm32_rproc *ddata,
+				     unsigned int *state)
+{
+	/* See stm32_rproc_parse_dt() */
+	if (!ddata->m4_state.map)
+		return -EINVAL;
+
+	return regmap_read(ddata->m4_state.map, ddata->m4_state.reg, state);
+}
+
 static int stm32_rproc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct stm32_rproc *ddata;
 	struct device_node *np = dev->of_node;
 	struct rproc *rproc;
+	unsigned int state;
 	bool auto_boot = false;
 	int ret;
 
@@ -664,6 +684,15 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (ret)
 		goto free_rproc;
 
+	ret = stm32_rproc_get_m4_status(ddata, &state);
+	if (ret) {
+		/*
+		 * We couldn't get the coprocessor's state, assume
+		 * it is not running.
+		 */
+		state = M4_STATE_OFF;
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
