Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6704B18205C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cLHBa3/Ro/CEmui08muqWql5XNHP/eBlvz5z42fix4=; b=FRsZ+JaWOXZ7Sj
	Y/wMDKw8ezRY3oxSaYNO710WWpmXa/ojs59V+lTYGsrRRKveVUX1dMl7HQnIFlc9Z/FH0GMMr958+
	gdWrcltQh1wpgaS93/zEKOQ66li/c02Oxvo7VHbNCWHR1M0ay4DB0vvwlUriaRj0p/I5GkU4TRvhM
	KdVnT4HGYW3YuAnXUgtmwE13FzdGx4E5RMUT0XYzDr4lMJBEouJk4wmr8e2iLCTEMzDGkqqgaRDsV
	YnSfQpo8P+1k3IpemLUY1VB65AJdNflIZ+oaEKrnWPCLwF8Gna9Q6Lu4OlSUzrtvrudgTyu+wmjNZ
	FHsvcTV+ZO3E0O/NoGUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5jI-00032j-SJ; Wed, 11 Mar 2020 18:05:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5iQ-0002XK-As
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:04:23 +0000
Received: by mail-pg1-x542.google.com with SMTP id a32so761430pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=91DmWgN0e9M6/kkkNvykvlY0ufggKJnkN2ZSNGdrCLE=;
 b=xRP23aSJRK6a95T5oQi4zXdTc6/CrNnkCOz0ScXdS0PEnJvXwILkd1HK6Fhv96/9mw
 DiZG0Y64RovAI0qPZ2XPYMFcuQBUL2LfT6+CxIqYcgywGOBWkuOAM+aiK6CyyvpeAvHv
 iQZQv/P9Bjagz8SfAANbp0muQR1hi/HWpQRmcC+xXeOfiZ+AmNJe0nd99/jGXHF8bVC4
 b8vC3y27tL46gWDjgRnoZwrVL4agviK2en5yG28Tx+Cy4R0myo7pTlABWi91kDlIRGiG
 zE5W9XKHmrtgc4ELsg6uVcOTOvt64fPgL5YZNBAbyZxlKh4kYrqjPHL7FFLcOfzkx+W+
 u3Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=91DmWgN0e9M6/kkkNvykvlY0ufggKJnkN2ZSNGdrCLE=;
 b=dG4JG4WL+/Fit5Z+ADaXKo00JhyzvMmVigReM/gJJEhaOgJntrev8JR0AEScHbBFhK
 NGoSoeZa2VCYttAjeYxgeYXWflbgfKmHoyPJrXmqETV5cWQO8hQoDWBb3y1un57dcAKF
 blqytgvZppOqFs1rSYjIffc2nkUljGXkm63uXH6uj/pZ8x/BtFgDoWeGzhMOjRB0Hj7t
 SHOEv+ZNlPmyxRp+IZb6vD0NUdnW7XYCwXtCmQo+Mn+6Sdh25TrbHbT2ztrOOiOE8Y8b
 dtyyPNkLJpDD5Kqguv7ebw2lQvoTxFGRhZQTTqdbMUeq6q5mTGuB2ijg+MW+Z9kxQg5V
 dypg==
X-Gm-Message-State: ANhLgQ13t609A1W6yUUJNd7nsE/4mocvUvK6gyZdGD0VkbXRzdW28gGk
 NmaCHgxfw3z7ODM4Xa1+XNkeqel8LSc=
X-Google-Smtp-Source: ADFU+vtq+72ZEajtisRq2tNaw8OJJhbGI3GQjneHYLOvSHf0xp5gQDadY3unNBXWVNHosnT5ti8wTw==
X-Received: by 2002:a62:5296:: with SMTP id g144mr4072146pfb.29.1583949861383; 
 Wed, 11 Mar 2020 11:04:21 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id k9sm6079383pjo.19.2020.03.11.11.04.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:04:20 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/6] arm64: uaccess: Untie the input address in __range_ok
Date: Wed, 11 Mar 2020 11:04:13 -0700
Message-Id: <20200311180416.6509-4-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311180416.6509-1-richard.henderson@linaro.org>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_110422_393325_912C8AD8 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

There's no reason for the input address to match the output
register.  Give the register allocator a bit more freedom.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index ceb1d79eab09..fe3dd70e901e 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -75,7 +75,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 	asm volatile(
 	// A + B <= C + 1 for all A,B,C, in four easy steps:
 	// 1: X = A + B; X' = X % 2^64
-	"	adds	%[addr], %[addr], %[size]\n"
+	"	adds	%[addr], %[addr_in], %[size]\n"
 	// 2: Set C = 0 if X > 2^64, to guarantee X' > C in step 4
 	"	csel	%[limit], xzr, %[limit], hi\n"
 	// 3: Set X' = ~0 if X >= 2^64. For X == 2^64, this decrements X'
@@ -88,7 +88,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 	"	sbcs	xzr, %[addr], %[limit]\n"
 	"       cset    %[addr], ls\n"
 	: [addr] "=&r" (ret), [limit] "+r" (limit)
-	: [size] "Ir" (size), "0" (addr)
+	: [size] "Ir" (size), [addr_in] "r" (addr)
 	: "cc");
 
 	return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
