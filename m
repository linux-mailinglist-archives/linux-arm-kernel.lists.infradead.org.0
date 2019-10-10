Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B627D284D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=laVWgwsn9aOxL+HNXa4EAgsQ5pIbetoULymklLkKWss=; b=GBOskwPpOM4DLCRx5Afc6ycfF+
	p4r1Uq5m4saiy12Syg999cEs2ZAg7F+WdvwHDa44kq7GtNo7SjQvndJhCwdAOrL+wxTpLK1iW4pVi
	fqFWJ2gicxO1PnxTlD7b4/KJB9N5Gqc5wv1iwTryUHY7tEzxiIsQRWi8drPp/gxVCtNagx5DHFIZw
	mtGp6qmNKLawrd5Y0OglPsmQijNCZdQ0aqPB7M8ZpXIp1qmow4H8JWyBEHPd7tMiEzhUG0UJXzsg6
	qsoSmD862nASyV5t1jB/D8lH8YcZLy2w3UczTFQvBNhCkMZWmnf2dTQZLPP+EohmJd+79Y4te2y9v
	t58XyFzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWqr-0005Yg-4e; Thu, 10 Oct 2019 11:43:25 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWnx-0002vT-Pw
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id f5so5832578ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i3G8ogm8QKvXwM8+rijht3ULF4gYpDZkzueQGi7751M=;
 b=S1K49Am4kSDehLMFo+y+aCn++SGdGyNEXyDKQRhsyEPFb1U+Qix4b9k4PUVRkwMwNo
 H1Drcbx+EDc2EDWjdPplZZWExubE/UfjqHL/TFs1EpwMdzjNtIKS46NPjhea/SBAVuq0
 ayS5Uvhu+BLV2F9mmm/wYqmAwVyQLTTLhdmXercedrMYUeL842KegEAPuu1HoOsC5IYo
 wCEzh1VrCwNsmAM5iFSLdMYtQZX5h9kLTbBXKGX6RsmAHRa+SZp3SSXIEoYZ89kE7QUv
 Ygj6ExCVVuMj5lOyunwckLd0vQXnx7AbRGLkFUfRtC+bX6wI8fQg8yvPZKfW/oaWQgOe
 QXPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i3G8ogm8QKvXwM8+rijht3ULF4gYpDZkzueQGi7751M=;
 b=NBvgKy0V1ZnrGloeDtGZ+1c8dbXx19pO5uyLOHldnl1+5YW/pbs88YkaXq9EGvYuoM
 B93cCuW8xlpaLyBPx9ezMGzl1OBpwqC5BDZFyqqwtjNh3VOyJOoxCvfU2BYkYXiYwh0P
 YVa108Htef1sH6zZ2US6Walvvp2h9Ikkiex2/jOTFXrJHIs8dsQQOowwq1XikaoP2Xbn
 z2x8zUqUp9SPnvS9ln8Np9mYxJcsh52s4STTY9YnWQyEsiwDMumfQXnlFSYv/uyOJPb1
 pe83vE+7ukDNs+g9gGq7bff9puNI/+VzLQfkvr2ilKeiE9p3oKC1N20zHZI9DtLWqOiL
 87XA==
X-Gm-Message-State: APjAAAVgqySA2ySQq7uDDvPfZ1/DWei0Fs3Few2kF6BbwjECHXKSa6Iw
 81ZuzoGefT/EXBQaapbI2QBTIg==
X-Google-Smtp-Source: APXvYqwOX8ItiDZEA+kQQBb68Jv+sNmaYtISkfDtd1UlzUU+vXQj3Y0mD4hDx6nLR//tbqlRlepYnA==
X-Received: by 2002:a2e:8310:: with SMTP id a16mr177041ljh.48.1570707624283;
 Thu, 10 Oct 2019 04:40:24 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:23 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 12/13] cpuidle: psci: Manage runtime PM in the idle path
Date: Thu, 10 Oct 2019 13:39:36 +0200
Message-Id: <20191010113937.15962-13-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044026_084005_06601CD5 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case we have succeeded to attach a CPU to its PM domain, let's deploy
runtime PM support for the corresponding attached device, to allow the CPU
to be powered-managed accordingly.

To set the triggering point for when runtime PM reference counting should
be done, let's store the index of deepest idle state for the CPU in the per
CPU struct. Then use this index to compare the selected idle state index
when entering idle, as to understand whether runtime PM reference counting
is needed or not.

Note that, from the hierarchical point view, there may be good reasons to
do runtime PM reference counting even on shallower idle states, but at this
point this isn't supported, mainly due to limitations set by the generic PM
domain.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 1510422c7a53..0919b40c1a85 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/psci.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #include <asm/cpuidle.h>
@@ -25,6 +26,7 @@
 
 struct psci_cpuidle_data {
 	u32 *psci_states;
+	u32 rpm_state_id;
 	struct device *dev;
 };
 
@@ -50,14 +52,28 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
 	int ret;
-	u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
-	u32 state = psci_get_domain_state();
+	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
+	u32 *states = data->psci_states;
+	struct device *pd_dev = data->dev;
+	bool runtime_pm = (pd_dev && data->rpm_state_id == idx);
+	u32 state;
 
+	/*
+	 * Do runtime PM if we are using the hierarchical CPU toplogy, but only
+	 * when cpuidle have selected the deepest idle state for the CPU.
+	 */
+	if (runtime_pm)
+		pm_runtime_put_sync_suspend(pd_dev);
+
+	state = psci_get_domain_state();
 	if (!state && idx)
 		state = states[idx - 1];
 
 	ret = __psci_enter_idle_state(idx, state);
 
+	if (runtime_pm)
+		pm_runtime_get_sync(pd_dev);
+
 	/* Clear the domain state to start fresh when back from idle. */
 	psci_set_domain_state(0);
 	return ret;
@@ -142,6 +158,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 	}
 
 	data->dev = dev;
+	data->rpm_state_id = state_nodes;
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
 	data->psci_states = psci_states;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
