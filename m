Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F887D77C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8Rh2IjMRNBLdaFleibWrz+RFEnst/UFAlD6Cwe9ba0=; b=OZW/g6XZi6Qqtn
	piTTETFpPq9AISas1SiG/LGtv7fNk6XQC+fuiy9Fgm5M3pyY0AHD7z6K8T0Eemv9DJ67q7sgrPiBQ
	C8TI14Vt1aKZ7r2I9nEXwQ05lOvDePEtv/DbJaUozQaFbNEd88RvoOAKsJh7COqp9ljz62JOvNVlS
	hRc8sN/itT/4lZOGON2HJTVGJKaazW5PKxkwYjRqRwBL7yvAy4+DzjsqTK5h8y5YKugqO/1fhhiKS
	B0jFWL2a9za7tivzTUpP26ktKhWFx4DWqInzlTDi+VaZ+WLPANqQ5SOuXL98lD1ropfrnLrY4pOzQ
	HGEskVbqrc1SNR0PRWhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6OS-0008E6-EL; Thu, 01 Aug 2019 08:25:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KM-0002io-78
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so33599812pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q3Hwoo9R0gf8T8wycN6BweSX3iAbrjmdi48iA1QA7vM=;
 b=v8tPuBm6a8N9wJvJ6WAtxxYn28Qs2iZZ+IRbRYjgYx4IpcRLyS8mfcmqz0ytzoCpos
 jv/ffuYFA83lpwHniP5fhlZ/kXp4M11tAuygaRg5myeIMrI0qD/rxAxB27MRhzupZe+M
 ztLh+JDQ8NvxiNwGo4nApbsJ7fy4V8q8kKKPaKdaoGsGu/zjSHMfybem2XwIWx7RPEKg
 54NjDRDdLSpZw1taU2sXbgFmkRC/GEk0bCDtAIIXIb4BUwKjQYprsIXx9A6faIcBhh01
 LX4ZbPwaUAG4xSFQoW/swck/IwVK0wLaGDiUB0fZN0idxlNoOdpYJqsxB8SjDJV4oO5t
 QY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q3Hwoo9R0gf8T8wycN6BweSX3iAbrjmdi48iA1QA7vM=;
 b=EvUzGsqBDjUOHsSRkylF0HrQc5du0ap81fxqae7az5VFw/YKvsrrEkuGdWNtA9/y3A
 GPMMvcH4B3D8Cqw2mMoIDfCvI0L39S7Y33FvfdeOBV5lTKQOIKL696ck9F6E3hSK+hZ5
 AKzyO6D7lUyJ52e3FdrCo1BH8Ip8khzv53pqrjYbb0DHgzGLWRkhyRzPnSswKlAmHSQq
 Lf8VApbOSJRrVzMSwrVbvCOuD3PzpcVWz9Y9eBYo1EWULhU0a3lnDC6r8Rn6hyV3WMeW
 dTncT7Xpw0ThUHhcxbs/hyM/r2gl3ikA0w+tUcNBR0DNmznSIcnF9dKCI8PQec640AYm
 +DtA==
X-Gm-Message-State: APjAAAUUT+Xv1Kfh2otK91k4Om6ZALrdwSd7aX7ITjj0fLdArbAdi+oB
 RwXUS3Sdwo1XyUgk+dnPmS5+eA==
X-Google-Smtp-Source: APXvYqw8AMtygXdme66bHjkErIZoCNT+9NxIrlMt51jVywqWqjAheNw422/KO4VB26xRqouz4epcaA==
X-Received: by 2002:a62:f20b:: with SMTP id m11mr52253396pfh.125.1564647645675; 
 Thu, 01 Aug 2019 01:20:45 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id n98sm4013483pjc.26.2019.08.01.01.20.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:45 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 27/47] ARM: spectre-v1: mitigate user accesses
Date: Thu,  1 Aug 2019 13:46:11 +0530
Message-Id: <86231c8cbaacc44285a235db704e1029ae8ec64a.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012046_287291_173A84DE 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Commit a3c0f84765bb429ba0fd23de1c57b5e1591c9389 upstream.

Spectre variant 1 attacks are about this sequence of pseudo-code:

	index = load(user-manipulated pointer);
	access(base + index * stride);

In order for the cache side-channel to work, the access() must me made
to memory which userspace can detect whether cache lines have been
loaded.  On 32-bit ARM, this must be either user accessible memory, or
a kernel mapping of that same user accessible memory.

The problem occurs when the load() speculatively loads privileged data,
and the subsequent access() is made to user accessible memory.

Any load() which makes use of a user-maniplated pointer is a potential
problem if the data it has loaded is used in a subsequent access.  This
also applies for the access() if the data loaded by that access is used
by a subsequent access.

Harden the get_user() accessors against Spectre attacks by forcing out
of bounds addresses to a NULL pointer.  This prevents get_user() being
used as the load() step above.  As a side effect, put_user() will also
be affected even though it isn't implicated.

Also harden copy_from_user() by redoing the bounds check within the
arm_copy_from_user() code, and NULLing the pointer if out of bounds.

Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/assembler.h | 4 ++++
 arch/arm/lib/copy_from_user.S    | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 307901f88a1e..483481c6937e 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -454,6 +454,10 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
 	adds	\tmp, \addr, #\size - 1
 	sbcccs	\tmp, \tmp, \limit
 	bcs	\bad
+#ifdef CONFIG_CPU_SPECTRE
+	movcs	\addr, #0
+	csdb
+#endif
 #endif
 	.endm
 
diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
index 1512bebfbf1b..d36329cefedc 100644
--- a/arch/arm/lib/copy_from_user.S
+++ b/arch/arm/lib/copy_from_user.S
@@ -90,6 +90,15 @@
 	.text
 
 ENTRY(arm_copy_from_user)
+#ifdef CONFIG_CPU_SPECTRE
+	get_thread_info r3
+	ldr	r3, [r3, #TI_ADDR_LIMIT]
+	adds	ip, r1, r2	@ ip=addr+size
+	sub	r3, r3, #1	@ addr_limit - 1
+	cmpcc	ip, r3		@ if (addr+size > addr_limit - 1)
+	movcs	r1, #0		@ addr = NULL
+	csdb
+#endif
 
 #include "copy_template.S"
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
