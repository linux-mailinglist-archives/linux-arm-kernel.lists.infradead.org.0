Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2331B80AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aM4y2bhukG0BwZHx5EiETgq3xB2Gc7pNHGxvETBp1gE=; b=JpIpHroSV2E6D1
	m2l//1+OPPQlmu/qBl6nVWFWm1ydVl6f5SuURCIiDwEYN7IglW33KzjBgzhs1tqm3gNf6BfSVqXNt
	2+8dkHUsLER0HRtmm1gu7wSu7X6qzl41Cdxg0bZZUHgjulNDyWkLHNO1FWN2stXhZLIJk1/d/glGc
	VmllqwHhx5q0yBqt90gfwFrJUuL4D8vicE55xJrH3mpEXPgrI0zaTyss8DvdW+oFekRXzTRltZ4TJ
	RJgaRWUuk7xXBL2pu9df07/mtQqT7UpBi6qAE8Ft/hOc46eeAiz3GktFdILHH8hksww4DS+CXSw6F
	YJni/+SeZloXceF9dLfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4vP-0006qW-9U; Fri, 24 Apr 2020 20:27:51 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sv-0004ij-FH
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:19 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t40so4337519pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KQbiUnUIr9QFPfrMWtrls9xYCut1DTLsNUPTpZeLJzM=;
 b=Gp0+Zj2AsVqjmrkROdpibc9WVlvp7tcdcOdZdQHBsR3UgKeec463gD/gEO3BwUfxId
 4qs80FR5WSpzNR1SqjnslyncQsgieuO8FYOSgr5hwqOfCi41IVUjNNC5q5Zzr6j2I3yi
 KJjHDvIlGO48gwfAIbEwO3n5i2jge5R4cWWMaHUprhq/I4laBl8nmafuy317N+fyZmX8
 gy/EOSGWad5Rt3pnr1KQ/DTkoocO+75wrBOQXlXeVt7zb1LIqqCqbavhbNh3j+XucUBk
 YEIf7REW3jwi9Nf2//7v64N+cSG95iVoOExMctUIfyLuDu0h5IOb/KzEZb2XNtq0cgZZ
 9ypg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KQbiUnUIr9QFPfrMWtrls9xYCut1DTLsNUPTpZeLJzM=;
 b=iU41tp0dnCye8sPsGMoPz8aOJGb5JI2fQuTEEslyVDjDge9Z3KIzaoglILKuumSeZ2
 CvuGVEhq4jFMO42Lcd+EInMWREwt2PFtuVQVfI6/mG5MICF1ABcDuNsASxxtXQimJYlK
 IsfmLr6gsAEPhYcuIeS8hz5ST056lh9tJ/4b5JQfPrCiQJDaTr/o4NOc+DJbgToYGtoG
 pPgp1mEbQ7Sxkb0iGc0oV835t2m9jQwF8hWUGIlvlJYvSnDSyGj411k+vRRPvnTk+1J5
 hKQ/09gVGoCvSEV3+S7O7za9aRofSp18diwTGK7fb4ZRpZKMH5eImR7sO1/EqYGhFJlD
 GXvA==
X-Gm-Message-State: AGi0PuZ+rBCWIjGHZYnQ8a6tEEEpoK4Ke102NioJC+eanGMf+T4UMAjP
 cLciui8Y2rr8uJZ3A97buSdAoQ==
X-Google-Smtp-Source: APiQypIv6YWdkGqDXxYu9zKGxgTIDNuyx5qK9TgKQ6Q3MhTchnZhEiINgsaF5cc/+xunWfpXSGwU1A==
X-Received: by 2002:a17:90a:1a46:: with SMTP id
 6mr8190985pjl.111.1587759916801; 
 Fri, 24 Apr 2020 13:25:16 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:16 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 08/12] remoteproc: stm32: Introduce new start ops for
 synchronisation
Date: Fri, 24 Apr 2020 14:25:01 -0600
Message-Id: <20200424202505.29562-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132517_527354_8E8D02B6 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

Introduce new start functions to be used when synchonising with an MCU.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 8ba69e903851..404f17a97095 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -449,6 +449,13 @@ static int stm32_rproc_start(struct rproc *rproc)
 	return stm32_rproc_set_hold_boot(rproc, true);
 }
 
+static int stm32_rproc_sync_start(struct rproc *rproc)
+{
+	stm32_rproc_add_coredump_trace(rproc);
+
+	return stm32_rproc_set_hold_boot(rproc, true);
+}
+
 static int stm32_rproc_stop(struct rproc *rproc)
 {
 	struct stm32_rproc *ddata = rproc->priv;
@@ -522,6 +529,10 @@ static struct rproc_ops st_rproc_ops = {
 	.get_boot_addr	= rproc_elf_get_boot_addr,
 };
 
+static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
+	.start		= stm32_rproc_sync_start,
+};
+
 static const struct of_device_id stm32_rproc_match[] = {
 	{ .compatible = "st,stm32mp1-m4" },
 	{},
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
