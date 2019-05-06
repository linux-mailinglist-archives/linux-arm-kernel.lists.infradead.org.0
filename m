Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3AF1560D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 00:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AhqLhJEptX43o7m3STvKkA70j28H7nEfquEeEISXQh0=; b=lVo
	6ygLztE8hzA1/E343RGDHJ85BRIkWT/SdKsi2QUziTJPxhvPLcMKNH54Z9/57XEtaRzqVHE8mdmhy
	iz0FCfU0tPlU6YibD8jxooEOmhKUW6TKBSifg9cvAiFqFlew/1dU3QnWi25X3FyIqqExgjOvtBeZ6
	KoeC4rsClzajKOiXt52DuZZ/ny6KyPjdK6aC9GcESRKIJQL5RppRVeeP8t75lc32umBMyPMbkDJTC
	Ux4s/v3Lf7WPueEV9mSqvcSYbczLJ2mNI9QI33q0B5+EqODTofiLsdTrNjgr+XxuMIJNr1EByf9gt
	xXMsYeMj1bX7zpaUGFZVI1gFKUajH2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmD7-00076F-Vg; Mon, 06 May 2019 22:35:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmCe-0006YX-Ge
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 22:35:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id j11so7489724pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 15:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MVtT3kQLs0YjL3YNGwUnTq2ZujgVqV6tZnKeBQ8kJfI=;
 b=uB8dffVJJW5NeI5rCGx3da6F4jQci4VTRz22kuwU4hi3unN6J9ULTlXATxqPum8Jpl
 bcbHoKGoYjsfClP5H6tLnMuRkPmQNUh+Yt4guhdrAvCRbzDMLT7ipAON5hWEBOwf7c5l
 T7c77DumktpTdf27dGyjUSwYN4jYakEhYUUV7I3kwQBXTv5DKcZRCvHR4BhQfxAzjLM3
 gR7nB8FZxHhp/YPbpfOBOcRfygWN1f55At0QE5FNWu/C4qcdcr3V/BE/4VkpxrTco01X
 4Zb+m1OyUCI1SLp+Cy+zJdnRRkDEY7fvi5diOXauqjqZCbSEw03lwMlTgupBKspsdMdh
 nXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MVtT3kQLs0YjL3YNGwUnTq2ZujgVqV6tZnKeBQ8kJfI=;
 b=aWvrQpzeWujoDmmCJ+FlnmHqNEXp1BmWEqNyszX6qoqS2QUUh0Su6/oTtOUPYzZ0fp
 J80nOIQoUb6WRhaWiBu5+pM02RVu7kUP5k74IUS1FVQVWNOjcUZ94j5Lk02zH2Stb5Oe
 5tcv401L2UR0zujKghEGHMzrqlpG/lhkzZseRrzCI1+3ErlowFYVK5UG2rJzcZlhWdsY
 08hiOtbBlPihoVw3YhhGnYcUUjmMmIjqdWGV2ehIevU9x6LOqyGSNwgId2NvUz/m3B+C
 JQuouedsyL1iRwtsTQ/DqXy5CwgV+CDVVBFmxSNsUBvyILDRbXxOOLeEmQ/6nDQ+KLnK
 Ev3Q==
X-Gm-Message-State: APjAAAXAkF9vJNyKnlsqXxoHp2BzbavY7oR/RGN19+eP+s6gTvFQQcdF
 bzSM/MHOq16BQnerMHSGWFU=
X-Google-Smtp-Source: APXvYqzdcCq3Dtjv+AmVg2+uqx+O48/4UFPG2DQ1TKHu/jB/+4fF04UNjl+KcQMkCu4W3YsBF5BhbA==
X-Received: by 2002:a63:3dcf:: with SMTP id k198mr16016305pga.60.1557182114439; 
 Mon, 06 May 2019 15:35:14 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id c19sm14254976pgi.42.2019.05.06.15.35.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 15:35:13 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [PATCH v2 0/2] Optimize dma_*_from_contiguous calls
Date: Mon,  6 May 2019 15:33:32 -0700
Message-Id: <20190506223334.1834-1-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_153520_551504_99A5D0A6 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

[ Per discussion at v1, we decide to add two new functions and start
  replacing callers one by one. For this series, it only touches the
  dma-direct part. And instead of merging two PATCHes, I still keep
  them separate so that we may easily revert PATCH-2 if anything bad
  happens as last time -- PATCH-1 is supposed to be a safe cleanup. ]

This series of patches try to optimize dma_*_from_contiguous calls:
PATCH-1 abstracts two new functions and applies to dma-direct.c file.
PATCH-2 saves single pages and reduce fragmentations from CMA area.

Please check their commit messages for detail changelog.

Nicolin Chen (2):
  dma-contiguous: Abstract dma_{alloc,free}_contiguous()
  dma-contiguous: Use fallback alloc_pages for single pages

 include/linux/dma-contiguous.h | 10 ++++++
 kernel/dma/contiguous.c        | 57 ++++++++++++++++++++++++++++++++++
 kernel/dma/direct.c            | 24 +++-----------
 3 files changed, 71 insertions(+), 20 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
