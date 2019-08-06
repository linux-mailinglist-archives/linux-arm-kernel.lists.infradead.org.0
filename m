Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D6682CBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 09:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOAVu3ZJIXRrJ9og0oZCuSFBfvUgyXHFQ0Vfbp63W4I=; b=TNj0WQ3mkTzDhi
	o5gRPDIHsKkl/js0Kz0x6WeVscXrB3fX/qIpKcH906oCwpH8nmYuA7Tb8MYx+KxviflcuJdTK1Sgm
	11r+/70KITsrEjU8V4cyCxf286UcJwGQEwumDKRhJSWPaBMQ/4psRyzohhC9zCt/5mXMMOMt/ptyy
	FOn564bjnJz1ZY+E+G7iA7bzK5Cy0rMk0O5hLcFY4uOYkWSG6V0RlwsRclOxvt2orsGbISJ15wccA
	BxxaH1DPCxKSLv5BYWqsPVp9jSUFO2ioDEqGMMBeBGr9QMVu1tf6KetNGsTscOi+5mA01bJBV3cpC
	Zc/tN2ju0UGpe9YB1GIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hutua-0005Nr-Hn; Tue, 06 Aug 2019 07:29:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huttz-0005LZ-Uy; Tue, 06 Aug 2019 07:29:01 +0000
X-UUID: d656105de0e341d08353ab4b4ee14bc8-20190805
X-UUID: d656105de0e341d08353ab4b4ee14bc8-20190805
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 263845327; Mon, 05 Aug 2019 23:28:50 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 00:28:49 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 15:28:47 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 6 Aug 2019 15:28:47 +0800
Message-ID: <1565076527.23984.5.camel@mtksdaap41>
Subject: Re: [PATCH v4 07/10] regulator: mt6358: Add support for MT6358
 regulator
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Mark Brown <broonie@kernel.org>
Date: Tue, 6 Aug 2019 15:28:47 +0800
In-Reply-To: <20190805131030.GE6432@sirena.org.uk>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-8-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20190805131030.GE6432@sirena.org.uk>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_002900_004858_94F7880C 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>, Rob
 Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, Allison
 Randal <allison@lohutok.net>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Mon, 2019-08-05 at 14:10 +0100, Mark Brown wrote:
> On Mon, Aug 05, 2019 at 01:21:55PM +0800, Hsin-Hsiung Wang wrote:
> 
> > +static const u32 vmch_voltages[] = {
> > +	2900000, 3000000, 3300000,
> > +};
> 
> > +static const u32 vemc_voltages[] = {
> > +	2900000, 3000000, 3300000,
> > +};
> 
> Several of these tables appear to be identical.
> 
I will use the same voltage table in the next patch.

> > +static inline unsigned int mt6358_map_mode(unsigned int mode)
> > +{
> > +	return mode == MT6358_BUCK_MODE_AUTO ?
> > +		REGULATOR_MODE_NORMAL : REGULATOR_MODE_FAST;
> > +}
> 
> There is no need for this to be an inline and please write normal
> conditional statements to improve legibility.  There's other examples in
> the driver.
> 
will fix it in the next patch.

> > +static int mt6358_get_buck_voltage_sel(struct regulator_dev *rdev)
> > +{
> > +	int ret, regval;
> > +	struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
> > +
> > +	ret = regmap_read(rdev->regmap, info->da_vsel_reg, &regval);
> > +	if (ret != 0) {
> > +		dev_info(&rdev->dev,
> > +			 "Failed to get mt6358 Buck %s vsel reg: %d\n",
> > +			 info->desc.name, ret);
> 
> dev_err() for errors here and throughout the driver.
> 
will fix it in the next patch.

> > +		return ret;
> > +	}
> > +
> > +	ret = (regval >> info->da_vsel_shift) & info->da_vsel_mask;
> > +
> > +	return ret;
> > +}
> 
> This looks like a standard get_voltage_sel_regmap()?
> 
MT6358 has buck voltage status registers to show the actual output
voltage and the registers are different from the voltage setting
registers.
We want to get the actual voltage output, so we use the da_vsel status
registers here.

> > +err_mode:
> > +	if (ret != 0)
> > +		return ret;
> > +
> > +	return 0;
> 
> Or just return ret unconditionally?
will modify it to return ret unconditionally in the next patch.

Thanks a lot.
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
