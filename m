Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7834B105B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 09:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FtBXYSYhYgPcgRPHUCdCPla+pd9D2Ck+3ILCY6Eh37o=; b=cf9vZmGwBq+3BI
	iu34051uyycwOF0bkiNMF7KNlwC7iOEmLdPxNCsLwyGGmMDWqW3UmVpvNrSfnA3aLS82ri0pUZg19
	0+8th79QcgamMwoq728tqDl6xQCZgLk5oWWwhRHH8Qh+i7iVM1Bh5ThNxJzNOUuUzqW2K/lcsEWey
	sk1jR+8ZJMkKhJDREYVX+mJ1U6dmO1HoW9xOSH40c/REGG4NtZ4FzRjAodU8IE2agd8AXPtz3FkL5
	I7O2z/N341LnFWCK9Ua2XdDzg/KCjE57W803zuA3NXie5ozW5uEhFlTwkkyGWIAyxo3t4NjFo6M9d
	FusQEhiqhiqyZUL+FzWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLjKw-0000mx-47; Wed, 01 May 2019 07:07:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLjKp-0000mU-Sl
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 07:07:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id 188so8250089pfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 00:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=cS7rJIaL8pwN44UnD0NGYAHiEv3VfG6a3NVrHHK0S7g=;
 b=h9aGZO9cksXANDPwTh7uZA1Ut4uD/u65eBW2yV1+jUaE1Sxf5hhwgTQWtUK7wmOEoj
 21/27g/I9OyridO3OCyAGaC0uu/vL/ZGPrPbtkEKhbfjX++WloCfMeVUH2Rlp35BZqty
 eTMxWu2ck8N2EaTEdIM5wYCdRvs/4YV7pphgDXqLgt0JnDqCth7en3UOSteQM9arEgj8
 /nPSIlcu1XeFdHY07F8XGAGHrJvCXTHBEA7FGEmJtu+HBMzX2BonAqITR5YoUDwBAu1C
 7gsLtnWq+lOZSSEf5cOFaGOArKFVA+/cD6FggSh3Ukq81WtrCUzKcFWj8nyg1kOP6NIu
 kCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=cS7rJIaL8pwN44UnD0NGYAHiEv3VfG6a3NVrHHK0S7g=;
 b=pqBQBTEtXMd2VdvlfO02JNprqqqtDB0RxOjGiSX1C1Pf0Pkc8iT+d9hnWN9ca5CUVx
 eE6FyVlxbj38/pDSewJymNUM09wYQU5olJZyJUPYZRQk2MqlJ2s2Y0px9tCWsSeZ3Nec
 KrvIcL0J9axtr4lpGlLnvtXNlOxfRQ+8UpoECAxRm6ujM/AbWYbqLoz2rGxw7VF0ngRm
 UWoNMuMTA0nJT7kTL8uZqFLC2VhiURF/7DRXnOVWz2dflW4993w/mzK9Z4RvOSZTVAXh
 OJKdSrTbHoz3E5yFsLD+4K0CU6yK4gBdL0ychS5XsHIr3OZLqq7xCn16BADU+dS7mlRu
 0VDQ==
X-Gm-Message-State: APjAAAXuJWjb6S3RqCTU4D66BOIppfpgFV12mI2yCqC2z3dwxuyvyhvx
 6aezs8bx2Jkb8gUlNA0jZsc=
X-Google-Smtp-Source: APXvYqwoUoswg+N0X7irtWbmVi8CGt3FJayjhGPhZnWvuH9T6Cbp6yIPc9tC0ZaglL48dyX3rxlj/w==
X-Received: by 2002:a62:5795:: with SMTP id i21mr49146617pfj.194.1556694438381; 
 Wed, 01 May 2019 00:07:18 -0700 (PDT)
Received: from nishad ([106.51.235.3])
 by smtp.gmail.com with ESMTPSA id q80sm71273674pfa.66.2019.05.01.00.07.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 00:07:17 -0700 (PDT)
Date: Wed, 1 May 2019 12:37:11 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: actions: Use the correct style for SPDX License
 Identifier
Message-ID: <20190501070707.GA5619@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_000719_955915_8DFEF92D 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.235.3 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style
in header files related to Clock Drivers for Actions Semi Socs.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used)

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/clk/actions/owl-common.h       | 2 +-
 drivers/clk/actions/owl-composite.h    | 2 +-
 drivers/clk/actions/owl-divider.h      | 2 +-
 drivers/clk/actions/owl-factor.h       | 2 +-
 drivers/clk/actions/owl-fixed-factor.h | 2 +-
 drivers/clk/actions/owl-gate.h         | 2 +-
 drivers/clk/actions/owl-mux.h          | 2 +-
 drivers/clk/actions/owl-pll.h          | 2 +-
 drivers/clk/actions/owl-reset.h        | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/actions/owl-common.h b/drivers/clk/actions/owl-common.h
index 5a866a8b913d..c000a431471e 100644
--- a/drivers/clk/actions/owl-common.h
+++ b/drivers/clk/actions/owl-common.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 //
 // OWL common clock driver
 //
diff --git a/drivers/clk/actions/owl-composite.h b/drivers/clk/actions/owl-composite.h
index b410ed5bf308..bca38bf8f218 100644
--- a/drivers/clk/actions/owl-composite.h
+++ b/drivers/clk/actions/owl-composite.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 //
 // OWL composite clock driver
 //
diff --git a/drivers/clk/actions/owl-divider.h b/drivers/clk/actions/owl-divider.h
index 92d3e3d23967..083be6d80954 100644
--- a/drivers/clk/actions/owl-divider.h
+++ b/drivers/clk/actions/owl-divider.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 //
 // OWL divider clock driver
 //
diff --git a/drivers/clk/actions/owl-factor.h b/drivers/clk/actions/owl-factor.h
index f1a7ffe896e1..04b89cbfdccb 100644
--- a/drivers/clk/actions/owl-factor.h
+++ b/drivers/clk/actions/owl-factor.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 //
 // OWL factor clock driver
 //
diff --git a/drivers/clk/actions/owl-fixed-factor.h b/drivers/clk/actions/owl-fixed-factor.h
index cc9fe36c0964..3dfd7fd7d292 100644
--- a/drivers/clk/actions/owl-fixed-factor.h
+++ b/drivers/clk/actions/owl-fixed-factor.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 //
 // OWL fixed factor clock driver
 //
diff --git a/drivers/clk/actions/owl-gate.h b/drivers/clk/actions/owl-gate.h
index c2d61ceebce2..c2f161c93fda 100644
--- a/drivers/clk/actions/owl-gate.h
+++ b/drivers/clk/actions/owl-gate.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 //
 // OWL gate clock driver
 //
diff --git a/drivers/clk/actions/owl-mux.h b/drivers/clk/actions/owl-mux.h
index 834284c8c3ae..53b9ab665294 100644
--- a/drivers/clk/actions/owl-mux.h
+++ b/drivers/clk/actions/owl-mux.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 //
 // OWL mux clock driver
 //
diff --git a/drivers/clk/actions/owl-pll.h b/drivers/clk/actions/owl-pll.h
index 6fb0d45bb088..78e5fc360b03 100644
--- a/drivers/clk/actions/owl-pll.h
+++ b/drivers/clk/actions/owl-pll.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 //
 // OWL pll clock driver
 //
diff --git a/drivers/clk/actions/owl-reset.h b/drivers/clk/actions/owl-reset.h
index 10f5774979a6..a947ffcb5a02 100644
--- a/drivers/clk/actions/owl-reset.h
+++ b/drivers/clk/actions/owl-reset.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 //
 // Actions Semi Owl SoCs Reset Management Unit driver
 //
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
