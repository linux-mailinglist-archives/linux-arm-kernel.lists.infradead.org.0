Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E154FAFA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 11:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sHUahc4+Yw5me13JXg/+jQYe9DVklDQxb6bLd6xLl8=; b=CarSQJzqbpJiH9
	/gMj04al/7WZpUiolB/WHNiokFhLH3iBjHHyJWjh8tErQ6wi5kVTbukcdAqbOoj0MznqrtoP5Nol4
	aJZuJ9afqC5NHcV+kH9PKAhZZ2f7vDzHstwApuBIWni72IP0kwGsyNvnCOeKeNnxosrn6rYs0RgLa
	kmZ3uleW+Bsm8Mc6xKZvvbYBv8WFHn1gsEYoFv2Yh4SggrZ8W8r8LL7q/vJ+YpimJFqmzn4Ibc6qt
	SG4UvElD8oySUuSMb04+prxOfI3SoCUR3/56qNQ/D4VaWQM6mMH0ufRo0JW/HB4HJawHl7zPf9Yo1
	EJW9UKaLQ3iqQ/kch33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hez4m-0001JS-RQ; Sun, 23 Jun 2019 09:46:21 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hez45-00017L-1M
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 09:45:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id p1so5209766plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 02:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wnbjux+HxNYOkFaRKhTh2OlBlr6Yjq4h8O9uCggPaW0=;
 b=nZ1uAEh/l/iH3XHgJ4JMzpVgG2BAjVP+Z4uP0nLctfLAj7AD/MmtA4UP0ovGBefyCX
 oi/eiKdn5rkb+cERs9Q8dHLJnb+ghuSMilmtfbCoNwrAS8IHMPARnfgHf8n9HMnua6zS
 +dxXBrDAzpJmAl2a5WPEl0+v9WftLVMpwR+Ki8qD5BEfrZHM6Z+MwQFgDagG17N4lc1g
 5g3hUt3k1Vuvyww7G6od0qdoZYGYGxV4ZJ+E/1RRGg0hnv1OCHh2088YsdWh7C6PTe+t
 pG1oasPj0r+b4PVWCRQ/vj3KXGeUaEOXaQbg+/rH4Dd4SeFUb1BicT4qR09j10i/WFg9
 yGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wnbjux+HxNYOkFaRKhTh2OlBlr6Yjq4h8O9uCggPaW0=;
 b=OpzcYG3ZqCjqADPX7AuCdj6Ns1ft5ZyHYdq9TG7AWOE+xIYV/zo71k+ROYSZRUc+a9
 97H544P9gFInWhHH5DdMRUJxi2xryX+ZsjFU+9SOvI71Em1b110EjwQLXc36goLT/d3z
 qlnnSQtb2k25vJ/3OlaBfDlsrvWXF9bSlTNAR25U9mnE5bn5pHIS/5bIe9ji+tVIcpM6
 FRZxoJw4mcWN5ViWMQz0R7KV3ZvEO+C5dP8aixQKanHqXDQ6K+3HrDUAheKKAzZeGRE0
 Mi276eEtfDInPXQ0pLQdsdoh0gMwSsmsX7PhLlMgXd8JdXBcQqKbhzrE5p3pS/euLifl
 VJ6w==
X-Gm-Message-State: APjAAAVDRXtLsdFVFXCdWFoSC5vmHnmPH7EOYMgKElCjsQ8LwBM6dQB8
 C0u4cr3iTxg4f5EyNIFy0to=
X-Google-Smtp-Source: APXvYqy03K0Z/MbKC+X3ScMS1p5nrg83Wdw/gotWUEhNW5qLKL0hUnw5AV3nEp2FnFcsXPqkd+XVzA==
X-Received: by 2002:a17:902:7c03:: with SMTP id
 x3mr117368602pll.242.1561283136704; 
 Sun, 23 Jun 2019 02:45:36 -0700 (PDT)
Received: from bobo.ozlabs.ibm.com ([1.129.156.141])
 by smtp.gmail.com with ESMTPSA id d26sm6181062pfn.29.2019.06.23.02.45.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 02:45:36 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH 1/3] arm64: mm: Add p?d_large() definitions
Date: Sun, 23 Jun 2019 19:44:44 +1000
Message-Id: <20190623094446.28722-2-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190623094446.28722-1-npiggin@gmail.com>
References: <20190623094446.28722-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_024537_562073_613A2625 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
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
This patch is taken from arm64 but is required if this series is not
build together with arm64 tree.

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
