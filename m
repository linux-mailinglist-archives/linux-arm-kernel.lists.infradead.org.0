Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0457C7CDC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PruC0uPqz7SBIRUhitfvDhT95o3O92kmXjsPDJzF3K0=; b=J6i
	ppRJsbhpuvZbadUjpkNg2Ruj6xxYNoMEkF2mFqFQjtWjzU7YJwk2AG1tKcA7xUght3iry7T1fWiAi
	CNeacf1iZw3juyBABag+k3J3/UuGDY305TJ+lY8MOv1dv6eTv5yowS8w7YKMwnOfIDh5Pq7kd66mW
	khrn50EJi5I0syAoDLGIyPhP74lbJmysK+6crLiYBqCjwAh4hxT5yrzhAm3+zuT8na+UECS4FnJON
	ouGvsybK5wJ7raHKTjpDb5qmEXgZpjgXEPF1wVejX7+eOE4ZyYlixC0c+CbIZX4o3jwAYYyIWndQ7
	hpeYNzc8r4H9qLYDnYiLtm3E6rhrDGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsura-0006uL-9H; Wed, 31 Jul 2019 20:06:18 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsurS-0006tc-0I
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:06:11 +0000
Received: by mail-vs1-xe41.google.com with SMTP id v6so47191699vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=xmPjjmmf4+gFo5kALeeHuZbdpMAsYz3IH/3r3H4+9ag=;
 b=G8rAEk4u8bQFqyZvsdRqDU+I5cYozB4lVT2OE2OcGrXZSPpFoi5VRmJiZuBXbPE7Ps
 t89Kb/cgo/PjpoU0beaAKd8TU84LTlL6EjaDhdQQZWxW8obpVyuKeMAu0RkePO59Ghcf
 jfujlAw6IkDEyzp6vuamu/1K8k2YZwfdHVPIMpzCIuSV2ew8+1Q8U1hQ/i4FQnYKAX/m
 ofq3/saeJxblLG3EK1CLbK8Ky4WjImDfrE87wrzFIkDBbFsjbAQW1V1leQAqpFQI77SG
 xMaiNn9WTWax+ELQ1xPCNwmzXZS6idZh9LRnZP7N2YGkwme0I/gHURd4mIp1iqsifxOT
 wMRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xmPjjmmf4+gFo5kALeeHuZbdpMAsYz3IH/3r3H4+9ag=;
 b=WwkT5BH+pmVkgFRMOjy0hzpv/61srRf7vOsxXp9/rMA8YsC1duV9QsrehP39DguerI
 8FvqMgiMm/g1tU3qBlY3tYoNHjSdgYOoXFwqb++BCPUq7cXJ5mTIOZl/DoawnlxgOAFu
 vF65CJJoPtfv8ftBFZ4BTE1EthboqhXY3Z5ptXFb4POQ15dhAMlZYHNvnT+CLRmY7Cf7
 D7HiFMDM9fSnOf5bsAdnH4bNjAxFnJVBlZAs97IvPLdRAgX5tc9QCbsyO1xPGWchr2+Z
 qj1kxJim5R+jhGSGO3ezlCuIEeklPLirRcFz77r2RQygQwr9n9glsB98gZvGQV57Huew
 NqJg==
X-Gm-Message-State: APjAAAX9LLDWnILmRyRvpNLWwdjgA6ah6/pUgNtWYxlZeaPrW9pIkKMH
 I4UfHPmwWa7SgpS/AkD6c/TMVA==
X-Google-Smtp-Source: APXvYqwDFXXJKVaaRLQNlrqo/ycvYqOMZDQRyXsC9KjeEADy44EzhJcvaxN6b4K4kmpA/leb8BQa2A==
X-Received: by 2002:a67:fc50:: with SMTP id p16mr81886754vsq.79.1564603568705; 
 Wed, 31 Jul 2019 13:06:08 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id e3sm12703871vsp.6.2019.07.31.13.06.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 13:06:08 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: catalin.marinas@arm.com
Subject: [PATCH] arm64/mm: fix variable 'pud' set but not used
Date: Wed, 31 Jul 2019 16:05:45 -0400
Message-Id: <1564603545-14776-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130610_066900_608C5844 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
Cc: Qian Cai <cai@lca.pw>, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GCC throws a warning,

arch/arm64/mm/mmu.c: In function 'pud_free_pmd_page':
arch/arm64/mm/mmu.c:1033:8: warning: variable 'pud' set but not used
[-Wunused-but-set-variable]
  pud_t pud;
        ^~~

because pud_table() is a macro and compiled away. Fix it by making it a
static inline function and for pud_sect() as well.

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/include/asm/pgtable.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 3f5461f7b560..541cb4a15341 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -447,8 +447,15 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 				 PMD_TYPE_SECT)
 
 #if defined(CONFIG_ARM64_64K_PAGES) || CONFIG_PGTABLE_LEVELS < 3
-#define pud_sect(pud)		(0)
-#define pud_table(pud)		(1)
+static inline bool pud_sect(pud_t pud)
+{
+	return false;
+}
+
+static inline bool pud_table(pud_t pud)
+{
+	return true;
+}
 #else
 #define pud_sect(pud)		((pud_val(pud) & PUD_TYPE_MASK) == \
 				 PUD_TYPE_SECT)
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
