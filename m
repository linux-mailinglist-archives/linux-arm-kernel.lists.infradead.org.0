Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AC71F1A04
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 15:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bebkKOfOUMyjdU8z4Fkjy1lwYDjeJHY6S1ELBEIYILA=; b=YxBz6QCjeVvPye
	3EFHz5nyAhp+4LGKc21zXc4GXCtg5V7RWAMQw2CKIcNOaq41ATBUvpJlkeev1T/WfI5PJNAad39fW
	rXp9d7zhClufnNTuTUQT2uNNoBteliUd53Nfk6Levu2Zh9LLTAsJRYGQS9VBo0FvE64eLIMeT0BfH
	I5/CjSuaSykgaXXlw3aUUy2JJPN9l31AXEhKyEbd2qPlOk1O8qj16DlssfDqWz0d2+I2nP2zsM+xu
	T2gx+tN/qm9dHcItyi0uTLNdWbofPlLJ7k/QC1dt8Uboa0lRAmVXfvG/dNBa5eW23kzMAkeS9pYWI
	l8acu/go07rrPLalrWtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiHoN-0006Zz-0o; Mon, 08 Jun 2020 13:27:35 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiHoC-0006ZF-5G; Mon, 08 Jun 2020 13:27:25 +0000
IronPort-SDR: EOIF/BuzSWrcGDoDX9QxTdBwQ9khdd3lQDimhGZhWL+ctDHsjr7Y66CqNeBn8uxFit9TIrfL2s
 nO1pPbfs90Lg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 06:27:22 -0700
IronPort-SDR: ungGUpT5j+d5S0pUhJNhA7Nxvt+IsR8LGvkXo/B4aaVix6dyYH7I2UOo7AgOF0aTiTk0zhzdfk
 GmsMBJ1M7v+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="270507472"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2020 06:27:17 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jiHo8-00Bgmg-5M; Mon, 08 Jun 2020 16:27:20 +0300
Date: Mon, 8 Jun 2020 16:27:20 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200608132720.GS2428291@smile.fi.intel.com>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605124643.GG2428291@smile.fi.intel.com>
 <1591424358.8804.599.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591424358.8804.599.camel@mhfsdcap03>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_062724_236893_325E6A87 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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

On Sat, Jun 06, 2020 at 02:19:18PM +0800, Dongchun Zhu wrote:
> On Fri, 2020-06-05 at 15:46 +0300, Andy Shevchenko wrote:
> > On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:

...

> > > +	depends on I2C && VIDEO_V4L2
> > 
> > No compile test?
> > 
> 
> Sorry?
> Kconfig here is based on the current media tree master branch.
> It is also what the other similar drivers from Dongwoon do. 

COMPILE_TEST.
I dunno if it's established or not practice in media subsystem.

...

> > > +/*
> > > + * DW9768 requires waiting time (delay time) of t_OPR after power-up,
> > > + * or in the case of PD reset taking place.
> > > + */
> > > +#define DW9768_T_OPR_US				1000
> > > +#define DW9768_Tvib_MS_BASE10			(64 - 1)
> > > +#define DW9768_AAC_MODE_DEFAULT			2
> > 
> > > +#define DW9768_AAC_TIME_DEFAULT			0x20
> > 
> > Hex? Why not decimal?
> > 
> 
> There is one optional property 'dongwoon,aac-timing' defined in DT.
> I don't know whether you have noticed that.
> 
> 'DW9768_AAC_TIME_DEFAULT' is the value set to AACT[5:0] register.
> I thought the Hex unit should be proper as it is directly written to the
> Hex register.

I see. I would rather put it like (BIT(6) / 2) to show explicitly that we
choose half of the resolution.

...

> > > +	val = ((unsigned char)ret & ~mask) | (val & mask);
> > 
> > This cast is weird.
> > 
> 
> Thanks for the review, but this cast is using classical pattern from
> your suggestion on OV02A10 v5:
> https://patchwork.linuxtv.org/patch/59788/
> 
> So I wonder whether it is still required to be refined currently.
> Or what would it be supposed to do for the cast?

Okay, does it produce a warning w/o cast?
If yes, replace it at least to be the same type as mask and val.

...

> > > +	for ( ; val >= 0; val -= DW9768_MOVE_STEPS) {
> > > +		ret = dw9768_set_dac(dw9768, val);
> > > +		if (ret) {
> > > +			dev_err(&client->dev, "I2C write fail: %d", ret);
> > > +			return ret;
> > > +		}
> > > +		usleep_range(move_delay_us, move_delay_us + 1000);
> > > +	}
> > 
> > 
> > It will look more naturally in the multiplier kind of value.
> > 
> > 	unsigned int steps = DIV_ROUND_UP(...);
> > 
> > 	while (steps--) {
> > 		...(..., steps * ..._MOVE_STEPS);
> > 		...
> > 	}
> > 
> > but double check arithmetics.
> 
> The current coding style is actually updated with reference to your
> previous comments on DW9768 v3:
> https://patchwork.linuxtv.org/patch/61856/

I understand, but can you consider to go further and see if the proposal works?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
