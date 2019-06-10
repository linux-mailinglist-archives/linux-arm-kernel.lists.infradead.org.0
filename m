Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C5E3AE41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 06:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdcczmWfZ2nwnz8eXlgUMUH0OybkG8PoP0r4zpulzjI=; b=fIGB8X9F9YCj2Y
	Df9b5XNvg9jvaIyo+OsQOV2SZqwcU6TyssUuRJ0VCHNyAZX/lf3qH8Cs7YHViHVwp8NHH3ynGDsVs
	SZJWoDVOJS8CUtgZSBeMlEYN1BpLStUKRtFinyOoEAE69MB1KequOMtcFRbjytZ/1aQv1cb+kVckE
	erqnVQmA51Zte2sR7HdewroMWf8XQkcmtM1cmUkH2bLPDBi7N0bhSNXHaP85K/sclL+QS3SEqVSQ/
	y8OlyoEh91JuIRSJyjR3cq5lN9/RL3d3evUGHEaBTpaHX93gWHMh0pgjB9g+etwRWIvpRWoDhLBBS
	+EXbuGomeqx2PBqkkBjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haC7m-0002yV-KW; Mon, 10 Jun 2019 04:41:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haC7F-0002lh-16
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 04:41:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so4516981pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 21:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hJ710Nece9JdDCt+W2M5u9CutQXF450XDxzyXKmRa0k=;
 b=fz34JtvmsEEbz+uG7YHcmaePdpnvHSrr9OzG0Fob2Vn/ojNW3ILIH/7028H5WbNhf/
 ozwk2iOir1e6dQLEkGP6el5dRxrVSReFLnAqVr050NDHhkui/0LVdt5/hWGRB0Quv5ry
 MwcfC53bLQB5nw6tMMWHl5S2ClvoJ/dI4A6eJN0A4OvoGJ2OS3XhKIou0oDGf9rzwRs5
 jtggh0AqFgaHwYeCfg9cR6kagIuVfcpp+sfjWTqBHuVGTir0il8bOgANLRz3fwgf5tKL
 fn6NFsZYGYRUj/uudTy5p/8SjGhYPJ1jpLuoGku/u7LnyvT35k2ZkTlrj6CU6TrUNbP0
 qpNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hJ710Nece9JdDCt+W2M5u9CutQXF450XDxzyXKmRa0k=;
 b=j5yftuPe0IR4YRtFjexAaHKCzzKfImCEgc8t3Oe4whaI+e3LQj/zVSoYCNIE+52O/6
 k+aRbj/AB30yweWUtUFmvFNS40o9wnT2BN65vEg6rWu5suQAg1gQUiKi6kxLcz44bft3
 +1WiP1XneUlqtVs8Gk83oG9zeqEgbf4Jh4BglNLE2COgh39GHwk/NR+Yk5fo5q5Qnk7Z
 1gmV6TJdRuTofLRuEFyuGHH9bvkgWwW++G0m6tOCs3v3HvYIE/XstsEfwhn6aJedgWNf
 bo342Jl3hDYsvgPCGKownwRJoruV59Mr7ePDHGMY8ecVXuqpUXBY/DwwBxLopF3VG+Kg
 ETRA==
X-Gm-Message-State: APjAAAW++e02Fz7PyxDYSasy2MSLmf/45eDivUki+kvev5WDzLboCZFr
 MkZlHZ1nc82+GcrlSWZq/eSDeix6
X-Google-Smtp-Source: APXvYqz9ZBs8sn3RctkWOS+ZWyR8ZuOTeqNvx84zu+AkZf7kx8BtX4P+3MbV3oNpSvArhcN856sjFA==
X-Received: by 2002:a65:4544:: with SMTP id x4mr14322154pgr.323.1560141664470; 
 Sun, 09 Jun 2019 21:41:04 -0700 (PDT)
Received: from bobo.local0.net (60-241-56-246.tpgi.com.au. [60.241.56.246])
 by smtp.gmail.com with ESMTPSA id l1sm9166802pgj.67.2019.06.09.21.41.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 21:41:04 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH 2/4] arm64: support huge vmap vmalloc
Date: Mon, 10 Jun 2019 14:38:36 +1000
Message-Id: <20190610043838.27916-2-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610043838.27916-1-npiggin@gmail.com>
References: <20190610043838.27916-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_214105_073232_AE9B7F2A 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Nicholas Piggin <npiggin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Applying huge vmap to vmalloc requires vmalloc_to_page to walk huge
pages. Define pud_large and pmd_large to support this.

Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
---
 arch/arm64/include/asm/pgtable.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 2c41b04708fe..30fe7b344bf7 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -428,6 +428,7 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 				 PMD_TYPE_TABLE)
 #define pmd_sect(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
 				 PMD_TYPE_SECT)
+#define pmd_large(pmd)		pmd_sect(pmd)
 
 #if defined(CONFIG_ARM64_64K_PAGES) || CONFIG_PGTABLE_LEVELS < 3
 #define pud_sect(pud)		(0)
@@ -438,6 +439,7 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 #define pud_table(pud)		((pud_val(pud) & PUD_TYPE_MASK) == \
 				 PUD_TYPE_TABLE)
 #endif
+#define pud_large(pud)		pud_sect(pud)
 
 extern pgd_t init_pg_dir[PTRS_PER_PGD];
 extern pgd_t init_pg_end[];
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
