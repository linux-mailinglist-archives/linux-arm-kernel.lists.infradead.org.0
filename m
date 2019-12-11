Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE42611B481
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dJUhxWR9wZzLVCVdrmrMRb+X5c3EGh8hLsttfOf1mEM=; b=ncuVN8CFMkQPQpqKAA5NJxUDQp
	G/yLOPpV6kMffrZXBXyTJ5D2O8lRfsu3tKERyG72w6ObxTfoClyFInsZm7fQAlENHnQzUhRir4p9u
	+Xi/gOOF7Jf9wcXSlYmDAM3W1L9LpaQNhN1QGlQD+ow+AKzYravoNO7b3AMDifyj85lCKLLsmbWjY
	EEScSkWJbljXAEXkQ8seLTDzBIPZ3vkXNI/5ev8HyVdQDcxu307Jdk7vzTV8OsLtVCGWBZpBvh8h2
	hjZ+PpMdvERkmxExst9VicVHXHg2rK6S6sppo08T42PKdOhFhSngeU0M/R/oI4rrSu6BoG8te4xLi
	QVouU8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Do-0003rq-95; Wed, 11 Dec 2019 15:48:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49f-0006xy-W8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id m30so17037295lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ofbrgz68OSPrbND6/WhbxfBKi0bLlwB+/hz0+n8YJzw=;
 b=KVepL9vstN03XHppcxydjSKRLkFgwNOhFqMhTEnVlF1MReXK/9bNoLInJ8YP4E/Oja
 ZsW6VRW6o1OTBRvvY3Pk+F5pawI/QV//nAh+XSUsYvZyyHcT4x89o5sJIBMcUQRb2GmY
 q3FFC/XGyS6X8bjQylLBcBwEoXtkItkLrJCdTELVIh9uptrXS8Y6bz7BCWQUJCiWuS9+
 0HnCy/45OUr7AwyD/twItRhW6qCTqBU1ffy810aL/t37q+e8zskOr9aZG8I/TMXTfhT0
 IgHIUiScQLkUlvprt8NBTDMSwKQ0ZagBxHs/8xctCRVLEI7+GdKbAawY6YKngYrmAxEc
 zIhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ofbrgz68OSPrbND6/WhbxfBKi0bLlwB+/hz0+n8YJzw=;
 b=AEr3F2jsD28EeFYXDJWjbE5fd0nrN6imAqFssd3qOsNsbxAERP8GHkrZ6AcTd8625q
 Y/exZs3GGOTPurm2CHAl3Jw8+6TYMWetIe5KQT06do0jSCF8m0EGGffAp4OHLmWXkrUk
 eQOnivJFM+clvPS9Wyj7+R64PuEtMqmj0JDJdPEOEILoXtxwlig+WUactGPVHkPGeN+A
 4EoCBKVTbvUXiKnSPSIAplSQb1vbLcyYWduMOhl2LfRr6EJcsEdkD21jE88I3FanxXBM
 8ybYV3POg0bgcBbb6CYNl5Lvdzx/PVPAuCkVLHMw7nKOdRiXvxknHna6ikQK11jo8vE3
 VWVA==
X-Gm-Message-State: APjAAAVARK6JVFvseyOOFGeBeLwdED2if4/ZKAedfAqgQFoqmUPje02d
 Ah+VH9EWeM+Ybk/EFEe0Ebq8Ew==
X-Google-Smtp-Source: APXvYqz89XHVxkLmuyY/NWdcwtGhitRaQeBPBPqirkbVbNQySVcoy9ANADV7MYrC0JZJfJfwa4yKGw==
X-Received: by 2002:a05:6512:21d:: with SMTP id
 a29mr2713494lfo.186.1576079037661; 
 Wed, 11 Dec 2019 07:43:57 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.43.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:43:57 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 04/14] of: base: Add of_get_cpu_state_node() to get idle
 states for a CPU node
Date: Wed, 11 Dec 2019 16:43:33 +0100
Message-Id: <20191211154343.29765-5-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074400_061501_D7711180 
X-CRM114-Status: GOOD (  18.06  )
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

Changes in v4:
	- None.

---
 drivers/of/base.c  | 36 ++++++++++++++++++++++++++++++++++++
 include/linux/of.h |  8 ++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index db7fbc0c0893..614f0c674995 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -489,6 +489,42 @@ int of_cpu_node_to_id(struct device_node *cpu_node)
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
