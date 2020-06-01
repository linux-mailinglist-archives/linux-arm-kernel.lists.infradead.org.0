Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AF51EA4F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 15:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dimyvXDhj3VmTPCvr/9vQEwR0dfejFfQm3YbBL7sPd4=; b=KkxUPYJitHMPGE
	gEw7SXb9oRDGCrhneyFSTiqyGhtsoj6gsb3EeG28bicDqGAFGyyruUdaPoR37IfqJpNF0vKAXI2vB
	SLxY4aotq6KxFAjklbGhmO2pdtiBr8uMn+3xpmSFY0m9EoHnmwdSSMKxg7b6tqqHD6BFdVT7uucXu
	4FQqSuUlm2X5Dx7tS8pjPctg6ac2XBkrDy+cl0xE6Qy43T2pukQl7k0kQYDDiPQqP841JSJnEfo2G
	ACaD/0/e12m9nqRhmhw6gvb+iU7fAY+P3QNP/NKLEe18T56Nl6oM5G7lkdc0EuKA1FqIs39LNlyTm
	qetlsssbVEoQs4nPJ/Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfkRj-0007LC-Kb; Mon, 01 Jun 2020 13:25:43 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfkRZ-0007Je-8b
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 13:25:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601132530euoutp026c676457205dd1dcf097dfc106a178d3~UbmDULBRH1973719737euoutp02c
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 13:25:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200601132530euoutp026c676457205dd1dcf097dfc106a178d3~UbmDULBRH1973719737euoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591017930;
 bh=7MYfA7T1V2zf0ITQLbcPCa/EsxPMtj591hArtPdOjMw=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=G6EVZ06pRJJULZiV8S7AVTH/3ncNkfYaIcWhbeuLOLPrZWKG/W5wlpGKUIpMaRhjv
 DAorg2ctcMO5q+9C4UknJo+QbLjloH9IPsSM6T/KU6ExB5ZFwwyBqzMHDGNhM6JJiu
 SereMKlyB9KM9zu6Zen44NS+u1OuvrF1QVyCZ2kI=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601132530eucas1p19a24e5bd23ad1d0190549ddb8bf39910~UbmDLs-Sf1285112851eucas1p1o;
 Mon,  1 Jun 2020 13:25:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id AB.14.61286.AC105DE5; Mon,  1
 Jun 2020 14:25:30 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200601132530eucas1p273e2fc07bcc82b5acdc6329853398e59~UbmC5ESkn2293122931eucas1p2i;
 Mon,  1 Jun 2020 13:25:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601132530eusmtrp2e22ef13b605eb5f0be3d4bec7968535b~UbmC4V9au1059710597eusmtrp2s;
 Mon,  1 Jun 2020 13:25:30 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-d3-5ed501caf24b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DC.95.07950.9C105DE5; Mon,  1
 Jun 2020 14:25:30 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200601132529eusmtip144ca8a4d65015ef72f79683e359a1e3b~UbmCifbJL1117511175eusmtip1Q;
 Mon,  1 Jun 2020 13:25:29 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [trivial PATCH] video: fbdev: Use IS_BUILTIN
To: Joe Perches <joe@perches.com>
Message-ID: <465a04eb-cd2e-d0da-b667-584d297a0102@samsung.com>
Date: Mon, 1 Jun 2020 15:25:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b1cf967015c5beafa475aaa30d8e21a58caff870.camel@perches.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm2zmbR2l6nJovGqWjrMy0UT9WmqQUrH/1Q8ku2lFPOtqm7TjT
 IrI/mQs1NVCXtfCSNnQuXU4NzBSc5TVviCQGmpuSWF4ItSwPZ5L/nve5fO/7wEdgoiq+DyFX
 pdFqFaUQC1zwpq61/qOf0Gjssa55kXRkdVEgfTY1jUsbpsf40u68H3zpcGvZFleZj0tLBtp4
 Z5xkU4+tPFlj5X3ZimEMky037L2AX3YJS6QV8nRaHRJ+3SX5Q2kRSv15MMPy/TmehTb8tMiZ
 APIEvLDk87TIhRCRNQhqSysQN6wgyH2vdSjLCD4PTThtR+pHe504oRpBV8E3nBsWEGTn2DDW
 JSBPQUG2AbHYgzwJje3mLRNBeJL+MGl2Y/0YaUVgLawUsB4hGQ761qeI9eDkfuh+48bSXuQl
 WPrayecs7vCxdAZnsTN5Hppzh3ksxkhvmJjRO/A+sCyUYez7QBqdoD2rF3FXn4WKmgIBhz1g
 3mp2tNkDf1v0PEcAwZ9HdkfagqC6aNORCIUv/esC9jqMPAz1rSEcHQG9g3M8lgbSFcYX3Lkj
 XKGwqRjjaCE8eiji3AFgemUSbK/VtrzGniCxbkc13Y46uh11dP/3vkS4AXnTGkaZRDMSFX07
 mKGUjEaVFJyQomxAW5+nZ9O61IxWh+I7EEkg8S6haWokVsSn0plMZQcCAhN7CiP7emJFwkQq
 8w6tTolTaxQ004F8CVzsLTxePndNRCZRafRNmk6l1dsqj3D2yULyplpzQqQtetrIXO1VHAhO
 jsuYDe9czifS5HWGmOK3ecFtxkN+R6Iy9YZoSaiOSIrqM95V577bsIetLeZEGKtKqJragSCb
 l75k9+mYhf6l2R7/SI0hXj4fP24uDzzXb3OuM1gmLw7afX9f2bwxalH+urceIVEGPbCv3TIF
 ZIhxJpmSBGJqhvoHW5fcpzgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCIsWRmVeSWpSXmKPExsVy+t/xu7qnGK/GGfSZWlz5+p7NYvb9xywW
 mx5fY7U40feB1eLyrjlAsSX9LBYzzu9jcmD3uN99nMlj85J6jy+rrjF7fN4kF8ASpWdTlF9a
 kqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZapG+XoJdxcOZkxoKP6hXb
 38xlaWD8rdDFyMkhIWAisf7qGXYQW0hgKaPE19tWXYwcQHEZiePryyBKhCX+XOti62LkAip5
 zSixe+lVNpAEm4CVxMT2VYwgtrCApcTmA1tYQHpFBBQl7m7hB6lnFjjOKPHlxBZWiOY5jBI7
 Xt0Aa+AVsJOYv2sKI0gDi4CKxImN/CBhUYEIicM7ZkGVCEqcnPmEBcTmFPCU2NF7mQnEZhZQ
 l/gz7xIzhC0ucevJfKi4vMT2t3OYJzAKzULSPgtJyywkLbOQtCxgZFnFKJJaWpybnltspFec
 mFtcmpeul5yfu4kRGGPbjv3csoOx613wIUYBDkYlHt4N96/ECbEmlhVX5h5ilOBgVhLhdTp7
 Ok6INyWxsiq1KD++qDQntfgQoynQbxOZpUST84Hxn1cSb2hqaG5haWhubG5sZqEkztshcDBG
 SCA9sSQ1OzW1ILUIpo+Jg1OqgXGK5b15//Vnf/2SrPblSUDGonXJ24J2b5/+1PRontf/lSI5
 7peD39QvmcS2NkLLXWXC1BU6WxkfpFf3zX7pHlKsr3K/XcHqcuyjyG/Xp9xdelAj/XKmRBPr
 NWUhHp3ykLMXImVvzj3EK1/nMbcuY3NFLW8c2+5tPrsrhdJPnOiIPjRDZ7v5mlolluKMREMt
 5qLiRABw3u1dxwIAAA==
X-CMS-MailID: 20200601132530eucas1p273e2fc07bcc82b5acdc6329853398e59
X-Msg-Generator: CA
X-RootMTR: 20200504232908eucas1p296927bc7c736ad924cefaea9a546459d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504232908eucas1p296927bc7c736ad924cefaea9a546459d
References: <CGME20200504232908eucas1p296927bc7c736ad924cefaea9a546459d@eucas1p2.samsung.com>
 <b1cf967015c5beafa475aaa30d8e21a58caff870.camel@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_062535_736267_246F5000 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 5/5/20 1:29 AM, Joe Perches wrote:
> IS_BUILTIN can be use to replace various initializations
> like #if CONFIG_<FOO> int val = 1; #else int val = 0; #endif
> so do so.
> 
> Signed-off-by: Joe Perches <joe@perches.com>


Applied to drm-misc-next tree (patch should show up in v5.9), thanks.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> ---
>  drivers/video/fbdev/aty/aty128fb.c     | 6 +-----
>  drivers/video/fbdev/aty/atyfb_base.c   | 7 +------
>  drivers/video/fbdev/aty/radeon_base.c  | 6 +-----
>  drivers/video/fbdev/nvidia/nvidia.c    | 6 +-----
>  drivers/video/fbdev/omap/omapfb_main.c | 6 +-----
>  drivers/video/fbdev/riva/fbdev.c       | 6 +-----
>  drivers/video/fbdev/s3c2410fb.c        | 6 +-----
>  7 files changed, 7 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/video/fbdev/aty/aty128fb.c b/drivers/video/fbdev/aty/aty128fb.c
> index d05d4195acad..6fae6ad6cb77 100644
> --- a/drivers/video/fbdev/aty/aty128fb.c
> +++ b/drivers/video/fbdev/aty/aty128fb.c
> @@ -384,11 +384,7 @@ static int default_lcd_on = 1;
>  static bool mtrr = true;
>  
>  #ifdef CONFIG_FB_ATY128_BACKLIGHT
> -#ifdef CONFIG_PMAC_BACKLIGHT
> -static int backlight = 1;
> -#else
> -static int backlight = 0;
> -#endif
> +static int backlight = IS_BUILTIN(CONFIG_PMAC_BACKLIGHT);
>  #endif
>  
>  /* PLL constants */
> diff --git a/drivers/video/fbdev/aty/atyfb_base.c b/drivers/video/fbdev/aty/atyfb_base.c
> index 49d192869cf5..23a29d61c2a2 100644
> --- a/drivers/video/fbdev/aty/atyfb_base.c
> +++ b/drivers/video/fbdev/aty/atyfb_base.c
> @@ -317,12 +317,7 @@ static int mclk;
>  static int xclk;
>  static int comp_sync = -1;
>  static char *mode;
> -
> -#ifdef CONFIG_PMAC_BACKLIGHT
> -static int backlight = 1;
> -#else
> -static int backlight = 0;
> -#endif
> +static int backlight = IS_BUILTIN(CONFIG_PMAC_BACKLIGHT);
>  
>  #ifdef CONFIG_PPC
>  static int default_vmode = VMODE_CHOOSE;
> diff --git a/drivers/video/fbdev/aty/radeon_base.c b/drivers/video/fbdev/aty/radeon_base.c
> index e116a3f9ad56..3fe509cb9b87 100644
> --- a/drivers/video/fbdev/aty/radeon_base.c
> +++ b/drivers/video/fbdev/aty/radeon_base.c
> @@ -269,11 +269,7 @@ static bool force_measure_pll = 0;
>  static bool nomtrr = 0;
>  static bool force_sleep;
>  static bool ignore_devlist;
> -#ifdef CONFIG_PMAC_BACKLIGHT
> -static int backlight = 1;
> -#else
> -static int backlight = 0;
> -#endif
> +static int backlight = IS_BUILTIN(CONFIG_PMAC_BACKLIGHT);
>  
>  /* Note about this function: we have some rare cases where we must not schedule,
>   * this typically happen with our special "wake up early" hook which allows us to
> diff --git a/drivers/video/fbdev/nvidia/nvidia.c b/drivers/video/fbdev/nvidia/nvidia.c
> index c24de9107958..c6820e21875d 100644
> --- a/drivers/video/fbdev/nvidia/nvidia.c
> +++ b/drivers/video/fbdev/nvidia/nvidia.c
> @@ -74,11 +74,7 @@ static int vram = 0;
>  static int bpp = 8;
>  static int reverse_i2c;
>  static bool nomtrr = false;
> -#ifdef CONFIG_PMAC_BACKLIGHT
> -static int backlight = 1;
> -#else
> -static int backlight = 0;
> -#endif
> +static int backlight = IS_BUILTIN(CONFIG_PMAC_BACKLIGHT);
>  
>  static char *mode_option = NULL;
>  
> diff --git a/drivers/video/fbdev/omap/omapfb_main.c b/drivers/video/fbdev/omap/omapfb_main.c
> index 1a9d6242916e..0cbcc74fa943 100644
> --- a/drivers/video/fbdev/omap/omapfb_main.c
> +++ b/drivers/video/fbdev/omap/omapfb_main.c
> @@ -34,11 +34,7 @@ static unsigned long	def_vyres;
>  static unsigned int	def_rotate;
>  static unsigned int	def_mirror;
>  
> -#ifdef CONFIG_FB_OMAP_MANUAL_UPDATE
> -static bool		manual_update = 1;
> -#else
> -static bool		manual_update;
> -#endif
> +static bool	manual_update = IS_BUILTIN(CONFIG_FB_OMAP_MANUAL_UPDATE);
>  
>  static struct platform_device	*fbdev_pdev;
>  static struct lcd_panel		*fbdev_panel;
> diff --git a/drivers/video/fbdev/riva/fbdev.c b/drivers/video/fbdev/riva/fbdev.c
> index 764ec3285e62..9b3493846f4d 100644
> --- a/drivers/video/fbdev/riva/fbdev.c
> +++ b/drivers/video/fbdev/riva/fbdev.c
> @@ -202,11 +202,7 @@ static int flatpanel = -1; /* Autodetect later */
>  static int forceCRTC = -1;
>  static bool noaccel  = 0;
>  static bool nomtrr = 0;
> -#ifdef CONFIG_PMAC_BACKLIGHT
> -static int backlight = 1;
> -#else
> -static int backlight = 0;
> -#endif
> +static int backlight = IS_BUILTIN(CONFIG_PMAC_BACKLIGHT);
>  
>  static char *mode_option = NULL;
>  static bool strictmode       = 0;
> diff --git a/drivers/video/fbdev/s3c2410fb.c b/drivers/video/fbdev/s3c2410fb.c
> index 2fb15a540167..6f8fa501583f 100644
> --- a/drivers/video/fbdev/s3c2410fb.c
> +++ b/drivers/video/fbdev/s3c2410fb.c
> @@ -44,11 +44,7 @@
>  #include "s3c2410fb.h"
>  
>  /* Debugging stuff */
> -#ifdef CONFIG_FB_S3C2410_DEBUG
> -static int debug	= 1;
> -#else
> -static int debug;
> -#endif
> +static int debug = IS_BUILTIN(CONFIG_FB_S3C2410_DEBUG);
>  
>  #define dprintk(msg...) \
>  do { \
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
