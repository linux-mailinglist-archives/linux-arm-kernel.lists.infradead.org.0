Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2F9E8D29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Upivj9WKzH+P7fT64AKH1VrNSRzDrmcvusdpo6yIgA=; b=e1kpCbsuc9xz5/a7aZK8nEVGH5
	b1aFiihZCJ4Opfw3tihBDPUDibXzsEJISDzqJ5rD5dSvTzUsUIIthonbCRU0GBVbtF/iWQB0ZXZ89
	wHKxaw0Dr3mUerkM1I66emzCAzf4nL02QwNot7EYDvy1gZWREVeGmAhKN27iR96ii9nBO/JpFFh+U
	et1ZjZehNliJUsctZnB65+EmPf/99StnlBCt2fxDzfSHkWo+nBSK+Ypia5J0kczg+jw5ZfEpJL4B2
	cI2ighYfWAY3+Q47GSWW8JccKenwJFfpsTnnV81XNbBJYpqyFOGcHRtx5alL/ZnORbTgou6XMygg2
	jEesiPCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUdO-0004rY-Lx; Tue, 29 Oct 2019 16:46:18 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUbz-0002pa-IF
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:44:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id v2so1771696lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gHfhTk/O49Ag6+ZgN50VNvSjMx4ttcjd8NQhNmRdxaI=;
 b=kBwGCSdcHXtMe3sAoLYr0VqgSQvqQMH7Be08x+ORAc/oHNG4om3G2+2RVU3MwRtSev
 JgE3Bws5r9oxtaoqgcdO5trbHkW8Wq9DQd6/OsJ86y36wblEkknTE6yi1NljQ/R8pWrh
 4gwuaySu0L2rh2+UdpZN9NJw0+W9Gqzzp8KR6nGBzAo1gDbowaKp59MYDdocACXuDQt1
 Hjq15y6tPjVCfpN9npjBKhR/1w1FAc2HuSGjSpUuSWyaN20PVbSGbOFEF85Lqc9rxX+g
 +Yh8+ptPJbGSyiMSYALJ3qf514fbpfyoSjfRgVrjSmbFBII+rr5ZHxujfbiicWoB7ZM6
 fsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gHfhTk/O49Ag6+ZgN50VNvSjMx4ttcjd8NQhNmRdxaI=;
 b=ldTqfb3kc5VvWtP1WwDEbHPJjnlEWhyOi082DVD5gJeJN5Iq/GXF+T9rbcrkPp8uak
 /dfgM6//6AyQkiGNHuw9ln7iWNjIWx5C2TTi6qDFn9V0gr/M9eWpcg+06SQtkFcp6xpJ
 4tnGGK3s/P/ZR3F3yEPOF1Rq0zcw6AzccBYzeY9Dy3sgiwlKtLRA69b274nYkVQ2M1Jv
 37AS3ZX3Eqn6wg2GcqP+xjCvElLc9YhpVITufM9b6gHaK+JLgnWN2c2q5bDpzxGZzAL9
 AhVcavwZjggKB4ReuU4qkaNk10IVBiX5edZ9agMOnK2pf0Xgj7i0YMv0e/G6Rjt7pHMP
 EKgw==
X-Gm-Message-State: APjAAAXbl1xPrI4wgHNMxmI5k6sQELUCyvFEw6rV2uao9tlHQym7FVwx
 cBYg+W33iMWrbWrcDWw+GhSOLg==
X-Google-Smtp-Source: APXvYqz3ttjp033w7q9pFbNW+CdyFiZXvfTHTwHhsj8i7aBiEIBj+pAt4q6efIJOsShT2yI5wSVanA==
X-Received: by 2002:a2e:350f:: with SMTP id z15mr3476941ljz.185.1572367490178; 
 Tue, 29 Oct 2019 09:44:50 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:49 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 04/13] of: base: Add of_get_cpu_state_node() to get idle
 states for a CPU node
Date: Tue, 29 Oct 2019 17:44:29 +0100
Message-Id: <20191029164438.17012-5-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094451_617404_A32E0CFE 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

The CPU's idle state nodes are currently parsed at the common cpuidle DT
library, but also when initializing data for specific CPU idle operations,
as in the PSCI cpuidle driver case and qcom-spm cpuidle case.

To avoid open-coding, let's introduce of_get_cpu_state_node(), which takes
the device node for the CPU and the index to the requested idle state node,
as in-parameters. In case a corresponding idle state node is found, it
returns the node with the refcount incremented for it, else it returns
NULL.

Moreover, for PSCI there are two options to describe the CPU's idle states
[1], either via a flattened description or a hierarchical layout. Hence,
let's take both options into account.

[1] Documentation/devicetree/bindings/arm/psci.yaml

Suggested-by: Sudeep Holla <sudeep.holla@arm.com>
Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v2:
	- Added tags.
---
 drivers/of/base.c  | 36 ++++++++++++++++++++++++++++++++++++
 include/linux/of.h |  8 ++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1d667eb730e1..0e4cdf0f3864 100644
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
index 844f89e1b039..c669c0a4732f 100644
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
