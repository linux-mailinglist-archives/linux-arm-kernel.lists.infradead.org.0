Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A406A18FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VxvPDWpLpSJ/ro1/i5RmihWfsEprYiIwwDJ1NVNPQ4=; b=W3/tMHykO6WL/P
	mIe/7VI5iLrBbE7eC1Ly0L+aT/gvf0Wp8REvkIxMiycxMaQMR4luQyKbcXYV8JzTfospXZzK6Gko9
	ERRi6VXtte6xfQpCHnaJ8e49wvaRcrdTgi8I9JKdD+DxMvtoC290dZPzr86LHrP7jCblqx1/kbuy3
	2ABb5vyjfeOgUQKtbJHIJj59fNOoCavDF3Vmb5t+WiGnOR2hjFKoqj/uzYlyN4fovout7oqlgJ8JV
	4ZTo2dZAWBXywU86bfqFFHr9L5yC2Rg8XDdX4pvKn3xJfFYIxGmNw83AnXqy2qqwSb5Q9D2vUsVyl
	KSQa13Axx6F8ssl/v5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IlM-0000TT-6q; Thu, 29 Aug 2019 11:38:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ii4-0006H7-KE
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:28 +0000
Received: by mail-pl1-x643.google.com with SMTP id f19so1457314plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/kfHaZYBMHfOrWZM24aWUbS5m2tlkmGASsL26R9/1y0=;
 b=Gta/BjHJoeHx/0jnh1mD82z3khHO6OWus+AnqVK3jTMQburxYF8f+9Z5B3h2u7q1bT
 84dbThD5qRne9UCWmSA+BYv0pk23FljWmIz76uW6/Ow8fWPVKhgag2RjQ6C4kBvCWQo9
 +4QnJy6S6Fy5mLK5goPYNl7hYK4g/iMvBFs5tQeZTDY7DzYSBAIBNbPY3jKdVZb0GX1H
 +cMY5BX/5+4HCogaMqFgyON4hoe5hlRVX4WX/ekBlqCc9oWfPxiXwJI87eJ5Nd7Kz2Nn
 VkDV29OAc3yUJ8RMRXiQii5iSlSIIW1kucniCtdKxTkhYG+t2ECVSJf8APZjLZZk1x6V
 4kaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/kfHaZYBMHfOrWZM24aWUbS5m2tlkmGASsL26R9/1y0=;
 b=qyfE9YpYO3kiYdKO3Aj7P1cjj4pK5DFnaQN91yX31XX7sMXDRpNGsbBZAGAZbGDKtP
 G3nOK0EllduK5wQStAoxLJgQRHFpswmZ/Q+sd0yziWAu4qaQ5RF2miLB3LNBHb/cbguU
 DqS5B+pv1NrluGxh34eGvIg8hrYzNS/4FvbKYYOGu3DCzV4Tk/UJwymQP/1ALGp4NCxC
 iV1HFQKloIv+h/iqd87wXEeu5ydf+qPPC6aIdweej2KrJyY37y3MYvuSddWJeYDqFSto
 7ohfAf0Tl+jb0yw0PZQ3w6vyCtBwlJru3A/9u+lbhQtXI3nrUXZxky2bAn5pacTXpLKY
 flNA==
X-Gm-Message-State: APjAAAWkqxgqJ+lufs6Llgq7OETto4pbcaeD/ohRJEUc48F/kTqYypbr
 J3zSfXfLVpmvZ/qXwiLfI0GFrA==
X-Google-Smtp-Source: APXvYqxM7jGRGQbSDy0SY4dxZ9IYLXcQDCvC70WuEYKduu0+qKWIRZX9TkcmWY5iFePShrSkm3BmVA==
X-Received: by 2002:a17:902:7c16:: with SMTP id
 x22mr6330064pll.234.1567078523996; 
 Thu, 29 Aug 2019 04:35:23 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id y194sm2790098pfg.116.2019.08.29.04.35.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:23 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 12/44] arm64: cpufeature: Test 'matches' pointer
 to find the end of the list
Date: Thu, 29 Aug 2019 17:03:57 +0530
Message-Id: <617ad445043f040c5ab986b9620b2ba7847b561e.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043524_752791_8FDF4BBC 
X-CRM114-Status: GOOD (  13.32  )
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
