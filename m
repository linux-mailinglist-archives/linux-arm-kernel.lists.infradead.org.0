Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65F71EA0FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkFl/movWI3/eOeqgpzNXjb+aFyGHlYELdaXU9ScYmw=; b=LCKOip8AKt5s//
	kB1kFEWmY7kQ5faZE1aQPgyqzy0P/ayIRKrhGfellbabVouUgKyh58tSg45IfNlong1ae+WDoYEcv
	6vTDEzCY01A0xoTxpvZiZGo7tAJhayT7EC/jgHP6BeJPR5FDCycJ6E+GhTYo/5nPXDeUfQodAi7QU
	7cjDYijjzRLM5o11tljW2ZvgDbh24gpM/+Ndoa8flMvyIAS+c20c3fXQujjb2mVCKGD4Xek6TomNm
	mNb7ozU+S4q67ekswHgZYWDrb2cR1NeHoEHsZNxcSiSj6xOF7wq/VUpJJOe/DRO8KZ5N2pNJTey7H
	qnZyDG3grRgejPQBVVTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgno-0001bi-TC; Mon, 01 Jun 2020 09:32:16 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgni-0001bI-Pq; Mon, 01 Jun 2020 09:32:11 +0000
IronPort-SDR: Y1drMRaHti6N0vPmghbBJhvVipiYSPwSQiFFABUcBLSretjG2dLHtZXltba91/TOBTH3m0OaD9
 E5yKPOEU993Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 02:32:09 -0700
IronPort-SDR: /ujC3+DghISsUsonHBJPV5Gk1lF8j7sRohgtk5GOx7IvnSaAXmCHl6B6CxQWao4yIOCr0yCDB7
 OVC2kkPKlCsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,460,1583222400"; d="scan'208";a="470229648"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 01 Jun 2020 02:32:07 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jfgni-00AC6i-VN; Mon, 01 Jun 2020 12:32:10 +0300
Date: Mon, 1 Jun 2020 12:32:10 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v13 3/3] configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=m
Message-ID: <20200601093210.GA2428291@smile.fi.intel.com>
References: <20200601022548.18213-1-fengping.yu@mediatek.com>
 <20200601022548.18213-4-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601022548.18213-4-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_023210_849966_0E4D2DDC 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 10:25:51AM +0800, Fengping Yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> Add Mediatek matrix keypad support in defconfig.

I didn't review this either, but it's fine to me.

> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 24e534d85045..112ced090b21 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -349,6 +349,7 @@ CONFIG_KEYBOARD_GPIO=y
>  CONFIG_KEYBOARD_SNVS_PWRKEY=m
>  CONFIG_KEYBOARD_IMX_SC_KEY=m
>  CONFIG_KEYBOARD_CROS_EC=y
> +CONFIG_KEYBOARD_MTK_KPD=m
>  CONFIG_INPUT_TOUCHSCREEN=y
>  CONFIG_TOUCHSCREEN_ATMEL_MXT=m
>  CONFIG_INPUT_MISC=y
> -- 
> 2.18.0

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
