Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF451BC526
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY01J4I+w7/6NkUcDquM4wCIUnXYMrV/YsUZwNZJ8K4=; b=phcKR/k3C7aoNX
	kOEY46O56pSwBZWPq6978j6CPpJAWlMaChrUAyaf07WpPzFwj+oA8ivE/QDq5YpP3Of3Je33DZsnF
	kmgFMCYQUwvL4hQpMXpCIVddtHo/LEKdsDUFXNEiVXBJdjCiOtDF2H+yeHZNd1+vxhtlZNp1gBGHN
	BmwJdtCsEsg2CryAIgp5ZkX835yciXkDjZTnobJtot+/qpKiV47jBCceO8+xTsa2sEwMCwRXXCAiV
	iB47hZGcnRCQlxj/GA1vkprmOocXAN7DhqkH4loP37roNPpQLtmyuvPZ0xqRy3ptjKy14aGIL94wU
	6aqSzsqUAW2Pg15zyLqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChP9-0001ur-MM; Tue, 24 Sep 2019 09:46:43 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChOu-0001u6-8V
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:46:30 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-32-bDsbnQiNOe68NbhcH2sO_g-1; Tue, 24 Sep 2019 10:46:21 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 24 Sep 2019 10:46:21 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 24 Sep 2019 10:46:21 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Anson Huang' <Anson.Huang@nxp.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Thread-Topic: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Thread-Index: AQHVcra7p8HS4HCHSk+GwFkUo51L56c6k17Q
Date: Tue, 24 Sep 2019 09:46:20 +0000
Message-ID: <6cfb1595992b46dc884731555e6f0334@AcuMS.aculab.com>
References: <1569315593-769-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1569315593-769-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: bDsbnQiNOe68NbhcH2sO_g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_024628_568684_909D8CD9 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
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
Cc: "Linux-imx@nxp.com" <Linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang
> Sent: 24 September 2019 10:00
> Add helper variable dev = &pdev->dev to simply the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/pwm/pwm-imx27.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c
> index 434a351..3afee29 100644
> --- a/drivers/pwm/pwm-imx27.c
> +++ b/drivers/pwm/pwm-imx27.c
> @@ -290,27 +290,28 @@ MODULE_DEVICE_TABLE(of, pwm_imx27_dt_ids);
> 
>  static int pwm_imx27_probe(struct platform_device *pdev)
>  {
> +	struct device *dev = &pdev->dev;
>  	struct pwm_imx27_chip *imx;
> 
> -	imx = devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
> +	imx = devm_kzalloc(dev, sizeof(*imx), GFP_KERNEL);
>  	if (imx == NULL)
>  		return -ENOMEM;
> 
>  	platform_set_drvdata(pdev, imx);
> 
> -	imx->clk_ipg = devm_clk_get(&pdev->dev, "ipg");
> +	imx->clk_ipg = devm_clk_get(dev, "ipg");
>  	if (IS_ERR(imx->clk_ipg)) {
> -		dev_err(&pdev->dev, "getting ipg clock failed with %ld\n",
> +		dev_err(dev, "getting ipg clock failed with %ld\n",
>  				PTR_ERR(imx->clk_ipg));
>  		return PTR_ERR(imx->clk_ipg);
>  	}
> 
> -	imx->clk_per = devm_clk_get(&pdev->dev, "per");
> +	imx->clk_per = devm_clk_get(dev, "per");
>  	if (IS_ERR(imx->clk_per)) {
>  		int ret = PTR_ERR(imx->clk_per);
> 
>  		if (ret != -EPROBE_DEFER)
> -			dev_err(&pdev->dev,
> +			dev_err(dev,
>  				"failed to get peripheral clock: %d\n",
>  				ret);

Hopefully the compiler will optimise this back otherwise you've added another
local variable which may cause spilling to stack.
For a setup function it probably doesn't matter, but in general it might
have a small negative performance impact.

In any case this doesn't shorten any lines enough to remove line-wrap
and using &pdev->dev is really one less variable to mentally track
when reading the code.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
