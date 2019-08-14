Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0873B8E067
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 00:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayz0n6mw0ufVU42n9ICXEzcUBvwQX7NvU4BlndA0tWI=; b=MpzBUJETdKZj/T
	O9u08ROb/he9T1aYvmlLHW1eo2kAT5hnZof8T+Si/lh+HKZr7gdNad3M3P7Zmb1irZiXyhO+8b8kp
	WY1h+fAu3SK/jfnn2t15l/ahYQS7mdFJwpi+XXwzpk5tN0i6JqyMblzAhZ+haXYPF8eMUT3la84Aw
	1LoZ+8CEWOSfk3Uu7qBqQEOXPbcEQb+CMWOht7qcGJniJgzDT6xvTwiXnMh2TvZHTGhrog+McdvIb
	7oMd9Ld1ZKzlTIpW0NK1EU1uJeIV72G2VKAC5uhmQJmj1QJ+iqKZQGtgVAsCQSsjftvOCSjZFpYFS
	T/vSsrnf+WWO6hRr31VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy1WR-0006Sx-7A; Wed, 14 Aug 2019 22:13:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy1WD-0006Sb-JO
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 22:13:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so214549plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 15:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o3iTgpB3GXZ+kQcPnDKxJUeeBPOFZQS1HDP+dtSl8iI=;
 b=HEFmOTX7vqz6H06xnoRwJnyjwS4ngqlcblSxxBe9uJf91C2C3l3H3afY81WwkxEetJ
 EbUuQcyViX1xj4UfRyAAAdKQkMJMp+A+qWSGvq1zWUQw8DQ77jCsLpCgcMhfLo6nNVda
 wPT3QzNUctnrmjktXM3EnsOkJ9WFmmfmF6P3JP5768lVtArSlAJdr5XkaQydkdBmUDdH
 uDi58nt19hPwUpCeJaQPKGXa/z2gZnqlXC+ryopFfLScSWgENEVIXSevTZyjazE3ppis
 zLF2GWdAmdB59Sq/EJsbTmRz5IiKtqn37DU/qrZVhnWBWkDLht8AheY3rvNIjk4LdN7S
 2yNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o3iTgpB3GXZ+kQcPnDKxJUeeBPOFZQS1HDP+dtSl8iI=;
 b=Z2tbELAFr62/vc6nn/M94ozC6ystyHYzUxFoDYnoGJxy/q0XKKotOOLn1BSlTMSQkn
 NMOjig2iig2DmVlF0FzX0Wj3+k9ejchosSJaN3Zl7xwej9CLvS5pGJIANja8i0aV4XhS
 cHi3iSRRcEHPown4sLLzSchs2muJJ4bqvQgvdfLgrquLuJV2Rd8U+NczmXAEtPYWyeDj
 Ic4Mfw7zT0KnDgg4WyjpOIDOXXc9+dBPuJycMzbczK9F/GRjzKUXBbHxDHCH9OY85V5e
 9Mr/8ZGud6EelAzfzYm72Hgb+ogHM6830zLIJkzrIOS+HzC/j0Dq+TXpUvAPTOw7C/RH
 EFxA==
X-Gm-Message-State: APjAAAXtt7ns9DI68MA/1eAfxHnFOFmgL94ddBYfrPaDHqkXXHkluCym
 UNb4xd4WRPhLJO386NTrN5Y=
X-Google-Smtp-Source: APXvYqyti+vq96Q0pE8Yd5FkzLw83ZjuNfSd6SNA8pgDAWZgNSvONObYFjog77tG3BgdbQT4MUollQ==
X-Received: by 2002:a17:902:ac87:: with SMTP id
 h7mr1561600plr.36.1565820800768; 
 Wed, 14 Aug 2019 15:13:20 -0700 (PDT)
Received: from localhost ([100.118.89.196])
 by smtp.gmail.com with ESMTPSA id g1sm633892pgg.27.2019.08.14.15.13.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 15:13:20 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 4/6] arm: add arch_sync_dma_for_*()
Date: Wed, 14 Aug 2019 14:59:59 -0700
Message-Id: <20190814220011.26934-5-robdclark@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190814220011.26934-1-robdclark@gmail.com>
References: <20190814220011.26934-1-robdclark@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_151321_642676_B8AF44E2 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Wolfram Sang <wsa@the-dreams.de>, Linus Walleij <linus.walleij@linaro.org>,
 "Wolfram Sang \(Renesas\)" <wsa+renesas@sang-engineering.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Rob Clark <robdclark@chromium.org>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vlastimil Babka <vbabka@suse.cz>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-kernel@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Clark <robdclark@chromium.org>

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 arch/arm/Kconfig                |  2 ++
 arch/arm/mm/dma-mapping-nommu.c | 14 ++++++++++++++
 arch/arm/mm/dma-mapping.c       | 28 ++++++++++++++++++++++++++++
 3 files changed, 44 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..a48a7263a2c1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -18,6 +18,8 @@ config ARM
 	select ARCH_HAS_SET_MEMORY
 	select ARCH_HAS_STRICT_KERNEL_RWX if MMU && !XIP_KERNEL
 	select ARCH_HAS_STRICT_MODULE_RWX if MMU
+	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
+	select ARCH_HAS_SYNC_DMA_FOR_CPU
 	select ARCH_HAS_TEARDOWN_DMA_OPS if MMU
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
 	select ARCH_HAVE_CUSTOM_GPIO_H
diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
index 52b82559d99b..4a3df952151f 100644
--- a/arch/arm/mm/dma-mapping-nommu.c
+++ b/arch/arm/mm/dma-mapping-nommu.c
@@ -84,6 +84,13 @@ static void __dma_page_cpu_to_dev(phys_addr_t paddr, size_t size,
 		outer_clean_range(paddr, paddr + size);
 }
 
+void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
+		size_t size, enum dma_data_direction dir)
+{
+	__dma_page_cpu_to_dev(paddr, size, dir);
+}
+EXPORT_SYMBOL_GPL(arch_sync_dma_for_device);
+
 static void __dma_page_dev_to_cpu(phys_addr_t paddr, size_t size,
 				  enum dma_data_direction dir)
 {
@@ -93,6 +100,13 @@ static void __dma_page_dev_to_cpu(phys_addr_t paddr, size_t size,
 	}
 }
 
+void arch_sync_dma_for_cpu(struct device *dev, phys_addr_t paddr,
+		size_t size, enum dma_data_direction dir)
+{
+	__dma_page_dev_to_cpu(paddr, size, dir);
+}
+EXPORT_SYMBOL_GPL(arch_sync_dma_for_cpu);
+
 static dma_addr_t arm_nommu_dma_map_page(struct device *dev, struct page *page,
 					 unsigned long offset, size_t size,
 					 enum dma_data_direction dir,
diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 6774b03aa405..8ead93196194 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -979,6 +979,13 @@ static void __dma_page_cpu_to_dev(struct page *page, unsigned long off,
 	/* FIXME: non-speculating: flush on bidirectional mappings? */
 }
 
+void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
+		size_t size, enum dma_data_direction dir)
+{
+	__dma_page_cpu_to_dev(phys_to_page(paddr), paddr % PAGE_SIZE, size, dir);
+}
+EXPORT_SYMBOL_GPL(arch_sync_dma_for_device);
+
 static void __dma_page_dev_to_cpu(struct page *page, unsigned long off,
 	size_t size, enum dma_data_direction dir)
 {
@@ -1013,6 +1020,27 @@ static void __dma_page_dev_to_cpu(struct page *page, unsigned long off,
 	}
 }
 
+void arch_sync_dma_for_cpu(struct device *dev, phys_addr_t paddr,
+		size_t size, enum dma_data_direction dir)
+{
+	__dma_page_dev_to_cpu(phys_to_page(paddr), paddr % PAGE_SIZE, size, dir);
+}
+EXPORT_SYMBOL_GPL(arch_sync_dma_for_cpu);
+
+/*
+ * arch_dma_{alloc,free} fail-stubs needed to avoid link-errors in dma/direct.c
+ * (which is not actually used on arch/arm)
+ */
+void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
+		gfp_t flags, unsigned long attrs)
+{
+	return NULL;
+}
+void arch_dma_free(struct device *dev, size_t size, void *vaddr,
+		dma_addr_t dma_handle, unsigned long attrs)
+{
+}
+
 /**
  * arm_dma_map_sg - map a set of SG buffers for streaming mode DMA
  * @dev: valid struct device pointer, or NULL for ISA and EISA-like devices
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
