Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767D61BBDDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uCNDq/NqwJuxXYNMLCIlPw0BWxUVwFH6FBNrlxD7/s=; b=MkW9xPceK/jo0l
	zKSDfooGEu1fHD7SCnStShsi1rsIm67EFrQ7ohzaznDuqiuqEInCnM9ztkkT+8AQvpssC+89sUTdI
	NnL9AuvBNpf/VSEvM+ZvlEA8neinntPXR6h7lMe/1gL0yOmDg1sjA2gIVRNYhHSypJTSKw+8x3dUj
	0n1jVYPVDrOYzlz1rs0xnswoRWUuqHVHLQ7iUK1PjE/pFWMELypBYBQKbFGfk+DpUcgVeLcXKfl2H
	ZOfImg1qEAOA9B5teRniOvnrL1u/etb31dg13uPVYky3VaBSDlpoiEGZFiLGL5uEaAWIWGPfTGghS
	yFpAZtrW/PZkUu8DsWNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPcg-0008HI-Uf; Tue, 28 Apr 2020 12:46:02 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPcX-0008Gb-Ei
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:45:54 +0000
IronPort-SDR: uXQBxggUemvKTK1GJHd+k/frOLoHFn1Ki6Q4rimYg7SDg3rK7u0A/ozWZh9Zmn7M4L1IyMy5oQ
 wbPwwhr1BPXg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 05:45:52 -0700
IronPort-SDR: TP/uYczxk/lwtQIzH/+Zyl5uqP030jf1kAkw25vGqAYSII1wYmovbE/eUDO84cwwMYEz7zYIli
 glcT10kijuRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="459221981"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 28 Apr 2020 05:45:46 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jTPcS-003YlK-Qg; Tue, 28 Apr 2020 15:45:48 +0300
Date: Tue, 28 Apr 2020 15:45:48 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 02/16] mfd: mfd-core: Don't overwrite the dma_mask of
 the child device
Message-ID: <20200428124548.GS185537@smile.fi.intel.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-3-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423174543.17161-3-michael@walle.cc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_054553_502401_95D7C637 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 07:45:29PM +0200, Michael Walle wrote:
> Commit cdfee5623290 ("driver core: initialize a default DMA mask for
> platform device") initialize the DMA of a platform device. But if the
> parent doesn't have a dma_mask set, for example if it's an I2C device,
> the dma_mask of the child platform device will be set to zero again.
> Which leads to many "DMA mask not set" warnings, if the MFD cell has the
> of_compatible property set.

I'm wondering why parent doesn't have it.
I remember we have explicit patches in the past for buses such as PCI and AMBA
to set default DMA mask for all physical devices on the respective bus, of
course they can individually override it later.

So, this seems to me a paper over the real issue (absence of default DMA mask
where it's needed) and devices should explicitly define it if they disagree
with default.

If I'm wrong, you really need elaborate commit message much better.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
