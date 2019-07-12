Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A55466666
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmfYE9sZafOjZrnyAxGG7S4F1OC3FydkSMq2nG9Q6c4=; b=X9CMeWXj+fPyxL
	E92RscmUPYsrNqKYT1MVMXBnIzV6uF0HoPVzNb6Zzez5Tp/iyhzgWXU+6ZMqMPi6EKN+jEUyzX5Is
	33MKInW3anmVxZBco+iu7L+VbtwP3KlLG+JNLLThTJ1naoHAps4PGA++wF6TdMRHPsGGhkzx9X1GA
	t21Hju+L7sTGARbtvQ8e78w0DSQzgndEulEMMq+eg0vvFV2P1iodBzmXpOpKUt4V8uVnvBnauq94f
	KU8DSTZeU+UCkGUJZWJgRfuTjLeS2gW9QzWT0wS92yorwRX3jWPVFKKNlbfv7svK3aeRDvu9spcPN
	fr42t30DS8ayinuV6Eyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloGC-0007ub-HX; Fri, 12 Jul 2019 05:38:20 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7z-0000rx-7K
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:53 +0000
Received: by mail-pl1-x641.google.com with SMTP id w24so4214517plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j1PYP8TRl6+XUUI1RLnfOfH8okdoaEeO+GZk5UMu4vo=;
 b=Z1T5KKS7sNDEi/IQxRwePvThY79cxIuM8jVZotuq2NGxiAwXonzL71TrDAJ+NOINcG
 XZEZcoUvnOL6p6bVAsApeEUEJ2SRm48nlUNF/YI+vGkAsgf/11vLcuA0ATE52MAD2Mgq
 WYBorAqWtx07SV7NeE0CJab0OvNwmz+fzL/nv4FSJ5OrVmnjIZt0gr053dkDbju6rj+3
 1hohWEUv3vywAFgyEJO1XbsXgCrOX1fRca34QJzZnsXWb/Kjj0tpzXEPClRemW1sZmuO
 JsFW3P+l/mMUJXBEB+391WuDVUOttFRi05A1CJ0ynJSojO3RMFtfCjL/fqO3zp9hfBrC
 uP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j1PYP8TRl6+XUUI1RLnfOfH8okdoaEeO+GZk5UMu4vo=;
 b=Q8r9CITZfMOx8He4a9LLUxz3qFYAwhpdoq+rfmQyjW5XT1W156Sj/bqjrLOzDB47p4
 LMZVy4aVVx2uMtyTtDmyJGhlU1Ki3F+kOPeRbUUWyRrJHUc8Wem0NIkKJUGjPnDJPINi
 tjvXULrruoftVGZ60N0o0DAENvYWakyCZvo5LhmR+JVh7i9RRBovd58YEFIUVanramUM
 cB/AK/SmtNqnEdNmMOwL/7I2wucnBesskvmoFkB1yvky814B/9zpg5rVRZMxChlm9FST
 Q618K054bg7EiZ2G1pHzibeVKR3mUze/esIuWPlLKNTM9kK0c6jr+BBj3FhD2/H5D2tc
 /+FQ==
X-Gm-Message-State: APjAAAVSrdUheLKeSeyWVfJhvxuFMs/IhaAHKVnl+DzHdzx2DRkKGqKo
 lY4ymjszIjP/t/ymq4sCbJjRYQ==
X-Google-Smtp-Source: APXvYqys8vWhmpina70E9EPffNv7bS/Q2ML/2o1J+YDBZzLoEePJaZ+nGpFWn/W9ZeEm8KAc288M4A==
X-Received: by 2002:a17:902:9688:: with SMTP id
 n8mr8940813plp.227.1562909390040; 
 Thu, 11 Jul 2019 22:29:50 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 33sm13037930pgy.22.2019.07.11.22.29.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:49 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 19/43] arm64: Run enable method for errata work
 arounds on late CPUs
Date: Fri, 12 Jul 2019 10:58:07 +0530
Message-Id: <3da005579bba7e4b225408b18c6aff7400933bd5.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222951_437746_FD0D6FFA 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

commit 55b35d070c2534dfb714b883f3c3ae05d02032da upstream.

When a CPU is brought up after we have finalised the system
wide capabilities (i.e, features and errata), we make sure the
new CPU doesn't need a new errata work around which has not been
detected already. However we don't run enable() method on the new
CPU for the errata work arounds already detected. This could
cause the new CPU running without potential work arounds.
It is upto the "enable()" method to decide if this CPU should
do something about the errata.

Fixes: commit 6a6efbb45b7d95c84 ("arm64: Verify CPU errata work arounds on hotplugged CPU")
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Dave Martin <dave.martin@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index d9f095439011..047f1da59cb1 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -125,15 +125,18 @@ void verify_local_cpu_errata(void)
 {
 	const struct arm64_cpu_capabilities *caps = arm64_errata;
 
-	for (; caps->matches; caps++)
-		if (!cpus_have_cap(caps->capability) &&
-			caps->matches(caps, SCOPE_LOCAL_CPU)) {
+	for (; caps->matches; caps++) {
+		if (cpus_have_cap(caps->capability)) {
+			if (caps->enable)
+				caps->enable((void *)caps);
+		} else if (caps->matches(caps, SCOPE_LOCAL_CPU)) {
 			pr_crit("CPU%d: Requires work around for %s, not detected"
 					" at boot time\n",
 				smp_processor_id(),
 				caps->desc ? : "an erratum");
 			cpu_die_early();
 		}
+	}
 }
 
 void check_local_cpu_errata(void)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
