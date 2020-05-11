Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1118F1CDB45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HmVofAoYsF3LtZlcr9/MVAbmAjTbagCVfVrlnmDixrE=; b=YY4EOEpNaif5HR
	kJ0ttYStq7JEK1+bOujnOrPKVEtxjmCum4Me8K77bV0ZwXQQ3R6NQ1DAf0oyIoXg9uL1O4KBg5ZB6
	0innZ9n7YKvRmR4QZD1tp7/1xIYpK1p4P5eesuIz/BrXTqbSo/omioSq0/sjhWS3pa23QDpbnSDX2
	90mI7YB3yqVsiRWmZ1pPizIlS+PeqlKmyolnY8HVU4klBeD0cAghRicXGvQ0tV9wQglbcXUe6KVgh
	4jXcRsPPCfcNCRmSR7eVOCXuFEKOVzp4VAdd6g/B5gl8/ok6PYFzeKL0cvcO0A4lS5vlRpiXtNR3Z
	kYkblyStbm59xTJA7mDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8ZE-0002Go-L0; Mon, 11 May 2020 13:34:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8Z8-0002Fj-7B
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:33:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id a4so7509299lfh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 06:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pD+rR7D06+zskc19Z/Pv5SiqhDDKHoIwqYjQ0Wayknc=;
 b=wGeFNaCNE319dM+/gmrxsh9u5N2NlvakeOBIH0GiNZHjeBYijjs7Fd8B8OWF55HT+L
 AW9YhQJa4Qz8QPC6Wi3TF6kh1feJTCQn9YzYxswaK+lft2JhtoRU52Qe6i0/K9w7n+1b
 s3aFK8kia0sbUDBCQEI9QJVZg4BEJ7prPmHhkP2DJPiNHsdDUqOLx2woVgzOL115FEt0
 L5NDZccGHzfLOXWFA3Ws0GP7mTKvN6CBQWe1Y2bkdTHaPHvXeR6T8uUZoAzPD6omlfWu
 X6jfkySYRkYV3mPYcn57v+bpbAJJNeLvoQuO/SZr9JhQWowl+JAnGzI29UIcO9FTgkw6
 12gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pD+rR7D06+zskc19Z/Pv5SiqhDDKHoIwqYjQ0Wayknc=;
 b=J0/bCibNsbJifJpce62ObM0gUBMv1QCju1gDfbxuSC/hnkZqhlZPuDKEM7ib+oMVTI
 cJXp6seUmYi5vmZWOW45RHyKxRY/KuR6CLS9YhUI4ijP/V3XbM0heYTJrkEjc72zSsB8
 DMDDsObLUxLDwmicDA6//abOmDHOov/t06r8nx8UYtx6Kqv2pHyPjq+KCkyrO+JiZBjc
 sqEFNZZ4ImH0dH3OSGvigD+yMMgR418uMy6yoRp2O5BWpkzqLuUENSdkQffUsnsmjTdM
 fKJHtENP/a5EJschfvc/tKx04/FDPT/yPVrWrX55OhdUjUYOGxAbpM53REs6vPC8gTwp
 +gLw==
X-Gm-Message-State: AOAM5339jbU3OinU29wKIEDKH7wSwbt1onfZW3mnE0wYXTGUIKZdKrRn
 Qsl4MI1B32kzhbSbs/Y7+CR3DQ==
X-Google-Smtp-Source: ABdhPJziSi1YV5QdlXPx0bt8kOzmpPToYnuHC1CNLcZpxF6+CeliIUVJusEuJofyX9lU33BAJ2K3QQ==
X-Received: by 2002:ac2:555b:: with SMTP id l27mr11295444lfk.170.1589204031084; 
 Mon, 11 May 2020 06:33:51 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id q2sm5647426lfc.7.2020.05.11.06.33.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 06:33:49 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH] cpuidle: psci: Fixup execution order when entering a domain
 idle state
Date: Mon, 11 May 2020 15:33:46 +0200
Message-Id: <20200511133346.21706-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_063354_265897_4391E55D 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

Moving forward, platforms are going to need to execute specific "last-man"
operations before a domain idle state can be entered. In one way or the
other, these operations needs to be triggered while walking the
hierarchical topology via runtime PM and genpd, as it's at that point the
last-man becomes known.

Moreover, executing last-man operations needs to be done after the CPU PM
notifications are sent through cpu_pm_enter(), as otherwise it's likely
that some notifications would fail. Therefore, let's re-order the sequence
in psci_enter_domain_idle_state(), so cpu_pm_enter() gets called prior
pm_runtime_put_sync().

Fixes: ce85aef570df ("cpuidle: psci: Manage runtime PM in the idle path")
Reported-by: Lina Iyer <ilina@codeaurora.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index bae9140a65a5..d0fb585073c6 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -58,6 +58,10 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
 	u32 state;
 	int ret;
 
+	ret = cpu_pm_enter();
+	if (ret)
+		return -1;
+
 	/* Do runtime PM to manage a hierarchical CPU toplogy. */
 	pm_runtime_put_sync_suspend(pd_dev);
 
@@ -65,10 +69,12 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
 	if (!state)
 		state = states[idx];
 
-	ret = psci_enter_state(idx, state);
+	ret = psci_cpu_suspend_enter(state) ? -1 : idx;
 
 	pm_runtime_get_sync(pd_dev);
 
+	cpu_pm_exit();
+
 	/* Clear the domain state to start fresh when back from idle. */
 	psci_set_domain_state(0);
 	return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
