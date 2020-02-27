Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBD41717C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bfo+Vi7zw20GxG+lf63l0fH0j9uHzaXn46gVFygbfWY=; b=P6dVzWmUBWZZc/
	T3txaRPUcgQfclBAa+2wg8gNOVQqtImbicm9vxqS2FugNQi55E+50EZbenmSvqj9Drrl7Sbb6dvYK
	bdMLCizYLV5zk1fJRWVUhhF2fd+grtD2076u8y7g/y0wnTtcGTRDoJkEfmSJ3raRnhtc9HHHpMams
	ZfcNxhuXdHZO8S96uJkWc/ZRhNbY6ejSfhlpw37AF3TZUSBUZhVfNah++rLFy7qDgwMuJnR7rrWG4
	skKh/LGnttOtIyer7Gzkk2Rv2WJaQGgAr3eGVyOpDToyiJkwmY8krwF8sG6GvydIkQyXu3r+zijzQ
	I1J1Mpwkmulnh3CL/IRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IZO-0000zQ-52; Thu, 27 Feb 2020 12:47:14 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IYa-0000RD-LJ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:46:26 +0000
Received: by mail-lf1-x144.google.com with SMTP id 7so1957491lfz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 04:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZPYRIg41YwW5y7gzBIFCCQYc7BuElmJfratXvS9/RTU=;
 b=GRMBtDnuFIHhKQLNR5bYnf0YeAvzu8Lkr45VhsfqrQDfegayFVkGEDHxmkTQbBM127
 d0GGkdb82XKNRJ+F0B/Y7uK2QtkhbkfZmBzDRNEW6o1VKKoUgSaYFLuKaD6kIzusy/rg
 VlObzJ6OLnbrt7IhkbLN+nAxe8wDM2LT2gZCSH+4Pib6NlW6ItxKWAWYb2xtBk5FDUQT
 KJMjc+wYUwfzW8jO13sOV78g6kTWdJn2sAcNBULDQIhQ5JwOsvghkPFsog4VDoMa2+3T
 6TmnBYL2K1XcXcMwVwiBUOdbZUS2b4DvOfXDcQ1w17MtSe8UwPRJgNyllErCUf8gBaZw
 iXKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZPYRIg41YwW5y7gzBIFCCQYc7BuElmJfratXvS9/RTU=;
 b=FuwcAP/tcf522DdaTUjxlAxG2d1eNouFGaVI43sYaqTA4cqMw6xhYUmByzvL/afGY3
 JoQ5m5K6WZz9erUqkdt8d4ViQVh4ne3lVNd2D7UfE500gDm07TzlSRbVoT4ADoQSr5hW
 ZT8f9sgFRB2ShF6OVuK2Iq1UVGLNAyoHB0YE85CnUE5UqAkqgKfoSfQSSHNG7vQXH5uu
 c2Xh0gFh5RpUXHfOAKmIAkK0lYR80X2UvPU7HkN1yjT2Y3B5/8ep51+6y78OIm8OIbEE
 Det+gVIkjcerDMWgsQbrAq6SDiOwW8Pn4n/GE/4Wh4/CadLz4hWkATwXPerinD1aTgAr
 poRg==
X-Gm-Message-State: ANhLgQ3jmyH4cE5BAL5orgrZ4NoxACIcbjoORV0FvK1j0e9WWpT0xBl4
 KYbZZHBEiPWwfbkOo1FdA4N+aw==
X-Google-Smtp-Source: ADFU+vvy3xadzFJgMR579KvBJp97cg/u1LNr5iTXRd789EXBWJ1RL/VY1A+sJYMUch7iOHDB2kfK+w==
X-Received: by 2002:a19:6445:: with SMTP id b5mr2044742lfj.187.1582807582480; 
 Thu, 27 Feb 2020 04:46:22 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id l16sm2669334lfh.74.2020.02.27.04.46.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 04:46:20 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH 3/4] cpuidle: psci: Split psci_dt_cpu_init_idle()
Date: Thu, 27 Feb 2020 13:45:50 +0100
Message-Id: <20200227124551.31860-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227124551.31860-1-ulf.hansson@linaro.org>
References: <20200227124551.31860-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_044624_716392_180383EA 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/cpuidle/cpuidle-psci.c | 49 +++++++++++++++++++++-------------
 1 file changed, 30 insertions(+), 19 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index edd7a54ef0d3..7b459f987c50 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -160,6 +160,32 @@ int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
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
+	if (IS_ERR(data->dev))
+		return PTR_ERR(data->dev);
+
+	/*
+	 * Using the deepest state for the CPU to trigger a potential selection
+	 * of a shared state for the domain, assumes the domain states are all
+	 * deeper states.
+	 */
+	if (data->dev) {
+		drv->states[state_count - 1].enter =
+			psci_enter_domain_idle_state;
+		psci_cpuidle_use_cpuhp = true;
+	}
+
+	return 0;
+}
+
 static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 					struct device_node *cpu_node,
 					unsigned int state_count, int cpu)
@@ -193,25 +219,10 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
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
