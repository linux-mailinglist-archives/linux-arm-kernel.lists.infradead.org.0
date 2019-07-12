Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8796665B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VxvPDWpLpSJ/ro1/i5RmihWfsEprYiIwwDJ1NVNPQ4=; b=VjQiGOKoa75cZu
	fFROxAy8y9D1jHaZ2sjmd8ifwZO/0VqpsvFfqCZHPk4jt3eJl5/VhhVNjBFRKLPEkLJilUlsp4Dwt
	sit1N3GJVvlub+vZB3fgHd5n1wp8OcypkVyM4XQtYrIxSf+k/F+GqQ39Xr/uRhJsE9k149Hzzit92
	NdKze4BdF7sO1ITakbGZBa7+kHoFiRlyLzF0K4gmbCDYuyFffe1sj01uVN7V6idO0HtWD/PttjMks
	0rhSG9QnEtWkaE7qqNiAhhHq7xSJadXcw1n79y8P44osTgzuzU4zMoDqd0DQbOLu4xMfonWEJjLw6
	drP+FORuiLUQyAw/mpnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloCa-0004nQ-3R; Fri, 12 Jul 2019 05:34:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7g-0000dE-9O
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so3992804pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/kfHaZYBMHfOrWZM24aWUbS5m2tlkmGASsL26R9/1y0=;
 b=cGmYhryoCvANnaH4geFrp/J9iYbsc93CKBZgUMA9oUfaIiy5wdBhR4DlJmw3lRYYkA
 aVW9vCmzdn45ZIMZ1dMMq/N8JVs1GCVa8B89kv/v7c3FKhtB39xYSiG73QQR4kuM3JAb
 cL1tc5wyGgB1cEYzqSLcMKjG3Zfs2ngs3HKGI2Fy4Xyuya6kSkwu/P5920GkpBbj4Wk5
 0q+nHiS2Ldbb8I+Wr9P0dryCEaZ2EiWQbjXGgDW2oeZoZQq2mF8seW0WrqTaTajMVkse
 GAdrTI0Kwc1mmnP0MN7Jp2dKsjRroebJ8GorFrfv+bWbEsgna60JLumwtDgx9vOMEbyA
 /O1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/kfHaZYBMHfOrWZM24aWUbS5m2tlkmGASsL26R9/1y0=;
 b=q7ONoUTdbIBNc84hbv0H2LN4Xzp4H16fCMgVdct3VoY2pIJePVE3K/TQFNrgcQZS92
 tlYdPeaqF6t9e37ZSTXIcdQ+0wSbzTFT9j3XCbcKZGDg9ggHsFFbgodSiMpIhJfnnnBy
 iaL6+cupydO6xnRSzaPrmPT4oBP3RHSR8j+UFr27yAtr3TYeL2vgpaF1ybRog4WK5i30
 /WklPhbVhYlPXXW6nQa1vGJNcdqNsPMgKYyQmCynH9eeQxhOmj3ea/iAOgVYst2RnbYB
 5Ma48roFKt6cvKs5W8Y3xt6tatrECNmefqNUQlzB0aGDDz++JqqFHjDRdV3jxKO1h2Je
 GJEw==
X-Gm-Message-State: APjAAAXdXL56nKPM4xacQr6qi3OAm0je1BSVyFDs7j0EQlWTUv3Zkd99
 UUXk5H/VQyxFrdsHldImbjt0mw==
X-Google-Smtp-Source: APXvYqw7lqHGTZ/Hgm2eHFlKzbfZLmRpmoEOP/cJeO/kZZ64V5Gso2jlmm+jCBMaKiG2BEsX52gCLw==
X-Received: by 2002:a63:6981:: with SMTP id e123mr8520931pgc.136.1562909371293; 
 Thu, 11 Jul 2019 22:29:31 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id e6sm8850058pfn.71.2019.07.11.22.29.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:30 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 12/43] arm64: cpufeature: Test 'matches' pointer to
 find the end of the list
Date: Fri, 12 Jul 2019 10:58:00 +0530
Message-Id: <64c9f2c29cd2e63aecbd233aa96fd9d18e165330.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222932_637074_0D755DAD 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

commit 644c2ae198412c956700e55a2acf80b2541f6aa5 upstream.

CPU feature code uses the desc field as a test to find the end of the list,
this means every entry must have a description. This generates noise for
entries in the list that aren't really features, but combinations of them.
e.g.
> CPU features: detected feature: Privileged Access Never
> CPU features: detected feature: PAN and not UAO

These combination features are needed for corner cases with alternatives,
where cpu features interact.

Change all walkers of the arm64_features[] and arm64_hwcaps[] lists to test
'matches' not 'desc', and only print 'desc' if it is non-NULL.

Signed-off-by: James Morse <james.morse@arm.com>
Reviewed-by : Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index c1eddc07d996..bdb4cd9ffccf 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -744,7 +744,7 @@ static void setup_cpu_hwcaps(void)
 	int i;
 	const struct arm64_cpu_capabilities *hwcaps = arm64_hwcaps;
 
-	for (i = 0; hwcaps[i].desc; i++)
+	for (i = 0; hwcaps[i].matches; i++)
 		if (hwcaps[i].matches(&hwcaps[i]))
 			cap_set_hwcap(&hwcaps[i]);
 }
@@ -754,11 +754,11 @@ void update_cpu_capabilities(const struct arm64_cpu_capabilities *caps,
 {
 	int i;
 
-	for (i = 0; caps[i].desc; i++) {
+	for (i = 0; caps[i].matches; i++) {
 		if (!caps[i].matches(&caps[i]))
 			continue;
 
-		if (!cpus_have_cap(caps[i].capability))
+		if (!cpus_have_cap(caps[i].capability) && caps[i].desc)
 			pr_info("%s %s\n", info, caps[i].desc);
 		cpus_set_cap(caps[i].capability);
 	}
@@ -772,7 +772,7 @@ static void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
 {
 	int i;
 
-	for (i = 0; caps[i].desc; i++)
+	for (i = 0; caps[i].matches; i++)
 		if (caps[i].enable && cpus_have_cap(caps[i].capability))
 			/*
 			 * Use stop_machine() as it schedules the work allowing
@@ -884,7 +884,7 @@ void verify_local_cpu_capabilities(void)
 		return;
 
 	caps = arm64_features;
-	for (i = 0; caps[i].desc; i++) {
+	for (i = 0; caps[i].matches; i++) {
 		if (!cpus_have_cap(caps[i].capability) || !caps[i].sys_reg)
 			continue;
 		/*
@@ -897,7 +897,7 @@ void verify_local_cpu_capabilities(void)
 			caps[i].enable(NULL);
 	}
 
-	for (i = 0, caps = arm64_hwcaps; caps[i].desc; i++) {
+	for (i = 0, caps = arm64_hwcaps; caps[i].matches; i++) {
 		if (!cpus_have_hwcap(&caps[i]))
 			continue;
 		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i]))
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
