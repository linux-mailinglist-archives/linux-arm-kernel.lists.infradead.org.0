Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8D4EE99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+neiqa80fI8Ctj7dIE+stPW3PVqU8D+UQMPNMBa6vk8=; b=phh
	WzEV6ULNtMWr2U8Lxc/+vSALXbtIyJX6QPpECRxM+lPssY/2lkLaxVzY66Z2/dnMPyGKWnWGbcd2a
	ovGAWEdjRcn1PpmdKv3do2AjiLqVvfdCiz+i8Bw6I2Z6INM2eMW4L2G7jPCDl2LEapSdsNTiRvqJK
	M8LqAS/ciE4O9xUEOL/OpYN46ETWWyEdfjWRoclb9RqdIpFrFEQBEJPp6mZQeY6acIfbciIvTepXC
	leYQ8sMENJoIyLQwYq7a82ULaSgKZN+80uT83JedSz4khZkCTkVthkk+IGnyxu2FhWC6h1wsBMUyK
	9NO5igeBi3rtuRVa2VP8ZODQnFKPH6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLI17-0006Ii-Ha; Tue, 30 Apr 2019 01:57:09 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLI10-0006Hw-BK
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:57:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id y13so6243116pfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 18:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=B3NugZ9TINdI1OI3FrmhQJTknBH3QXdWgtcaMz1fRrE=;
 b=XqwSqFIMy+BpZ4efc1taHt162C2WW2p4uw8J3gjvFeVMRGG0jSzSMC5xmLrNbcacwb
 kSZK6xHoUI8DOw1Rn0IJi7pOnOguOGYDs8nJd3/pYhhpJJwIX6AAhvP7U4ZCk5HucW0r
 wEtLypFJNVjRAy0V9h8rcEzU+AlOskOxc5qdwH4IyW+8UGKIB9ngyPx+R4jnN5B8bab9
 XlN+auwr8kV1zdzjaoNJyFMm3Xx9Q+BC1M2cEeEGlsJvt8oBRNxj3ngpNGKtqvXP2k/E
 geSlyyKH2M3Bblfe4P/DuWJYKIY4xHFOGq6pauv+9acGM3EgEuE6IMCqxFKdOvSxs2pL
 Y4Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=B3NugZ9TINdI1OI3FrmhQJTknBH3QXdWgtcaMz1fRrE=;
 b=dtCakwkZX+f6ClAmTVUELJQdoBiKZM+QYWanQMYPXL1kgcf61+/xf+nSk+Ut1PFEJy
 e+SbG+u5kB0i0FsUEj0/74knrsAZc8x9UOwoKFWVILEGmRmrzwbso96VwvvmUXFDvF5o
 lLaZhxdHdw0BKGInC6aFex6z5p3Mx6WQ3MMwXTCEUT7OJmw9g4ImH46JiDNWPxwuw54L
 i1/vqdtsFCKywc/i/p/PHltvnGaF+ddoJZtJ8fsfwa7YXgwFLkvCCPq1/WzltqaMbmo0
 D8QFeYEbKOQgwM3GN7pKw5ysTyNKBKmNMkXObwUM8ukTh/puR35ymENXPu+uKm5gH7rw
 e4RQ==
X-Gm-Message-State: APjAAAVlzX13cnYfHLXESYvF2504FP5KYbBOaYa9wV7pkEPoH9KavMlF
 uqHoSBskcmw376g4ma27zZk=
X-Google-Smtp-Source: APXvYqyq/ePAJdQfrFoIyaNhBIEKmUwzsYwFbKt20m93i9o3xKFFhfZk/XcMS+4PRI8PvCEezew/dA==
X-Received: by 2002:a65:4247:: with SMTP id d7mr18565472pgq.114.1556589421204; 
 Mon, 29 Apr 2019 18:57:01 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id a12sm36918995pgq.21.2019.04.29.18.56.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 18:57:00 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [RFC/RFT PATCH 0/2] Optimize dma_*_from_contiguous calls
Date: Mon, 29 Apr 2019 18:55:19 -0700
Message-Id: <20190430015521.27734-1-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_185702_408985_B7637892 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: chris@zankel.net, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 sfr@canb.auug.org.au, tony@atomide.com, catalin.marinas@arm.com,
 joro@8bytes.org, will.deacon@arm.com, linux@armlinux.org.uk,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 jcmvbkbc@gmail.com, wsa+renesas@sang-engineering.com,
 akpm@linux-foundation.org, treding@nvidia.com, dwmw2@infradead.org,
 iamjoonsoo.kim@lge.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series of patches try to optimize dma_*_from_contiguous calls:
PATCH-1 does some abstraction and cleanup.
PATCH-2 saves single pages and reduce fragmentations from CMA area.

Both two patches may impact the source of pages (CMA or normal)
depending on the use cases, so are being tagged with "RFC/RFT".

Please check their commit messages for detail.

Nicolin Chen (2):
  dma-contiguous: Simplify dma_*_from_contiguous() function calls
  dma-contiguous: Use fallback alloc_pages for single pages

 arch/arm/mm/dma-mapping.c      | 14 +++-----
 arch/arm64/mm/dma-mapping.c    | 11 +++---
 arch/xtensa/kernel/pci-dma.c   | 19 +++-------
 drivers/iommu/amd_iommu.c      | 20 +++--------
 drivers/iommu/intel-iommu.c    | 20 ++---------
 include/linux/dma-contiguous.h | 15 +++-----
 kernel/dma/contiguous.c        | 64 ++++++++++++++++++++++------------
 kernel/dma/direct.c            | 24 +++----------
 kernel/dma/remap.c             | 11 ++----
 9 files changed, 73 insertions(+), 125 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
