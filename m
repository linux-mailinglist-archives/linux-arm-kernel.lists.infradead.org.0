Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84D8B65A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEJBGb1eTbTn0o2WooQXe9pGgfw4hWysyi/MTBTmU9o=; b=OlpPOaemNlrbkq
	rPXLZh3d6fmLSLVJC8x70Y4U4qX52bUdEPST+QKDHe7aQcNsZhj3NcYFWNR7eKqBZED4aL4WVdMEt
	hJT0MJY3AhDmY8ahSwWakijuie7NTeOGLP3+ZahizFcwsyjvUTKILOiGoX/yX4iNDeKAv+3mCipch
	02bcvo5aW99nOH++AGqKtt/83na7D4lXuMuRkrK+OP0doGu+QBt7YTj19iYMBr+LAHJy6sPvkvtfK
	6MNZiXq0i9ZXchQnGqqpN4aFM9yTd9PZOn269NqbrRDIUKwmc4rlc7DgDdeAcyDHLFTo0WdSdsUhd
	B/61MzuzTrB4MPtNAMkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAal5-0004aw-6H; Wed, 18 Sep 2019 14:16:39 +0000
Received: from mail-eopbgr710087.outbound.protection.outlook.com
 ([40.107.71.87] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAakt-0004aX-0C
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:16:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j767ujQbE/MsC9Dqwi1KDjgfpM154MYP+2sdv2w4KD3qbiA6XVf+UlCgn4bvCvgzP2HxrB4dl6Bo8/cLTY1/QNf3S+ziJN9rHYd8qT770lHux3TnuN6LYZ2Ul3rJurGZM58V3atUmXDKeOUSMKVWAxEKoh6C2V0ueBKzSUmf5/RCaSmb4XiKOAKWaptFHiDcuATQkeZs3JQefVoL6AShHBIrcpwBOuy84b83jtalbesvaSptefVmXGiM9vFuIaUtPD9kZXL/wABKolqkPm+ti3sJvts3OrWkjqRv8Ds1krFOHslAYr2KNuij/JkJtOGFw0ppKchMFJ0dXK0HmZEEFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7oo/KUudxLbs4wIVfmcw1JSYG60uq/M5b0PW/CeAb0I=;
 b=JkXCpLn0c98rG3MvpD7vKD4ia+1kxCJCtqMXe4NWDmiNciGi/RwHP/0ciWGv67e7rumBeKr6wIc44OjYLGrAQFiKjw9PwSr6fNJr9OK8f6iwgE6l31r+tkjrNp44X87DAbHaSF1nlPTEFLAt+qe4jejT0cuWG3XZJ4f/kcaGo/+GGxf4JOtvCOA5kISCT2jC8sh/gT2Xczj/Z1KSfdgnPdzkmZDRutO4fVnAHoJn0slvkHokhQlz5993BgXjZwZQIce1ECxY9JoZk7RJ2cZVRlVovrTtAbx4KUGDyxz2AToZ07vTRfJPuR06bcKEAqFa4WrgdM40GTKFsSurKq+7Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7oo/KUudxLbs4wIVfmcw1JSYG60uq/M5b0PW/CeAb0I=;
 b=HvCk0AMy3NVt4i6LYsW9fbYoyDCBN5CLuXALH0pvZ/JzZFfZaoXsIU7EG3DYdlV/d+Z2LeA1EcqoBo/7rsoPzhmEMiQ1vRxGlAalsX0OmscIiNGJBDv5dec6ssiFU1ahk4IDdChUPsbKwNGtcpKLPeibYIRvf38dFL7QghNYduk=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6790.namprd02.prod.outlook.com (20.180.17.200) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 18 Sep 2019 14:16:23 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::3515:e3a7:8799:73bd]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::3515:e3a7:8799:73bd%2]) with mapi id 15.20.2284.009; Wed, 18 Sep 2019
 14:16:23 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Markus Elfring <Markus.Elfring@web.de>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "David S. Miller"
 <davem@davemloft.net>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, Hauke
 Mehrtens <hauke@hauke-m.de>, Linus Walleij <linus.walleij@linaro.org>, Michal
 Simek <michals@xilinx.com>
Subject: RE: [PATCH] ethernet: Use devm_platform_ioremap_resource() in three
 functions
Thread-Topic: [PATCH] ethernet: Use devm_platform_ioremap_resource() in three
 functions
Thread-Index: AQHVbiVJrMo9zt2XL0ayrq5tymaMB6cxduyg
Date: Wed, 18 Sep 2019 14:16:23 +0000
Message-ID: <CH2PR02MB700047AFFFE08FE5FD563541C78E0@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <af65355e-c2f8-9142-4d0b-6903f23a98b2@web.de>
In-Reply-To: <af65355e-c2f8-9142-4d0b-6903f23a98b2@web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 077f8b97-4191-4492-4b33-08d73c42c94b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR02MB6790; 
x-ms-traffictypediagnostic: CH2PR02MB6790:|CH2PR02MB6790:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB67905B69A0880457C2CB5A9DC78E0@CH2PR02MB6790.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:473;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(39860400002)(396003)(376002)(136003)(199004)(189003)(13464003)(2201001)(76176011)(2501003)(14454004)(14444005)(316002)(7696005)(33656002)(256004)(5660300002)(52536014)(76116006)(55016002)(99286004)(6246003)(54906003)(110136005)(9686003)(7416002)(6436002)(66556008)(64756008)(86362001)(71190400001)(6636002)(66066001)(66476007)(66446008)(74316002)(4326008)(229853002)(305945005)(7736002)(8676002)(66946007)(26005)(2906002)(71200400001)(476003)(478600001)(11346002)(186003)(486006)(8936002)(25786009)(102836004)(446003)(6116002)(3846002)(53546011)(81156014)(6506007)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6790;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2rRvfyx/M+DWNtDBjMX7uzzSYdn6zxDwopAx+TxazxKfEaCkeg699M6Bkx5J55ooe1illxRyiScTk2F2gVKxgz7tXENtOJId4HaZyyd5ItBdBVnSbo4pLfxqqLH9TunHMK1IwhTcC2xpWIOq6I2XllQopVBxVgdFiFgMrH8JRhnEH1KuXD2qQS4TQ+VNXIFxDyM3qHG33rQz6x8KLNQ8zbh/hDh0FikkcZTRWLOHz7JYCMny4q8AvsUp8BswVavA2xLtnd/kSVnR3VetnRLo9eLDF5wU5fZvam+vP8ijJuG2Fa7IW7Rb/zrPUWfVQRioWP8sIxvrLty/fzfXfGuxxeMYpCuw1ZtCu7hGoWm/iXHAgqYBCFVEM5jWVsvGhFsAywkNAvwf3LgjqT35FksYXJQOWw/Jw2890sgatDLyeQI=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 077f8b97-4191-4492-4b33-08d73c42c94b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 14:16:23.8006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WeIqQ6VdYY/UFfgql0o2nNsC4IJHiEfqhAtjAKcLWIUxEMeZdivl6LEW/E09ifYQ5T1b98YP/epGELLeWO7rlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_071627_045221_4E8EA027 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Himanshu Jha <himanshujha199640@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Markus Elfring <Markus.Elfring@web.de>
> Sent: Wednesday, September 18, 2019 7:01 PM
> To: netdev@vger.kernel.org; linux-arm-kernel@lists.infradead.org; David S.
> Miller <davem@davemloft.net>; Hans Ulli Kroll <ulli.kroll@googlemail.com>;
> Hauke Mehrtens <hauke@hauke-m.de>; Linus Walleij
> <linus.walleij@linaro.org>; Michal Simek <michals@xilinx.com>; Radhey
> Shyam Pandey <radheys@xilinx.com>
> Cc: LKML <linux-kernel@vger.kernel.org>; kernel-janitors@vger.kernel.org;
> Bartosz Golaszewski <bgolaszewski@baylibre.com>; Himanshu Jha
> <himanshujha199640@gmail.com>
> Subject: [PATCH] ethernet: Use devm_platform_ioremap_resource() in three
> functions

Prefer using a separate patch for each driver. Also skip mentioning
"three functions" in commit description.  

> 
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 15:15:06 +0200
> 
> Simplify these function implementations by using a known wrapper function.

Minor nit- Better to mention about these funcs in commit description.
Something like- uses devm_platform_ioremap_resource() instead of using
platform_get_resource() and devm_ioremap_resource() together to simplify.

> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/net/ethernet/cortina/gemini.c             |  6 +-----
>  drivers/net/ethernet/lantiq_xrx200.c              | 11 +----------
>  drivers/net/ethernet/xilinx/xilinx_axienet_main.c |  9 +--------
>  3 files changed, 3 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cortina/gemini.c
> b/drivers/net/ethernet/cortina/gemini.c
> index e736ce2c58ca..f009415ee4d8 100644
> --- a/drivers/net/ethernet/cortina/gemini.c
> +++ b/drivers/net/ethernet/cortina/gemini.c
> @@ -2549,17 +2549,13 @@ static int gemini_ethernet_probe(struct
> platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct gemini_ethernet *geth;
>  	unsigned int retry = 5;
> -	struct resource *res;
>  	u32 val;
> 
>  	/* Global registers */
>  	geth = devm_kzalloc(dev, sizeof(*geth), GFP_KERNEL);
>  	if (!geth)
>  		return -ENOMEM;
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res)
> -		return -ENODEV;
> -	geth->base = devm_ioremap_resource(dev, res);
> +	geth->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(geth->base))
>  		return PTR_ERR(geth->base);
>  	geth->dev = dev;
> diff --git a/drivers/net/ethernet/lantiq_xrx200.c
> b/drivers/net/ethernet/lantiq_xrx200.c
> index 900affbdcc0e..0a7ea45b9e59 100644
> --- a/drivers/net/ethernet/lantiq_xrx200.c
> +++ b/drivers/net/ethernet/lantiq_xrx200.c
> @@ -424,7 +424,6 @@ static int xrx200_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = dev->of_node;
> -	struct resource *res;
>  	struct xrx200_priv *priv;
>  	struct net_device *net_dev;
>  	const u8 *mac;
> @@ -443,15 +442,7 @@ static int xrx200_probe(struct platform_device *pdev)
>  	SET_NETDEV_DEV(net_dev, dev);
>  	net_dev->min_mtu = ETH_ZLEN;
>  	net_dev->max_mtu = XRX200_DMA_DATA_LEN;
> -
> -	/* load the memory ranges */
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res) {
> -		dev_err(dev, "failed to get resources\n");
> -		return -ENOENT;
> -	}
> -
> -	priv->pmac_reg = devm_ioremap_resource(dev, res);
> +	priv->pmac_reg = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(priv->pmac_reg)) {
>  		dev_err(dev, "failed to request and remap io ranges\n");
>  		return PTR_ERR(priv->pmac_reg);
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 4fc627fb4d11..92783aaaa0a2 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -1787,14 +1787,7 @@ static int axienet_probe(struct platform_device
> *pdev)
>  		of_node_put(np);
>  		lp->eth_irq = platform_get_irq(pdev, 0);
>  	} else {
> -		/* Check for these resources directly on the Ethernet node. */
> -		struct resource *res = platform_get_resource(pdev,
> -
> IORESOURCE_MEM, 1);
> -		if (!res) {
> -			dev_err(&pdev->dev, "unable to get DMA memory
> resource\n");
> -			goto free_netdev;
> -		}
> -		lp->dma_regs = devm_ioremap_resource(&pdev->dev, res);
> +		lp->dma_regs = devm_platform_ioremap_resource(pdev, 1);
>  		lp->rx_irq = platform_get_irq(pdev, 1);
>  		lp->tx_irq = platform_get_irq(pdev, 0);
>  		lp->eth_irq = platform_get_irq(pdev, 2);
> --
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
