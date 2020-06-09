Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985BC1F3955
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZUeMzn49/kXSVuINc56VTrwFvGbUBL1ZtlCE72aiOs=; b=CTBWoaDHNigD0O
	/0Xp8y4J0RhZiG/3e86Onf9mK1yLLxgtbTIHyWS+3KxNBEYkx4r2YQqx7DvHgOqD3JaGFIveKn1kr
	CmHcH9AZKCX1mfxtzIlx8Poc5DlNNFGNzej7VnyAl1/mUFc5qSVbMdgk35LtWobekXMW14x2NWaKZ
	FioJjYzrasvhYbKK619VjCrT0D8Cuhk9oDbgpEVaOVCFa9Aq2icup2X/+YA++RMzodNo+2jjSfntQ
	buWFgoODu83vBcoDdA1wWP9BkiApCEFCNHDPRLfbs/QyCPrQ5wD0GAC4paHw815t/cYCOeRlT6u5z
	wagAsq4zavM9bBVsD0vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicDS-0003sq-MP; Tue, 09 Jun 2020 11:14:50 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicDC-0003m4-Cs; Tue, 09 Jun 2020 11:14:36 +0000
IronPort-SDR: gCgmhvoJynK7uq9tR8ieUrqA4gdzHJsCm+stwg3PAklw+xi9CJhdqyHowEHEcSjejdSLk+P2IB
 b3zWH83Re4Hw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 04:14:30 -0700
IronPort-SDR: 1x2X09s+C+ZmFmpenHPAYX2alWHxwwRofz1VOCvBr/3CFXAO8x1AES5WZ0cMkbs0UWxKP4TrPA
 gyns/aLdBahg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,491,1583222400"; d="scan'208";a="379708876"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2020 04:14:26 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jicD6-00BsuX-SU; Tue, 09 Jun 2020 14:14:28 +0300
Date: Tue, 9 Jun 2020 14:14:28 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200609111428.GH2428291@smile.fi.intel.com>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605124643.GG2428291@smile.fi.intel.com>
 <1591424358.8804.599.camel@mhfsdcap03>
 <20200608132720.GS2428291@smile.fi.intel.com>
 <1591674341.8804.628.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591674341.8804.628.camel@mhfsdcap03>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_041434_478004_CA87BCC9 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 louis.kuo@mediatek.com, srv_heupstream@mediatek.com, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, tfiga@chromium.org, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 11:45:41AM +0800, Dongchun Zhu wrote:
> On Mon, 2020-06-08 at 16:27 +0300, Andy Shevchenko wrote:
> > On Sat, Jun 06, 2020 at 02:19:18PM +0800, Dongchun Zhu wrote:
> > > On Fri, 2020-06-05 at 15:46 +0300, Andy Shevchenko wrote:
> > > > On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:

...

> > > > > +#define DW9768_AAC_TIME_DEFAULT			0x20
> > > > 
> > > > Hex? Why not decimal?
> > > > 
> > > 
> > > There is one optional property 'dongwoon,aac-timing' defined in DT.
> > > I don't know whether you have noticed that.
> > > 
> > > 'DW9768_AAC_TIME_DEFAULT' is the value set to AACT[5:0] register.
> > > I thought the Hex unit should be proper as it is directly written to the
> > > Hex register.
> > 
> > I see. I would rather put it like (BIT(6) / 2) to show explicitly that we
> > choose half of the resolution.
> > 
> 
> I knew your idea.
> '(BIT(6) / 2)' may somewhat show the meaning of 'median of the total
> range of AACT[5:0]'.
> 
> But this value is still very obscure relative to '0x20'.
> As I thought that simple is the best, especially for kernel upstream
> patch.

Okay, let's wait for maintainers to speak up.

...

> > > > > +	for ( ; val >= 0; val -= DW9768_MOVE_STEPS) {
> > > > > +		ret = dw9768_set_dac(dw9768, val);
> > > > > +		if (ret) {
> > > > > +			dev_err(&client->dev, "I2C write fail: %d", ret);
> > > > > +			return ret;
> > > > > +		}
> > > > > +		usleep_range(move_delay_us, move_delay_us + 1000);
> > > > > +	}
> > > > 
> > > > 
> > > > It will look more naturally in the multiplier kind of value.
> > > > 
> > > > 	unsigned int steps = DIV_ROUND_UP(...);
> > > > 
> > > > 	while (steps--) {
> > > > 		...(..., steps * ..._MOVE_STEPS);
> > > > 		...
> > > > 	}
> > > > 
> > > > but double check arithmetics.
> > > 
> > > The current coding style is actually updated with reference to your
> > > previous comments on DW9768 v3:
> > > https://patchwork.linuxtv.org/patch/61856/
> > 
> > I understand, but can you consider to go further and see if the proposal works?
> > 
> 
> In fact, your suggestion is something like one another method to set DAC
> value to actuator.
> It is like there may be several solutions to a question.
> 
> Yes. I just tried the new method and it works as expected.
> u32 steps = DIV_ROUND_UP(dw9768->focus->val, DW9768_MOVE_STEPS);
> while (steps--) {
> 	ret = dw9768_set_dac(dw9768, steps * DW9768_MOVE_STEPS);
> 	if (ret)
> 		return ret;
> 	usleep_range(move_delay_us, move_delay_us + 1000);
> }
> 
> But from my perspective, I may prefer to the original method.
> As here what we really care is the DAC value,
> 'dw9768_set_dac(dw9768, val)' seems more simple.

OK.


-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
