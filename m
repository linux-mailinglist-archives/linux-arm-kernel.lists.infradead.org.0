Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F5A14115A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFD7TbZUgCzy4DU7n6BD2EbSO3j1E4fMwY+vXbfLY3U=; b=L2Ogw6/2xj75h3
	aTg+K+qA4MV2hd7cX16Iyp9tiWF//nVIxlfYuk6DHzreI09k8ZVI/O3P7/cXG7w104ti7zb2ypF9H
	Ekd3Tom4cPb0pvZZRzvnRYVDQAEn3K44Uw+ghY4xHsjztFIvxVkOvb/UIRajc4ypILcuBJDAK27LK
	BxhiY/FY56qZ2h3WsaXN9yoSadElu5AKDC8ztpohMQMgGhZ9zKbtGQFNmTmYm4o9udKyjNX0gc7Bu
	hjn0O2+3S1Obv2f7K64awJaRptVu/M2dVf/IhClVmn56WDUKPZ+x2bkTUksqyHOcHkmAGJSXYlXAw
	8WLaAXKtmYny1dwn/9dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWq1-0007k0-Iy; Fri, 17 Jan 2020 18:59:21 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWpn-0007fc-84
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:59:09 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 34B2420026;
 Fri, 17 Jan 2020 19:59:05 +0100 (CET)
Date: Fri, 17 Jan 2020 19:59:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH 2/2] video: fbdev: wm8505fb: add COMPILE_TEST support
Message-ID: <20200117185903.GB24722@ravnborg.org>
References: <CGME20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa@eucas1p1.samsung.com>
 <900c16b3-9306-7d17-f467-0f98bc95416a@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <900c16b3-9306-7d17-f467-0f98bc95416a@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=hD80L64hAAAA:8
 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=CiNoIfpPnEEG5fnF954A:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_105907_476215_A8BE34DD 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, Tony Prisk <linux@prisktech.co.nz>,
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 03:58:08PM +0100, Bartlomiej Zolnierkiewicz wrote:
> Add COMPILE_TEST support to wm8505fb driver for better compile
> testing coverage.
> 
> Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/video/fbdev/Kconfig |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Index: b/drivers/video/fbdev/Kconfig
> ===================================================================
> --- a/drivers/video/fbdev/Kconfig
> +++ b/drivers/video/fbdev/Kconfig
> @@ -1639,7 +1639,7 @@ config FB_VT8500
>  
>  config FB_WM8505
>  	bool "Wondermedia WM8xxx-series frame buffer support"
> -	depends on (FB = y) && ARM && ARCH_VT8500
> +	depends on (FB = y) && HAS_IOMEM && (ARCH_VT8500 || COMPILE_TEST)
>  	select FB_SYS_FILLRECT if (!FB_WMT_GE_ROPS)
>  	select FB_SYS_COPYAREA if (!FB_WMT_GE_ROPS)
>  	select FB_SYS_IMAGEBLIT
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
