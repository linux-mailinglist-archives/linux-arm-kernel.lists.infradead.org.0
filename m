Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E7B8E04C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 00:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFylpyQ2588ru+2Cf5f0cJ/vGxTQU+/tPL1xSgH0pfE=; b=U2MNQkGSd44Ele
	oBP62OIAFtqH41GLoexVC7MzR6/ddOd9AQPh7C1tziiqymjtmneSq4bcZF+vQ4tdiWO/6gVszwEdn
	oh1Auur2d8yzSMfIj0XW8S5pRU/9rhLFuEmQe9UUyJXZkV3I+/Ufgj/X3ZsN4UWuka4qkkjqTVXGs
	Cg72pXqz++sp8c17V3iC3hwHlPK08U81bPNhBAvoH0QzaUpHruy7Sa27d2tUTo4c2mLzWW0xZjJsx
	hCiAeEoSGURdBDhbEvtk7ykhd1UHZsFKai45poSQRFRDI3z5zIAAeCp1lV7kiwYZMH8rFl4o5kOT9
	BkHQOIVrf44RTC1UgVXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy1Oa-0003RW-1C; Wed, 14 Aug 2019 22:05:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy1OM-0003Qn-2u
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 22:05:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id e11so288010pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 15:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zGCahEylBwx9+hrUl6JBv64qJITZ7AIfmMEaH7B2Nfg=;
 b=KNxFr9QT2oHk0ee5GI2IjIkLTldwP57yZGwcnjUEsIx3OB6B0cmtOER71JKAynaxAl
 tI28WVuAQNFlKsPnyqKGlZnvq7stwRv5qOx8V+A8CfeEzpCSJrEDgGxpC76R/mjugfZV
 cfj3AMX5FF04HK8PouDp/LkA+AYBdKeqGW7mI9yywFHfFa+D9mW3dX3slJb9DT3Vb2nB
 z1VC/a8ZneW4oXJPYnEqJeDKPyPYqbkfh/2OJgcLihAGqC7Bk8dISekepsMevjddKfwG
 JwbAp2kne42JJ1D+FPohAKaeYVSHgGwpEG5iS4sn8vtrJGrv6DbWWHa+MfhexA3EwLHf
 RGjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zGCahEylBwx9+hrUl6JBv64qJITZ7AIfmMEaH7B2Nfg=;
 b=HyrhnNG4MifipjiYlB70N5mfPsYVq0iLkgGh/11KAepLVn/kdymPRxkbHOe0DPKDfE
 Ax8AEuVPrGN5zh8A8S7wEoGo5LQfLg/LcDq4PoHq2IDTM1PVppFAFt5DHR4XWfDz86gp
 jo+mcDbKQcMDHZ3vHuBBgNY9witWdiutB+dcXj8Ffxo4v4A/lKT3xrrIbzLYHYVuR4RK
 pHLHfJO9OkZ21+fz+WUgeXitaVrhnaBhSHlaUNKHiLHWgPlxjOPqs7ydk3e1vToXC9Yb
 Rs0c1QRQaPRnUSlSl2DMV38jPn/Ck/6hCYbIQV5oS7enu3mgEAQ+M57Sgd+6ayKMUTDW
 +O8g==
X-Gm-Message-State: APjAAAWRmOVMCeDmqrkTcUVa/BTGWS2c+CkymWleci59ue82guVA0ilE
 p7RlGAxodkeftT1/AoeMJWs=
X-Google-Smtp-Source: APXvYqwdj2exVMetPPaW54oofiik0neX5PkaF4gcffTO1xCR5P3KzJE/Uy1GZgX/vn90YM4nR9bKlw==
X-Received: by 2002:a62:e901:: with SMTP id j1mr2192946pfh.189.1565820313296; 
 Wed, 14 Aug 2019 15:05:13 -0700 (PDT)
Received: from localhost ([100.118.89.196])
 by smtp.gmail.com with ESMTPSA id g19sm968879pfk.0.2019.08.14.15.05.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 15:05:12 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 1/6] arm64: export arch_sync_dma_for_*()
Date: Wed, 14 Aug 2019 14:59:56 -0700
Message-Id: <20190814220011.26934-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190814220011.26934-1-robdclark@gmail.com>
References: <20190814220011.26934-1-robdclark@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_150514_132183_A1042418 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: Rob Clark <robdclark@chromium.org>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, Joerg Roedel <jroedel@suse.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Clark <robdclark@chromium.org>

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 arch/arm64/mm/dma-mapping.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index 1d3f0b5a9940..ea5ae11d07f7 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -24,12 +24,14 @@ void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
 {
 	__dma_map_area(phys_to_virt(paddr), size, dir);
 }
+EXPORT_SYMBOL_GPL(arch_sync_dma_for_device);
 
 void arch_sync_dma_for_cpu(struct device *dev, phys_addr_t paddr,
 		size_t size, enum dma_data_direction dir)
 {
 	__dma_unmap_area(phys_to_virt(paddr), size, dir);
 }
+EXPORT_SYMBOL_GPL(arch_sync_dma_for_cpu);
 
 void arch_dma_prep_coherent(struct page *page, size_t size)
 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
