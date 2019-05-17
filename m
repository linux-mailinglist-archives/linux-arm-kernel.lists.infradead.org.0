Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA18921ED0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 22:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S7skf22O5u0bb55hOewyl4vfZTPyqkvD11ABmHmkEY0=; b=n7jq2dETcQ5icr
	oZLQktk+cYg/T32V2t2U+h1djq1FXWCw1kEMCttKWAroCm+iiVcUdQH0brlMGJSluYomXuthohe40
	FO9hyGP0kHE6pXET+5ukkY4llMskt41341wy7ujnEgV1RFTPsG2iSHrcxsHreA5diGDgMn2G273aN
	SZ5dEKZ8SfnIqZ2P5R533JzehSPmNpliPnTEuCM08ja6EcmP06Xd6Lx8kH44E4vrc2F8RVKRKH9Hl
	dWP2aPMVTISculPO4itRpyd1c8yT4M1JaQgGTepr2lYmn6mdQMdABrszU61H4KCK84yttZZ4ahV8X
	YBXEFOaOvj+3xUFcl8Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRj1x-0007r3-DQ; Fri, 17 May 2019 20:00:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRj1o-0007qH-VY
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 20:00:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id w22so3770216pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 13:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lg0scq7ATtl+Uy4MZvq90qbS0KQJXUTHcmarZyhdZgw=;
 b=a4/CLRN7zdrzGXpuqcZ1iDrmfmc9ztK6BC2fcst1/mvDKJc+gPdwvVLz/qGbNTr76N
 vOQe7e4fiR9CSIUKPNfGC1eoYJrlj5eFtt7lHZdzNw4sacC6fB3RrAs/jcrKlL51iZXr
 vN57FCbyhFZO40ehms0IlL1jDfdHmofz/5X6LywNZxrupl626tUU6EAMWXqNOGFYCjQW
 /Rs6S84mgbAuIsUM2nl98kmaGWD0AODgKCyBhNlwWr27BPUEtzsRHLa4LQqtWFsHsqEu
 kGEoA+9dX8LtjxHhbbYljkkDNZ5PUmMktPw+JrsZTwZBSpcNTWoyv8ZJlYQUi0pbTryC
 H2lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lg0scq7ATtl+Uy4MZvq90qbS0KQJXUTHcmarZyhdZgw=;
 b=HVmlrjQBmQsW1LRVZw5WEy/n7tBqx3iqu7jPXB7+fNlgU0i6OIMJQpO/DkvmsYqsTp
 fj+zh15DrqLuRc3UNEI1rGjozsVGjwyBfD1w6XGxKPJ+xmBXzQIJj6bLIztp109jgKnw
 k7LCUnQPBP4roaw0kICBtbexQC6CQTZXHIK0rG+yAfZxec4moeRIo720JfoCKeMjG8IX
 nIe0ffeJDMMQ6hfMwfk8MS4vQukIdxJ3PEZ/5H85LcZA7QXQq/MqdS+Pow2rgUnt2Edb
 SkDRxbewnPDBXgN7yJ1qbZ5p066GprOU9WoYzaBW+aKK37OW5xu6lVJtMvheBTn78Rzk
 HLkw==
X-Gm-Message-State: APjAAAVpWztkVXtVmN3BVbKaaDQpkVEPKSU2jLxfdnYnLAN7nmgv14Qz
 SHfAQ7gw7xPIAMKGKvhsVpyycg==
X-Google-Smtp-Source: APXvYqxjdaYTTQoM3b44xM6BSnFtcVQd0tiRcNbTAGEcMeI4R7/yqyItL2FOpJPIfhv4WODwmWYhqw==
X-Received: by 2002:a63:6ac1:: with SMTP id f184mr59764281pgc.25.1558123226574; 
 Fri, 17 May 2019 13:00:26 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:0:1000:1612:b4fb:6752:f21f:3502])
 by smtp.gmail.com with ESMTPSA id k13sm4369739pgr.90.2019.05.17.13.00.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 13:00:25 -0700 (PDT)
From: Mark Salyzyn <salyzyn@android.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] arch64: export __flush_dcache_area
Date: Fri, 17 May 2019 12:59:56 -0700
Message-Id: <20190517200012.136519-1-salyzyn@android.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_130029_041743_CDAAD6BA 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will.deacon@arm.com>,
 Mark Salyzyn <salyzyn@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some (out of tree modular) drivers feel a need to ensure
data is flushed to the DDR before continuing flow.

Signed-off-by: Mark Salyzyn <salyzyn@android.com>
Cc: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com
---
 arch/arm64/mm/cache.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
index a194fd0e837f..70d7cb5c0bd2 100644
--- a/arch/arm64/mm/cache.S
+++ b/arch/arm64/mm/cache.S
@@ -120,6 +120,7 @@ ENTRY(__flush_dcache_area)
 	dcache_by_line_op civac, sy, x0, x1, x2, x3
 	ret
 ENDPIPROC(__flush_dcache_area)
+EXPORT_SYMBOL_GPL(__flush_dcache_area)
 
 /*
  *	__clean_dcache_area_pou(kaddr, size)
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
