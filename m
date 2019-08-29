Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1577BA191D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqQCVBK4XsUKPzPFHTcQNcV+ZJxLN+2v4NoSsBhKWfU=; b=nNuh1l11IYhXtz
	UtqBzBMTbH4zi1gssSAapRJY1Q8TnToy+mc/hWYITXn5kWkqJ3VP4OFSjuaVviMFB7FRFg4O1bVb5
	7ou3HSEDSOtYgMO0upAK3YSnMR3VoYaCRV8QxR8SRwmHz3AVOsjkfpwRFBL0zlK2md+tgiYaeX3tF
	jDt8bOhhj/myjh3s0w09h23A+RUlXrtP7fatumGcoXAo5tPA5dQx5CHiRsBfEtuqrSPevjmRBkVPV
	4JI7npEx21G9RHqz0S+Z/fUT3hJE+RylvjAW0TqKmAp9AJT9t4OqMT+YXbcUGB595NPN1FAkZcALc
	FXUwB3OAZy7OckRNcoaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IqW-0005ku-Sm; Thu, 29 Aug 2019 11:44:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Iio-00070f-NY
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id v12so1850831pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D7dDso9mEizkFlSNIpcQXEVsYMAg+0dXCi9osCif4dQ=;
 b=ARrmgjAQyWJ3A4H4QgsubRRxM85gcS37EsYBleh0p2pXl6UY9hbPYZcOyuJR3mVRa9
 +QWoqI+LoqVQna7nhm7rI1cOu0XOtVBblELb8gpt7GtH7GBQ0foQJEzZIzr88uCClaBz
 qqFVG+I6NBY9BKoxQvSXqR735A5i1oKRwChtj3giEyO112Yb7ZenwG7LdlyGoK36dazL
 i3RsOyEsdSdbIKPtB6BV3CiElXyPRHj2rPUdopOYNYkggTMGIbFMNZn4/cQOvl5+Lalf
 aTpS/LgRJqgkQBfqjcrbCbJO0To4tgT8DZMiY8o1G3IakSjVFzJigRQkKNepKEymVTz/
 shNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D7dDso9mEizkFlSNIpcQXEVsYMAg+0dXCi9osCif4dQ=;
 b=epOFWJU2DB91kaEbevTinzDg/iKxvks14SyXpIgJX3nfUJ+xUnQtXSyDUZMeha/ik6
 4ouYkc+/995ale837StcuWtORZqyWl9Ffy2D+TBBPjyHiPfo9AOkQSnvEo8ZCPoZXzKT
 M3cWZMzoZTHuNefVPktoqNJmy+aF5BMzXyOwl7ZSz0LHHfNjLVWGwGsaH2K+zqSBmLLl
 KTMYl/14QdSEMO9BZfA4oZFNO0GdCUpavi6A/wZWx5GHfFpC9UdmMtxQoZc15TWxpMoh
 02EMY8g1NfryF9EmmNGJMu/Jho3TDPraIU9soOhWbnWs0zetfgbcpCgri2FtaAPUEatF
 M0nA==
X-Gm-Message-State: APjAAAVDDRbT3d6FBQwNdj06HW5Am6iiIsS6kKy+K+6zhTad+K7c6x0k
 fMfj3rq/zrETA6K2Dxt0lCfyDQ==
X-Google-Smtp-Source: APXvYqyKCagpxOr1sVZtXw0tQn2B2kM7k2upAkKJrVKCRIE4bO3JT3iMpRghGhGOZed8ZpAd44rKhw==
X-Received: by 2002:a63:20a:: with SMTP id 10mr7790456pgc.226.1567078570025;
 Thu, 29 Aug 2019 04:36:10 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id y14sm1899716pge.7.2019.08.29.04.36.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:09 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 29/44] arm64: cputype: Add missing MIDR values
 for Cortex-A72 and Cortex-A75
Date: Thu, 29 Aug 2019 17:04:14 +0530
Message-Id: <6b46a425ec244a76a7cebf5e1cdfa6e1d0a6c7a8.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043610_975611_7888DECB 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

From: Will Deacon <will.deacon@arm.com>

commit a65d219fe5dc7887fd5ca04c2ac3e9a34feb8dfc upstream.

Hook up MIDR values for the Cortex-A72 and Cortex-A75 CPUs, since they
will soon need MIDR matches for hardening the branch predictor.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Add A73 values as well ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cputype.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index f43e10cfeda2..2a1f44646048 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -77,14 +77,20 @@
 #define ARM_CPU_PART_AEM_V8		0xD0F
 #define ARM_CPU_PART_FOUNDATION		0xD00
 #define ARM_CPU_PART_CORTEX_A57		0xD07
+#define ARM_CPU_PART_CORTEX_A72		0xD08
 #define ARM_CPU_PART_CORTEX_A53		0xD03
 #define ARM_CPU_PART_CORTEX_A55		0xD05
+#define ARM_CPU_PART_CORTEX_A73		0xD09
+#define ARM_CPU_PART_CORTEX_A75		0xD0A
 
 #define APM_CPU_PART_POTENZA		0x000
 
 #define CAVIUM_CPU_PART_THUNDERX	0x0A1
 
 #define MIDR_CORTEX_A55 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A55)
+#define MIDR_CORTEX_A72 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A72)
+#define MIDR_CORTEX_A73 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A73)
+#define MIDR_CORTEX_A75 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A75)
 
 #ifndef __ASSEMBLY__
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
