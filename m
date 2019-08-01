Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EC77D796
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6I0uctwP3YSIFZ1v/mzNltXP+fJNkv4kRXoKcF/VMm4=; b=H9NZcgrs2lb+mX
	WEcUSlW3AbXCVIDItN7Kk+7odqBm1usLWD5K1kglMrtbzu/RCPuYdh9tlGDUezxI5v8udVHpFLvoW
	yTgcRPeOGVC9R+s2/PZrAIjvFp/xoLOikAvVfchwBN25BiSLIZbKBq0JdfvDFyqC15KXghWeZ9NXf
	1Zt2oglclAOWhxz8h3ddFb9zT6Am4+TClXkbXltPn/KKjOOkZZiJX4XRz7f6oo5IiR3ULqKWbfRPy
	cOvkcaQf4WW3q/FHeuMSv0Zg45OMZlgoJf5w/IURiGvyl5SnABSInsTvBM7IMK/Cs2p6LPhbClkzb
	y4ZQWYrY2/JqeTLZJU1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6RV-0005BZ-P7; Thu, 01 Aug 2019 08:28:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kv-0003bb-H2
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id k8so31880996plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gEzBHKM5Yrnew5IgDE9VhKRrkovpTReWWDnzndMpTpo=;
 b=UN9wbT1c5Wx19ZD2dzkTJ0vzKrvZSwdLl/MoPaL7Bf5lgYTUbPsoGyZaiQxXofgkyN
 I9Ta0f5FCBMV/ZPClK1Ut66nIJg9T6CE9kwIi3O+VIixnsW+ZVIAXVzfRpelZyl2PfOV
 UQ2qf49OaqxnZw5UwF+H40gSMu5ka3TK3gzkPxSM+M04VEdd6jvD/ZUnXWE9zqktt1DC
 bfLwxwHqhXAhLi1gls5Aq9+gSGFeuIsSUu5sX/BfT3URFPW1pv/HgNwFqeXUojYz2mMe
 Tmo/OGFIq2GbvVBu0phLhNVYn/62935QkaI/dM2KpSkyMSvZTxnywcgXj/DwrSY7RWKD
 WgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gEzBHKM5Yrnew5IgDE9VhKRrkovpTReWWDnzndMpTpo=;
 b=Qw4pjDLPDXeMCwdNjMrZ3KzpZCedXeWDEEFewMuxWK2voarJOezPCrPuQATIeseAxN
 E3xBZ7T7/z8hbUoaD8ryQ8ikNnFQ11id4rxdw1Di1lIV+ZcEmgMKQWXzgW40+/5Yg/50
 UE6D7y9cNkVyxWwDKXm0eU+Ne+/PQX7l8wBF+CnGAj6NankXOw9oZ3P9cSCYhmGgfZ5G
 OTazwzUu+IFYQtiT1FKRRcKwOKYtVYP2xQQg8HEAxWaxQL0C6eWNLamHUCwoBRPuW49I
 3w26QqjKpb5BbBCDby0GUqfXReaihz+5KZ+JOfmm9tYfDtt8A8LKshUxSFw1qHwILdEy
 nnVg==
X-Gm-Message-State: APjAAAUyf3oGgVZGeTSjifYP0vp1wCMWZATU1oy7QtVvTgNlk7T+Xj9j
 Lpwc0RmRbQq/KrWhgG/Z25Siag==
X-Google-Smtp-Source: APXvYqwb0TOHdBpq4vG3XgGwqBBj/UNlT/qteIlZUZg9wGkRaWIn9Bg0d24y471cMtkOLZx/GzPB8Q==
X-Received: by 2002:a17:902:7c96:: with SMTP id
 y22mr127080149pll.39.1564647681003; 
 Thu, 01 Aug 2019 01:21:21 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id j6sm10632447pjd.19.2019.08.01.01.21.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:20 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 41/47] ARM: clean up per-processor check_bugs
 method call
Date: Thu,  1 Aug 2019 13:46:25 +0530
Message-Id: <33110a95761cf304c04b2837d8539553adde85b8.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012121_575818_9ED1CBE6 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 945aceb1db8885d3a35790cf2e810f681db52756 upstream.

Call the per-processor type check_bugs() method in the same way as we
do other per-processor functions - move the "processor." detail into
proc-fns.h.

Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/proc-fns.h | 1 +
 arch/arm/kernel/bugs.c          | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/proc-fns.h b/arch/arm/include/asm/proc-fns.h
index f379f5f849a9..19939e88efca 100644
--- a/arch/arm/include/asm/proc-fns.h
+++ b/arch/arm/include/asm/proc-fns.h
@@ -99,6 +99,7 @@ extern void cpu_do_suspend(void *);
 extern void cpu_do_resume(void *);
 #else
 #define cpu_proc_init			processor._proc_init
+#define cpu_check_bugs			processor.check_bugs
 #define cpu_proc_fin			processor._proc_fin
 #define cpu_reset			processor.reset
 #define cpu_do_idle			processor._do_idle
diff --git a/arch/arm/kernel/bugs.c b/arch/arm/kernel/bugs.c
index 7be511310191..d41d3598e5e5 100644
--- a/arch/arm/kernel/bugs.c
+++ b/arch/arm/kernel/bugs.c
@@ -6,8 +6,8 @@
 void check_other_bugs(void)
 {
 #ifdef MULTI_CPU
-	if (processor.check_bugs)
-		processor.check_bugs();
+	if (cpu_check_bugs)
+		cpu_check_bugs();
 #endif
 }
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
