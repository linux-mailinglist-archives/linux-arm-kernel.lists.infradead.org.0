Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AD85B532
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 08:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3kfRBHVv2SvmoDE7ORCsOuatUWSyJD/jc19i4SP4JY=; b=SZCMeQ5W4INCrd
	B1UYHV6IddSmTOTaninxUUHoDlrve1NexTo+fVkNgkPUxGVkKDeY/1tJcLsi9YtelojIC9/vvjbu+
	JLXTd990+3ra90Y8ZlNNsSrToEgxu7vnYNEhzXKS54Ei1Hn3hI1WGGairv8QpTPO0XJWuqeL/X2ol
	tR5ZYCk5L+g0wM/NPfftdHvyl4SYj0uocTihj1RZ/wNYQCQB+LpFRjUGhBshT2Z88PUTYyFj1WZzz
	NV0HSmB3gD/v1fId6DoJJxdIuyyob5+U/0pBP2tROEnv5JLiV9Bugbu+YGIqJqlxRS1SvWep09sVx
	GgFv4JmoS0DU71dsACUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhq0G-0005nS-I4; Mon, 01 Jul 2019 06:41:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhpzi-0005bg-BJ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 06:40:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id c85so6055344pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 23:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pKOh82x9P2FXMy8MB5i8VNrUUku24zVBdhYruM45v1s=;
 b=Yv7ONmA4HXrBg5Z7fqXzGOQbgQwuhlK4G2llLAPL9hd//uUhAJCdLP1gC4MiqhQmS1
 PV4CZ1/6GPjUs6tQxXSl9GVwIuOpYlj0kPjLUd5KNaZDhIEToxG1Sa+JbI0gqbWYCnK1
 nlIT45EuZA6x+yj65DFrpUmE+ukUb3brmWRiJ0sEST0egchnVhKD3wf61QoTZodMZhmy
 k4LLY0TR+zKUetQRGdhUpKeJcCk0KpXMV/eM/4aPeAhRmDX3A00d0snpwA3wONNLJH4u
 fRpP7dt48AfYD+D5tlNpsUuYik0uEhm3cuSW3WNaRLnnooak0yNkr7b21OrBtbTM1gge
 bOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pKOh82x9P2FXMy8MB5i8VNrUUku24zVBdhYruM45v1s=;
 b=XL2a/QOZRIQJK5xtzWendUlFSeI/Rg6/sNx4FevHySAddYhUrg9bJxrE8XFbG0QYbV
 yA6TsdkNC1clVSFGOsvAk4hUEFhjpDUTmtcSxHWnUrctbb/tO6Og+GjeoIqA0UCNO9EE
 K58xSrCadCWB6gCIYSbEmOvqGI9sWWOkLtrfsaV/klb1cogLgD9dk7ad3NalicW4ThOL
 X/cg2D13BjFZoO/Zv/dArMMVmuRxwu118xPxGCMQEgTKpKr6W+oPRd+QIidyf80Du7db
 rnYoQlI87ikyof/Xe8HJPnAXXe/dflM6D7vtgxx4R0IAFU68QqrmyAZeDf0JJ3kSGQ0l
 HFlw==
X-Gm-Message-State: APjAAAWcVMwnCmUvHv9j5lurvzXYv0oI+xEySWG10z26XpYNclpFFuVo
 zMc+QNt5fen3lQPxHqYF8+k=
X-Google-Smtp-Source: APXvYqyuG0y2ZSl0o0Y8HuBhNNVpR47p1znHr/GTjxdAJLwOfhhJ0EB9nOQKOhPc/GH1Qv7SUWLDfA==
X-Received: by 2002:a17:90a:eb08:: with SMTP id
 j8mr14461754pjz.72.1561963253877; 
 Sun, 30 Jun 2019 23:40:53 -0700 (PDT)
Received: from bobo.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id x128sm24238285pfd.17.2019.06.30.23.40.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:40:53 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: "linux-mm @ kvack . org" <linux-mm@kvack.org>
Subject: [PATCH v2 1/3] arm64: mm: Add p?d_large() definitions
Date: Mon,  1 Jul 2019 16:40:24 +1000
Message-Id: <20190701064026.970-2-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190701064026.970-1-npiggin@gmail.com>
References: <20190701064026.970-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_234054_385892_B158FA8E 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Nicholas Piggin <npiggin@gmail.com>, Steven Price <steven.price@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev @ lists . ozlabs . org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

walk_page_range() is going to be allowed to walk page tables other than
those of user space. For this it needs to know when it has reached a
'leaf' entry in the page tables. This information will be provided by the
p?d_large() functions/macros.

For arm64, we already have p?d_sect() macros which we can reuse for
p?d_large().

pud_sect() is defined as a dummy function when CONFIG_PGTABLE_LEVELS < 3
or CONFIG_ARM64_64K_PAGES is defined. However when the kernel is
configured this way then architecturally it isn't allowed to have a
large page that this level, and any code using these page walking macros
is implicitly relying on the page size/number of levels being the same as
the kernel. So it is safe to reuse this for p?d_large() as it is an
architectural restriction.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/include/asm/pgtable.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index fca26759081a..0e973201bc16 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -417,6 +417,7 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 				 PMD_TYPE_TABLE)
 #define pmd_sect(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
 				 PMD_TYPE_SECT)
+#define pmd_large(pmd)		pmd_sect(pmd)
 
 #if defined(CONFIG_ARM64_64K_PAGES) || CONFIG_PGTABLE_LEVELS < 3
 #define pud_sect(pud)		(0)
@@ -499,6 +500,7 @@ static inline void pte_unmap(pte_t *pte) { }
 #define pud_none(pud)		(!pud_val(pud))
 #define pud_bad(pud)		(!(pud_val(pud) & PUD_TABLE_BIT))
 #define pud_present(pud)	pte_present(pud_pte(pud))
+#define pud_large(pud)		pud_sect(pud)
 #define pud_valid(pud)		pte_valid(pud_pte(pud))
 
 static inline void set_pud(pud_t *pudp, pud_t pud)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
