Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6606C12D13B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9v+3Gf7hHeLnm0AEOocQ5tWoblrz4Inmmb8R++gOaTE=; b=ARzjDnOxdJsAMVXkGYBDtKnyqd
	0leAsvVTS7Lks7IzGY7feKRJbWkEV7mXrLrRhXO+HDObSXzr0vdqAzoChUN6XV8owdwlUxgQO4tuN
	xsnHF2jmR3W/sVrUfv2ASOQTKOSnYcsr2t8s662wsMInhEhWgkQoWU19yzqQxxAYtCjt8Jt52S2oq
	tG+tn8aTojnVo4hLp/iTMm0RRePUNUZuYuxpTpySd+5zrAmp1QRiOOBSJ1jcHlPiIV9WbTpRx70MF
	3NQ6SNdmpdoXSgilNiIr85MZC8QQpgUQBUFG13TO2azeIsKcMesmgg+WuPQuqbBTzwVO2BK06Ix1z
	4qOCMj7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwOf-0005UN-WA; Mon, 30 Dec 2019 14:51:54 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHO-0005Ip-Dc
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id l2so33504698lja.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8v5xuPr2EJ9DSJyEgwYWHNaPW3NhmJIKXs9ahA/QI14=;
 b=gaWhEs8bCTWDjEkiGpFUqwqn0GmNDQFWOkn0x0TuUvrI5mbmBk//3DIZtLQXKs5geY
 qZOvtle3WhKIeLFP4Jf/SaYuFwlcYSLHPyMWs99zDm1lmL1hR/5wxeqoI69Ti0korIh5
 PmfFnwSLudQzFF1yugoRk7BpHN/tfDHzC9mmEwDiapNhF41HUTHdedRqODqM7S96A6uG
 bt7yFtA39kFLXZA+CCjihGvjyrxenBf/EJsQG9XvkaoZqTB4ZRdiGl0cms+egMgnp6W9
 3zvKcfSuVKP3GLgFldKd0Ef/fh2TRxoLjaDsk8sD4a993+4iZ9mAKuW783awGHt96mi7
 Mcuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8v5xuPr2EJ9DSJyEgwYWHNaPW3NhmJIKXs9ahA/QI14=;
 b=U3Uh6IeDdtRHd/wm3QRJEcNPtAAyXiT68r4721dWgGUnTkgFTSssov+sTSQSE/MCZ3
 ksbzDlCAZEpXD+b9uXNT9GcVgEaEaSE49tBjhCpU2QTHDyCmAzF5wLDruyC7vQWOCD9A
 4mba0ylGCfStczYUnM1jsLJ+2tBJ61NoeaW9mv2ubaL2MDsiSV1/8QdoBaB+uvbhaDZL
 /ofAeV7kAm8Xh3TDot/vzY04bsbgAIcFCvDJreMewE9Qafz/Nrt26Bm4GvDXSRgbno1d
 Zl5aqSEKdTY7Gn1QsgocsPLSJoMRvcDyq+uDnMxpK4WqfFHiRYJHkylONQPH74NOmxyK
 OAEg==
X-Gm-Message-State: APjAAAUTPbBHPr/dEQwGfCzVPVbBM1inv00VcKSDDzsJEktLk/E2MrdE
 iYVckNMudhdbjTYoGNUB5N808w==
X-Google-Smtp-Source: APXvYqy2psF+SHAkdnmFnQHEnt8nfdz54W8h3uR+uQcrYtNUivkQ5xNld+aRPQg4nCP0yfXDA3vZcA==
X-Received: by 2002:a2e:b1c3:: with SMTP id e3mr38270940lja.137.1577717060097; 
 Mon, 30 Dec 2019 06:44:20 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:19 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 07/15] cpuidle: psci: Support hierarchical CPU idle states
Date: Mon, 30 Dec 2019 15:43:54 +0100
Message-Id: <20191230144402.30195-8-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064422_531845_79308C5D 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
 linux-arm-kernel@lists.infradead.org
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

Changes in v5:
	- None.

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
