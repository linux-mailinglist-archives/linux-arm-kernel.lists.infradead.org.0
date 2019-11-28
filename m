Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D218F10C241
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 03:26:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+m4Uw2Ppv+Z2ifmpvXviCOqiCvAJj9o60JcRFOgI/30=; b=kNW0iL2chh4kzb
	N8dOzCZMjyCmqtxxVPLSm5vaRWZ8cepwUDUk2VTo7xrjLnLKfm90KFZAl95z1f5D5g/Zm87cqYRsq
	GkroTW4bv0DTCeuSoz6IvgkbJ/1lVTgL08DWwJeAhwj4XSJrt2KBcIIgsafq18R8Rpdjq8xOr4okN
	0gMbXzPxmlcZnnU3TJycy2U4+kGo/whhZ0A3ms9I4k2ez0JTK7JEJDAN687XWGoZK2f6+8mMfT+xc
	mwa23sdZ1gF+eZCpOPsfXEClSlJU9NcscX2lg2xFPdsKhWeTmOHD2Zy6PC0rKBFHYOsFamhTe8hGV
	YMF4vq71J08/DDUYL5kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia9Vh-00020x-1B; Thu, 28 Nov 2019 02:26:25 +0000
Received: from out28-123.mail.aliyun.com ([115.124.28.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia9VY-0001zt-4v
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 02:26:18 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.1442634|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.0651011-0.0193909-0.915508;
 DS=CONTINUE|ham_regular_dialog|0.216232-0.0239754-0.759793;
 FP=0|0|0|0|0|-1|-1|-1; HT=e01l07389; MF=yong.deng@magewell.com; NM=1; PH=DS;
 RN=8; RT=8; SR=0; TI=SMTPD_---.G6MWC7G_1574907969; 
Received: from John(mailfrom:yong.deng@magewell.com
 fp:SMTPD_---.G6MWC7G_1574907969)
 by smtp.aliyun-inc.com(10.147.42.198);
 Thu, 28 Nov 2019 10:26:09 +0800
Date: Thu, 28 Nov 2019 10:26:08 +0800
From: Yong <yong.deng@magewell.com>
To: megous@megous.com
Subject: Re: [linux-sunxi] [PATCH] media: sun6i-csi: Fix incorrect
 HSYNC/VSYNC/PCLK polarity configuration
Message-Id: <20191128102608.035cbb996c8681a6fb035336@magewell.com>
In-Reply-To: <20191128020259.1338188-1-megous@megous.com>
References: <20191128020259.1338188-1-megous@megous.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.30; i686-pc-mingw32)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_182616_348654_3730F0A7 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.28.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>, open
 list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "moderated
 list:ARM/Allwinner sunXi SoC support" <linux-arm-kernel@lists.infradead.org>,
 "open list:CSI DRIVERS FOR ALLWINNER V3s" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ondrej,

This has been discussed.
And Maxime sent a patch for this: 
https://www.mail-archive.com/linux-media@vger.kernel.org/msg127149.html

On Thu, 28 Nov 2019 03:02:59 +0100
Ondrej Jirman <megous@megous.com> wrote:

> This was discovered by writing a new camera driver and wondering, why
> hsync/vsync polarity setting behaves in reverse to what would be
> expected. Verified by looking at the actual signals and the SoC
> user manual.
> 
> Fixes: 5cc7522d8965 ("media: sun6i: Add support for Allwinner CSI V3s")
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> index f17e5550602d..98bbcca59a90 100644
> --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> @@ -417,12 +417,12 @@ static void sun6i_csi_setup_bus(struct sun6i_csi_dev *sdev)
>  		if (flags & V4L2_MBUS_FIELD_EVEN_LOW)
>  			cfg |= CSI_IF_CFG_FIELD_POSITIVE;
>  
> -		if (flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
> +		if (flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH)
>  			cfg |= CSI_IF_CFG_VREF_POL_POSITIVE;
> -		if (flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
> +		if (flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
>  			cfg |= CSI_IF_CFG_HREF_POL_POSITIVE;
>  
> -		if (flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
> +		if (flags & V4L2_MBUS_PCLK_SAMPLE_FALLING)
>  			cfg |= CSI_IF_CFG_CLK_POL_FALLING_EDGE;
>  		break;
>  	case V4L2_MBUS_BT656:
> -- 
> 2.24.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20191128020259.1338188-1-megous%40megous.com.


Thanks,
Yong

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
