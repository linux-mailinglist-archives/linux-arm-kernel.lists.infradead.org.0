Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6085312D138
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:51:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=17Qk7UIBHnzgwDhD1rovK/tVptmsxg4rZnHTPoDW/9o=; b=kjLHiUW6xSnmXhr0qse4gHzitw
	PJ8bi+YZqKb+i0NrKZGRQ4kBr5VA4XxjR+6wDfmAPR3vsemC7o5aqolLY3Z2tEkNjyEjwkmZ610g6
	WFglgPprHpXWzmR4g3r+nliP/mWdj1Qx3c/USiZtwQ5l7l3I5+u5KLiVDQHopRcdbfA/FDZtJ5Pbo
	jZp6w1+A0z73h+W1Z9wMjMr3f9iIIZH/eDyb0367iCXikLpkxai0XzphdbKX0vpq5hOxFH9LNHTKe
	FT3SPpyIGh0f9YBo3AZxVpq9suXOTCye2tac7Js2T1juDNuDifhYj63Do2z6gw2sX5ADJhDofhVPL
	2II7hGJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwNv-0004mL-RN; Mon, 30 Dec 2019 14:51:07 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHL-0005G8-J8
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:22 +0000
Received: by mail-lf1-x141.google.com with SMTP id y1so25245629lfb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=owx+SloUf8pds6VPSlJapJq+5ymBBPQ7iA/SKJJgwjU=;
 b=jOMMern6T7wiWE4/ufEPrcYPooLKd4g26VuETKc7rFkMRNBi7vRvt8RFhBr0UOWAnN
 wp11vcK5R9zGy6To03gCj2b0edl6KenBOw1Y+Jb4/Xv8ZSsYJBbEM/iOOcAndEOhUKDf
 t5WQq15GFK32RuJCD0MERQBiYIJz4eWhazo3dx3TlfMiVG41xKuXddbILMfHTxh9gzpj
 MQ64gwbw5YmhfRQDHZIZQzHQm7Gx93y0GfcirJquGCLKb31azdub1BUAwNDJhfvmnPwQ
 y1TQ1/1HmlOhpvbbHmNj8AVinJ+THuhmX6qe2QprHuwKGNVBuuPFIbtj7RLGpelLTurU
 VQIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=owx+SloUf8pds6VPSlJapJq+5ymBBPQ7iA/SKJJgwjU=;
 b=g65zXD1Cb8qvTvpgEyBZ04weuiS2eYoZSS3tUgI5UslqkkI+Kh6h4a+bLQXpz5hKbe
 t36y57ixOUGkXiBpTm1RsZSvSvJGOoKrEIp1rnlP+qNWEAx5RwalvxRrJCXu+wmYz5Qm
 vSJtKgQnghYjS2zNz86oV61g/kSBMfuEjBYueQR/TpLIQdGT4Zw6AdnqMoGNa7/UT2Es
 8ltwublPRviaCNNQYGP8VEP+Lz3c7kQqrwR814l0mwTDqGqOefchPSK5Q0wyJRbD2Za+
 sCe+3IU3YOvGGA7KXrliTGVdxCUqlyZvZdf/7iw0qFAnF7e1VycEKxGz4xCOTwWRND9H
 nVJw==
X-Gm-Message-State: APjAAAUZoMYExBjZI4lL9hyQfRG7sD66MsvuArV2deh8STsYRaX4dmvx
 jjszO4jxY38f4vl4jGXaTokp/A==
X-Google-Smtp-Source: APXvYqxp/iitD6O/NdUA06r9/yZSgghJqfhQcVQLOvvXc32vodyNVAkq4131RInkIiKGlrJereqGvg==
X-Received: by 2002:a19:f006:: with SMTP id p6mr37770832lfc.94.1577717056795; 
 Mon, 30 Dec 2019 06:44:16 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:16 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 05/15] cpuidle: dt: Support hierarchical CPU idle states
Date: Mon, 30 Dec 2019 15:43:52 +0100
Message-Id: <20191230144402.30195-6-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064419_697989_5BD766C6 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Changes in v5:
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
