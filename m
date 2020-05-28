Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D021E5D25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6L0peX1B2cOAb8RmcqGaZ+7ODIvcDBZYjVmHIxd0Fxw=; b=uWG61IGtM3014B
	0eOaPN873X710TabGgZv9IKd4h8kWBRflW4C7GbEgcJSMOUt6Hk6Ayny+HFvnRxLWI8Qgycpn+e9T
	3v0eobZ6/OZCfxkRxXvUa2haYuO2YijFM33CaaX7cIx2ALVSF2tERtsaOG6ajpqbzVSNcITi8KIDu
	L/VhRaLA+dtuiLbEPvlUxPY0mmb6w2gqDcD65NnYn1fNVkr2j4atDMWtcdvIeWt9ZW9pDihuNQjJv
	kHRFy4VD6IWwnpkfe81baGDaw6SpJn8pGylYTcI6e++O/7LDQJEp7F738ujNAnGST4yvDh9vRAM3L
	+2JHuMoo3UOmCU2MQNfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFlI-0008UU-DO; Thu, 28 May 2020 10:27:44 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFl4-0008Tb-Oq; Thu, 28 May 2020 10:27:31 +0000
IronPort-SDR: KJhq/bqMJ2zqpCboiJG/987FLYzjXz/RV6p0XdAN3dOP4BmJDROWy07/H1/7g1ztXfbQr2DtVg
 ErFEkAuqjPzg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 03:27:29 -0700
IronPort-SDR: QUbWppTdipRmkK6s3TNjKXxDmOVRiFx+Anq76PGnZ8ysN5MS/bpNf3b8K3wf/qJwZvs4uvoVXl
 6VHpJrTTuyog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="291950293"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 03:27:27 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jeFl4-009PNm-Uf; Thu, 28 May 2020 13:27:30 +0300
Date: Thu, 28 May 2020 13:27:30 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [RESEND PATCH v11 2/3] drivers: input: keyboard: Add mtk keypad
 driver
Message-ID: <20200528102730.GK1634618@smile.fi.intel.com>
References: <20200528090144.54033-1-fengping.yu@mediatek.com>
 <20200528090144.54033-3-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528090144.54033-3-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_032730_819218_32C0537C 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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

On Thu, May 28, 2020 at 05:01:47PM +0800, Fengping Yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> This adds matrix keypad support for Mediatek SoCs.

...

> +config KEYBOARD_MTK_KPD
> +	tristate "MediaTek Keypad Support"
> +	depends on ARCH_MEDIATEK || COMPILE_TEST

> +	select CONFIG_REGMAP_MMIO

This is wrong.

> +	select INPUT_MATRIXKMAP

...

> +	ret = devm_add_action_or_reset(&pdev->dev, kpd_clk_disable,
> +				       keypad->clk);

I would leave on one line (only 81 characters).

> +	if (ret)
> +		return ret;

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
