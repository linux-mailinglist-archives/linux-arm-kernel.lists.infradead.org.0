Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10536E8D32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8R2/2kuXio5f83AcZbOoEinrF59a7888i1U54+vZuNM=; b=jD22rTvTymTa/3t7oQ/zPubU8G
	WYZ9QxIzWSZu61TeRdTH6JiNDlrYZBSy3/FAtITtq/d6lwCVR67n9kGnzB7NTopalgHbM7CaRdAoA
	Kx30cdQtUV9dGbeEgrWpXUptYMNZQKe6F4bmbn+6XuP/0FDGMoxFVehSPA15JrFRJAhdgI+zfR2qg
	XUrLQBGsOjsFxMwuXhj8AfuY7eZAkfgpdi8uj2f/Kvbb0QN48Fjxvem4bFKjxMne85Key1fvD4V8U
	gwMGc1Cryr+DWWChLqMIwV30FtcpWomXgWZcp/V2mqWxtC6Ut9b2G0UGun+8EXuyUY4ZaU+zX3u95
	hUivvn9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUeg-0005vE-Lm; Tue, 29 Oct 2019 16:47:38 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUc5-0002sR-Rp
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:44:59 +0000
Received: by mail-lf1-x142.google.com with SMTP id y127so11078202lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ez2utYAtjrFLSHNrrL2RvE6Z5l8CFOmyZBlsi6wZqI8=;
 b=eCGaQk2ChyJ/95Dayhp/eCVH9GYp8vqXLGYdKqn+s6sbEXDtYLqRbzL7MikO9jQwyb
 NSWhHLVWes+HJoe8km3MiXNurD1DIePI4IWhRMUJBpByb2QW+HnOwvhkWFffVUwo1qqE
 74g+X6ot4NazRXExIRE9h6nF5bDA3m6jHXT5deC0kDgH83ltRxgW2Mafp/I7qfrbwGec
 BZci5DBOypZIdRKtHNqIhasuVY2HvSsYaGEQVgReO9iPipAlWPN+I5faeOai7oGtGJa/
 1xlmHTo7sf0GTQml9Crhr1W0TtwNUr4qnjdFhNspGAPBO/3t9kbe6mGFB2FCR9QjWZRe
 /jVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ez2utYAtjrFLSHNrrL2RvE6Z5l8CFOmyZBlsi6wZqI8=;
 b=aoLWb4Ml5V39zjBcrdG6RQkiyPf13PHX5/ycXsl0dWj1eBmRFBjkWEPSsbyYlMkdKl
 Xa+v30P5EJVeWxGD8zLSLgSHk43o2+boZvZu/FyVkNZ4lXW/w6jifqjknXAJCtI2O3KV
 HHHkH2Bm3P8WrW8j62IDj8o3H9eMFHV1Gr0DEvh6JHv8c8CLWSjrtYnsuuDqtoZqmI1C
 nixVCR77LF/gkHITH75JK2l+w2g+nyAc00dbZnMD/nJAvn8pk2kYzfwAWc77QumzpfgH
 QP9ukHsPxSzlAReUJGvmO8H5Y+8Yu+EGDdWIRBFnz3YQnNYIqBaer5m4KR3/GUkLK+q3
 kcUA==
X-Gm-Message-State: APjAAAVSEFo+Xp9Moskd8XpBr3//SkfIw6H/0RsrDPVfkzK1BY8JqMXH
 39pjDlXHryRCb9NstyfaYP+O4A==
X-Google-Smtp-Source: APXvYqwG093vCEUK38BuHysHC02MT9Ew/IBlJLhyuhJziPLSFaU9E7tosCpzLO3LqiexNq1Pnlj3zQ==
X-Received: by 2002:ac2:43b6:: with SMTP id t22mr3275250lfl.126.1572367491899; 
 Tue, 29 Oct 2019 09:44:51 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:51 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 05/13] cpuidle: dt: Support hierarchical CPU idle states
Date: Tue, 29 Oct 2019 17:44:30 +0100
Message-Id: <20191029164438.17012-6-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094457_935701_1C35EC01 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Lina Iyer <lina.iyer@linaro.org>,
 linux-arm-kernel@lists.infradead.org
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

Changes in v2:
	- Added tags.
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
