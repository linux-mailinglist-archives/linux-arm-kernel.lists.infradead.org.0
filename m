Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8711B47F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:48:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qcqODo++W01Fdzm85ux3N6k5rKZm147IsWlAPbJtIvY=; b=fxUNZqVu+0fWPo+iCP8+4FbNv+
	LthUAtVq6E4BklVPdKB1kS160G19aVNKKDYhiapTL6IflEDLxCaJ1UqomZwyBzC3KUQHKv9UBR6Rk
	qh103C0mg+gBHRPVvWVl6TyMAF0Hfzahwj3UA/o5XLsN3qFl9S0N0FRG+nuU++4SQ3P4DYPUEj9y5
	VC8XmRWkaF8biykNejOlu/kDJAK7FeXXoZeM4K+0yHoWk8HLTdScD8M572PIG+/kg0mEGNQZHRDqw
	Zlq6AfJmdXI29TSJFL34uDHDCO9DdiXDBbT+9r9pgEcReSCENy6ggwFppbBXWBshmykJHwKRb8OF2
	+3kkYQlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Dc-0003Pb-LL; Wed, 11 Dec 2019 15:48:04 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49h-00070E-FB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:03 +0000
Received: by mail-lf1-x141.google.com with SMTP id 15so17085505lfr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Z3dFHMSTWmknhjBa3X9neiliLOt0Ua6IMiSdXiMVvsE=;
 b=wcpag0kFqzXeqRry8Pg+EjTlMzNiSVaOfpgd2if+zbTIxT2iOgTP4xyZQYDC8Bs6dB
 Zluu3yKQ0PKtJnDpD55xA3itb23Jn9Sp2je5wAgwp4H+0HY2bMJk7/6Ipq8dh1R89DaB
 n1URhE+ohyGVs+jgVRNadHhoHlebRHdIPN/V7BI6SBWKO2DYO8RdzuvI75pXdvqpvhXz
 7M5kOfABGVvXfaD9+Bldd012eFKU3iv0n9b8VLjttNt5N3LN7Z5pBKEB8eiFVpTjae0r
 FYPzg01HomARnv+j/Tsl7qynJqgHED4aYsx7ALVvAkIb5SElrIMAY6qA4fQ2A2d3w9tt
 tWmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Z3dFHMSTWmknhjBa3X9neiliLOt0Ua6IMiSdXiMVvsE=;
 b=W1dwVv0a48AOs9RF3knlMMybG1+L7ERVjFCKybUiPYpPTNe+H7IS1x9jBdxsvOHQcp
 GcT//zZhqZyz6cAh4TeM1OuyzY5RLsI8ptxtzuVcIzEPhNr9A5+I/4vvmW/9BMxae2GR
 Yq87ceJzzIrL6Tj9m7+MBd6jSANasSe3PVD9VaKIEDavHiLAm+aMy6XlLiG9YZWC4zTm
 eUfCirpIg4EPKsmoQxou0u9OdfBMBDVViwyLfX8Epsge7/jsi7LE209F60/yWAdRxhiY
 6WpJbur/PCaR7M7jcWzS2tTZTaAhNUiv/kL9m2n+h/KItqHBafnQqudooTgwgtJUAopb
 PT2g==
X-Gm-Message-State: APjAAAUKITGXKzQrkCSg8C14GjDolZhu6xMY59nJZb1JPFY2ZIAsx8L6
 1uAf2nbWvHfuADykatjkMufqng==
X-Google-Smtp-Source: APXvYqybL5yW0+Q8vqmaFlpbiu510ZmXk7dCEaf5C5AYnxU+6bSbBrEJxJrKmgsFoRB3rc4iE6TC2g==
X-Received: by 2002:a19:5f58:: with SMTP id a24mr2699587lfj.9.1576079039918;
 Wed, 11 Dec 2019 07:43:59 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.43.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:43:58 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 05/14] cpuidle: dt: Support hierarchical CPU idle states
Date: Wed, 11 Dec 2019 16:43:34 +0100
Message-Id: <20191211154343.29765-6-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074401_562170_B5888833 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
 Lina Iyer <lina.iyer@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lina Iyer <lina.iyer@linaro.org>

Currently CPU's idle states are represented using the flattened model.
Let's add support for the hierarchical layout, via converting to use
of_get_cpu_state_node().

Suggested-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Co-developed-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v4:
	- None.

---
 drivers/cpuidle/dt_idle_states.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/cpuidle/dt_idle_states.c b/drivers/cpuidle/dt_idle_states.c
index d06d21a9525d..252f2a9686a6 100644
--- a/drivers/cpuidle/dt_idle_states.c
+++ b/drivers/cpuidle/dt_idle_states.c
@@ -111,8 +111,7 @@ static bool idle_state_valid(struct device_node *state_node, unsigned int idx,
 	for (cpu = cpumask_next(cpumask_first(cpumask), cpumask);
 	     cpu < nr_cpu_ids; cpu = cpumask_next(cpu, cpumask)) {
 		cpu_node = of_cpu_device_node_get(cpu);
-		curr_state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
-						   idx);
+		curr_state_node = of_get_cpu_state_node(cpu_node, idx);
 		if (state_node != curr_state_node)
 			valid = false;
 
@@ -170,7 +169,7 @@ int dt_init_idle_driver(struct cpuidle_driver *drv,
 	cpu_node = of_cpu_device_node_get(cpumask_first(cpumask));
 
 	for (i = 0; ; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+		state_node = of_get_cpu_state_node(cpu_node, i);
 		if (!state_node)
 			break;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
