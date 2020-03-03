Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B763178423
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:37:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aagsSjD26aMv8JDR5q15TTUBci0uhCyKbrHOJejT8JY=; b=k2s+h/n1dvTO6z
	ZH5syziRc2Q5Fmz2jpESEeHA2oxdrgR+GgL4REQVpwkEbfCKVc4P5WTJ9dUKyy08m4o6tThDVWsGI
	efYCQN2BaaiXVFWQU1bP72qhoGkMOLYaq/eww1aXWzYPtesXsAX+XtIss7D540tATeIMdG8sT3gUZ
	xkbUUfBtLLEMRcMmgw2kXlevA+DVH8AAy6rygBHDR3JHssfxK8IFy+DXgDLRx7vwbRvK5egxR8h7B
	CShAm2rwnbYlfRltqqoJcpWA3zJmHJ8K9bdGLwI9rJjJ14rbMNWJO7cQNvODETg/gfHuSLieQiVWs
	soPey8yNIMdgye6lIBBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EHy-0005OJ-Ke; Tue, 03 Mar 2020 20:37:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EH9-0004m7-VO
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:36:25 +0000
Received: by mail-lj1-x242.google.com with SMTP id u26so5040751ljd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 12:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p6OxZjqO84dNl99kuVPctKqSI5SbottYVoqCuAlbKlY=;
 b=xL/TeD7xGicYVnZjuz5GIxiYOxPH4BTrkcynvaLMauv1NyLuQtHbfACxUi7y3w5VfQ
 qBbXxi4obb7qT3QVorg9XjxXG+W3XJDgFKvEyveWOQocNLnkXALY3aR32yqG94pKZUcl
 jvMUa1LO/S2GhGsGYyNUD7RNYW0GsGmvPnh8kgxFn3DJtqGTbL/8DIO7DmaU6bUOjp1F
 fTQqat4KxMdVagRi9hGOUlLG1rfyN7y91LriVd0D7hbvBNI8ld0LNRkEVNm4gCaDCH4a
 zqhfX0P+cUgzYVj/+MXpoRIcT9EC9DS1X9VkqHvJsWqk/Rh/DkmZ5Twp6fCLT3AIL8jA
 iJKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p6OxZjqO84dNl99kuVPctKqSI5SbottYVoqCuAlbKlY=;
 b=RsL3LwjaAk1PS5+JAaq5UOo784q6J3quWeYwQKtHrJZ4QNF/2hpeJEHIoEnC/CnfUj
 zvBWpr31ukLhjYFXVr5HoADQ7dao/j2o0I4IzsH1Mw6ntZP7K3EVn/xDtj+Ksdvx1UqZ
 5QnP6EPtv1Rxu59V+mD/tN2NpPlfmCh6p052izsgsCKXSDGki2IanUUZ4s2Fw9s/en5D
 eScecEvjrLNMBqWtxW/nC6S9fu3BMnBpRo75uM3iS5MlhSMZqQrt358gFluaVuCdVdmk
 6jy3CuzyTPgTCCWtY+twX7ltOdIjDOl+JprqmkHlcXTJXkBEo3HYYLnNMayvzdeWj5hm
 h6jg==
X-Gm-Message-State: ANhLgQ3mqS0ICME0h10yXR7dIuDYnyroiO1JrzEfuj12qjmBA3KmOzUo
 F0vGTPIZZFXc3Fu8L+as2dVWAg==
X-Google-Smtp-Source: ADFU+vu6WzpHn5qg+aeDQWydbv05vDibX4pkN4lVrelM0STP1h+Lc44f+lGs0T4jy2FAanBW1AKICA==
X-Received: by 2002:a2e:3a13:: with SMTP id h19mr1138741lja.16.1583267782135; 
 Tue, 03 Mar 2020 12:36:22 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id t195sm1339532lff.0.2020.03.03.12.36.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 12:36:21 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH v2 3/4] cpuidle: psci: Split psci_dt_cpu_init_idle()
Date: Tue,  3 Mar 2020 21:35:58 +0100
Message-Id: <20200303203559.23995-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303203559.23995-1-ulf.hansson@linaro.org>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_123624_013236_B89EA00C 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

To make the code a bit more readable, but also to prepare some code to be
re-used, let's move the OSI specific initialization out of the
psci_dt_cpu_init_idle() and into a separate function.

Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Adopted suggestions from Stephen to use IS_ERR_OR_NULL and
	PTR_ERR_OR_ZERO, which further clarified the code.

---
 drivers/cpuidle/cpuidle-psci.c | 46 ++++++++++++++++++++--------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index edd7a54ef0d3..bae9140a65a5 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -160,6 +160,29 @@ int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 	return 0;
 }
 
+static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
+					    struct psci_cpuidle_data *data,
+					    unsigned int state_count, int cpu)
+{
+	/* Currently limit the hierarchical topology to be used in OSI mode. */
+	if (!psci_has_osi_support())
+		return 0;
+
+	data->dev = psci_dt_attach_cpu(cpu);
+	if (IS_ERR_OR_NULL(data->dev))
+		return PTR_ERR_OR_ZERO(data->dev);
+
+	/*
+	 * Using the deepest state for the CPU to trigger a potential selection
+	 * of a shared state for the domain, assumes the domain states are all
+	 * deeper states.
+	 */
+	drv->states[state_count - 1].enter = psci_enter_domain_idle_state;
+	psci_cpuidle_use_cpuhp = true;
+
+	return 0;
+}
+
 static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 					struct device_node *cpu_node,
 					unsigned int state_count, int cpu)
@@ -193,25 +216,10 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		goto free_mem;
 	}
 
-	/* Currently limit the hierarchical topology to be used in OSI mode. */
-	if (psci_has_osi_support()) {
-		data->dev = psci_dt_attach_cpu(cpu);
-		if (IS_ERR(data->dev)) {
-			ret = PTR_ERR(data->dev);
-			goto free_mem;
-		}
-
-		/*
-		 * Using the deepest state for the CPU to trigger a potential
-		 * selection of a shared state for the domain, assumes the
-		 * domain states are all deeper states.
-		 */
-		if (data->dev) {
-			drv->states[state_count - 1].enter =
-				psci_enter_domain_idle_state;
-			psci_cpuidle_use_cpuhp = true;
-		}
-	}
+	/* Initialize optional data, used for the hierarchical topology. */
+	ret = psci_dt_cpu_init_topology(drv, data, state_count, cpu);
+	if (ret < 0)
+		goto free_mem;
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
 	data->psci_states = psci_states;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
