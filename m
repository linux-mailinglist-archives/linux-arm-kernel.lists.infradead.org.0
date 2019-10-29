Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311B6E8D19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=munTYr1+FK3LvWAC8qZdGpzjO5zdAnS0wKiXKizud4Y=; b=LF3ismJ4sUh1RK53ObJDJkXNvf
	iQeVPaNcYFcdx27qjkIzmJ0OrLNh7ONgvsoD+dawUnAPtab9ZhWw8LvsU3YNSZqGxAaAcqmW/ww6N
	enBxk/A5XHGk5ilv48lbcXFx9LT3YBhsrALTtBY+HXXY9l9z+h/tSpFJZPRYM46ynz76H+5e3C0SW
	+aVXPVaiknu47lpDlMu1iT6r7UftY1xKHqbI++9nOqEm0f5mT2zu4vKebekTTje3UhjGAHIekTkR1
	BzA93P1oCjPFFAH4bty53lpfyEgfSS5ZiBqX0IBXdG716udv1cXxNbcUDf59WhBn5wKIzZMyxLaea
	lvdaEmCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUd6-0004Xs-Ry; Tue, 29 Oct 2019 16:46:00 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUby-0002oR-8R
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:44:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id m9so6358515ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pxj7KLSW5R2axCiapc3eou/vjW6LvEtO3EFuHvUy+4g=;
 b=YplOBV9MJp6EqG3mBNIF6X+EXkSFeG7T2VIHeODHEiXdaWz4zntnkKVjKaEGbI0f7R
 G1A3ZryFYT2UlYqsMdN/gzyqvvBDLriCWS/mNDFxaZwYrOCO8d6H6+BjlQyw+EnzsiWW
 u+Ypmf3mJBfP68rmHWB+MHCs+KuSiKH0I1wHy/mK+sLeXog+tuKsTV2PQoDIY/2AnrO5
 B2PRaJLBliCJARdr2V0NbAM0At2TTYQL3cAjEAOv3MHVMQNlBsqKv8UE+wFZQWsnqRyk
 +O8j5iezP2XmZtk9vE+QNwVVh83h+umuALjKvcTgvqsVMruxhWmQ07eIhO0QU2DJaODO
 sU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pxj7KLSW5R2axCiapc3eou/vjW6LvEtO3EFuHvUy+4g=;
 b=Nhk+oI/LdBe3abI/VWzw0b8ADsWEhfGG4MWuOJS2jdXxYt1eY1GJHAdagoeEk7r0gk
 GerVDfPgOTO6tvbhc9FXHPEJjqEDEdDbbWAUse0ID4bXq5bsO+29teJ8mRyFSMJpYiQy
 FDLYgfYDy98U8cRbOawuy9okZyvGHweek30Vrr5zVK17420Vb/gPHzwcvdYy68+dApSm
 utgY4/tQallpkdQbBmeCPaava30RRLb0l6w2cD8zjrgznbwch9P653i0yUFOv3BuvQ92
 gMPhi0EacK1npvYZF0MMYHcF++6zT6M+sLfSd5Kj4FBYMeVU2hTJNv5UlAXyqdnhKCil
 EpPw==
X-Gm-Message-State: APjAAAV+li6s3F2O/TcUWOtWe5pXbygQM7p0If/Mw4rxiyAHxV3LjCu6
 dPOt3ojdUasStg+9Bw/FC26i2Q==
X-Google-Smtp-Source: APXvYqxTjxZNGQL/LqFi3IPfYCjxpsMyLxV8MH634j47PS/Jjpjo1p7lcpDprbECJDfAoIIUSpu45A==
X-Received: by 2002:a2e:9d06:: with SMTP id t6mr3391781lji.253.1572367488497; 
 Tue, 29 Oct 2019 09:44:48 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.44.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:44:47 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 03/13] firmware: psci: Export functions to manage the OSI
 mode
Date: Tue, 29 Oct 2019 17:44:28 +0100
Message-Id: <20191029164438.17012-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094450_295393_93B5D37B 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

To allow subsequent changes to implement support for OSI mode through the
cpuidle-psci driver, export the existing psci_has_osi_support(). Export
also a new function, psci_set_osi_mode(), that allows its caller to enable
the OS-initiated CPU-suspend mode in the PSCI FW.

To deal with backwards compatibility for a kernel started through a kexec
call, default to set the CPU-suspend mode to the Platform Coordinated mode
during boot.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v2:
	- Added tags.
---
 drivers/firmware/psci/psci.c | 18 ++++++++++++++++--
 include/linux/psci.h         |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 84f4ff351c62..76f3a991d4d7 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -89,7 +89,7 @@ static inline bool psci_has_ext_power_state(void)
 				PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK;
 }
 
-static inline bool psci_has_osi_support(void)
+bool psci_has_osi_support(void)
 {
 	return psci_cpu_suspend_feature & PSCI_1_0_OS_INITIATED;
 }
@@ -154,6 +154,15 @@ static u32 psci_get_version(void)
 	return invoke_psci_fn(PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0);
 }
 
+int psci_set_osi_mode(void)
+{
+	int err;
+
+	err = invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
+			     PSCI_1_0_SUSPEND_MODE_OSI, 0, 0);
+	return psci_to_linux_errno(err);
+}
+
 static int psci_cpu_suspend(u32 state, unsigned long entry_point)
 {
 	int err;
@@ -536,9 +545,14 @@ static int __init psci_1_0_init(struct device_node *np)
 	if (err)
 		return err;
 
-	if (psci_has_osi_support())
+	if (psci_has_osi_support()) {
 		pr_info("OSI mode supported.\n");
 
+		/* Default to PC mode. */
+		invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
+			       PSCI_1_0_SUSPEND_MODE_PC, 0, 0);
+	}
+
 	return 0;
 }
 
diff --git a/include/linux/psci.h b/include/linux/psci.h
index e2bacc6fd2f2..f76b45341adf 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -17,6 +17,8 @@ bool psci_tos_resident_on(int cpu);
 
 int psci_cpu_suspend_enter(u32 state);
 bool psci_power_state_is_valid(u32 state);
+int psci_set_osi_mode(void);
+bool psci_has_osi_support(void);
 
 enum psci_conduit {
 	PSCI_CONDUIT_NONE,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
