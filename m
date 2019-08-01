Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932B67D784
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bi4ewPtLKTBcimYIKpRdEUQKGor8SYwZxaAAcPy9vcM=; b=kElg/6lRJwmBwL
	4AbjT/z9Qbujxk/WRyJiz1f1GWXZkvID15epD5fR/DncDjK/NowgJsk1LwaVkursEzVVQfxE1LG58
	caoPyKcSB0Gc+nz56uijEUAsn0wuc8XlAu2esm3+YZj7lR15Xd/0Ee6Wk6TMfr8+A2iliRDZXbSyP
	oaLjj7NuF4mhRe0oZY1VFfkA/hgK5tybR7rMxPD2gtIwsCIxhQXY0oCwt4ne+yKWIGQ1dmGU7jjLF
	FMttt58KSiduNYQsBK93hkb0HjPTIx6IG8caABomG3+fFxM91zO4okoFepo/2UsXMSDAomKw7RWjF
	IDwuBAu1xxWF6KWAUSGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6PW-0002Ab-Ji; Thu, 01 Aug 2019 08:26:06 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KZ-0002zu-Dl
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id n9so27509866pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=83Q5DLuQYSva53SfstGNLwQ+WusgochK7tEX54DLnZk=;
 b=rI4dN04PCrS8oEfhhu1FimQvBZ8VBzO1CvaxoGD0C6HzZI6J1xXoWDHX2NESLp/Gu7
 7/G8HfBb07K3/rgxPknRTOvB3aLF023teB3bfyIRyAR+J8H4K9LaMWtxu70jFDgK74EX
 d5yKiB/4rRbxtd1QdEtqb0PY9C3bjQM4DYhFHaErCxKRZDpe+KlfB4THeuDtUHgMKne0
 tAcVx3VWyyaYMIEQmAFWy51kwzUYHaZxrC4iPgcfUez/yyp4OS9lBBifrZ0sEM4m2uBe
 HN9oapm4F9z9UV++zkll/G0/DnOcFJFTYG1xzjUUiBgS5qLQw/8M46c9Qq8EW4MJ4sTk
 pdDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=83Q5DLuQYSva53SfstGNLwQ+WusgochK7tEX54DLnZk=;
 b=drUiJ5h2JQSIlhc0/k89kS+KQcDgYalVGUglGDjBouD4UJr8VzeBIBjPKwKQcx1Vub
 NBM1xxc8szQS8DGxfOaV1W8JbTJ+rjnvozGbPnguRYh8DjspNnWoq99lKkjOhuk1iMCo
 uE1JXNUIvWk9yEQP+h8D86liCm+jVBIlOCZVuzO9s+AgcAOXwWiDgZmtcGAfwCPsdSyl
 HzMCzkZTn4iesbDiV1K+Q5cuAWivYjnOpOAuAlkeIzGb8rCJEmTJIjn16UBTkVyeuVDx
 5Gvu/osrGcjNmonQfAKbiXbHQsADJbmyXzaeEa5htD6nr2HN6xp5oEwssfQDZEV9K197
 XoXQ==
X-Gm-Message-State: APjAAAVEtYPIBcGbz9kflYvLPxufawQol4NyHZUWvUAjBWtOHe97H9P7
 eWSI0NEcX47EEMnNADUz7D47pg==
X-Google-Smtp-Source: APXvYqzngxuyD04VCRkFZTzoAlqHmHgivTldcuqpxXRziSfFGEKiXB/CnfRGlITASbXm+JzerEuOIA==
X-Received: by 2002:a62:14c4:: with SMTP id 187mr50562879pfu.241.1564647658137; 
 Thu, 01 Aug 2019 01:20:58 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id j1sm95276210pgl.12.2019.08.01.01.20.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:57 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 32/47] ARM: 8794/1: uaccess: Prevent speculative
 use of the current addr_limit
Date: Thu,  1 Aug 2019 13:46:16 +0530
Message-Id: <74663c62c712201d35d012eba43ad611b6c5a3fe.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012059_483825_2659E109 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Julien Thierry <julien.thierry@arm.com>

Commit 621afc677465db231662ed126ae1f355bf8eac47 upstream.

A mispredicted conditional call to set_fs could result in the wrong
addr_limit being forwarded under speculation to a subsequent access_ok
check, potentially forming part of a spectre-v1 attack using uaccess
routines.

This patch prevents this forwarding from taking place, but putting heavy
barriers in set_fs after writing the addr_limit.

Porting commit c2f0ad4fc089cff8 ("arm64: uaccess: Prevent speculative use
of the current addr_limit").

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/uaccess.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index ecd159b45f12..a782201a2629 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -99,6 +99,14 @@ extern int __put_user_bad(void);
 static inline void set_fs(mm_segment_t fs)
 {
 	current_thread_info()->addr_limit = fs;
+
+	/*
+	 * Prevent a mispredicted conditional call to set_fs from forwarding
+	 * the wrong address limit to access_ok under speculation.
+	 */
+	dsb(nsh);
+	isb();
+
 	modify_domain(DOMAIN_KERNEL, fs ? DOMAIN_CLIENT : DOMAIN_MANAGER);
 }
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
