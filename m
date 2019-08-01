Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11A97DE35
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cXYCMYF7IjqG0fiISbssvWgY/ML49wUa+6h3i099paM=; b=lR2
	f6tJYvDi3uQZNeRE8JngT7N5571Al2TjAmiVysnl6ERM7Ty+j5sb2kTbSWTefiqEps0TiEQD7Pc0J
	o52DulAa8AYj2vOj5jI/TgqN/3FkZ5bu69cLAULKItebAKheFPtjJyeotj0yCrk5xAfp1HLcIUwwC
	eIJHysXO1dxU2jqvD3h2zZgYcFJHFOq4YNc/NdWlD2UZ8UzVpkJqPqzOmCYkL7AP3ttT0rT5cH2EA
	hfFST0kXNYqBmbeDs5gLo4HW6BBlxbkXRFuzuIKN6wljJS0ohq7EBSPKuqK12zIMrV5EbgPhQzF7U
	zRUtD/P5jH6sTMHAcywno0+tnG/XUxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCN1-0002wn-W9; Thu, 01 Aug 2019 14:47:56 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCMm-0002rt-9e
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:47:41 +0000
Received: by mail-qk1-x743.google.com with SMTP id g18so52207680qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=230s3ChFPRc4aRDJM4ggG97b31ayoZtf71ejiTiSkjo=;
 b=LejEUzoEVFEhSDCDH1H8Ri6NTYd+EQ93Bl/JO+hFoztUU8LZE/3ThN3ckZztuH/w1v
 9ZBKE0O7YssDOoH1hgL0JQ0pwQ4Tviu5kZ5YskORAs0iZ0+ltBuEKKnhLwhVfoBLyPfz
 d3Etk+ubEBLubY4IdfrS7mP66VUO9gIN8dQBHoQiV1U2dwuvTnBOWlcfbBMbBry5Emjx
 BZLpm9BLNXjMfjYY2AXpHp2FMBW9IHG9JC/MUR6Ray/aqbZgZs+McxqDbeFLvx96PlRU
 4vTWs2/AXl3PmmsA6wFbYZsVzZ/sHRBXrzLSDZRCzYvlG5U6RnMQCkeKXlij42mY/v7e
 ORuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=230s3ChFPRc4aRDJM4ggG97b31ayoZtf71ejiTiSkjo=;
 b=F2NX78+DJJPwc8uWxZavwURpo75b5HTkA6tqgKEDQdf+R470+Eamcw3cO+ZX88OHRB
 VWWTejlZ+FzG4/q2M9E+Xxlupm5GAev+vxTaN0hDfq9HR7ONIF0HtpoSCyGF350myw5s
 iUfyYWqjzfrUx9SHmQaOo/g1HvcISoshJGbwgmgXPk/VcfbuRd+9leTfs+lXGQbf9isC
 rlaXbDMdQgKnya4jnwMS96Hd2IxkI9rZH8RH7lAzIroXa6BhRv2VSZxnZBJNeTrNchjG
 m7f6IK5vJleauUWMg0zK/MCmuyV2FqmDw2f69YW4o/BvpxVY7zCqmipnpjOky3G0R2h0
 5aDQ==
X-Gm-Message-State: APjAAAWbGmvrbbu/ueA561tCw+8VFDzerr1IRLsQ2HU5xfJJIq2mBXgV
 vCeu58Bec39tx6XBwm0avyj4rw==
X-Google-Smtp-Source: APXvYqwHfUt80l0BXUJpBGTFwk3Bd4gQ46/mlKzXrLecWYywA/07oGtfuHM8Qz7nWtC7/qhxbBwNVA==
X-Received: by 2002:ae9:e30d:: with SMTP id v13mr83907407qkf.148.1564670859058; 
 Thu, 01 Aug 2019 07:47:39 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id s11sm29605818qkm.51.2019.08.01.07.47.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 07:47:38 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH v2] arm64/mm: fix variable 'tag' set but not used
Date: Thu,  1 Aug 2019 10:47:05 -0400
Message-Id: <1564670825-4050-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_074740_416151_758E6339 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Qian Cai <cai@lca.pw>, andreyknvl@google.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, glider@google.com,
 dvyukov@google.com, aryabinin@virtuozzo.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When CONFIG_KASAN_SW_TAGS=n, set_tag() is compiled away. GCC throws a
warning,

mm/kasan/common.c: In function '__kasan_kmalloc':
mm/kasan/common.c:464:5: warning: variable 'tag' set but not used
[-Wunused-but-set-variable]
  u8 tag = 0xff;
     ^~~

Fix it by making __tag_set() a static inline function the same as
arch_kasan_set_tag() in mm/kasan/kasan.h for consistency because there
is a macro in arch/arm64/include/asm/kasan.h,

 #define arch_kasan_set_tag(addr, tag) __tag_set(addr, tag)

However, when CONFIG_DEBUG_VIRTUAL=n and CONFIG_SPARSEMEM_VMEMMAP=y,
page_to_virt() will call __tag_set() with incorrect type of a
parameter, so fix that as well. Also, still let page_to_virt() return
"void *" instead of "const void *", so will not need to add a similar
cast in lowmem_page_address().

Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: Fix compilation warnings of CONFIG_DEBUG_VIRTUAL=n spotted by Will.

 arch/arm64/include/asm/memory.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index b7ba75809751..fb04f10a78ab 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -210,7 +210,11 @@ static inline unsigned long kaslr_offset(void)
 #define __tag_reset(addr)	untagged_addr(addr)
 #define __tag_get(addr)		(__u8)((u64)(addr) >> 56)
 #else
-#define __tag_set(addr, tag)	(addr)
+static inline const void *__tag_set(const void *addr, u8 tag)
+{
+	return addr;
+}
+
 #define __tag_reset(addr)	(addr)
 #define __tag_get(addr)		0
 #endif
@@ -301,8 +305,8 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define page_to_virt(page)	({					\
 	unsigned long __addr =						\
 		((__page_to_voff(page)) | PAGE_OFFSET);			\
-	unsigned long __addr_tag =					\
-		 __tag_set(__addr, page_kasan_tag(page));		\
+	const void *__addr_tag =					\
+		__tag_set((void *)__addr, page_kasan_tag(page));	\
 	((void *)__addr_tag);						\
 })
 
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
