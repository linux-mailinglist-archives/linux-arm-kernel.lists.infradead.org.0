Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E357D6EB58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 21:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gfFqJQzlydxBSnUYYSqfwAIsrDivGgWRGYPuv2HHyxk=; b=Og5mQPedApDcLePHWpiiwAOYB
	OtQklqf2nVXgGkEq8yg+DqNxyWzYKQY5JHGmtT0IsJv/sta4oy5pSSNH6oKB7TMxi64/CAcHD6dSt
	y5EJq1+c18J5Lk7pkAUTqQ0jca3+xm/k7KxNV2gMJnB5OySl1ZZ2nMWLKWNKW498uKJisDAtmxpeQ
	AYyPu4IVb2fNZ0AeKi5RN+dEB2l/3ToKEYhaf+5EKahOy9xPV5yDt4OTy3tyfJiw22ZRDiy7zs+vH
	JZAzBB1dyLmQUVFM8vfcKW9QnD5S+gbtq0qTQSCtn0YfpRr0h/E1TiNrlqlsUCbtivDudLCS19fta
	0SS7c+Abw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYsf-0001xo-7U; Fri, 19 Jul 2019 19:49:25 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYsP-0001xL-Mq; Fri, 19 Jul 2019 19:49:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 99FD610A1171;
 Fri, 19 Jul 2019 12:49:06 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id Ta1JIFvkTkV3; Fri, 19 Jul 2019 12:49:05 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id D0B0310A2B7D;
 Fri, 19 Jul 2019 12:49:04 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 74C762FE2547; Fri, 19 Jul 2019 12:49:05 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH RFC 07/18] clk: bcm2835: Add BCM2838_CLOCK_EMMC2 support
In-Reply-To: <efa635ca-4626-e569-0232-fcbec32f309a@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-8-git-send-email-wahrenst@gmx.net>
 <f6d8fecd-94d3-a5a8-2d4c-c1ae2b6a0919@gmail.com>
 <3b691366-81b1-efe3-8b7e-a81f0fc9c2fb@gmail.com> <87blxrgpdu.fsf@anholt.net>
 <efa635ca-4626-e569-0232-fcbec32f309a@gmx.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Fri, 19 Jul 2019 12:49:03 -0700
Message-ID: <87muh9iz4g.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_124909_776051_2DA64744 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7730753637669498846=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7730753637669498846==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Stefan Wahren <wahrenst@gmx.net> writes:

> Hi,
>
> Am 18.07.19 um 20:37 schrieb Eric Anholt:
>> Florian Fainelli <f.fainelli@gmail.com> writes:
>>
>>> On 7/18/2019 1:47 AM, Matthias Brugger wrote:
>>>>
>>>> On 17/07/2019 21:50, Stefan Wahren wrote:
>>>>> The new BCM2838 supports an additional clock for the emmc2 block.
>>>>> So add a new compatible to register this clock only for BCM2838.
>>>>>
>>>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>>>> ---
>>>>>  drivers/clk/bcm/clk-bcm2835.c | 33 +++++++++++++++++++++++++++++++--
>>>>>  1 file changed, 31 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
>>>>> index 867ae3c..5fe4695 100644
>>>>> --- a/drivers/clk/bcm/clk-bcm2835.c
>>>>> +++ b/drivers/clk/bcm/clk-bcm2835.c
>>>>> @@ -31,7 +31,8 @@
>>>>>  #include <linux/delay.h>
>>>>>  #include <linux/io.h>
>>>>>  #include <linux/module.h>
>>>>> -#include <linux/of.h>
>>>>> +#include <linux/of_device.h>
>>>>> +
>>>>>  #include <linux/platform_device.h>
>>>>>  #include <linux/slab.h>
>>>>>  #include <dt-bindings/clock/bcm2835.h>
>>>>> @@ -114,6 +115,8 @@
>>>>>  #define CM_AVEODIV		0x1bc
>>>>>  #define CM_EMMCCTL		0x1c0
>>>>>  #define CM_EMMCDIV		0x1c4
>>>>> +#define CM_EMMC2CTL		0x1d0
>>>>> +#define CM_EMMC2DIV		0x1d4
>>>>>
>>>>>  /* General bits for the CM_*CTL regs */
>>>>>  # define CM_ENABLE			BIT(4)
>>>>> @@ -1950,6 +1953,15 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>>>>>  		.frac_bits = 8,
>>>>>  		.tcnt_mux = 39),
>>>>>
>>>>> +	/* EMMC2 clock (only available for BCM2838) */
>>>>> +	[BCM2838_CLOCK_EMMC2]	= REGISTER_PER_CLK(
>>>>> +		.name = "emmc2",
>>>>> +		.ctl_reg = CM_EMMC2CTL,
>>>>> +		.div_reg = CM_EMMC2DIV,
>>>>> +		.int_bits = 4,
>>>>> +		.frac_bits = 8,
>>>>> +		.tcnt_mux = 42),
>>>>> +
>>>>>  	/* General purpose (GPIO) clocks */
>>>>>  	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
>>>>>  		.name = "gp0",
>>>>> @@ -2101,6 +2113,14 @@ static int bcm2835_mark_sdc_parent_critical(struct clk *sdc)
>>>>>  	return clk_prepare_enable(parent);
>>>>>  }
>>>>>
>>>>> +bool bcm2835_has_clk(size_t index) {
>>>>> +	return index != BCM2838_CLOCK_EMMC2;
>>>>> +}
>>>>> +
>>>>> +bool bcm2838_has_clk(size_t index) {
>>>>> +	return true;
>>>>> +}
>>>>> +
>>>>>  static int bcm2835_clk_probe(struct platform_device *pdev)
>>>>>  {
>>>>>  	struct device *dev = &pdev->dev;
>>>>> @@ -2109,9 +2129,14 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
>>>>>  	struct resource *res;
>>>>>  	const struct bcm2835_clk_desc *desc;
>>>>>  	const size_t asize = ARRAY_SIZE(clk_desc_array);
>>>>> +	bool (*has_clk_func)(size_t);
>>>>>  	size_t i;
>>>>>  	int ret;
>>>>>
>>>>> +	has_clk_func = of_device_get_match_data(&pdev->dev);
>>>>> +	if (!has_clk_func)
>>>>> +		return -ENODEV;
>>>>> +
>>>>>  	cprman = devm_kzalloc(dev,
>>>>>  			      struct_size(cprman, onecell.hws, asize),
>>>>>  			      GFP_KERNEL);
>>>>> @@ -2146,6 +2171,9 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
>>>>>  	hws = cprman->onecell.hws;
>>>>>
>>>>>  	for (i = 0; i < asize; i++) {
>>>>> +		if (!has_clk_func(i))
>>>>> +			continue;
>>>>> +
>>>> I think that's very hacky. Can't we just create a per SoC list which get's
>>>> passed via .data and in probe we iterate through that list and enable the
>>>> clocks? That would make clear which clocks are just for bcm2838, basically emmc2.
>>> Or within the structure, add a flag that indicates whether the clock is
>>> available or not for a given chip? That would avoid having to introduce
>>> bcm283x_has_clk() functions that needs to maintain a possibly growing
>>> list of clocks. You would still have to check the flag though.
>> I think this is a good solution.
>
> i only want to make sure that i get it right:
>
> - add a new member supported (e.g. unsigned int) into struct
> bcm2835_clk_desc
> - bit 1 should be BCM2835 and 2 should be BCM2711 (so BCM7211 could use
> 3 and so ...)
> - during probing we should check the bit against the SoC bit before
> registration

Sounds good to me.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl0yHq8ACgkQtdYpNtH8
nuisKA/7B7tn9yZajNj3S1X4Wu2P7AX4KXaAobLdyiz87Bngu7XSB9YXUuRIGKle
NiggYWyR9LsM75mqb+FutCnrlWvJuSwsRV/q9SUFyQa77D+lGj69Icyiw1W/8WZn
ZJzr7AQa8VVFOSZk+JkBYnk8GnntdDSbwwM/CfPWPNXoCnvapQImUOSKYkFagj8m
gMiDzYGh4old8CV7+CTlj0Q2L9J2jFejsu6/5rKgFp+ZW6aAX9at8nREfB530B4z
NgjrV9wGPJzBiW4QZP+H9KtRcbycqrp3Zjwj28BHKAG5CUb7RWkCEWLQiX6X7IE7
dA5P0gCjQ6hFb++n8NXsuUm3eLcawlb7I917Xela785Jc0q8Ltj7fxNAEAxY1b3u
XHvu6TunNVRQFrlQSNq41xFqWR4LLwlmexRgbC90SfKSmnmGkG0WeBCNp8054S1B
a61MOF1RJU0rwrjXcE5pbldCIjLRb4TteZx74OalT75fgz8ITwtIb2/qbddOG7M0
jORDl7H328jia5KJOqAhDlF5NH+j3DlNhEVjODQGgnHUpW/oB9ZesZve9RQS1N2w
ky4QJSmT1r1Q6XLuxn0Ju9NO+uHVjfv8KwL0UbE3CFa+v5bJ/UU4C+UsWr/L272Q
IwGftSu/9wi6kukMT7naiBXiYfRbCxlVTq15WVPHZ1SiquoEg+8=
=fiZW
-----END PGP SIGNATURE-----
--=-=-=--


--===============7730753637669498846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7730753637669498846==--

