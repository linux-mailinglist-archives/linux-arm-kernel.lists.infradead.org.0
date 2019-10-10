Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81A8D283D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j8zuXaCtzaHmwcOn1xLLpLW5Ebty7443t0BdUeEKCNc=; b=rupWPbW6dwRkmWrUgTPQWipf89
	GgEfa5AJgoInkqCUNMPZjYdwZ1EGmQ2/4NbJjAadUWCtdx9weO11KYiIPN+87y5eV8vQ3e26KEX3J
	yANcY87CN30IO83t/jnd6w6d+/kEwWuj4reU/ScXqc+LmP0BewbMY6fIIgpA3aCGnT5lpgV/Bk6Ni
	bYnVct4vcPj0GuGAvS97lh2KBDdw01sRKCWLLxJ6EdklYGo4ZnUfg20PDmYCJyjCXJV61mWTW4wTv
	hJqtVyYCdwBQst0myRpxXwEJ+XJHXewEzrd7lufdo9TAQA2c3MYlRrOVtcZjmvzMitpFrUgkCty50
	DvH3H1ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWpJ-0003uI-QC; Thu, 10 Oct 2019 11:41:49 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWnm-0002kG-Rf
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:16 +0000
Received: by mail-lj1-x242.google.com with SMTP id m7so5871813lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uPQQL2LvieO3hRSdVOoT+soulZMhG9ActuEg4qQLyaA=;
 b=T0nFsd0F5yhLoTBaFcw7y7TSJ7swFLFrCm0iZ9fxXkpwH6LgoqyNcmtnY+mHnZ7wqA
 tzclaFDIjVJeRj4TRzdNHxas/7Vc8CSCkhEVswvN1U/GYZXItT1Dooz0x75Gut6BZJwe
 4S12SRko6dhQUiVAR7mIGBsqkpltXwc+NMvmdHK8upCiNxXR8JCoLhsHRJqg1TNG15Iv
 a8dMDov2BYDB7gaiCVsBOvN3bHHR40LV7UsV9TRjpeuPT4Ri5Tw3COGyo494xPZWl7xQ
 Q9jZ1l0HBJVKHFxRnUwvZuXn9e9UCxKzqe6oBIidHY+cpmTeJzdcMO6Goptv3Oz/YpEU
 VJHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uPQQL2LvieO3hRSdVOoT+soulZMhG9ActuEg4qQLyaA=;
 b=gxH6sKDWDIxRY65UiM3nadBlEM9oW7UtZVWSKIfkOxuQF547rZS8HMVEzPvBixPL+i
 srYacxCH9fLyGXcCiIfKVU+Z+lTD3Gv94gisEwbMETVHVE1oJGX1ZFNp0ZIWsnao8ZB1
 7GnRZV/Nkx2qSFxaPr3L1swEzL/Q/PHHfFLyv2SYcRYQKwoUats7bktY5Gd9qf+mFDR/
 z6TY/wyW3P5TZtDyId783hU2YvTcI+Z0QUOU+DT1Nkm9PdNvXuDtuJmRM+4aHyhmOK64
 teQrgFbAHmet22riHPaN0HAh/4x7SaIrMlzknOb52SJhqMfceTKQffQbCBXdDrCbux7Z
 kDsQ==
X-Gm-Message-State: APjAAAU6PVP/qlNX9zjdsk88QCN5sN/Qk8dKofET44IGzHTwy7X4D/6Q
 gZrn+TpH+QGE++KypuQ1Kxqv2w==
X-Google-Smtp-Source: APXvYqwd9hZQk2PNNSWawnj+vwKKoXgMm6PDK8dcNZdYDc7Bp/XO4FPg5jdpJ5ioW9H9llCi9Uk6EQ==
X-Received: by 2002:a2e:6f0f:: with SMTP id k15mr6301625ljc.12.1570707613211; 
 Thu, 10 Oct 2019 04:40:13 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:12 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 05/13] cpuidle: dt: Support hierarchical CPU idle states
Date: Thu, 10 Oct 2019 13:39:29 +0200
Message-Id: <20191010113937.15962-6-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044014_922450_96A7BAD1 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
