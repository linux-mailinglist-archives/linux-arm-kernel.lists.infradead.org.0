Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A181176F9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=39wBii2TsfdzG1CbF9tQRAa5RowIgVWs5At/+HQv/UI=; b=H5Rr0queFfURRpg2otDEDXpu5
	Q8IfUxY393TF8fgVA3celRXZ2NDoZ+YNmRSBQ9WIaciX5cy7xIUX9+ZIS0IAdPSXfCrzfEQXJ6euI
	8kf8ntlBxwdWFO7iIhYyf+FhKQZPzEuRYkDlH4OjYgPg7V0NqbdwJVZ64ODOdaJGBCxILhp8ayHsc
	n0tOF+P1JWtgAk6ShZhWoN+JT7BffIGo68sH2NB1tARN3PCoep27hbKhupZdeIphHo8wByAmcPcSe
	kqqjT6dAJgCNmdc0TVGAJr1sONmQKzbr3FIAJdmw9VvKRgA5gtHgpiUaw4I0bs7/LR7WMbfn7Q5fo
	Yt0L9OZ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91L5-0003qX-P2; Tue, 03 Mar 2020 06:47:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91Ks-0003pB-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:47:28 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1j91Kr-0005ML-6Y; Tue, 03 Mar 2020 07:47:21 +0100
Subject: Re: [PATCH V4 2/4] mailbox: imx: restructure code to make easy for
 new MU
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>
References: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
 <1583200380-15623-3-git-send-email-peng.fan@nxp.com>
 <f4b3384d-ee24-e254-2799-69e57625995b@pengutronix.de>
 <AM0PR04MB4481BD4CC61A8E30B8ECB68488E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <e2ba35db-d9dc-83c1-0261-867a706dd285@pengutronix.de>
Date: Tue, 3 Mar 2020 07:47:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB4481BD4CC61A8E30B8ECB68488E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_224722_601416_1FD73C7A 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03.03.20 07:27, Peng Fan wrote:
> Hi Oleksij,
> 
>> Subject: Re: [PATCH V4 2/4] mailbox: imx: restructure code to make easy for
>> new MU
>>
>>
>>
>> On 03.03.20 02:52, peng.fan@nxp.com wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Add imx_mu_generic_tx for data send and imx_mu_generic_rx for
>>> interrupt data receive.
>>>
>>> Pack original mu chans related code into imx_mu_init_generic
>>>
>>> With these, it will be a bit easy to introduce i.MX8/8X SCU type MU
>>> dedicated to communicate with SCU.
>>>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>> ---
>>> V4:
>>>    Pack MU chans init to imx_mu_init_generic
>>> V3:
>>>    New patch, restructure code.
>>>
>>>    drivers/mailbox/imx-mailbox.c | 127
>> ++++++++++++++++++++++++++----------------
>>>    1 file changed, 78 insertions(+), 49 deletions(-)
>>>
>>> diff --git a/drivers/mailbox/imx-mailbox.c
>>> b/drivers/mailbox/imx-mailbox.c index 2cdcdc5f1119..e98f3550f995
>>> 100644
>>> --- a/drivers/mailbox/imx-mailbox.c
>>> +++ b/drivers/mailbox/imx-mailbox.c
>>> @@ -36,7 +36,12 @@ enum imx_mu_chan_type {
>>>    	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
>>>    };
>>>
>>> +struct imx_mu_priv;
>>> +struct imx_mu_con_priv;
>>
>> Please move imx_mu_dcfg below struct imx_mu_priv. It was my mistaked, i
>> missed this point.
> 
> That's fine.
> 
>>
>>>    struct imx_mu_dcfg {
>>> +	int (*tx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp, void
>> *data);
>>> +	int (*rx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp);
>>
>> please add init function here as well.
> 
> ok. I'll add as below:
> 
> int (*init)(struct imx_mu_priv *priv);
> 
>>
>>>    	u32	xTR[4];		/* Transmit Registers */
>>>    	u32	xRR[4];		/* Receive Registers */
>>>    	u32	xSR;		/* Status Register */
> [....]
> 
>>> -
>>>    	priv->side_b = of_property_read_bool(np, "fsl,mu-side-b");
>>>
>>> +	imx_mu_init_generic(priv);
>>
>> please use priv->dcfg->init(priv);
> 
> I assume you agree the code I packed in imx_mu_init_generic.

yes

> I just need to assign init = imx_mu_init_generic; And use priv->dcfg->init(priv),
> right?

right.

> Thanks,
> Peng.
> 
>>
>>> +
>>>    	spin_lock_init(&priv->xcr_lock);
>>>
>>>    	priv->mbox.dev = dev;
>>>    	priv->mbox.ops = &imx_mu_ops;
>>>    	priv->mbox.chans = priv->mbox_chans;
>>> -	priv->mbox.num_chans = IMX_MU_CHANS;
>>> -	priv->mbox.of_xlate = imx_mu_xlate;
>>>    	priv->mbox.txdone_irq = true;
>>>
>>>    	platform_set_drvdata(pdev, priv);
>>>
>>> -	imx_mu_init_generic(priv);
>>> -
>>>    	return devm_mbox_controller_register(dev, &priv->mbox);
>>>    }
>>>
>>> @@ -367,6 +378,24 @@ static int imx_mu_remove(struct platform_device
>> *pdev)
>>>    	return 0;
>>>    }
>>>
>>> +static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
>>> +	.tx	= imx_mu_generic_tx,
>>> +	.rx	= imx_mu_generic_rx,
>>> +	.xTR	= {0x0, 0x4, 0x8, 0xc},
>>> +	.xRR	= {0x10, 0x14, 0x18, 0x1c},
>>> +	.xSR	= 0x20,
>>> +	.xCR	= 0x24,
>>> +};
>>> +
>>> +static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
>>> +	.tx	= imx_mu_generic_tx,
>>> +	.rx	= imx_mu_generic_rx,
>>> +	.xTR	= {0x20, 0x24, 0x28, 0x2c},
>>> +	.xRR	= {0x40, 0x44, 0x48, 0x4c},
>>> +	.xSR	= 0x60,
>>> +	.xCR	= 0x64,
>>> +};
>>> +
>>>    static const struct of_device_id imx_mu_dt_ids[] = {
>>>    	{ .compatible = "fsl,imx7ulp-mu", .data = &imx_mu_cfg_imx7ulp },
>>>    	{ .compatible = "fsl,imx6sx-mu", .data = &imx_mu_cfg_imx6sx },
>>>
>>
>> Kind regards,
>> Oleksij Rempel
>>
>> --
>> Pengutronix e.K.                           |
>> |
>> Industrial Linux Solutions                 |
>> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.p
>> engutronix.de%2F&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Ce59c2b
>> ea2efd47dc8fb408d7bf39f68c%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
>> 0%7C0%7C637188127988825530&amp;sdata=d%2FN82zkoGy7m3yXf6Q8h9
>> OWYs0ldZlozDzPwAnOMDkI%3D&amp;reserved=0  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
>> |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:
>> +49-5121-206917-5555 |

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
