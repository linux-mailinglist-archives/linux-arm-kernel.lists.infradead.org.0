Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0046A17282C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:56:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Coaduv0wKWvn2UQ+F/zhZVjykMKAsP0nRRvP1osLJj8=; b=YmSa81NnpaGbsR
	79i/ZMuJM3KQrjhIoiOh+Max2RMO+C1euE6+Z/iJzl+022A8IMZCZvv53dzAVwFHRsxbGju751D1Y
	+WA0e8RqHN68n3z4d1orrarEwfhGumpiy6miR0261GnjI0VrvxPrxTkFOzWFJSzmyVi+3wcxDfo6G
	USFVU40eR9gfbjO4eZLxE1dYx75ybY14Pd5Ju3j/ms9ae1RQ87d3+n2W59hqgUPLpz6/EkXSJsPp9
	xLxHLAHKVbvBwwP0rWwZsSM7fxQ0wAsA4NkRoAM0O5pEutBtJHAecNhz9lhMktVAugIQtHpJ2kVw3
	HKPR6UUo0v2AJJ/HrbxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7OKI-0008OZ-4k; Thu, 27 Feb 2020 18:56:02 +0000
Received: from gateway30.websitewelcome.com ([192.185.196.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7OK7-0008Ny-QJ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:55:53 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id 9420225D834
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 12:55:50 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 7OK5js7Xo8vkB7OK5jn2kP; Thu, 27 Feb 2020 12:55:50 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oeJVRwr6+tzB7aIFz/Q1mFYLhzDIrqt7xOL5F5f6fNs=; b=ge/31r8dACB/Cl0FWauYBUzZ5m
 oc90GhNkdOQpJok8BkT5W0DXcA/RkRKPm0duOu833VwvCQrCrnR5FHSviGXMOGY3WNQHvAFnDGLiR
 Xvdof36uPbBsLQZIc3wfirz+avUAVe8QrPtK+KsV7qN5YQQA4ztkgzET3w8LSsoEJh/6J5aabJ+1Q
 pHMweR1dj7k/Oc9nfuX0MYvZhD9fw/htSuburtz/0m/6XlAQ3nRvPQJz2j+5j5dUnmbMbTpB6zsLX
 RaYNVsycnWn3sIHOtnboPzRPz/gg8kmw3XddeBa+pCK/feeKrIdUD9hJSWbMgQTE9KKnpqWsGOiCr
 dooFu8QQ==;
Received: from [201.162.168.186] (port=4092 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j7OK1-0046LF-GX; Thu, 27 Feb 2020 12:55:46 -0600
Date: Thu, 27 Feb 2020 12:58:37 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Barry Song <baohua@kernel.org>
Subject: [PATCH] pinctrl: sirf/atlas7: Replace zero-length array with
 flexible-array member
Message-ID: <20200227185837.GA4469@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.168.186
X-Source-L: No
X-Exim-ID: 1j7OK1-0046LF-GX
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.162.168.186]:4092
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 10
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_105551_944478_C1D92594 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.196.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/pinctrl/sirf/pinctrl-atlas7.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/sirf/pinctrl-atlas7.c b/drivers/pinctrl/sirf/pinctrl-atlas7.c
index b1a9611f46b3..50df9e084414 100644
--- a/drivers/pinctrl/sirf/pinctrl-atlas7.c
+++ b/drivers/pinctrl/sirf/pinctrl-atlas7.c
@@ -352,7 +352,7 @@ struct atlas7_gpio_chip {
 	int nbank;
 	raw_spinlock_t lock;
 	struct gpio_chip chip;
-	struct atlas7_gpio_bank banks[0];
+	struct atlas7_gpio_bank banks[];
 };
 
 /**
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
