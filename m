Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF52311B486
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zul0o78F069cXSp+/tegMnf/z79Rk8T7bTVimVEe/uc=; b=Yxchdv+TvF0F4tuHl00/w4hAzr
	Dziey9Fs/xvgvEGVukq/WD0AIdbUceuu/pcj3QyRIeCsSO0nmLBBJwQrS0U5X48jBPxJyhDeitfWF
	FuubLmorneCjkhtfniLOstUscodRRS4UNoh9YVuN7p8wKMDOBCRgMWV4S+rd+qFUE/HZA/51FPiBt
	BOWS8i+3424f4+3zFCN7WlINddrFErODf3IIoWlX0EwCs24sNF+ZpZ6OrY49Ug1YuMhmmBjpgoEuu
	WnMMbIgRqi12h76lNS8ZXQXxh8wPkMXfSEbU6i5jZU9rvLRQKIiyzNCJ7qTTqmsw+TRBLk6jkTXxE
	qHfAeoxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4EG-0004J6-Sy; Wed, 11 Dec 2019 15:48:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49k-00073J-TD
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:06 +0000
Received: by mail-lf1-x142.google.com with SMTP id n25so17120707lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1AOYaDETC7AoWHNfeWM9scObxF5giaIQjN7hMSflMOY=;
 b=uR/XWlqUnPKu+Zx9llz6VPEhdC+0Ouhey5oNG2GzZgGnm31i1Vd1IIbsFKhFtCta8t
 9QSjI6I4BJPwsTRfIjNun5q1ClONIbt7jwT8+y0zmljSeqHba49V34wAZ4dewSrp755R
 K1a9Physk4djE0T7CDFSLP94QpLDX132rohpm5+lH0pAsZzi6k207O4lN7c8SNyOHoKk
 L/5ANPqTI5XNEEO/ZlsMiUMuUCs40jZPYIkOFWJdE4g+E6k5o1IcqGDLbddYcYgsDHx9
 IrFpiLyPn3DPyZmqjcXgmerkJRvkuPoXJKPzdYB9F/FX9tDe7qvl6p+jXhIOTm9g0BHH
 dWxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1AOYaDETC7AoWHNfeWM9scObxF5giaIQjN7hMSflMOY=;
 b=gJgKomoeuHqkz3HtN67fUZop5vmDTAvlG82dO7rywuwB5aU9+tACDGc8siOJGEVy25
 IO1Pw8/LdGUaypLg+RF2psHx6y/5smJxA3FSuEOfNa4RaloR9urf3H6fjHShxa6KFb6v
 ypMe7Z88Kz/Pwz2577qKvo7S88X2iW9zg8UUJFBXyHIvH91HLJOudFVwP0a1TWQBz9wI
 vD3KnHK0XpkvmLxH4FVPbMoNpGF5G9eTKSiAYM/AywmstmZ8dBf8DZq6EM5+g2zKJ8Ya
 mVLHPuzC15Jp5nle6CIRBfnxdnE+EkMLHQX3pP6wPMxFLELxP3OoE1gX37QyMtOTYoXO
 3khw==
X-Gm-Message-State: APjAAAUcgwA5+pCX8vGspaHK/eBPgVW4wwsSvg5UQGL8DNmn/okkMeXR
 53FbWRAvSrbVO7v6uFC5TUC+XQ==
X-Google-Smtp-Source: APXvYqw+4mzcRtBlHxe36UISiT+M6wE3tUk1CvI9Gl+QZpzzGHQxkKwO2cVnLAiFq4qHqteUcVj3fQ==
X-Received: by 2002:a19:a408:: with SMTP id q8mr2560939lfc.174.1576079043410; 
 Wed, 11 Dec 2019 07:44:03 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.44.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:44:02 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 07/14] cpuidle: psci: Support hierarchical CPU idle states
Date: Wed, 11 Dec 2019 16:43:36 +0100
Message-Id: <20191211154343.29765-8-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074405_028847_5E0843D3 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently CPU's idle states are represented using the flattened model.
Let's add support for the hierarchical layout, via converting to use
of_get_cpu_state_node().

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v4:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 761359be50f2..830995b8a56f 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -86,8 +86,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 		return -ENOMEM;
 
 	for (i = 1; i < state_count; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
-					      i - 1);
+		state_node = of_get_cpu_state_node(cpu_node, i - 1);
 		if (!state_node)
 			break;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
