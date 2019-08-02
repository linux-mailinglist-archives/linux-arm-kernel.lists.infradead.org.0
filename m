Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30F47EFA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9JYxYF6keHJ8VW+NrHRp6AZrK5X2vVA6drz7Hd2iUI=; b=SUtcxivmTJSD39
	ZaG1FXSHMnjstljbO1QZzE2jPke5Z3LV1wBbPhWPXFIK8JnvL0Ge8W4L9jcEHkj0ek7/6OrbmkLr1
	NjS6OxKyVGcoFpLjyY3Ru1nXLci7sJDnE+pe+LkWKU2O89b6ybUP3hct+0WcrYb/6EbmiacGLKY2F
	dgLauK4jJ+QSJUdX81pnqB2HndLSxeojlAIkBAMy5Ojl4Shy7HeAzX8VpciORqd6F+V1fHIX7RrqT
	SkjviwqmaU1+0/Liruz8rUJHmNdpTxXwZoTjIhO9/S9dPCWGtBE/bBlOu9N4rYhneLxxL4EYDt4FX
	/HlyVOkwbCBiK6+kTl6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTHr-0003jL-SY; Fri, 02 Aug 2019 08:51:44 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTHd-0003iW-T3
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 08:51:31 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 397875C004F;
 Fri,  2 Aug 2019 10:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1564735885;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ViFlUbZIH2j98+ivvpISqsxLBF3nyNE80C/Y7Lye+Lo=;
 b=bhv7PrpZGNeJpxcSV8U7HrJBJjE+RstPAgkir7If8M/JOcUoCmodOqFKKwLPdU2CqGqmdA
 2p5XggEf7tQZAZAEAZAC9QuoYmX0x5VNWJbaKQA7/mkg7YkjzZqtPxzGSdCDuOdO+7/dWp
 gxQfUYOjUEL4NMo5yA0o/R+Y9A9+rC8=
MIME-Version: 1.0
Date: Fri, 02 Aug 2019 10:51:25 +0200
From: Stefan Agner <stefan@agner.ch>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v2 07/20] ARM: dts: imx7-colibri: fix 1.8V/UHS support
In-Reply-To: <723f191c5893984c8fbe711163524dc7ebf09a5b.camel@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
 <20190731123750.25670-8-philippe.schenker@toradex.com>
 <CAOMZO5B5HnqpLrDjyGtqSQpVXmcoZuGLvCzKVUhwLb-_ZO_Xog@mail.gmail.com>
 <723f191c5893984c8fbe711163524dc7ebf09a5b.camel@toradex.com>
Message-ID: <de6bec64012876c07267024cd4b2d2d5@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_015130_388067_7D3A1580 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, michal.vokac@ysoft.com,
 kernel@pengutronix.de, Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, Max Krummenacher <max.krummenacher@toradex.com>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-07-31 16:52, Philippe Schenker wrote:
> On Wed, 2019-07-31 at 09:56 -0300, Fabio Estevam wrote:
>> On Wed, Jul 31, 2019 at 9:38 AM Philippe Schenker
>> <philippe.schenker@toradex.com> wrote:
>> > From: Stefan Agner <stefan.agner@toradex.com>
>> >
>> > Add pinmuxing and do not specify voltage restrictions in the
>> > module level device tree.
>>
>> It would be nice to explain the reason for doing this.
> 
> This commit is in preparation of another patch that didn't made into this
> patchset (downstream stuff in there). But I will do another patch on top that
> will use this patch here. That should anyway be in mainline.

I guess what Fabio meant here is explain this patch.

The commit message really could be improved, e.g.:

Add pinmuxing and do not specify voltage restrictions for the usdhc
instance
available on the modules edge connector. This allows to use SD-cards
with
higher transfer modes if supported by the carrier board.

--
Stefan

> 
> Philippe
> 
>>
>> > Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
>> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
>> > ---
>> >
>> > Changes in v2: None
>> >
>> >  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
>> >  1 file changed, 22 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-
>> > colibri.dtsi
>> > index 16d1a1ed1aff..67f5e0c87fdc 100644
>> > --- a/arch/arm/boot/dts/imx7-colibri.dtsi
>> > +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
>> > @@ -326,7 +326,6 @@
>> >  &usdhc1 {
>> >         pinctrl-names = "default";
>> >         pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
>> > -       no-1-8-v;
>> >         cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
>> >         disable-wp;
>> >         vqmmc-supply = <&reg_LDO2>;
>> > @@ -671,6 +670,28 @@
>> >                 >;
>> >         };
>> >
>> > +       pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
>> > +               fsl,pins = <
>> > +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5a
>> > +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1a
>> > +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5a
>> > +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5a
>> > +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5a
>> > +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5a
>> > +               >;
>> > +       };
>> > +
>> > +       pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
>> > +               fsl,pins = <
>> > +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5b
>> > +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1b
>> > +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5b
>> > +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5b
>> > +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5b
>> > +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5b
>> > +               >;
>> > +       };
>>
>> You add the entries for 100MHz and 200MHz, but I don't see them being
>> referenced anywhere.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
