Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D45D2835
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s9RypHNQPlIXDmUJHJUgIAlL98wOhuk4fa3o6WQmOEU=; b=Fbdfrndop1YwffUwAG0jteCprk
	8oo1gjQs6pc/N440L64yFcs7WIWm56kuCqU6CHeS0ihVIq42NwOT6rzXLJ2IjGdSbqkZBLaQ3ds3L
	/0Hm8jx73kcJjGGIjQaRM5oKYEHP8QADdwDwfIEOKRs5/If79q5tGNAnTockYN9RwqyvorahvxoLH
	bU9Lt7SnuAc/s06SMTNXA11Y+jd6B46Ix7gbggzPVNY7n7h/s3zIQ5lj4FR31zZVBjTAIk+gG4CUe
	UKjXVQgEnnZUh4npNjklzFTahSnWf4CRAU49jF/0fkzyIweXCtBjXJupaPiDKkBdIWbXr8WBncEFP
	PNKQSbmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWoB-0002uY-7l; Thu, 10 Oct 2019 11:40:39 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWng-0002Fa-C9
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:40:09 +0000
Received: by mail-lj1-x242.google.com with SMTP id m13so5804744ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 04:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=s32JeDhVlasQJ6pytWlkQPUAMG4/wlRqEgRTpBOYoJM=;
 b=oY4GQ9tspotLOINThxk9Kbs/w01ctme9MEPIEv5nplvQc0Gfk2yTpx63vcTwtFKh4B
 B+T2P47iK3kLvh+AM79Ow8hzpSL3BwO3bqbzE3b2EGXWMtodySrd61pw72AcbbCRFUpW
 afPqjSPD0x36xrozZ3piihjF4z1ppF7c8+sdn5Eb7tbNOIM4xve2bbcEhfKjKH3SEPiz
 mq2/6LaFi7GwljgIrb1NuH0pROuM4yrNj2ZjU5Ymvi8IEwKvRk9+do8bNp27z4n8h5v2
 epXCe1vP/SQbHMt0CKqt4ltRSdU/ZufhVj++KFLUQjmpFA0FFee9QlnZH1Yo6uEaRSRm
 /omw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=s32JeDhVlasQJ6pytWlkQPUAMG4/wlRqEgRTpBOYoJM=;
 b=F0g72QCs5kda79qbfOp/dWWSIeRuMcAnqKuE7F6QRLNM4kfc+kD6HyhA2Gu5zxZOFX
 LEJG0tP1E1Fm1teJuQ7phOcn+jv2norgKjHoXfZiTcGIxaMwuQia0/KhCuBWu7Fj8t3z
 mz+Frwuolp8xSnZql9Cj8Ol4lpwNVVI6BBpL/zCv74okgNFf6SV/tq/a2HwIZTE2RFNn
 s3gUJPtRtABDLTBbiBj1srVtjdbLRM3aEQnAJUk0+enzMrWIWuRzbwCH6mvfieeXQ3Sp
 iPNW4oO0Uz9V2F+v8kbY4yhYfbAC7+Tv8ecnWiwG7O5gphPkZVJCjlXkVVI2Y6WNZAwg
 kKTQ==
X-Gm-Message-State: APjAAAXYXCTqBbIpMd32cht0qmpTZRhmoxKqytw0ahYoWRiImM+zl+io
 mKxbexyonlx4ZBJibz/0nA27Aw==
X-Google-Smtp-Source: APXvYqyGsGrLPyBDtCxTyveMalXdmwovqTcGDOWg4fzfp/TkTS6GWys0i/Jm2jUOUYV/1uUVYs7SYg==
X-Received: by 2002:a05:651c:105c:: with SMTP id
 x28mr6132302ljm.114.1570707605886; 
 Thu, 10 Oct 2019 04:40:05 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id p3sm1168937ljn.78.2019.10.10.04.40.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 04:40:05 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH 01/13] cpuidle: psci: Fix potential access to unmapped memory
Date: Thu, 10 Oct 2019 13:39:25 +0200
Message-Id: <20191010113937.15962-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010113937.15962-1-ulf.hansson@linaro.org>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_044008_433890_D00120AB 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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
