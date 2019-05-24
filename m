Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB6828FD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 06:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0BnrhGvl+bpayh0LX1NHX3yI9OidGyCz/EiowN8pYPg=; b=mq/
	px0XoYMkStkYZFAvBaPC90uuG4RCemqpEUxFV4YdUsBl4/twLMyuTdbGhXE10PiFVEHol7p41R+zB
	GI2XCz9RQx+Iai7zTsan9PIa4il7BqKl/z5/FOT1Qhoz1owp8ZOSlP5HqKxzeJkzpHlBA09OwhsgR
	luCSW/uyYS/SZiAfXn6kbYVgBh+417ZDQY0HUSIGwPXcSOu01syhUvsjyRD/R+MW9II0KG+kygxxC
	Ur04dVP8YL1STGxfa6GTis7vpmgaTqXSGgy/bZvVVZl3gmVgPgYpT6dIHryBxM4v3giT1Fa7FDn1o
	/NQYWPFsO2bnOxD3JQzra9f1OtlRnRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1V6-0000sT-9b; Fri, 24 May 2019 04:08:12 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Uz-0000r5-HM
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 04:08:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id h17so4291393pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 21:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=s74YDk11h63m3BV7XOfnkCuG6v9uaJVVe9rNVON22hw=;
 b=d4pWEaoDp8VDALdkCMCsdpaApDEtbf5qlmNVmtFaBu1dLqdJeDQAeAOVmLHxFoOH2T
 0KPvaAWTEKyeMBhm+4UC/dQvOjY/nwyM/qO/nbiRmBo9pAvmEWRw/GbN6v2yEXKE6Uif
 1IVZz6BJJxpjuO+gvH0PYvuK5AFQh4McrEeM76gok5/33Q0ciesPflsroAVXZ5CsyzON
 H9/F8sXGiqPEYQIxTFKTAnibA8qNWGGUiMepgWhsAhmj72HmkGQ6ip5T7JMixrDb59Q5
 1AG8HJWjKIuoZaWZHwFRH4weX2//KEgT50ICzsbyxb+ZFJk+oWktK+KDA2/H+LGKg1UJ
 zN0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=s74YDk11h63m3BV7XOfnkCuG6v9uaJVVe9rNVON22hw=;
 b=ABJKUMP2jH1ZCVL4pH+ywSsFGJX44Dxv6OrX6HnnI+kmwY4bAdf+RFnj/yKcOtBWjM
 a/QNMzjTF2yWO8C0uT5miGiyh7HmSOVE9BXrprPqNvB3jRD+2bD3gzau4NYzWRM4FTaa
 +fpXE/AA+YfZ6sp2avFfZTvngcxqQt2QV2Hb1L3dzvrtfo1d0IXh0VhuTAyFQCuU1+T5
 vk7KLGWhY59cWoR2isRIMndEFpAvH69djsPCKejsqikvmZqDqUqgjc1tlyEPNzDabTY7
 lH3T+SrMjqLtMJUVPtBEmTwxG7MPHd7CAQ+otve3L5KpiEKc5CtYBtVyDj73QzRGpbW+
 ieOg==
X-Gm-Message-State: APjAAAVJGC/lZ9wDPdKN0fQe3fDUacZsyXHlRsU9WoLwfvWTsLapx8nt
 tYn1u60GuAycI/nUAQbjEDU=
X-Google-Smtp-Source: APXvYqz7SgXlmeiaXSvQX7Xs4PBLb1OsSy441YSgpyHE/mSRMUQEJbvKztTfbmY/Z7v8FcGOYR8dGA==
X-Received: by 2002:aa7:9aa5:: with SMTP id x5mr18456270pfi.135.1558670882701; 
 Thu, 23 May 2019 21:08:02 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id e123sm786412pgc.29.2019.05.23.21.08.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 21:08:02 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [PATCH v3 0/2] Optimize dma_*_from_contiguous calls
Date: Thu, 23 May 2019 21:06:31 -0700
Message-Id: <20190524040633.16854-1-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_210805_594947_200FB507 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 dann.frazier@canonical.com, akpm@linux-foundation.org, treding@nvidia.com,
 dwmw2@infradead.org, iamjoonsoo.kim@lge.com,
 linux-arm-kernel@lists.infradead.org
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

 include/linux/dma-contiguous.h | 11 +++++++
 kernel/dma/contiguous.c        | 57 ++++++++++++++++++++++++++++++++++
 kernel/dma/direct.c            | 24 +++-----------
 3 files changed, 72 insertions(+), 20 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
