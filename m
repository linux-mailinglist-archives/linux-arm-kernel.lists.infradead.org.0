Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7A4A1904
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OESTivtWnYGo1P5r1OAULCaXhXEFoNv2ovqjUi0hLU=; b=uh+OvcikPJPv4a
	zbWO0Vzvo6GBk31ns7EVATwGBbK8zmYHE5bFaRZfR+TBg0h/m083acGx853Tx47YdSjGC3KE8gMRV
	3m5D/FssmEnRHZSi1ObQ5IfqeF+Jsiw3IdSPUlsKScStEB/Q+9cmDBg6yX0+wU+M6SL1wRWBaQ+yc
	fYtvwroh3wnEqy0evok0RXhmsoP7/yKpePnt1DLrWRKupBOhj9Xazmwkt7/5pPfQUWgvdFr+iyJZX
	0Ji4uMJyKMwNnTPiOdtKhPc4NDIzlnKwTqyV6dvRYv5SLfGzdVdaSPPNQIi42wOguA5JrVnfa54Vc
	JRoPpBJfRdOx8nOYMwqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ilu-0000wK-Ik; Thu, 29 Aug 2019 11:39:22 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ii9-0006M8-LX
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:31 +0000
Received: by mail-pl1-x643.google.com with SMTP id o3so1428349plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZERHer/S6V7v3IyXGHBRQXsjn5NA4nSXv7B2aoThKNw=;
 b=IKKCbODsWP1UqJxIEV6Bfp2AqAC3Q/r0uWJ2QI9EEp/nBCW8Djdn6c7BX718jtGwOK
 t2V3BjtDhWGc0pHePPoA+TpkuzPHNqqWDJkDTWfCI5+csokkit/xYobK/zw+XyD5u+Jm
 u9DxwOHZgmfQHbVa/myrVi16KRIUDEalhL7WqcS8a3ss3gKo4NC04T6Q5l5lSOH6TD5B
 PnbN78U/TyeB30y0zFag0X5UjTq6lH1/l2CJe3dUqicd3gyn+LohzNokaCtUQLoWNCTO
 ICeige/+bZxebev7udCVlGwl634g0ngiT8vQvelsTWSEn7l14fz1FRG60iF20bFpxFOh
 9/NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZERHer/S6V7v3IyXGHBRQXsjn5NA4nSXv7B2aoThKNw=;
 b=Z+motelX5GJdz08JbhFk6U2WZqTdr7C7PIzGvzkg6EY5WxVfb/NL+cnG7eObH+iKqk
 T2v5jWEVmiSXrvdNhf2+br+JFwScpusJsxzLS+HYDPiYaWYdLCwH6yDLbdwfIQVeE4E2
 o+nw8tgxxEfw+N8Q1/uaVeXzFaIljb7b36UXJYWY9aLf0fxWih5cqbaFaAcu8+U/MvUV
 PzTs+V6KWPWev003tTuGWz4yXuJauoN+fbOc02mTrT2Nps7mKtP4dUKaIITWcRvZozqV
 Qpvh32nxawzlrRjkpLmeZCwqtp5rWmLzacJDlpJSkEjYrSRtpqOK6GwBwrmNpEhqIYn8
 iIQg==
X-Gm-Message-State: APjAAAUaF11MwyGqtIJ+x2oox+YUUjP2ggFrfdzXPcaJY5fxq3JfGo4e
 zLfiIqrN1HIGabrxIoS3dGeUBw==
X-Google-Smtp-Source: APXvYqzeb/3nmmVEBvXKtWKMiKGmBJPB2z8T6hw2Cr3J53pmgf5VQRlmQ0+5ZQYsmBnmLAV2pbABpg==
X-Received: by 2002:a17:902:d907:: with SMTP id
 c7mr306952plz.126.1567078529021; 
 Thu, 29 Aug 2019 04:35:29 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id a18sm1855103pgl.44.2019.08.29.04.35.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:28 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 14/44] arm64: Introduce cpu_die_early
Date: Thu, 29 Aug 2019 17:03:59 +0530
Message-Id: <9f45e596fc1718310503f80b04d91eeb138d2ef5.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043529_850344_ADD5E7DB 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

commit ee02a15919cf86c004142edaa05b43f7ff10edf0 upstream.

Or in other words, make fail_incapable_cpu() reusable.

We use fail_incapable_cpu() to kill a secondary CPU early during the
bringup, which doesn't have the system advertised capabilities.
This patch makes the routine more generic, to kill a secondary
booting CPU, getting rid of the dependency on capability struct.
This can be used by checks which are not necessarily attached to
a capability struct (e.g, cpu ASIDBits).

In that process, renames the function to cpu_die_early() to better
match its functionality. This will be moved to arch/arm64/kernel/smp.c
later.

Cc: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index d0c82bc02de4..b7f01bf47988 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -853,15 +853,15 @@ static inline void set_sys_caps_initialised(void)
 }
 
 /*
- * Park the CPU which doesn't have the capability as advertised
- * by the system.
+ * Kill the calling secondary CPU, early in bringup before it is turned
+ * online.
  */
-static void fail_incapable_cpu(char *cap_type,
-				 const struct arm64_cpu_capabilities *cap)
+void cpu_die_early(void)
 {
 	int cpu = smp_processor_id();
 
-	pr_crit("CPU%d: missing %s : %s\n", cpu, cap_type, cap->desc);
+	pr_crit("CPU%d: will not boot\n", cpu);
+
 	/* Mark this CPU absent */
 	set_cpu_present(cpu, 0);
 
@@ -902,8 +902,11 @@ void verify_local_cpu_capabilities(void)
 		 * If the new CPU misses an advertised feature, we cannot proceed
 		 * further, park the cpu.
 		 */
-		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i]))
-			fail_incapable_cpu("arm64_features", &caps[i]);
+		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i])) {
+			pr_crit("CPU%d: missing feature: %s\n",
+					smp_processor_id(), caps[i].desc);
+			cpu_die_early();
+		}
 		if (caps[i].enable)
 			caps[i].enable(NULL);
 	}
@@ -911,8 +914,11 @@ void verify_local_cpu_capabilities(void)
 	for (i = 0, caps = arm64_hwcaps; caps[i].matches; i++) {
 		if (!cpus_have_hwcap(&caps[i]))
 			continue;
-		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i]))
-			fail_incapable_cpu("arm64_hwcaps", &caps[i]);
+		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i])) {
+			pr_crit("CPU%d: missing HWCAP: %s\n",
+					smp_processor_id(), caps[i].desc);
+			cpu_die_early();
+		}
 	}
 }
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
