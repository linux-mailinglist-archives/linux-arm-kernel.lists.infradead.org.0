Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9018CE8D30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8vSqZF1CcgUCVshbRjvDgZPyFiOlmbhvigPGIKeEzHM=; b=KWRxOGczsxs7vRD0RAvlkwAgGO
	RyRZaVF49F307Q7B/lnCtvIScMXLXYM0DThAKiSG/Gsc8FR7vj+boViHmd9LkhwoPrFUfevJoI69D
	Go1BwnU/cxPmFwInIiSVTfmPRKzJLEwvJvT+zESoY2gC+FtUu1+34gkTsHJKJtnlK15eXoaY9Orar
	V/N/2OV4wVdaNgj/suJ3gZNNgq5mNyLftCRf0wat9QWPLcyHVbuKgWwx2n0uDE9aahhIqQ+EEsOsM
	K3me/lPuKaea+52KTfRii7CwjtPrK7EwDHqnjGUEsiev3yKH5E2AdoH5iwU/q9+6wrQWE4Om6ORWk
	srHoJ4ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUe0-0005Kk-EJ; Tue, 29 Oct 2019 16:46:56 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUc4-0002rz-QW
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:44:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id t5so8205790ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=s+efRcFDZJGrl94RZ1Pp04/eQynZO0t/87C0fALcC2Y=;
 b=DcR31P7QEhii748OfmlKLxnlgK2iGESy78LkihiAPNRBd1n02OkEbkB6oINN4qv153
 TZWIg25uFuJM/ImzEcip1z0+uOBlD2R+kFXXfQp/SHkbrUMWd/e2Zl/onpraTJWE9Ls8
 H2Q9VbbXEQZz/wZM7bMZZ8CQwqUSanG0Z8YL+jNcr553bfPAYUvitL4zl1S/7q2X6LJe
 KOSHCLV4B3XmapDudWjAZFt/kvcUofPfUHzDgFCkZu3gUi4zNcJ3wmT9EKsY1DhYkA/N
 dclq1M2EoW6vIFjlfsLh1UBG50Wbt0ZgUhFXluw/poNqBez/Afa9SFciz0phawg+sdlH
 Xmhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=s+efRcFDZJGrl94RZ1Pp04/eQynZO0t/87C0fALcC2Y=;
 b=g/5tNXLbrB2p7ZARo/6BcABk+fsnQpN2cJeJOP33ZOAuMx4Do7H1psyECsyvT2zQaX
 35zWsZqmY1WmNJea9W1dZNMOCaef6hvnh3Rp8cKaeoHUYwZLTSbN6FGmuBd5FMMiXjTD
 ZLYCAyX7mz5dtZ9luySmmbh3y1TlG+jEWAs35YzPVnsKvR+UbfaXcKr4RI9873QiPxjn
 RCPpXz3X5rzT2+ZC+puwRySmvQspMmtF0yT271Q+t+xRn22qVG+jLyEjipdvkJbmKicm
 VyPrtfwIehXdq0XAIdKOZ4jlJdV8GWfDaL61e9PypApgGCJ9kQcQeKo5bY0KuJhwepYL
 6lbA==
X-Gm-Message-State: APjAAAVBr8YABnjlijoH5YKiqRMbC6ofOFa8QVarJLyOLZxhxWBHsO8Y
 Z8Kdlv90emRR/5AUEoztSd66ig==
X-Google-Smtp-Source: APXvYqzCWSq8jiTn+Qd/Sc5a5w9kGIAL/amfp/ZQemIsHNKP8bf8axa786VJsKcOJkE8woFSWOWH7w==
X-Received: by 2002:a2e:9a96:: with SMTP id p22mr3274465lji.171.1572367495410; 
 Tue, 29 Oct 2019 09:44:55 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:54 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 07/13] cpuidle: psci: Support hierarchical CPU idle states
Date: Tue, 29 Oct 2019 17:44:32 +0100
Message-Id: <20191029164438.17012-8-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094456_905134_47A2A959 
X-CRM114-Status: GOOD (  14.62  )
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently CPU's idle states are represented using the flattened model.
Let's add support for the hierarchical layout, via converting to use
of_get_cpu_state_node().

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v2:
	- Added tags.

---
 drivers/cpuidle/cpuidle-psci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 761359be50f2..830995b8a56f 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -86,8 +86,7 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
 		return -ENOMEM;
 
 	for (i = 1; i < state_count; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
-					      i - 1);
+		state_node = of_get_cpu_state_node(cpu_node, i - 1);
 		if (!state_node)
 			break;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
