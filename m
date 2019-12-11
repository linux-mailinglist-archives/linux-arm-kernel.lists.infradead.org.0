Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F6C11B4C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dcuzI/k0LQPT8tAhE1sC5UBl+mm9o2V35oOxkecmsrQ=; b=hDrCl0Q4gkSV6/sb56nzsEvVI2
	ucYfqjAuWy3KSukhmQSUhinrCdPmFbmR2zvScm6K9Z2QMY2f79n7EpthcEnl9SRFsyvOhgMN2m1AB
	0PsDm2yzw8jbhmhMtWNsljEh6DLyXqWBB6Ky7SLv1vmwvXrj5gIWVmxF+r9RY7xfAz5rTQvRDkIf6
	f4wRw56yW5xyzxIQYDl1rItlEdzXKuPTJYSQ864fI0ePQ/h3MjdpPSWfjrn9tNHEoce4e4RNwwPsq
	UUnUTUrCLCC7ndIU3mom1CXmQ7BwitC7EpQ/0v1S16WM5yiubCBIIQGsUrlG5Rfj1JLs00bGhPgPr
	FOopoHrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Fk-0005ZM-3A; Wed, 11 Dec 2019 15:50:16 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49r-0007AQ-JN
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id n12so17083626lfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r0T/EqYWBtflCGTq6mIMCsH8miOWB9TkKYLC0qt4riw=;
 b=csmtam/SiKcgswiwzehs2UqYPsYUd6V90h51/HbH4XWJjcqs1r1E/s1eSNFY7TV2QF
 VuLfcccAUO5CLeDup/dWo/mK3qDtyOYfqw8v36X2BZVRhAWoGzA01YLphklYA/xd8wIY
 +yvsBmjuXVPeLG3Tp5sP8TVqWVDA0xmJ17VP0KWwDdL/gydysGuwPc1ytoolSALiPmN8
 F7ENETnujKlFDv9J8XyMAGYsOc79CQfgaVpcX8Dj8e5WaoF1O5pz7ZTu+63xruymwcbS
 QBNG4HCIgPqfklO2UJIhOQ08uM29v0Re0uU9c6byBZYV+FQEzX5JddcEC1YgiYcHRx8s
 1Jrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r0T/EqYWBtflCGTq6mIMCsH8miOWB9TkKYLC0qt4riw=;
 b=E2ut6V+MypBadKoPyNkGDaUxOSv3Q24lILIU8QLT5OFblSqe0pzUI/Q3cvPxrS2ZRP
 cDEzfZcyDNYd2nDBRTzrYD7VFdUN09dSQHyZfAvQOE+IRgEeqph8rRmz0LDuZJyV7AxH
 SUgVo/61U2g5sfBNvUdLmNTOh3smvWNNvD4SAgyxTRCSUkHDCgYXm234YoC2N3WzmkkD
 vpCBWYDxb2s2XYxYTZ815MjxmeVYero1vZ5YXhGCE7z4EUhjnWILAIViMizn6j2LfxmS
 5TitwUGRbZjMk7fNPkFJRq1z/A9jaTv/UVmXGGAS6VKOeWoRU/AyYWNdDbEhG2vVJWBS
 QYGw==
X-Gm-Message-State: APjAAAUV0sa3KhSHKyfa51Cip5Gzdk7zqLhodbKBD7vd07R1EESiiSrY
 Scz6Aa3GFnVh7EudQxLZ+xMXNQ==
X-Google-Smtp-Source: APXvYqyBEgNF0WObWqvyW+J7XheyUS0OXyRvFlpGDNDdlCNidFPXAXaRC5O0SSZLYoCPCgEzSPKJyA==
X-Received: by 2002:a19:c0b:: with SMTP id 11mr2684337lfm.135.1576079050137;
 Wed, 11 Dec 2019 07:44:10 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.44.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:44:09 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 11/14] cpuidle: psci: Manage runtime PM in the idle path
Date: Wed, 11 Dec 2019 16:43:40 +0100
Message-Id: <20191211154343.29765-12-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074411_783122_81CA7DFD 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

Changes in v4:
	- None.

---
 drivers/cpuidle/cpuidle-psci.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 9600fe674a89..6e7804e697ed 100644
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
