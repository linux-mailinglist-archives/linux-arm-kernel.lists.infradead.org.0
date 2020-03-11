Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB3118205D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6bUShZNbu3URK/byfYKx6wHkenROpl1q2J99aSnE70=; b=lNp0JLCSSkh/hA
	y5kfsLZ1sYKftLnlUGbBPXT0rZjDOfOsWTDsgawpNj3WbL4fFTXC7Rq8TwXPHsMVvZXSa5TPhiEJK
	zc51XvomRrdZgQkyCKeCtPTcmlBunTIJXbw//RiiItQYFVUGu5sghSwM04/Ejk0P7x7nGKX9OAO60
	euFpd2Z1rinamslHASl79UmROu9cbpaNMwI5c+ee2FgebrU+W2WafulBTxOQmchPN6uTzsSdYPRkC
	V953Ng05AX0/ulpuhq+u7IFJsoaBFWcaIsfGJJfRYHB6VKmTREWk5CE8OYJU24qMwMKmCc4twi0ma
	7fIHzzA1Ki+5OZFpPLWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5jd-0004dw-25; Wed, 11 Mar 2020 18:05:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5iQ-0002XE-Ju
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:04:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id w3so1453504plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=NllkvBANvvltyJ4Ta7Fee1TStyDJumULjkiKc3SXuVc=;
 b=GimgdM8MhhPoTUcN7tVX2kKiWZ1wLhhvOZY8QQmK2PZpDFqJE5Bys3HdI5KzKMB1tv
 7ATZ5ARJKNbXKiQ37NA+rxju3C+2tOLkP60IVWjXDjNURqBdG++vQspEa9Do/2pRCQ+c
 drAnTBEVTfT7a1R704gkI3MEvg16ZkJqUbNMfvn85/tb41SmsdM6jYd4f37sips6EMDy
 CRtjuUGItWsbP98LgpVJjZUlStR8U8gQyEVYzdq2mkExNuQbEX9BqNEfnzFUhzYPu9QG
 4w3FI2FPk47nygQjA1vUF9dqtRF6HW8eUEYVdk5hLNafwyjpRWiqOLO1OoKmgNxeFOSR
 QukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NllkvBANvvltyJ4Ta7Fee1TStyDJumULjkiKc3SXuVc=;
 b=rRc/1JcHhFIrZ5zJtOd5jfeyTCTMixNlSyCV91jY4Pz7ijYGXeNjYPDa9Q3PNlIPF4
 BZBNMBeA3ApdDGNwXvynPpEKP90hhpQUt9VTL39APLFp0TIcazTkOQU6g/TKO9sRgkge
 SDI9T8njGyuXT7fBHIV7/z+vODSvlyqlyMel7RdeB7cMEXRIReTZM+i77XFr1IIKCkcF
 eRwVn0Z8SEa+tNejPVUxFsDZq2oK1fvTHC5L/dqgjeSms/GmmVXgU76COX8nXocGoQbL
 UyNmoyhBH06rUrbBf2RvvMLTWqi9TtB+OdgSqpbfdrNEWmQ+aXILC+QY/jFSIh7yB2sh
 vfQw==
X-Gm-Message-State: ANhLgQ0fxwLRdphs66BtWWTuOpwXwj28O+zu1M1VrRFhhlH9ambIv/hD
 zoZt1c8V5X+N5mvJaAmrzxKqSMUfOjg=
X-Google-Smtp-Source: ADFU+vvM+tnPy6lf0GAE6Kl68AWImasFWCKCk4f7wuZcQKypTnXWby2WMkocIsPXwJrwcRz3OvOUvg==
X-Received: by 2002:a17:902:7282:: with SMTP id
 d2mr4157079pll.263.1583949860147; 
 Wed, 11 Mar 2020 11:04:20 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id k9sm6079383pjo.19.2020.03.11.11.04.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:04:19 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/6] arm64: uaccess: Use named asm operands for __in_range
Date: Wed, 11 Mar 2020 11:04:12 -0700
Message-Id: <20200311180416.6509-3-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311180416.6509-1-richard.henderson@linaro.org>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_110422_695587_B7EADFA9 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With zero change of behavior, use %[] syntax for the asm
operands instead of numbered operands.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 32fc8061aa76..ceb1d79eab09 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -75,19 +75,21 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 	asm volatile(
 	// A + B <= C + 1 for all A,B,C, in four easy steps:
 	// 1: X = A + B; X' = X % 2^64
-	"	adds	%0, %3, %2\n"
+	"	adds	%[addr], %[addr], %[size]\n"
 	// 2: Set C = 0 if X > 2^64, to guarantee X' > C in step 4
-	"	csel	%1, xzr, %1, hi\n"
+	"	csel	%[limit], xzr, %[limit], hi\n"
 	// 3: Set X' = ~0 if X >= 2^64. For X == 2^64, this decrements X'
 	//    to compensate for the carry flag being set in step 4. For
 	//    X > 2^64, X' merely has to remain nonzero, which it does.
-	"	csinv	%0, %0, xzr, cc\n"
+	"	csinv	%[addr], %[addr], xzr, cc\n"
 	// 4: For X < 2^64, this gives us X' - C - 1 <= 0, where the -1
 	//    comes from the carry in being clear. Otherwise, we are
 	//    testing X' - C == 0, subject to the previous adjustments.
-	"	sbcs	xzr, %0, %1\n"
-	"	cset	%0, ls\n"
-	: "=&r" (ret), "+r" (limit) : "Ir" (size), "0" (addr) : "cc");
+	"	sbcs	xzr, %[addr], %[limit]\n"
+	"       cset    %[addr], ls\n"
+	: [addr] "=&r" (ret), [limit] "+r" (limit)
+	: [size] "Ir" (size), "0" (addr)
+	: "cc");
 
 	return ret;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
