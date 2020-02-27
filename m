Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8BC1717C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:47:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZWXe379gw6NXHjN9lvBaDXO0aVXEyFns/9pw3WwjJg=; b=HF245wpbuPHPK/
	W+vyyZ2fUhPovDNQP9Cdy2Fg3T/Wh1vIH/5BWyC4sNfy/FVzgb2lr8kw0f8zc8I5xSX3spd45Kxsf
	p7J4MUHOm+T3aA4HT8k4lHu8q5katqAW1/9x0SqAtFUeZwedU+hkorRJl1jQcMY6pCUqtUDr0H10e
	Jbzxb8alnlo6wDKbUv6HcwhajuvsCQw5BfgwgQY/aoVfKF+DTlO9lQBl33MZGlPgt+H6JzYXMEucZ
	byrlnc2MLltpXeW152mP8QjdEXmhn7XLUrO/7X90KCg7DfzkrzSc1zRmeAOpwFJ6waCEofKVxJg0w
	bJnW3AxxozWiSJi/pjzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IZ9-0000oA-FG; Thu, 27 Feb 2020 12:46:59 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IYb-0000SV-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:46:28 +0000
Received: by mail-lf1-x144.google.com with SMTP id z5so1955438lfd.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 04:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NROpLkqIKQsmOxVfnI3TCB5D/se19mcdjX7Jsvn77Ws=;
 b=zJlxUbiYhFoF+ODVDIvKjAu386tBZM5zdC9FOjCrrAN13EelHbSprIimZNdA9DUoAV
 HkDCSE3OSDzA5dNryQ2b9btHIUkJRTlRng1zEMwkc+XwCHscftdZISwd1pqrl+BwtHqv
 GlD8ZaB9R1oX1MDCPKIlITtO4YG6dJh7RZZAOXumSZkEOwCp3JhVK/bpllsEEQrzn8k2
 o/gU2N6cqqB7dbSwPiqnkijOTNTasogux6I/C8ZWBKKFy9gM8lmYh4TTcTBQQJ/CxsrM
 XWv6ndjECgFxLLJ/1x/6NU6gCzaV5JEcxLS17mV1i0dmQtSDVdQQ9/QeAcybUpkrhOLN
 /DaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NROpLkqIKQsmOxVfnI3TCB5D/se19mcdjX7Jsvn77Ws=;
 b=sFcNJ9+ylV7/GguVKKUwILwU5DrZMc2IbUISu9Na1y2VdqlJvmb8iOBX0XmPtxs0iy
 0P+danfbCZFpV0XxpPb4k5yFPGvLzjb4PUy/5lTT3+1ivS9zHadRIohwRWIZZR4060J0
 TOlqsqKWEpxYSWh/61H3vkx90k26Gtme/WjyyG0L6VH4quEcA82tWFKEMxZDYQKBsb9n
 rhBkK1nNvFunj+hHwrIr5GMqNXeCIpfhfmVeJcPhdHJHHXQqbYCivFwB4+SYmSA1hRG2
 HaFVXKomvcwu5GnTfn3NVmSZ0qCWT42X9//xUrpce4k9Mgs1d4EhYOskltnhlRFWn0os
 1lnw==
X-Gm-Message-State: ANhLgQ1X0RAXDKfVBBVtEKo2w3ylhuhYhAR8xY8BZVKwczUBtMW/wZQ7
 WaN8F1Hm+shU7X1xeVAp52yhMA==
X-Google-Smtp-Source: ADFU+vu8QOXDccJ4lKeIOMwWimtNYjnsyBTcgqPyMEimE4UADfTmMgToy/05O3pHPo7qI+ThXa9XeA==
X-Received: by 2002:ac2:4a66:: with SMTP id q6mr2085068lfp.16.1582807579162;
 Thu, 27 Feb 2020 04:46:19 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id l16sm2669334lfh.74.2020.02.27.04.46.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 04:46:17 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH 2/4] cpuidle: psci: Fixup support for domain idle states being
 zero
Date: Thu, 27 Feb 2020 13:45:49 +0100
Message-Id: <20200227124551.31860-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227124551.31860-1-ulf.hansson@linaro.org>
References: <20200227124551.31860-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_044625_473220_6AB16AA8 
X-CRM114-Status: GOOD (  11.72  )
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

The current code intends to allow a PSCI PM domain to have none domain idle
states defined in DT. However, a few minor things needs to be fixed to make
this correctly supported, so let's do that.

Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index 423f03bbeb74..c34b12c4069a 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -49,6 +49,9 @@ static int __init psci_pd_parse_state_nodes(struct genpd_power_state *states,
 	int i, ret;
 	u32 psci_state, *psci_state_buf;
 
+	if (!states)
+		return 0;
+
 	for (i = 0; i < state_count; i++) {
 		ret = psci_dt_parse_state_node(to_of_node(states[i].fwnode),
 					&psci_state);
@@ -96,6 +99,9 @@ static void psci_pd_free_states(struct genpd_power_state *states,
 {
 	int i;
 
+	if (!states)
+		return;
+
 	for (i = 0; i < state_count; i++)
 		kfree(states[i].data);
 	kfree(states);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
