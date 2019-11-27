Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6DE10ADC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:33:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xz/VKynDyXdbQwXmYKHdh5VB+PmKqNm12v4BOdn116U=; b=SVEyoF7FLdrHRhvwuIlgVarRHA
	tvDKc0cRob4jO1ked0ZvXj83N8pHL49++Uj4mdrOCK8kozt3Yd+v1UBtX1ABaDz8mBkM74XcuQDgH
	2HfD2J/1u9oL6rsfMOEOuE/LnCdKqJokOmp7Fnld0WcHKhBhNrfgWXQE3Pcoy1zd4so4q994UbxUK
	9O835jNQh3dNLzvYUwJPfo1Hdk7P20tF8VaRYMLr5VLEDwxNMS7+wQCAG+MHfpeJtRRbDN6JZIfK/
	oCN4D9PB5GfKcTOiP/syCG6jRJzIQ766CfLgRIzVI3rlkl+SqzS3ZFuMA04HcvclGM6vqOMGan0np
	vJ9WzPQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZud3-00018Z-JM; Wed, 27 Nov 2019 10:33:01 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZj-0005kj-Lo
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id y19so16692942lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9WNvBkAbCPmItbuJwau3VVcwaQ3svcRnmaumQExcBPY=;
 b=LVyx7O2W4qGw1a4q/S1Yriak16eQr191zdaPkA2t1RAdn2hi6FFOjti6ZrYVNL10DX
 RJ+WW95uhdNfmuZRig1tBSv/JMjWpg2BvY9fHYN5vuR/Ns4VGoBlNzrmJacvs5mWJtWX
 gaSvfQ7eTU8Q1nxVVjkpaWtZIcfi/GE6HURMotCbiwX00oXBD158f9x+TVIgJ/3ZH7/h
 xZxZiv+9oQiDI8L2bE5YSYH0cmDP9/6phxaCR2dA3EjHx3DBO93b+vMkfbgzGN/mhSgG
 1oXq4QU9PiRHlmui545BrHmoZKkPIC/CMAAQ5rX9b+o1nys9wnH9b+OaoOBTod0wJMSx
 SXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9WNvBkAbCPmItbuJwau3VVcwaQ3svcRnmaumQExcBPY=;
 b=hOCebXFD0TjxaqKRMF3JF1DPZyL1f30wI/J2bkbA/f1EC66lZRARx65lPfQ6YVBMny
 vdWEpVsC1Lw74At2fZKwF5aoeiDkYO51783A+L0haAkIHKmIirEEY/ffAO3+KU39qvUF
 cDCKxA/oJyqC7yxdaZm4w34viCKLPCwsKYY40Lc15xyzZfHZcRTaORsGo99bjYPjGmQz
 jVKtai0m6DCqisl9Jekn3Gxjc+LeJQB0/uGcUfWTCsnugWki4L0GFsD59MlAqjRVoKam
 edC5+FEB0rbedggsy5GL6gFDLWGAGfC0c2J8hfQyQReeEuCLQvdnL3CDJjfzB/yMAC7/
 WpDw==
X-Gm-Message-State: APjAAAXp+y7Nu4sRlO69E3RUBuOR2fj4s9eF3JclG8lJ5uTQ503ouDcE
 LN/+NrESxtO3CcCtMguSeW51eA==
X-Google-Smtp-Source: APXvYqzsOoSi6stZEgi5yA03RC0schvNTFrtwjh9J7y625so1R/qDc8W8M0BhvwXYWHzLQaWLFUSfQ==
X-Received: by 2002:a19:9149:: with SMTP id y9mr29230817lfj.15.1574850573630; 
 Wed, 27 Nov 2019 02:29:33 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:32 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 11/13] cpuidle: psci: Manage runtime PM in the idle path
Date: Wed, 27 Nov 2019 11:29:12 +0100
Message-Id: <20191127102914.18729-12-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022935_831457_2C6980A9 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

In case we have succeeded to attach a CPU to its PM domain, let's deploy
runtime PM support for the corresponding attached device, to allow the CPU
to be powered-managed accordingly.

The triggering point for when runtime PM reference counting should be done,
has been selected to the deepest idle state for the CPU. However, from the
hierarchical point view, there may be good reasons to do runtime PM
reference counting even on shallower idle states, but at this point this
isn't supported, mainly due to limitations set by the generic PM domain.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v3:
	- Rebased.

---
 drivers/cpuidle/cpuidle-psci.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index fd664e134c3f..0707222a40bd 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/psci.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #include <asm/cpuidle.h>
@@ -51,14 +52,21 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
 {
 	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
 	u32 *states = data->psci_states;
-	u32 state = psci_get_domain_state();
+	struct device *pd_dev = data->dev;
+	u32 state;
 	int ret;
 
+	/* Do runtime PM to manage a hierarchical CPU toplogy. */
+	pm_runtime_put_sync_suspend(pd_dev);
+
+	state = psci_get_domain_state();
 	if (!state)
 		state = states[idx];
 
 	ret = psci_enter_state(idx, state);
 
+	pm_runtime_get_sync(pd_dev);
+
 	/* Clear the domain state to start fresh when back from idle. */
 	psci_set_domain_state(0);
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
