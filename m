Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1333F1EA8C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEAVxWCwWNzbfyVummoy7Ll/6Odg4eTEmeWoGlgG6NU=; b=g8WpPp835gi7P1
	bb5AiKzPB16xIbs91yMbTlbSx8t7NPpbqmD63ZelMPvO3TtSxO4tMZiGr4bWvTIk/8Veyo0a67OFr
	RnaK2/3PwnlqP/7t5rv3nC75pJlDA/h8iQi5tZtuwFRBpYWoPD2E3mWIsilJ0xu5tNwYSeoOo1aTL
	8NzZqtLyvHVzk1/iLkpliRzkCH7yR4y8PEkVM1vPpIknDJtZwexoSWTM5Q5AzETsR8p0sh7FSySpo
	Hh/907m7PdgfKAeaAI2QJtA3OIit0hRXd4fL/UXgTXy52pU8YYKFqXleogozMUv0C/pqppfcQSHRy
	ZC4S8AWNd6Gld1OxhJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfogf-0005kh-9g; Mon, 01 Jun 2020 17:57:25 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofK-0004VJ-47
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:56:03 +0000
Received: by mail-pj1-x1042.google.com with SMTP id i12so149488pju.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ViPzLIdY6S5F9ukM8AO/hVR30UuoYhcnMI2Jw2fXDro=;
 b=nvQCaQ6BDkTVt4N68rp3+7sk/OjINYsb1pnrOSFmRo/gwHwW1MLtNPDYyIYmMUN7va
 pAGWbWmDdudAr+B1HdFaXSDQy9VeZAFeSH/E6a92sqnzHfG9lfLVzh8eNYil7KOpas5V
 MsifJkeC4UtOyw3PTK8mW0nPUHppgrAmoEx+Irz0tFmiA4rqGRLq25pCeBMzo0dpob2+
 lAQGp4nwcRTEAsxGWAJgDmyysDFPYpDEOwin8u5jplAGUwE8IctWxAvV8Tsa6MlJrBQS
 9QRaD9k42fv/ghRMP4rXysqNHgx+j0SuDNtEhzUPdJSE/gtORupjQvx/D7d6/k1FR8ZZ
 6Wrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ViPzLIdY6S5F9ukM8AO/hVR30UuoYhcnMI2Jw2fXDro=;
 b=YJJeXburVkUOzwsM6wZkMCfCUmi17c78BYL76BrggByjZQWkmtwb+0mr2YwFM4UizO
 ZfLAv2cp+6+rO+fuK3Hm7AalALuFDJYg548AxP1Wy9FMbOHqxpqvU+G9f4OoYWgSjF3O
 D+tfGtGCuww3e3smuvdtk5xLtdPXOSnkDcEqmFNDby4aSnpWLGCeWW9dbNwltjnhwmXv
 l9RPMOLPHoZP3z+8N3dIGt1Px/3+uXvLBjvEFOFWmL1jj8rq1jeJcdiTW4jqYSkLt1XK
 Nopwnx548KSYgFnoFCY66sU45u5JB5fy6vr8oM8TZcAgcxKjgPSiucMD/emNVI9KnaWY
 4mxA==
X-Gm-Message-State: AOAM531ePLhtmGJyaRq4DaBiyBMdaeDaF1Y7IrrwmADbBwtO0Fqs8Kp+
 lsVkty5AEPZ5K5CAXODz+3k/fw==
X-Google-Smtp-Source: ABdhPJynMxDT0cCzVhHBOevuGK2TcnLJIdmLB+om4mji64XigRKmYH5t1RVhWndkJJsbNUj/fxZJrQ==
X-Received: by 2002:a17:90b:705:: with SMTP id s5mr580608pjz.147.1591034161245; 
 Mon, 01 Jun 2020 10:56:01 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:56:00 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 05/11] remoteproc: stm32: Parse syscon that will manage M4
 synchronisation
Date: Mon,  1 Jun 2020 11:55:46 -0600
Message-Id: <20200601175552.22286-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105602_181751_484731F0 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

Get from the DT the syncon to probe the state of the remote processor
and the location of the resource table.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 3e3b199a02c1..80fd8fd831da 100644
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
