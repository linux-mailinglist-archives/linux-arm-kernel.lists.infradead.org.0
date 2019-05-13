Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DCE1BDB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sFJbzTcj8mIsTtOZ0AsHLcEAxjNpIwIEtI4ty1sVK9g=; b=dsZjmpc93ANXKvy3/divlwX7Cv
	S8TbJuZ2maqM2sDmjnj2GRKgR+9vP+Ly/4qeIz5/dYvjnT35929/vUPXDR4LLyA9diXZGVPisPRA7
	8aAdNe0W9XRpEJ5t4zoyL6PLi3UChrV7b3UGfgaeoTZKjE1w1V46YcSV8qp1NG164Tdva+/wdeCnW
	gWhs74/GeID1hmC8I34TT677ZJen8NH5fKTqCMEBqGyQNEc6ufsvQ5tkJs38YR4Uf7Y3xX9BhgiVe
	4YfvOTcELEwvfol1vBHfLLP+93iJkhdOmvRcIFIdaFB3u1JFgYpvIsxy6rkPQwPQnR7r+L8AzMRpD
	ljC8Ndeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGY0-0001H3-4G; Mon, 13 May 2019 19:23:40 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXX-0000qt-9t
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id y10so9946999lfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y7css3ZNjj71s6qH3VZ02Gz19f8ZGlmnEuYgt6KvYro=;
 b=JQDERog4rov3X+DqEg2H7/3Odpqc2zC02GWbC2dA3cdRByYxi61kDxumi6NKwfVrRo
 MthcOUmpimuvOLKrvD0vrkrnD69QBrGcqvLE2ekX0Ag1GhHhK8CeFO3PPP/rY48StudY
 uvMfjdjZJgcj/HMAcKg56hIjoXHwqFwxeas8Q/zJXHNh/9VUNbu2dAIaiKo7Pc+MwALa
 9SWhEPexpgP2e3ql1zXtp3jydNVwmcUGR79PdmwSfMGqrslIYLqcKywJk7qgkw396soe
 HPSSW/N9cuYmE47cwNMWq0RyVq2SCoJKdaaGjnwEZbeXCXeUlh1q2N/e+59FIltHYDFZ
 Milg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y7css3ZNjj71s6qH3VZ02Gz19f8ZGlmnEuYgt6KvYro=;
 b=lFjD72qRmemY7UnWhpqokTWW7CK9rmlHoTEx+GgT6MBgkvN3m42/ChSGOUBnwqVk2M
 zATaaBIC88jzJ1v4GNhbRkW5cm6pRjHXR6Rc2okQt2y2NY4CAqsWmFxD4aXgd7Lp+hn9
 8N3iZM/dIO0iIxCmHH3JpQAkRSrxOwsmQPsm0rYF6JUF6n/IVSzMgfPVEQToz1VnN+ID
 ZiuWgeT2mxEAokNLsiWqh+/v1IAEx9noFPfUxaVOa4t1CtsUJArzA2p4pkL67zwMGlbs
 yHjW2kjetCUwFe8lSQ3ChFbq3h4GrN7/7guptc5paBbea6WR9SfapIsxOk5oYLm04g7n
 p57A==
X-Gm-Message-State: APjAAAUajK6SilQ4lows6xUs/GYlTewB/1Np/5+CcacYul6v+DTfL1wF
 CqojoVMB88rIS1Q11JmL+uGWiA==
X-Google-Smtp-Source: APXvYqwTyaAA0SKlYfwt/EkTngvPeOt4VBe6xlPqr7JTEF8fvJF80/c14TQZyy9mXnggagGHR0SUYw==
X-Received: by 2002:ac2:457a:: with SMTP id k26mr14042867lfm.161.1557775389309; 
 Mon, 13 May 2019 12:23:09 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:08 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 02/18] of: base: Add of_get_cpu_state_node() to get idle
 states for a CPU node
Date: Mon, 13 May 2019 21:22:44 +0200
Message-Id: <20190513192300.653-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122311_590589_BDB71E1F 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CPU's idle state nodes are currently parsed at the common cpuidle DT
library, but also when initializing back-end data for the arch specific CPU
operations, as in the PSCI driver case.

To avoid open-coding, let's introduce of_get_cpu_state_node(), which takes
the device node for the CPU and the index to the requested idle state node,
as in-parameters. In case a corresponding idle state node is found, it
returns the node with the refcount incremented for it, else it returns
NULL.

Moreover, for ARM, there are two generic methods, to describe the CPU's
idle states, either via the flattened description through the
"cpu-idle-states" binding [1] or via the hierarchical layout, using the
"power-domains" and the "domain-idle-states" bindings [2]. Hence, let's
take both options into account.

[1]
Documentation/devicetree/bindings/arm/idle-states.txt
[2]
Documentation/devicetree/bindings/arm/psci.txt

Suggested-by: Sudeep Holla <sudeep.holla@arm.com>
Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Fixed some kernel docs typos.
	- Fall-back to use "cpu-idle-states" when "power-domains" is present but
	  "domain-idle-states" is missing.

---
 drivers/of/base.c  | 36 ++++++++++++++++++++++++++++++++++++
 include/linux/of.h |  8 ++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 20e0e7ee4edf..05866f0c65b4 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -477,6 +477,42 @@ int of_cpu_node_to_id(struct device_node *cpu_node)
 }
 EXPORT_SYMBOL(of_cpu_node_to_id);
 
+/**
+ * of_get_cpu_state_node - Get CPU's idle state node at the given index
+ *
+ * @cpu_node: The device node for the CPU
+ * @index: The index in the list of the idle states
+ *
+ * Two generic methods can be used to describe a CPU's idle states, either via
+ * a flattened description through the "cpu-idle-states" binding or via the
+ * hierarchical layout, using the "power-domains" and the "domain-idle-states"
+ * bindings. This function check for both and returns the idle state node for
+ * the requested index.
+ *
+ * In case an idle state node is found at @index, the refcount is incremented
+ * for it, so call of_node_put() on it when done. Returns NULL if not found.
+ */
+struct device_node *of_get_cpu_state_node(struct device_node *cpu_node,
+					  int index)
+{
+	struct of_phandle_args args;
+	int err;
+
+	err = of_parse_phandle_with_args(cpu_node, "power-domains",
+					"#power-domain-cells", 0, &args);
+	if (!err) {
+		struct device_node *state_node =
+			of_parse_phandle(args.np, "domain-idle-states", index);
+
+		of_node_put(args.np);
+		if (state_node)
+			return state_node;
+	}
+
+	return of_parse_phandle(cpu_node, "cpu-idle-states", index);
+}
+EXPORT_SYMBOL(of_get_cpu_state_node);
+
 /**
  * __of_device_is_compatible() - Check if the node matches given constraints
  * @device: pointer to node
diff --git a/include/linux/of.h b/include/linux/of.h
index 0cf857012f11..6ae5c2c4b104 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -351,6 +351,8 @@ extern const void *of_get_property(const struct device_node *node,
 				int *lenp);
 extern struct device_node *of_get_cpu_node(int cpu, unsigned int *thread);
 extern struct device_node *of_get_next_cpu_node(struct device_node *prev);
+extern struct device_node *of_get_cpu_state_node(struct device_node *cpu_node,
+						 int index);
 
 #define for_each_property_of_node(dn, pp) \
 	for (pp = dn->properties; pp != NULL; pp = pp->next)
@@ -765,6 +767,12 @@ static inline struct device_node *of_get_next_cpu_node(struct device_node *prev)
 	return NULL;
 }
 
+static inline struct device_node *of_get_cpu_state_node(struct device_node *cpu_node,
+					int index)
+{
+	return NULL;
+}
+
 static inline int of_n_addr_cells(struct device_node *np)
 {
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
