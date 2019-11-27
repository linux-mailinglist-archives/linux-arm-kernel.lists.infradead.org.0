Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3883A10ADBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2GT73UquR3VdvMqywUM4sAcJ/xaD3zPLcQPY5QXh2Jg=; b=IB/154evyBSMCMV5SfAO8uhBL4
	bcILzAYX/IneSCH0U9Bi/2FD21zFpx3T0LekklBJ5ERwh/j4DO8UWgPmRU4lsiG2+de5IfMhmV9n3
	2QTplJAvattj+qtDgU1Gj+apXtERebfBGS7FM020UnuXlAQ3dch/PswQe9hTrydFyg3gA8itdsden
	VxVr3CVn/W3qR85OGkkfCQOZo7w6gvSqbEC1u8EzJyETbuehffxg6Z4hlbHloVXr2rtcMP7s4xBKl
	wFLUzp/sDafORv1LH3SuOsu7k7nNkU4IMPQYNgy3h6nFwNv6XC5Am8zjYVX8SL8zsIPEyn1eWW3wi
	9RZe8bjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZubo-0008Q9-Rf; Wed, 27 Nov 2019 10:31:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZc-0005cb-Sa
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id n5so23825334ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r6EEdyR4M7hIjNiPTtCqyqL+HPCjuTmwEmLVgwUWsTU=;
 b=Aip1jwmEw77XvaXpoL0a2PBc9sDNiZm0UnDB/ADxUDwNIdVBCF2fbWHwfRbLBh+J/f
 rNrtGsubiNSfVnOXDIWZxJI5cIfoHXYOsf2tU/Jp6JogK4w14ZwKmJrcTOT3i2RGsDsV
 M1la93McdDg0aO5+NKv0TLCjde3s6HRBOmsOITA8BHF5EtqF1v3yWPqU/ti7tNNznW0P
 /LUD/N322Ey8nbLpdeNyUCiu9IzUItBdR1Xq6E/MlfJ1NJIcymH8YguzuU7RhtgFoB7c
 kjswnEdVZx8pNx1lGAECS7NzZOznr2GSXxds6fBP0oSdXyQ6S8vb+mSpSTKtsJPQH0bZ
 MK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r6EEdyR4M7hIjNiPTtCqyqL+HPCjuTmwEmLVgwUWsTU=;
 b=FLDlwoRKzujAfoYtjFtxbTBklHKQmD8bTB4Am1OdWuK0+eInlv5UEC4DLGEgWefkBG
 +ok0h9i0frF7tM2oEZsgqw2ygn9LcWE9L/+/fnD7jakLccs8HHBgE8Sc+DZzWrqBwfvM
 rUsWhMuW72dWu08H6JfJEB7Z4X5Tzjh551l7WWx6mrQHIw1rnPzgmB1Db+4GKtA85D/O
 dpPI4mVxZqjut3Znbh04Z44B22IxjmUb4ovqNlGYklTncBVrPEtQnZEI04EKHBgaSM7d
 HT+hMz9Tl7bKlWYAC2M7E06x2EEM7rY2Nn97BEBtTcMrXYZrK9IeFv4rPeYFx3IQOmoI
 +WSQ==
X-Gm-Message-State: APjAAAWSCGfPMwQ/sN447lkkjVhTRiLYYBuYTcxtvcC90n43YBrbxloh
 QYcjVZvJqcWAPOxgFLIEeau0Ug==
X-Google-Smtp-Source: APXvYqzCB5mK0gCYxggjgGr+3n9bZ+VzvPOeku9C2LwcLQa6guBCbcbLJIYW85F2FDNRI3OD3tIEZg==
X-Received: by 2002:a05:651c:c4:: with SMTP id 4mr1316779ljr.171.1574850565883; 
 Wed, 27 Nov 2019 02:29:25 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:25 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 05/13] cpuidle: dt: Support hierarchical CPU idle states
Date: Wed, 27 Nov 2019 11:29:06 +0100
Message-Id: <20191127102914.18729-6-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022928_956539_5AC890A2 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

Changes in v3:
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
