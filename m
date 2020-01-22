Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765E81449C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 03:26:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqfhJhHKpL8jiad3WNkDPhIEOWBRgyb0zLC/hrwMepo=; b=q82C82WleuNmQf
	lH2UmUNsEb/yTyapaiMLId9TNsaztEM7zyoFGmJOVesZ72lVlNNDprpHEuDWzlj0f1S6BEOzb4nrD
	XEleCE0aHwI8Zr7wnIEBJwL3G8JJtQRrlA5/YuX18MpoUvunwowE7jezjasmpM1gxqjQ9Ad5TP9MQ
	mK6eC0NqyvEvjNU1SAzjlQOmCZTLYLeTFrQBOXPIRbvMAmZ0SxaEMwEwjXrvJwMB0XPX1Zh/b5vHE
	eyjLd/4gaBa8sXdBso9R2OURC5BcD7whODB3tVWFqpyf3mHaiFTN7cBBqe6k+ZkkVJ5QjcrO1hZho
	5bLebPT1bQNYw26wGZYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu5jF-0001On-J1; Wed, 22 Jan 2020 02:26:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu5iv-0001Gq-T1; Wed, 22 Jan 2020 02:26:31 +0000
X-UUID: f25dfe8354034e38a5355a622da7b9c5-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=lN1pViJIxLnb7UBsGaWmhhbnVEIdvsVPgiy5VY3Xy3Y=; 
 b=LtKA1lMx97XZv7UIK/nq3aXN6POHNFlSHf3A7TTdcuW53AvGsKjbFpJEoPrSNgOuqo7CkhKXhjyuQwFwPIM8LR6YdNs7wUiiKeV6mbdOKLiJA+v6jZKNeNe5809//Ml3vVA3iiTKVmagLo7lY35gzm11O1erNmOkMo1IRD9v+VM=;
X-UUID: f25dfe8354034e38a5355a622da7b9c5-20200121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1292939656; Tue, 21 Jan 2020 18:26:27 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 18:24:34 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 22 Jan 2020 10:22:53 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 22 Jan 2020 10:22:09 +0800
Message-ID: <1579659806.6612.12.camel@mtkswgap22>
Subject: Re: [RESEND 3/4] regulator: mt6359: Add support for MT6359 regulator
From: Wen Su <Wen.Su@mediatek.com>
To: Mark Brown <broonie@kernel.org>
Date: Wed, 22 Jan 2020 10:23:26 +0800
In-Reply-To: <20200120190427.GO6852@sirena.org.uk>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-4-git-send-email-Wen.Su@mediatek.com>
 <20200120190427.GO6852@sirena.org.uk>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_182629_966425_2EC6BC14 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org, Liam
 Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Mon, 2020-01-20 at 19:04 +0000, Mark Brown wrote:
> On Mon, Jan 20, 2020 at 03:47:29PM +0800, Wen Su wrote:
> 
> This seems pretty good, a few comments below but they're fairly small
> and should be easy to address:
> 
> > +static int mt6359_set_voltage_sel(struct regulator_dev *rdev,
> > +				  unsigned int selector)
> > +{
> > +	int idx, ret;
> > +	const u32 *pvol;
> > +	struct mt6359_regulator_info *info = rdev_get_drvdata(rdev);
> > +
> > +	pvol = info->index_table;
> > +
> > +	idx = pvol[selector];
> > +	ret = regmap_update_bits(rdev->regmap, info->desc.vsel_reg,
> > +				 info->desc.vsel_mask,
> > +				 idx << info->vsel_shift);
> > +
> > +	return ret;
> > +}
> 
> This looks like you should be using regulator_list_voltage_table() and
> associated functions, probably map_voltage_ascend() or _iterate() and
> just a simple set_voltage_sel_regmap().
Thanks for your suggestion.
Currently it's using regulator_list_voltage_table() and
regulator_map_voltage_iterate() as below:

static const struct regulator_ops mt6359_volt_table_ops = {
	.list_voltage = regulator_list_voltage_table,
	.map_voltage = regulator_map_voltage_iterate,
	...
The reason to use mt6359_set_voltage_sel() is to convert selector value
to hardware register index value:
	idx = pvol[selector];

To avoid using mt6359_set_voltage_sel(), the *_voltages array need to be
filled with zeros as below: 
Current:
static const u32 vemc_voltages[] = {
	2900000, 3000000, 3300000,
};
static const u32 vemc_idx[] = {
	10, 11, 13,
};

change to:
static const u32 vxo22_voltages[] = {
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2900000, 3000000, 0, 3300000,
};
> 
> > +static int mt6359_get_status(struct regulator_dev *rdev)
> > +{
> > +	int ret;
> > +	u32 regval;
> > +	struct mt6359_regulator_info *info = rdev_get_drvdata(rdev);
> > +
> > +	ret = regmap_read(rdev->regmap, info->status_reg, &regval);
> > +	if (ret != 0) {
> > +		dev_err(&rdev->dev, "Failed to get enable reg: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	return (regval & info->qi) ? REGULATOR_STATUS_ON : REGULATOR_STATUS_OFF;
Thanks for your suggestion.
I will update it in the next patch.
> 
> Please write normal conditionl statements rather than using the ternery
> operator to improve legibility.
> 
> > +	switch (mode) {
> > +	case REGULATOR_MODE_FAST:
> > +		if (curr_mode == REGULATOR_MODE_IDLE) {
> > +			WARN_ON(1);
> > +			dev_notice(&rdev->dev,
> > +				   "BUCK %s is LP mode, can't FPWM\n",
> > +				   rdev->desc->name);
> > +			return -EIO;
> 
> I'd expect the device to go out of low power mode then into force PWM
> mode if it has to do that rather than reject the operation.
The device low power mode may control by hardware pad, so that the
reason to reject the operation is the device low power mode can not go
out by software.
Another scenario is one user set the device to low power mode, we think
it's not suitable to change device mode to _FAST mode by another user.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
