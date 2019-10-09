Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F80D1771
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 20:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s9RypHNQPlIXDmUJHJUgIAlL98wOhuk4fa3o6WQmOEU=; b=hFp
	sTLMBRT+rqVrs1iKnknZ7HzUIs614D1BqMcSuqDK5bYC4wLrPLh7OZSQY3MglpPOa+Vlo6rXz2YDg
	jOxSSw+X2zKQCCcln3ujNfaCSQXyyexfbtw6uxZvKI95bieck6GTGz55oPueKuwf+FpZI441ysoLp
	q9DdytaFOnBlUbAi8cdy/lTSuZSi6i1bXxde9whiDJUQTTcjhUNjEqQ5z4ywysoDnR99DT6p0mILy
	Z/afA6OOwmrlI33XosPQvXUdqkBXzG3C0TS5siLxT/veMKINycOFd2fJztmMHdglwDOXSsDa7kv21
	0DAECgAxcE22MuspyR0aIOdq82clL8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIGW6-0001YZ-12; Wed, 09 Oct 2019 18:16:54 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIGVy-0001Xo-Ky
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 18:16:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id l21so3486979lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 11:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=s32JeDhVlasQJ6pytWlkQPUAMG4/wlRqEgRTpBOYoJM=;
 b=kGFD5Gdl4C8u9owfyNXhb2acQFuwDz+UXa/i0LTXZTEcbdMmh0AjkXF0QMhR+4cMoh
 XaLzPoP1P9yHpEWRBwQBtxXnN9/OoTnLCaNOvyselGfJG30lA1mfvooZOW4ZcjVHWrda
 hA34NlpqWban8B3XKZZXTGS6T5NYkgN+ZkUQ90+oRbUPFmCvppGke60q85I1LuUq2ZLM
 jot3NVT9dEvLTcnxRjL0rU2KxNMl0LKvpMUBLSbvwIrbXyuRPJ4QE1qPIuen7jElm7PU
 mklEqTwyGxyq/oqf9xoEoHm4rZViyl7vX90D1BDXoi7PyD0LxYxm7V2z90duFy/go7r9
 SHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=s32JeDhVlasQJ6pytWlkQPUAMG4/wlRqEgRTpBOYoJM=;
 b=ee3X8CPBXZ+OcBSJKG7oihvcgbR7wo7A8DBW5ypplAXIGJTmf2zKkooFAEnohIq8Sc
 jmSq5cmBadqdylwTzK4nBlWuEE+1j9wGxRpTCf2G3YM/DHnfurDashYsYyVsmDKd3nc1
 BqxsMzN+NhW2hj3vxsTdRk7IEdwpCx1Nh7X38R1+1nWyWqQ7/S0WH5inHwIF4G1DHau1
 qAuhnsr/XIfjAHisiZaK6yDS5Yb+VsRtjypV+Fo7dvQDmnMr0waBX1ZfZQXqWPvjyWz/
 DhH2jtOaxD3ylEM6qCUOO/WpXWGlVy+kIzGqqhP8ZyTe21IJO3QNVgqOnvEu7yfDK2b8
 0quQ==
X-Gm-Message-State: APjAAAVi33uVxZeg9S3jUN59kOd2k5LtrqQer22u8Tow0frO4JM57m9F
 +E4mh+1uTjSq0i3b7X9uxOZkKQ==
X-Google-Smtp-Source: APXvYqypJOmbC04F3ddNDxg3qFWuyfnh+IG/HcNE3wdr5Kwiz9gCv6E8h7Kf7XglrnbPMWUreNn2hw==
X-Received: by 2002:a2e:3003:: with SMTP id w3mr3313997ljw.208.1570645001423; 
 Wed, 09 Oct 2019 11:16:41 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id c21sm638710lff.61.2019.10.09.11.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 11:16:40 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH] cpuidle: psci: Fix potential access to unmapped memory
Date: Wed,  9 Oct 2019 20:16:29 +0200
Message-Id: <20191009181629.12447-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_111646_777339_2807E85C 
X-CRM114-Status: GOOD (  12.43  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Lina Iyer <ilina@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the WFI state have been selected, the in-parameter idx to
psci_enter_idle_state() is zero. In this case, we must not index the state
array as "state[idx - 1]", as it means accessing data outside the array.
Fix the bug by pre-checking if idx is zero.

Fixes: 9ffeb6d08c3a ("PSCI: cpuidle: Refactor CPU suspend power_state parameter handling")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index f3c1a2396f98..2e91c8d6c211 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -27,10 +27,10 @@ static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
 static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
-	u32 *state = __this_cpu_read(psci_power_state);
+	u32 *states = __this_cpu_read(psci_power_state);
+	u32 state = idx ? states[idx - 1] : 0;
 
-	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
-					   idx, state[idx - 1]);
+	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
 }
 
 static struct cpuidle_driver psci_idle_driver __initdata = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
