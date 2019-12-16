Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0C711FC1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 01:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2xlysPoKx7oQVIebjkBmB4LYr6YWvHXrsCPYrjHwN8=; b=HpyRGijojcxLgV
	inhNhdYQiffM7o0CzwwBCWnRvDTbw7BJ6znLIFyTip1/pe50xBf1Jijp0pi7wZFq7vtUrDKXLzcg1
	Z0gkKk0+VuAo6NktXPxR6ay9e2Jd2avxdR+aiS9RiLl6s4kEnmX3jnjPvI6UQe/473Xkbarv+xcgB
	xBrMjNhMCtUy0f8YUi0jSzQAOI64/iujmX2Cef8ahpPsLiw7AhN818TxY13Lh19R1J6ZRK7w3cLZG
	suw69eC1hkIxQwFPr2b/OaWYa4Ad1dVUCqwSQkZZNUNtW9tasLWrcrkHz/JVpna1f0hVgOcGw3JQp
	z/ZWPhEoHZxkWckiagVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ige8X-0006Tj-25; Mon, 16 Dec 2019 00:21:21 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ige7L-0004LK-Pi
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 00:20:09 +0000
Received: by mail-qk1-x744.google.com with SMTP id w127so3873563qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 16:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7S615KofXaQ1yUG/3GM94cEkec6rvE87OWT0R1mkHVE=;
 b=nqPgX5mFOvAOvhSP8TsLpj5UaQakaOAGyTfIYXnrJ98dEtbMpEP8y70bY2krwxvBGv
 3sK8HR/8589X7H4aSpRQYDfPVFxXCiHAWknqhsEK4Dqnmtom1eCmt/84ndxMicvGc0tX
 SK1DtIiUK/u/cmwstnoeopb3cfXxGD4PGhoanmWF1wQx39CgqDz+4kssxSIdbFWyWPOB
 y63NGEJciBnX0t8sIT3OXdy/PBOf6jMsRpwBBJWBXrJ9vblwvEfFYeeNeGZ2SeNxLe1f
 oSONG29STbtZuutO4OQ8C6uyMnSUAFvzBbOaI53Zjw4vhBWJIWjfAI2QyCTMnpNHF0F/
 6NtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7S615KofXaQ1yUG/3GM94cEkec6rvE87OWT0R1mkHVE=;
 b=HKi1VfZd9nXiDZrRxOTLNFa1xKPjkJ60XSkkudgknkUhkofXbLGrbyAoyVV2HigNfJ
 nCJBo1QHjlQi5RU+Yc95N/KHfTdfvlCGXgj5vtLtaiSOzoNEgPxUcO0xBMnOsyx67W06
 5MfjiAxmR/+g8yUaxMTqPSj+kABo2dgFdidu38kvAEtvxXF0MOV7FTxrPkKZWk68VOAj
 5hdpSONutvAAD2DDDyqkdxPX1Q+u6ut9OxnHJX68kJIWG0u8oIJ7+tAp0K+ucEtRegeE
 S4q/D6jC297W+Dzl4xPYCzn0Qyt2EnedRdJDAQV9c6jJL4zN/toGLL//V+ITP+TkFyth
 h6Rw==
X-Gm-Message-State: APjAAAWpETycKpjx+8D54mB+lbpHQ2IZ5GzXKimmMW28HpVLOLg+XBJ2
 uee0HqGTJNKqEQNFpRXK/eI=
X-Google-Smtp-Source: APXvYqw+Sd5f8LCDwfYgXxyt3Pq91Kobn432DMObcmpR4URJPQMO29VkBjNnlDH47LvcwB6Snoz7LA==
X-Received: by 2002:a37:684a:: with SMTP id d71mr22545035qkc.201.1576455606206; 
 Sun, 15 Dec 2019 16:20:06 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id h1sm5312169qkc.38.2019.12.15.16.20.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 16:20:05 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 18F2B22442;
 Sun, 15 Dec 2019 19:20:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 15 Dec 2019 19:20:04 -0500
X-ME-Sender: <xms:s832Xf_utJ7BzzzxXT8sbRHR_jIVZkfwcioGr8KILEE-3_xWYJBHKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhorhhtvggutfgvtghiphdvucdlgedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepuehoqhhunhcuhfgvnhhguceosghoqhhunhdrfhgvnh
 hgsehgmhgrihhlrdgtohhmqeenucfkphephedvrdduheehrdduuddurdejudenucfrrghr
 rghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhnrg
 hlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpeep
 ghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgvnecuvehluhhsthgvrhfuihiivgepge
X-ME-Proxy: <xmx:s832Xaf6uB8opnROUrWBVo_oq9K0wWLiPN_7SZTDlz-uaVSDV_V5-Q>
 <xmx:s832XclLRpyr1FDzNKmXKAtYVIdNduUR00tMwI8SBw9qloS3PHxvIg>
 <xmx:s832XVwgiH4W1-JxHD2H0dy8J1UrSR2HXikSjfrgI9BuAUt7nedTCg>
 <xmx:tM32Xdbw_MsAUFdQXzs8LV5BQT0Fa223mJ-DPb6TdsQ2b8XitXSIMLuE1VQ>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 69CB980063;
 Sun, 15 Dec 2019 19:20:03 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-hyperv@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 6/6] arm64: hyperv: Enable vDSO
Date: Mon, 16 Dec 2019 08:19:22 +0800
Message-Id: <20191216001922.23008-7-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216001922.23008-1-boqun.feng@gmail.com>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_162007_980652_A14E6524 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (boqun.feng[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to x86, add a new vclock_mode VCLOCK_HVCLOCK, and reuse the
hv_read_tsc_page() for userspace to read tsc page clocksource.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/arm64/include/asm/clocksource.h       |  3 ++-
 arch/arm64/include/asm/mshyperv.h          |  2 +-
 arch/arm64/include/asm/vdso/gettimeofday.h | 19 +++++++++++++++++++
 3 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/clocksource.h b/arch/arm64/include/asm/clocksource.h
index fbe80057468c..c6acd45fe748 100644
--- a/arch/arm64/include/asm/clocksource.h
+++ b/arch/arm64/include/asm/clocksource.h
@@ -4,7 +4,8 @@
 
 #define VCLOCK_NONE	0	/* No vDSO clock available.		*/
 #define VCLOCK_CNTVCT	1	/* vDSO should use cntvcnt		*/
-#define VCLOCK_MAX	1
+#define VCLOCK_HVCLOCK	2	/* vDSO should use vread_hvclock()	*/
+#define VCLOCK_MAX	2
 
 struct arch_clocksource_data {
 	int vclock_mode;
diff --git a/arch/arm64/include/asm/mshyperv.h b/arch/arm64/include/asm/mshyperv.h
index 0afb00e3501d..7c85dd816dca 100644
--- a/arch/arm64/include/asm/mshyperv.h
+++ b/arch/arm64/include/asm/mshyperv.h
@@ -90,7 +90,7 @@ extern void hv_get_vpreg_128(u32 reg, struct hv_get_vp_register_output *result);
 #define hv_set_reference_tsc(val) \
 		hv_set_vpreg(HV_REGISTER_REFERENCE_TSC, val)
 #define hv_set_clocksource_vdso(val) \
-		((val).archdata.vclock_mode = VCLOCK_NONE)
+		((val).archdata.vclock_mode = VCLOCK_HVCLOCK)
 
 #if IS_ENABLED(CONFIG_HYPERV)
 #define hv_enable_stimer0_percpu_irq(irq)	enable_percpu_irq(irq, 0)
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index e6e3fe0488c7..7e689b903f4d 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -67,6 +67,20 @@ int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
 	return ret;
 }
 
+#ifdef CONFIG_HYPERV_TIMER
+/* This will override the default hv_get_raw_timer() */
+#define hv_get_raw_timer() __arch_counter_get_cntvct()
+#include <clocksource/hyperv_timer.h>
+
+extern struct ms_hyperv_tsc_page
+_hvclock_page __attribute__((visibility("hidden")));
+
+static u64 vread_hvclock(void)
+{
+	return hv_read_tsc_page(&_hvclock_page);
+}
+#endif
+
 static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
 {
 	u64 res;
@@ -78,6 +92,11 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
 	if (clock_mode == VCLOCK_NONE)
 		return __VDSO_USE_SYSCALL;
 
+#ifdef CONFIG_HYPERV_TIMER
+	if (likely(clock_mode == VCLOCK_HVCLOCK))
+		return vread_hvclock();
+#endif
+
 	/*
 	 * This isb() is required to prevent that the counter value
 	 * is speculated.
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
