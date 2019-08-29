Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A97A191E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRUoE4yO1Ul6BxELKO0oo70FhegD5xYJe0MufjtQfsQ=; b=N69rPWfxZCNZDW
	ZVy7/mJ7YjQhrFjEmF7rJd5zu5lQ+koGycyYaNsKTtxipRMcLDPYagZHZEGGOVVC5PKB3rphRDNzs
	Ph0rDuv5g2RrD0zVAvFSsBdu9+PUYiUY1gmXtDU8jG87dYXO45GsaLEnqF7ybSGi+8dIL/UdPooVQ
	YQsk9P8lAOuiWYjVW8Q/m3wPfecsfi6jYs+BlT51f+QmtN4TxWJW0exbiVuX0Ev+ECEvwGM1wy/cW
	U3iVWXZcHpEy00GwhqanZ9kUd7xdUmnXndcX6t2W8j7ntPSzEgf8mRDCdiJZ7GH1NC8wyFrq5Q3Gy
	GfmGhbdWjz4mZf16L0rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iql-00060P-4E; Thu, 29 Aug 2019 11:44:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Iir-00072c-IT
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so1437327plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sqSfnQDS8sjUZN/3AxA8S/yruKf46+OQJxAy5E4hEak=;
 b=mcZvlnlTjxDEMpsXVxgZHCis3EpF9YKEnl0Ae7vuyVNS2u5DsBmOpKu/RfyQY4zst4
 WJ6II+4t9IB2/P5txc1C3I3Np7nADPSzcXWHbYbRQ5mjaMV/Q70uDa1eXdwLx4L/H1LE
 h2/Z87csKjZVXK2Jk3u43fy7aoYHA+l58kS+mcD5zTVL2tNNGwHuC6GbGWrQVIQ90jvt
 aa+QaAM01GJcJeenk3D8K0YFFYwl1QQfsaBPmiHcBmnF9TfXbkRBjff1fVlefRtMNNhn
 YS1V3p06jYuC6sbH3f2RCtKxaMrWYTkXD2GmUCqwfUvFV0t0KJruEDE5MJpqDswVGQ9H
 m6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sqSfnQDS8sjUZN/3AxA8S/yruKf46+OQJxAy5E4hEak=;
 b=D2DIQN63HurEu9W9MqLcx2A+2T7oOjNCiUbSSILBxIW1h9AmlBiO/CdFvBp9m2VuRz
 /qLNsUyB0RBkmxtiPutXPEnsDpgOkoh8HStZYuuRzTehEfXUWOcpAOEHFM0VMrydVeJ5
 ckMYUwMHQqyk4oEYTpv2MvXAHD+Kg/tc1LNQ7+hog2sasU1BUx7JDfbWU5QdsD+j9oVK
 Ffw0NSBNWBHRMhyAoziZEFcD18BGcepiz5zrdQ5ElIDcdvpcKAbCm7ZmvAHHaAo1J2Mr
 aber1Yilnrv0kJW23/aoQtXfWyzVi2iaFd27YOMDxjaXIa4228SgCvDd/Q+torvyHhaq
 P3ig==
X-Gm-Message-State: APjAAAXabnZcF467RGd2pv6xoRh1GZr1vv5zZWz0909EARZccjjheAhv
 DbVgdkLf2kWSmH29c4ouagaCVA==
X-Google-Smtp-Source: APXvYqwCZXwu5vcPONS2qYEkV8H5ecBbe1iXOPdH6sQcBoJVFBV1yyeMBHa6eVLnnhTfZHNhRs6fDA==
X-Received: by 2002:a17:902:74c7:: with SMTP id
 f7mr5308584plt.263.1567078572662; 
 Thu, 29 Aug 2019 04:36:12 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e66sm6401987pfe.142.2019.08.29.04.36.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:12 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 30/44] arm64: cpu_errata: Allow an erratum to be
 match for all revisions of a core
Date: Thu, 29 Aug 2019 17:04:15 +0530
Message-Id: <edab29d004dba9603b3e594cd4e8d2cf5141107f.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043613_686207_9BE368A7 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
