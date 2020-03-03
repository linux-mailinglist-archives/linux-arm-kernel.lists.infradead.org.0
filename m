Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08AA178422
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZWXe379gw6NXHjN9lvBaDXO0aVXEyFns/9pw3WwjJg=; b=DRvF7jjWnU88fw
	OkslMLGtwZgxLuenbmPsopa+DcENtMd9sIcrnprF9HapkZz5tL+ka1KH1lg+EFDw9sHu8Gq4gETGI
	vBBA3Zzceg32FrVWPVGqIvUm7GqOU5pxnlzhdbWlUu7sgN3HllIadmYnZHIX2SXkVGOAS5TFdR+o1
	Mogd/mVgWz938lz5hjG+PZRfLu1uhCmMDgRU6CCUnIoh+VO5OZCU2mmRgWrhgszokeienikHK9WBA
	qouagkd+PcbSoRH0Er+CkZisqB2XxA+JVNDRwApRUY3gasPezObvxbGjejKhrmQmn8zbMMMInJD1m
	IxAq0Y68MQSnw2y16rHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EHi-0005Ck-Ux; Tue, 03 Mar 2020 20:36:59 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EH8-0004la-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:36:23 +0000
Received: by mail-lf1-x144.google.com with SMTP id y17so3929036lfe.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 12:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NROpLkqIKQsmOxVfnI3TCB5D/se19mcdjX7Jsvn77Ws=;
 b=z4JKkqN1r6xRG/KIVxn8rmsB5O65VLA31nuxkGSm+tnCsAynoEP9joIT0dW5u+frjr
 JOlrQLtXbkN8siv27mSjBLOMMLUXSCLVlzDVAhvV8sGDQp/BHBd92V79Sh+/wZ5MRY8+
 PoSDLHf23NLIt7YzoSkdsbz/WPP1+DRFdvsaU4/KD2Af/0+Pb54gQUARhQmJpGvYIK9n
 n+eBd8csqq57uOxodmQ5EKSE/Kh3WENqdrUou1a8C2F8Pqd0Zs4b3YORqcuRhHKXVNa0
 vaq3aMWT/6JGXo92PgRuKP+rMc9mhcJBgnaMT2OZ+b3mZywsnprdDXo3sqAXZj5zM++Y
 9Xrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NROpLkqIKQsmOxVfnI3TCB5D/se19mcdjX7Jsvn77Ws=;
 b=SfvA4BY8fLhSI0G2O/QCdr2zjZtoEh6Kb4HBeKZQ9jzRb1lPcak3J6ompid6SgXBfc
 ALYP5dZBq34PCEMFbAvO9Ge2LsWybi/DhXajkUnnoJg7tjT7YSL759p/ba5WGlpvM97w
 ZgNhkAkbkHHjGhJzFTXdqCFh6gYTbLgUDWZAg6XFaSJSwyGM7QiGWqUE2HzQpVMxJaF4
 b540YNwSYBVEu0knnTwh7uYjy7vuzgy3vO3MOyKVL8LiuMhOVMcaOWePjPaS9Q4/Cdfs
 EKCfzUm0nP0x1ZS4OvJYdLWUmkLydbP6kFImqFSt3YMqoUlh7G5hNMDxXpJch53KwwK5
 ly5w==
X-Gm-Message-State: ANhLgQ0gWPetB7NmkwRj1QfljyIkNAGUFW4aAVu3qqgUJLS5EL+gBSsX
 7kTPCRScWwptpHzHsZ24KPYd3w==
X-Google-Smtp-Source: ADFU+vvzLeYQbIe0vTeTmA7QTfjZa5SPu8+43nq3kqPmgzCEuIsW2a14EHXf+icCB4h+M6eJ1zgXPg==
X-Received: by 2002:ac2:5a05:: with SMTP id q5mr3792740lfn.143.1583267780603; 
 Tue, 03 Mar 2020 12:36:20 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id t195sm1339532lff.0.2020.03.03.12.36.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 12:36:19 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH v2 2/4] cpuidle: psci: Fixup support for domain idle states
 being zero
Date: Tue,  3 Mar 2020 21:35:57 +0100
Message-Id: <20200303203559.23995-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303203559.23995-1-ulf.hansson@linaro.org>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_123622_443111_51CC8244 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code intends to allow a PSCI PM domain to have none domain idle
states defined in DT. However, a few minor things needs to be fixed to make
this correctly supported, so let's do that.

Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index 423f03bbeb74..c34b12c4069a 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -49,6 +49,9 @@ static int __init psci_pd_parse_state_nodes(struct genpd_power_state *states,
 	int i, ret;
 	u32 psci_state, *psci_state_buf;
 
+	if (!states)
+		return 0;
+
 	for (i = 0; i < state_count; i++) {
 		ret = psci_dt_parse_state_node(to_of_node(states[i].fwnode),
 					&psci_state);
@@ -96,6 +99,9 @@ static void psci_pd_free_states(struct genpd_power_state *states,
 {
 	int i;
 
+	if (!states)
+		return;
+
 	for (i = 0; i < state_count; i++)
 		kfree(states[i].data);
 	kfree(states);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
