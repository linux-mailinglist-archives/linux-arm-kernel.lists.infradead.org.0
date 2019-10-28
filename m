Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE59E739E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:29:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPqYvsmXYwPi4M3C1tsOjZmaNJcFg63bxVmbZKTC7MI=; b=dNvg8XI1e0QyuS
	jgbpBG7eogc3/IwQqSLJpjQXuCLritvfLZMVzteyAya9saInRJjCg+bk7wUdR44XH78HWkC1vWLHm
	DNWscBliG6MG4L9iYFXhBcb5TkDUNkV3aQJVk7Za/FXsixAXnV1ATpSOYXLSk0n0RSPTo48vmkEoM
	5gqb+BbCJoxz6zOgERjxsiDoo5CdwQ9Wm/JjAJLA05xQHfITBsZ9FDQKVV+Kk0gRa6rq4G5c4/Gqh
	Tnx240Kk8eILWGGDanpdEvYNbczQkDHbmcUtpOf5Y67gPR0wa1h74Le3mCFoRYb9gANVI4+t1NNBX
	15vCMVdpt2x2I7eAGtxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP60y-0005gg-St; Mon, 28 Oct 2019 14:29:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP60p-0005fz-JY
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:28:52 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iP60k-0003zY-2k; Mon, 28 Oct 2019 15:28:46 +0100
Message-ID: <c98fcd3bbd4e2166b2938fd2f8fa6f1a5a270384.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6qdl: add TQMa6{S,Q,QP} SoM
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Date: Mon, 28 Oct 2019 15:28:45 +0100
In-Reply-To: <20191026093356.GE14401@dragon>
References: <20191011143651.6424-1-p.zabel@pengutronix.de>
 <20191026093356.GE14401@dragon>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_072851_642239_1629831F 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
 Markus Niebel <Markus.Niebel@tq-group.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Sat, 2019-10-26 at 17:34 +0800, Shawn Guo wrote:
> On Fri, Oct 11, 2019 at 04:36:49PM +0200, Philipp Zabel wrote:
> > From: Markus Niebel <Markus.Niebel@tq-group.com>
> > 
> > Add device trees for TQMa6S, TQMa6Q, and TQMa6QP embedded modules.
> > The A and B SoM variants are for hardware revisions that differ in
> > how the I2C devices are connected. For details, see [1].
> 
> It looks like a perfect case to be handled by DT overlay.
> Did you consider of using that?

I don't think using DT overlays is feasible. The EEPROM that could tell
us which variant we are running on is on the I2C bus that is different
between the two variants.

[...]
> > +&ecspi1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_ecspi1>;
> > +	fsl,spi-num-chipselects = <1>;
> 
> Obsolete property.
> 
> > +	cs-gpios = <&gpio3 19 0>;
> 
> GPIO_ACTIVE_HIGH
> 
> > +	status = "okay";
> > +
> > +	flash: m25p80@0 {
> 
> Node name should be generic, while label can be specific.
> 
> > +		status = "okay";
> 
> Not really needed.
> 
[...]
> > +&iomuxc {
> > +	tqma6 {
> 
> Drop this container node.
> 
[...]
> > +		pinctrl_i2c1_tqma6: i2c1-tqma6grp {
> 
> The '_tqma6' suffix isn't really useful.
> 
[...]
> > +&pmic {
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_pmic>;
> > +		interrupt-parent = <&gpio6>;
> > +		interrupts = <10 8>;
> 
> IRQ_TYPE_LEVEL_LOW
> 
[...]
> > +	pmic: pf0100@8 {
> 
> Node name should be generic, while label can be specific.
> 
> > +		compatible = "fsl,pfuze100";
> > +		reg = <0x08>;
> > +	};
> > +
> > +	sensor0: lm75@48 {
> 
> Ditto
> 
> > +		compatible = "lm75";
> > +		reg = <0x48>;
> > +	};
> > +
> > +	eeprom0: m24c64@50 {
> 
> Ditto

Thank you, I'll fix these.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
