Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEE617F534
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CG40Xuhl7C1xtNBEeZniQNN/yKm6DnWZ1hssX5OrTc=; b=CmonPSmgV5w7YX
	qaLh0LrfwmvVzFl/2e2Jv1t6iMq7nTI80h7zUcJmRQkgDTVIgY03fkT9x6wSViqAumrMQhPaRbEOF
	h8UuZte3LrSVU3qvvqlQ/+1Pi9rkJAwPUvLebpf644Q8hvzwUz2M5hP4yjvLKh7lAaiyU7eHaLcNm
	nUPHk5RphSEpf0vmtHE/KACIVzTqFaL1pFLgxO8Eb2wVs0rOdBbgT5ruoOVeWxZtU75eWj2eRLdgx
	ZBksPknLssV5H+g46rfs8BfoapUzwO1PuGDtvuUAb/bwtMxmex2MMMA9uR2usuBGmjJCVwBtMtbjH
	x/olWq4FDjtDMhMvYecw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcJT-0000wh-6V; Tue, 10 Mar 2020 10:40:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcJM-0000w7-Gm
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 10:40:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id f10so13513254ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 03:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VOmLbFg4f7m0VWnyO1xDaH/AZNMu+kPMNjgBVvsbMM4=;
 b=XmPV7pmfeVwv3eR7FYLArkOxNj27Kv2v7Sx7iRQrmZdzWxfxlm1/2+6ROU4I24Rih4
 sfMG2dff10ReM0skBVyIR8ywsuBgmcvdt12e2ZCTI4Qo81wWI1tCCP6jUdZkGjLPQ50P
 C2QGEB9K3G/dqaRMfDNWxuHMFPrymb3R5agvF0Agm+VQuOdUfUNHoEj/9ksEQ9gUlLxo
 gzqwva0Zs4/SDsB2Rmj4itCDw/94E8QchLWRxf8WuPigcg2aybGDW82RNXqaWGSTHjDk
 n8qThSPy6zFIN95KirHptSJJ8TZgWB1sm61UPdbxfwz5KxBBZLhuMi4nL8GQ5ebHturv
 M2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VOmLbFg4f7m0VWnyO1xDaH/AZNMu+kPMNjgBVvsbMM4=;
 b=G/k1x4uemxugOqceKn4uWLVhoXIU39E8xqEdSVLoEw9VVQwsdiShw6YxKeWPsaqL1+
 BaERExuzbFU2lHM9cwX0n1qdJXACs00vSNid2fEsBhfhCVIePSGVo4/TjkrOjuPjAkTD
 DRp2246j7zv9bMoZuFvE4tuNhNt5+7pIsWzdtaMcvqAnpXlb1p1xKkYVUJMMq5sO9yrw
 /nSQrIFjTfjqpYbZuhQamNCk/R7T1SN8A+4w4GX25Ca2WQsVQZ90+EOuEpHbgy11EgqN
 GY/Vw3VupR16tEqddekPkIoPunmltKit/ymxI/+6O6aIcofzclgKXlIeN8GoN8NbTrUN
 u+5Q==
X-Gm-Message-State: ANhLgQ2BLv6yrKODp3g8f3RJkLumtpErdKZP3DRutEgSABlDMSvgplek
 bO87vC3hcIXZH31tc3qzs9UowQ==
X-Google-Smtp-Source: ADFU+vt0BFBJbAznVQSE1PNl5MnrDZymFS2judAVRaRDmr4mbgXWDTWu7QcpSCh+5klHcSq6m8dkfw==
X-Received: by 2002:a2e:8654:: with SMTP id i20mr12334652ljj.248.1583836829816; 
 Tue, 10 Mar 2020 03:40:29 -0700 (PDT)
Received: from uffe-XPS13.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id j6sm3414632lfb.13.2020.03.10.03.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 03:40:28 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH v3 1/2] PM / Domains: Allow no domain-idle-states DT property
 in genpd when parsing
Date: Tue, 10 Mar 2020 11:40:23 +0100
Message-Id: <20200310104023.4018-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <0002-cpuidle-psci-Split-psci_dt_cpu_init_idle.patch>
References: <0002-cpuidle-psci-Split-psci_dt_cpu_init_idle.patch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_034032_588105_10320076 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 2c361684803e ("PM / Domains: Don't treat zero found compatible idle
states as an error"), moved of_genpd_parse_idle_states() towards allowing
none compatible idle state to be found for the device node, rather than
returning an error code.

However, it didn't consider that the "domain-idle-states" DT property may
be missing as it's optional, which makes of_count_phandle_with_args() to
return -ENOENT. Let's fix this to make the behaviour consistent.

Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Fixes: 2c361684803e ("PM / Domains: Don't treat zero found compatible idle states as an error")
Cc: <stable@vger.kernel.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v3:
	- Resending with reviewed-tags added.

---
 drivers/base/power/domain.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
index 959d6d5eb000..0a01df608849 100644
--- a/drivers/base/power/domain.c
+++ b/drivers/base/power/domain.c
@@ -2653,7 +2653,7 @@ static int genpd_iterate_idle_states(struct device_node *dn,
 
 	ret = of_count_phandle_with_args(dn, "domain-idle-states", NULL);
 	if (ret <= 0)
-		return ret;
+		return ret == -ENOENT ? 0 : ret;
 
 	/* Loop over the phandles until all the requested entry is found */
 	of_for_each_phandle(&it, ret, dn, "domain-idle-states", NULL, 0) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
