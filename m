Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9CA23034
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yn71mn7I1nKEqUqvK8blvP5MwHzDpJ9QlASZRk92tu8=; b=a7lncNVSnIxXcT
	Zg5DtaBx2hqf0+6MSNRD0laE7p7CEknktZ5pKbBGV7n+AADAbP7QK26J7zbUKY9ExsvAmgtGDGjZS
	Ansg0Hsv4gdd5eDrVzhBbpaU6extt4NgSlGN4T46SmocQggBWGV5UuWqiHXHtzrg4v4U75CkwWROB
	kr0gikzzsvCO933Dnlfubv52yN0V1WEoOKgpIWfHeTl3HpM2C0CXhprvyXh5xzP6DQZ+hNRUaJg2/
	z1jh7s7mV7OHsYFko5oLZEtew0mdgfopQx/IwBmsSgEMo0KNyraozb2g/J5CXlzVn12/thjtiE1j7
	i775d+qe7MGZfQK63yTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeWG-0002NP-UE; Mon, 20 May 2019 09:23:44 +0000
Received: from mailgate1.rohmeurope.com ([178.15.145.194])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeW5-0002Jp-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:23:35 +0000
X-AuditID: c0a8fbf4-519ff700000014c1-db-5ce2721175f3
Received: from smtp.reu.rohmeu.com (will-cas001.reu.rohmeu.com
 [192.168.251.177])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 0D.F3.05313.11272EC5; Mon, 20 May 2019 11:23:29 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS001.REu.RohmEu.com ([fe80::d57e:33d0:7a5d:f0a6%16]) with mapi id
 14.03.0439.000; Mon, 20 May 2019 11:23:18 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "leonard.crestez@nxp.com" <leonard.crestez@nxp.com>, "broonie@kernel.org"
 <broonie@kernel.org>, "lee.jones@linaro.org" <lee.jones@linaro.org>
Subject: Re: [PATCH 3/3] mfd: bd718x7: Make power button press duration
 configurable
Thread-Topic: [PATCH 3/3] mfd: bd718x7: Make power button press duration
 configurable
Thread-Index: AQHVDunSFj6MPiSb0EipgvofK8FLX6Zzm/sA
Date: Mon, 20 May 2019 09:23:17 +0000
Message-ID: <0c254b96e72605deee4d19bcab96e160187ebb4a.camel@fi.rohmeurope.com>
References: <cover.1558341613.git.leonard.crestez@nxp.com>
 <3ffd7b9d0b9cc45ac0fd671a701f857be4cfde46.1558341613.git.leonard.crestez@nxp.com>
In-Reply-To: <3ffd7b9d0b9cc45ac0fd671a701f857be4cfde46.1558341613.git.leonard.crestez@nxp.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-ID: <70E01FF649E1384FA8BCE343059391EB@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02TaUwTQRiGM91tWaBLhoJ0rGLCRiWYyOWRjRJD4p8alZhovFLFBVYWpVvc
 FhSNUrAelB+oWBM3URQxQSRBihJA8WjwJEqMpqiotVI8UAgqBhE8dlsU/sy8M+8+3/tN8i2B
 ae6qdEQOb2EFnsmlVCH4zZrRhrnhwltDYmVTND3kaMXoHk83oB1en4qubH+kpBsau3G61tGC
 057vtwFd8+qLknb2uJW0/ecFjD7f9VhBH2hrD6I/XNbSZZcegtQwvcNeA/R1p+uA3llbqtK/
 dF9T6Ruri/QNA80KffmvRP0354xVxMbQlAzGUrA6J5tPWLIllHvvtSnyaqld9S+KVVbQHGMH
 wQSC89Fox+8gOwghNNANUNfPwSDZ0MB7AD0a22AHBKGCKcj+3P9NJKwAyHexB8gHDF7A0TGb
 iMtABFyLrhwq8etIuA559p9QBHQy+vTjqlLWOJyFxKdufwAJ05DPVYUHwsoBOizOk3Uw3IyG
 mx6oZA1gNCq1DvjrYFCLnO+GlYGuIaq+1okF9BT0sef3+D2F2ka8uNw0BuNQfWtCAE1F1VVj
 IKBj0PEy73gL4ej+SR9+BESJkxLECVqcRIuTaHESfQYoawEyMjm52YyFTYoX2Px4wcQZpS3T
 ZHSCwBAMNYM/rmUuAAlAqUn19rcGjZIpMBcaXWAqoaCmkMMVXoMmLMOUVcgxZi5dyM9lzS6A
 CIyKJOfFegwaMosp3M0Kpn/WNAKntORo6y2DBsrJ21k2jxX+udMJgkKkcoeUEy6w2eyurTm5
 lglbQQTLxUN0kWaWz2IFJt/CpcvTkm6WxkW21FLumzwJJ815jFG6DaAPQBJxs8p7CiNe33ov
 rf3yqsF5E8/qtKRNBqAMcPn8/7g+oJVeHUGul7tRS3/H/2p9UpBCClqyxh9kYSYsnRW0Fuve
 HCoyHI217sBf9ZetMY4srZhZcm7oDpnalJb8NcwKEjf9mN3SEJE1vG7PohUz5rZ/bGwrWF04
 MJi+0/OtV1CnXV94rjeCW2Dpre8c1EY9UXN7Fu/z3Yj7vHLbyKzMZ7En+9yhbeKfveW2FDcs
 sR1csZzt7OB5Jrijxpp51kHhZo5JmoMJZuYvI0nkf9oDAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_022333_829754_FD0BC518 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.15.145.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "yibin.gong@nxp.com" <yibin.gong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for implementing this Leonard. This is how it should have been
done right away. Just one little thing.

On Mon, 2019-05-20 at 08:55 +0000, Leonard Crestez wrote:
> Allow overwriting the values in BD718XX_REG_PWRONCONFIG0 and
> BD718XX_REG_PWRONCONFIG1 via devicetree.
> 
> Keep existing values (from bootloader or OTP) if property is not
> present.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/mfd/rohm-bd718x7.c | 42
> ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/mfd/rohm-bd718x7.c b/drivers/mfd/rohm-bd718x7.c
> index cdbef83884f0..dffa3f4bffad 100644
> --- a/drivers/mfd/rohm-bd718x7.c
> +++ b/drivers/mfd/rohm-bd718x7.c
> @@ -79,10 +79,48 @@ static const struct regmap_config
> bd718xx_regmap_config = {
>  	.volatile_table = &volatile_regs,
>  	.max_register = BD718XX_MAX_REGISTER - 1,
>  	.cache_type = REGCACHE_RBTREE,
>  };
>  
> +static int bd718xx_init_press_duration(struct bd718xx *bd718xx)
> +{
> +	struct device* dev = bd718xx->dev;
> +	u32 short_press_ms, long_press_ms;
> +	u32 short_press_value, long_press_value;
> +	int ret;
> +
> +	ret = of_property_read_u32(dev->of_node, "rohm,short-press-ms",
> +				   &short_press_ms);
> +	if (!ret) {
> +		short_press_value = min(15u, short_press_ms / 500);

This should rather be implemented as rounding not flooring. Giving for
example 1400ms from DT should rather yield timeout 1500ms than 1000ms.
I'd say it makes the difference at least for long press tmo.

> +		ret = regmap_update_bits(bd718xx->regmap,
> +					 BD718XX_REG_PWRONCONFIG0,
> +					 BD718XX_PWRBTN_PRESS_DURATION_
> MASK,
> +					 short_press_value);
> +		if (ret) {
> +			dev_err(dev, "Failed to init pwron short
> press\n");
> +			return ret;
> +		}
> +	}
> +
> +	ret = of_property_read_u32(dev->of_node, "rohm,long-press-ms",
> +				   &long_press_ms);
> +	if (!ret) {
> +		long_press_value = min(15u, long_press_ms / 1000);

Also here we should do rounding. 900ms from DT should rather be 1s than
10ms. Especially when the long press causes forced power down and short
press may be 10 ms...

> +		ret = regmap_update_bits(bd718xx->regmap,
> +					 BD718XX_REG_PWRONCONFIG1,
> +					 BD718XX_PWRBTN_PRESS_DURATION_
> MASK,
> +					 long_press_value);
> +		if (ret) {
> +			dev_err(dev, "Failed to init pwron long
> press\n");
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static int bd718xx_i2c_probe(struct i2c_client *i2c,
>  			    const struct i2c_device_id *id)
>  {
>  	struct bd718xx *bd718xx;
>  	int ret;
> @@ -115,10 +153,14 @@ static int bd718xx_i2c_probe(struct i2c_client
> *i2c,
>  	if (ret) {
>  		dev_err(&i2c->dev, "Failed to add irq_chip\n");
>  		return ret;
>  	}
>  
> +	ret = bd718xx_init_press_duration(bd718xx);
> +	if (ret)
> +		return ret;
> +
>  	ret = regmap_irq_get_virq(bd718xx->irq_data,
> BD718XX_INT_PWRBTN_S);
>  
>  	if (ret < 0) {
>  		dev_err(&i2c->dev, "Failed to get the IRQ\n");
>  		return ret;

Other than that:
Reviewed-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>


Best Regards
	Matti Vaittinen

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
