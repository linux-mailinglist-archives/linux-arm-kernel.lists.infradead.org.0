Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C75766684
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRUoE4yO1Ul6BxELKO0oo70FhegD5xYJe0MufjtQfsQ=; b=udL7TNB3Hp5m7M
	+iMYvdW0So+WxcO3iCJzRMy0xqf0Ay/QSM4u1Qwl5ZAOi+St9FtEPLq3f/kKGAr2ezx3b7bqy9a7N
	myQaiIj7vbEX2OwD2FdSyeVL6/oJN+aBS8sRRZhS0uT9yuwzwtgQw6kn40e1bsp5fnsI3LAJMXk1b
	l7nkCufK/iJMEGpBw8Aj1Xa13DkUqDruuIp8TwQq7Isoj1VbtddVGpPh8SiwnXwz9ntuJLMH5vS1S
	oWZZv94b57ujXpIiJj8VtPam9zapfFQrxYIyYHr4X+3dWMX33F0xkjjH3iBauOghrN8bE0iEonKso
	tN08z/BpliPCTbqp/lQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloJw-0003AJ-Po; Fri, 12 Jul 2019 05:42:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8Q-0002Qn-J2
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:20 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so3789755pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sqSfnQDS8sjUZN/3AxA8S/yruKf46+OQJxAy5E4hEak=;
 b=VyKNs/FIWF1WM+ek3qH+rFuK/9b+IRraNhUiCTZq+VByH2PDsFM+ZzVRunnTcmKPD8
 rcT+7o4Q6LLKSt+hECJSfZsOnVxQksi9+G04j+7c9D+rwj9fSFy9Bpmcxoj9P9beID+B
 mFxmSs4x0uUuTqCK4SLHZYIB1fFHlEs+U0rFQUCAEsnq32OieHmCUChUPgxm3M8moBit
 f4d9vB5rosS/682Fu9nyRtWjXyU4dyNkeXfOzFPFtkpCQfw0HjV3lIgeGX/bsztZaCdB
 WmK7QSt3X2aL1zwLoYlC78RttynyAtWptxxt5zlcSvEcI64wkoyifVkVwoWtjr1lNAQ3
 v6mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sqSfnQDS8sjUZN/3AxA8S/yruKf46+OQJxAy5E4hEak=;
 b=TM9WNmSm2SlSVzXa6UToHchCkpc9OwBUoFIGgU4q/iduwnVWicOWihBWwg7Q3dYX0i
 88wnu18kVTyt6ZYlHKXAg/uSh/scSs3Eybn7FSHjikbuHqLmLhqgJcLaF1+v6H01AoiO
 5LNTBpNN1faK9k1UDtAA1oyTNw/CLQ8rGuah155z+6qGQPLUbYmCJBDUdaWlI7yFd0U7
 kBoJ0XaGflKdkOIfEeUeUYkCe97cPGVi3BlpafEwel0wfoXmSHApyfJPV6y586vwV+KF
 sRZ/CAK91CjjRrumbEHtn7oaOwdbum16PQ6waQywwkwoVlQfxeB8JSR4SB/1PmH+QxXt
 UlWg==
X-Gm-Message-State: APjAAAXlQLQosM1aaqm+OFTM+kJTNpvRQqx0peexIU2Ll42zDQFoqC/c
 m8SgFMCtSUD2xYezkUnfk5iqyQ==
X-Google-Smtp-Source: APXvYqwgrbbCxE4dbpRKlJf5JhnfIACbOONUeZFADdEt3q4RlWiQrn0w82b76eeWuOP+qfExkEiz6A==
X-Received: by 2002:a17:90a:4f0e:: with SMTP id
 p14mr9130229pjh.40.1562909418024; 
 Thu, 11 Jul 2019 22:30:18 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id n26sm8177303pfa.83.2019.07.11.22.30.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:17 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 29/43] arm64: cpu_errata: Allow an erratum to be match
 for all revisions of a core
Date: Fri, 12 Jul 2019 10:58:17 +0530
Message-Id: <c9df74a24c8cd28416fd0c67e7bcbb0aa116db28.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223018_796568_7981A4CB 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

From: Marc Zyngier <marc.zyngier@arm.com>

commit 06f1494f837da8997d670a1ba87add7963b08922 upstream.

Some minor erratum may not be fixed in further revisions of a core,
leading to a situation where the workaround needs to be updated each
time an updated core is released.

Introduce a MIDR_ALL_VERSIONS match helper that will work for all
versions of that MIDR, once and for all.

Acked-by: Thomas Gleixner <tglx@linutronix.de>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 19c51d1cd302..80765feae955 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -124,6 +124,13 @@ static void  install_bp_hardening_cb(const struct arm64_cpu_capabilities *entry,
 	.midr_range_min = min, \
 	.midr_range_max = max
 
+#define MIDR_ALL_VERSIONS(model) \
+	.def_scope = SCOPE_LOCAL_CPU, \
+	.matches = is_affected_midr_range, \
+	.midr_model = model, \
+	.midr_range_min = 0, \
+	.midr_range_max = (MIDR_VARIANT_MASK | MIDR_REVISION_MASK)
+
 const struct arm64_cpu_capabilities arm64_errata[] = {
 #if	defined(CONFIG_ARM64_ERRATUM_826319) || \
 	defined(CONFIG_ARM64_ERRATUM_827319) || \
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
