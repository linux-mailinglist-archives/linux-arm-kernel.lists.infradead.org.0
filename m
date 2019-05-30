Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D4D2FB96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 14:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Date:Message-ID
	:To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=WRNfXCwZJZlhCc4tS+mqeDZd+/5QjDm8tH+dSJaX2oA=; b=Ma8Oe/zLSeDbv7
	bsiZxcdmTwVqmVDxi5VycvUu4l2fmvbwQK7cnLk+VfO+oLJSLaQBBRIyQ08cbPwlLWAHXPAe1/L5x
	WMVLp++T1xQN8LZl2W1BURSu5EmMEQ9jSP/oK4e237qXZ63TQCosBi7G4zPK9bKH1K61fqmcd7Xim
	142lesQZrLFg4w+HgGMBBcM/sTyXQttatb2m388ybzBJvNNExwMMAmxPwdvtMTNuuPsBXYlfeRrSF
	CfTQdkDwGrK6rRRcQWNC5k97hNK87Ti89faDlmsPdhkrUIg0L2txRYk3IGrysqHur4+RWFTC1uKy4
	GQq7266vkQCwoVE0cT7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWKCW-0002Wx-GO; Thu, 30 May 2019 12:30:32 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWKCO-0002WE-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 12:30:26 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190530123017euoutp0187e8d0a9619b9e0be862a256647d6b79~jdcyMJ2DY1556815568euoutp01X
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 12:30:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190530123017euoutp0187e8d0a9619b9e0be862a256647d6b79~jdcyMJ2DY1556815568euoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559219417;
 bh=rRfb4nIQIlulai7VhUp6tUgeds7+T13bxgzJ6lGHQr0=;
 h=From:Subject:To:Cc:Date:References:From;
 b=HTnrnE85RKKW4euGLPzcyYUYxL/R+LhA6OJiSSo1VrdcnvSUHr2qAy8nsdo43L+zP
 BnVorvltXUY0QdH0KIhkqh61tS82mHxtNAp5hCQoeWwZ6PgB1iOcP9UWab9jyC6Kt3
 hGgK3F0cIpGhX5mswgfuE9plJUAXGbLRdofQ9M3M=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190530123017eucas1p2c5af602281ac3b3f30663bd705a5986f~jdcx3d3852345123451eucas1p2P;
 Thu, 30 May 2019 12:30:17 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 19.2F.04325.8DCCFEC5; Thu, 30
 May 2019 13:30:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190530123016eucas1p2e18747b8ac1d156657232eab52876a61~jdcxGWxd90451604516eucas1p2a;
 Thu, 30 May 2019 12:30:16 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190530123015eusmtrp195d81c13e4784a1c2aef07b057426f84~jdcw22ISC1402014020eusmtrp17;
 Thu, 30 May 2019 12:30:15 +0000 (GMT)
X-AuditID: cbfec7f5-fbbf09c0000010e5-4b-5cefccd852ad
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B7.88.04146.7DCCFEC5; Thu, 30
 May 2019 13:30:15 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190530123015eusmtip2b655394a251cc6ef2a9636882a39000a~jdcwYkvkm2162821628eusmtip2H;
 Thu, 30 May 2019 12:30:15 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH v3] video: fbdev: atmel_lcdfb: add COMPILE_TEST support
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Message-ID: <69cd6b8b-1fd1-86fa-2070-99d0ce15a868@samsung.com>
Date: Thu, 30 May 2019 14:30:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFKsWRmVeSWpSXmKPExsWy7djP87o3zryPMehaqmvR/m4Zu8WVr+/Z
 LDY9vsZqcaLvA6vF5V1z2CxerL3OarF980JmB3aPeWuqPe53H2fy2Lyk3uPOj6WMHp83yQWw
 RnHZpKTmZJalFunbJXBlHP2xmK3gFn/F/c5JzA2M83m7GDk5JARMJO7+bmfpYuTiEBJYwSjR
 /Og/E4TzhVHi9srprBDOZ0aJNe+72WBaJlzrZYNILGeUOPXtB1TVW0aJV5OnsoJUsQlYSUxs
 X8UIYgsLuEu8bfkMNJeDQ0RAX+JPlyJIPbPAJ0aJ9llrwWp4Bewkfp1bCraBRUBVonHnPxYQ
 W1QgQuL+sQ2sEDWCEidnPgGLMwuIS9x6Mp8JwpaX2P52DjPIUAmB6ewSD1q2s0Kc6iKx7cVa
 JghbWOLV8S3sELaMxOnJPSwQDesYJf52vIDq3s4osXzyP6hHrSUOH7/ICnI2s4CmxPpd+hBh
 R4kfXR8ZQcISAnwSN94KQhzBJzFp23RmiDCvREebEES1msSGZRvYYNZ27VzJDGF7SLzY+YZ1
 AqPiLCSvzULy2iwkr81CuGEBI8sqRvHU0uLc9NRi47zUcr3ixNzi0rx0veT83E2MwBR0+t/x
 rzsY9/1JOsQowMGoxMMrcPB9jBBrYllxZe4hRgkOZiUR3p/L38UI8aYkVlalFuXHF5XmpBYf
 YpTmYFES561meBAtJJCeWJKanZpakFoEk2Xi4JRqYEzblCu+7eCjLJPZUgu7n7Ht8m9bPtFG
 uWJeBe/Bsxp+bXf39z6/o1F86JfY1/ZP3rZ+ffq+6de3NO9TD9EW2fGOc3n3j35LkVMS01xi
 qzK/Mz7b7VEx460jz9yj6ivcXi9XFrJfp+g8z2HqmfgqY/dcZwXVLT88jsTMSGs5I/pu6veI
 Sx7JD5RYijMSDbWYi4oTAbcRiMo9AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7rXz7yPMZi339ii/d0ydosrX9+z
 WWx6fI3V4kTfB1aLy7vmsFm8WHud1WL75oXMDuwe89ZUe9zvPs7ksXlJvcedH0sZPT5vkgtg
 jdKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DLOPpj
 MVvBLf6K+52TmBsY5/N2MXJySAiYSEy41svWxcjFISSwlFFiZ+Me9i5GDqCEjMTx9WUQNcIS
 f651QdW8ZpTYun8DK0iCTcBKYmL7KkYQW1jAXeJty2cmkF4RAX2JP12KIPXMAp8YJX49bwer
 4RWwk/h1bikbiM0ioCrRuPMfC4gtKhAhceb9ChaIGkGJkzOfgNnMAuoSf+ZdYoawxSVuPZnP
 BGHLS2x/O4d5AqPALCQts5C0zELSMgtJywJGllWMIqmlxbnpucWGesWJucWleel6yfm5mxiB
 8bPt2M/NOxgvbQw+xCjAwajEwytw8H2MEGtiWXFl7iFGCQ5mJRHen8vfxQjxpiRWVqUW5ccX
 leakFh9iNAV6aCKzlGhyPjC280riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB
 9DFxcEo1MOavrM9Tz6twK9dhe+n6QnzP5X+PXUoeHVTp5mMOUeL5+H5Ni4RlymG22nkKveFX
 eZX/t0tHVd8SO7lZ2+XKyVVPv9ZYm/zce93pLsMV501X153fvDMtXfRNdMbribNUjZQutvBM
 m/j2iEZMCAvT9Gc1ZRJn2GKPaBXnfPd/9HX2UgVv1cyWJUosxRmJhlrMRcWJAIrKAuG1AgAA
X-CMS-MailID: 20190530123016eucas1p2e18747b8ac1d156657232eab52876a61
X-Msg-Generator: CA
X-RootMTR: 20190530123016eucas1p2e18747b8ac1d156657232eab52876a61
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190530123016eucas1p2e18747b8ac1d156657232eab52876a61
References: <CGME20190530123016eucas1p2e18747b8ac1d156657232eab52876a61@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_053025_151498_2CE9637A 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-fbdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add COMPILE_TEST support to atmel_lcdfb driver for better compile
testing coverage.

While at it fix improper use of UL (to silence build warnings on
x86_64).

Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
---
v3: fix build warnings on x86_64

v2: add missing HAVE_CLK && HAS IOMEM dependencies

 drivers/video/fbdev/Kconfig       |    3 ++-
 drivers/video/fbdev/atmel_lcdfb.c |    4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

Index: b/drivers/video/fbdev/Kconfig
===================================================================
--- a/drivers/video/fbdev/Kconfig
+++ b/drivers/video/fbdev/Kconfig
@@ -855,7 +855,8 @@ config FB_S1D13XXX
 
 config FB_ATMEL
 	tristate "AT91 LCD Controller support"
-	depends on FB && OF && HAVE_FB_ATMEL
+	depends on FB && OF && HAVE_CLK && HAS_IOMEM
+	depends on HAVE_FB_ATMEL || COMPILE_TEST
 	select FB_BACKLIGHT
 	select FB_CFB_FILLRECT
 	select FB_CFB_COPYAREA
Index: b/drivers/video/fbdev/atmel_lcdfb.c
===================================================================
--- a/drivers/video/fbdev/atmel_lcdfb.c
+++ b/drivers/video/fbdev/atmel_lcdfb.c
@@ -673,7 +673,7 @@ static int atmel_lcdfb_set_par(struct fb
 	lcdc_writel(sinfo, ATMEL_LCDC_MVAL, 0);
 
 	/* Disable all interrupts */
-	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0UL);
+	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0U);
 	/* Enable FIFO & DMA errors */
 	lcdc_writel(sinfo, ATMEL_LCDC_IER, ATMEL_LCDC_UFLWI | ATMEL_LCDC_OWRI | ATMEL_LCDC_MERI);
 
@@ -1291,7 +1291,7 @@ static int atmel_lcdfb_suspend(struct pl
 	 * We don't want to handle interrupts while the clock is
 	 * stopped. It may take forever.
 	 */
-	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0UL);
+	lcdc_writel(sinfo, ATMEL_LCDC_IDR, ~0U);
 
 	sinfo->saved_lcdcon = lcdc_readl(sinfo, ATMEL_LCDC_CONTRAST_CTR);
 	lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_CTR, 0);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
