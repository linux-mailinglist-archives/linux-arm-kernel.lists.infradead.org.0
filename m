Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272A71F9BDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrHqusVMs8ZcGMQ88k3TNET3RAOPmz8ohMfrEKa9M4k=; b=t/F4LozHTWgweJ
	xdlAGT1pKRAq9Ji9crRheHBNpDdsfYwZWpCYExTzEQwqqA1SYDtmj8LVsxh1TqvNvsIQMcKCpajlh
	OKguT1bhyzWccff/CA/PeII/EnUsnB2qo0HVZjQnJEUeSspdylCbR27TxpaqsIKlHnD6UjxtD8njA
	AHcnz/AK8y066ZgGhHwNJ9sjTQb11lAxrKsF0M3vqb9IIpeo7EEdN/A5KspUYSsE3DcM8XLdj1c28
	9EiZ91tNswCSg67ODN5mlYUAnFChnRmH3AyaZ7HZaKKs+sRuv/1/dYJFI1ZGSJO9YXRIHrT+kjoQ+
	NnKUiGRUxKejXQLEimPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqvR-0005GK-Hd; Mon, 15 Jun 2020 15:21:29 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqv0-00053o-Hn
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:21:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id 9so19703386ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 08:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zKuQg/V734JQ52Bk2AkHR9NRP89P2pyrqBomz/3R808=;
 b=pvtc1SZFZTITynG6EAMVZtWwt6lRnyd/IzhXA/GcyT1APmIZRJjKvOFBulO0VpBUZp
 bvz9hCSRcYaxOsiDD5aSDarY9I0SBwqIkrusZOPH+r0qm7Hk1ixgsqn2Q+moDrS/ab4s
 /krAWc9u7RQPETLSw2VMzG/aZJnBTZ0qN88eK/MOdk+a8M8S3zUlzZk3maOnFESycdDA
 cFFcyXPo2frLFTbVPpZgMoDq4FmRJnXp59Ep1jtKuprRcSTFoXUwq0VNevxw4/AAyS1L
 O6/InAf3ar6Vt2CXzMxDD06ypaHu3Cpn0U4mwr7m2XWS2HUOuNNOx3u6l5+7Iywn7SUh
 xEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zKuQg/V734JQ52Bk2AkHR9NRP89P2pyrqBomz/3R808=;
 b=fs8DSCrmgV8InfMVA/q0rsPExoqUwfd5o+mp+OaTfWsAbAasPxYQ7LK6L98ylLt0xl
 cByPSJTG6e3JrU1Wc4ZyV/G2VNPHGa9PWllAOxY7emyviYSHIAU7enlytfRODNI3fubu
 a5EBt3VFBAA6WsD8OKFSo/BuzN+5m2cvIfJzY3lblIQF4Zjx1cwJB1/rcsCpp9ma7jdQ
 ejHM9VBJGzBvKYzhSWvdw0eihPUjhVbGJH8SZ3kFwx3cPJDGU4pzcqGQhRIscx8v2UH6
 e7swSSLedgXCQHRJdwrUfuvwJmG3KPpAAnRas3J051OaiMIWtV1TH3QvVdvGYWHTfCdW
 zAjg==
X-Gm-Message-State: AOAM533PZFEAd+/qIC4jRBoyBShmlOxHDanhzBemnflNPhLJagcqSHuQ
 dCtgdgh17QmZMKWgn6KfP/FEHw==
X-Google-Smtp-Source: ABdhPJzk+/msjtPy+gK56odrzaAF+uDCn54CXNp4xuAEJt/Zr3zDNx3DSb7724QQbj0z/HWq04YcBg==
X-Received: by 2002:a2e:9e86:: with SMTP id f6mr11881801ljk.95.1592234459927; 
 Mon, 15 Jun 2020 08:20:59 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id r13sm507045lfp.80.2020.06.15.08.20.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 08:20:58 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org
Subject: [PATCH 1/5] cpuidle: psci: Fail cpuidle registration if set OSI mode
 failed
Date: Mon, 15 Jun 2020 17:20:50 +0200
Message-Id: <20200615152054.6819-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615152054.6819-1-ulf.hansson@linaro.org>
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_082102_594536_76870A0F 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Currently we allow the cpuidle driver registration to succeed, even if we
failed to enable the OSI mode when the hierarchical DT layout is used. This
means running in a degraded mode, by using the available idle states per
CPU, while also preventing the domain idle states.

Moving forward, this behaviour looks quite questionable to maintain, as
complexity seems to grow around it, especially when trying to add support
for deferred probe, for example.

Therefore, let's make the cpuidle driver registration to fail in this
situation, thus relying on the default architectural cpuidle backend for
WFI to be used.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index 423f03bbeb74..f07786aad673 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -26,7 +26,6 @@ struct psci_pd_provider {
 };
 
 static LIST_HEAD(psci_pd_providers);
-static bool osi_mode_enabled __initdata;
 
 static int psci_pd_power_off(struct generic_pm_domain *pd)
 {
@@ -272,7 +271,6 @@ static int __init psci_idle_init_domains(void)
 		goto remove_pd;
 	}
 
-	osi_mode_enabled = true;
 	of_node_put(np);
 	pr_info("Initialized CPU PM domain topology\n");
 	return pd_count;
@@ -293,9 +291,6 @@ struct device __init *psci_dt_attach_cpu(int cpu)
 {
 	struct device *dev;
 
-	if (!osi_mode_enabled)
-		return NULL;
-
 	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
 	if (IS_ERR_OR_NULL(dev))
 		return dev;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
