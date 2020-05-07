Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5151C8C56
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mnzKpsCo4dFR5epfIt1rn02SwaYP8y8l/XBkdZzBzM=; b=FmGoWq4XE2Fv7+
	Zfhq8mNpAO+53YR/3KAv4yZ00o1AghTX2wBFcs6UbuDFeCUt2cvLJHcIchGtdoTM2Cy0jotQSAdZD
	1KJYNVk2ZSP1paDWqo/1w+wcJn5kgsEVROj6IW+8mjcPN2PjogrMSdJTGLzCWZOMEwdjo9cbwNNW7
	vi8E7IqipXFG66tUvhUjy270U/T9yBU2opM31SYy36RwUISOX796VZ5D4N9D3dffLBZFNX/5Ws150
	/z1zbXP4D0yByV+ucYnOBCLInKxUHVwmSM37prDdrBroo7vjnGo/JXPHfn3dQRsRUHls48RaRSXfU
	YQTqhYdkUZCr8opVn3ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgZ8-0003Kf-Mn; Thu, 07 May 2020 13:27:54 +0000
Received: from mail-db8eur05on2067.outbound.protection.outlook.com
 ([40.107.20.67] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgZ1-0003Jl-6U
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:27:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kCe+bdonr+3GzASV0wOY+p+fAx1BFGcjbxsnjTlccKhijOujLxyNErQiqQI9CWZIaXQZ0rPg5fPz5m2BuN6/XEjFQT0rCJf32imYibYGmeOcX/qf6OvVmhjIaGfpwEQoDq9SDr6LCxdxPAJi46ZthOZxNELLqYeBZGNUqgEYIVJgxDvI4hjvlh1Q5HmYxqBPp5bsdFz3kcaJhTUWyz9pa45lN7BsShtV8S/SjE14J0oEBHaQxCozswjzRodQge7yugeQTHFhMqTpSCienSQoq9n2/CJq+eKO0zI8eSwn/AUNHw/RZqlD8w6+AEfaGRUS25poxGKmu1/Aoml0heZEFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MGFtqqBFNhY1cxN4CySsuYKwqXE3WNZAIbsx9Niiy/Y=;
 b=XPx1Cday+hyaklCq8CPQ9t4fT+4QuNmbTf78AUInkwxRM8uke3o6tVxtLVz6QvnQPHkJoRRs1Rhu90PrPahxPf+q24PcGB8Nwi94/t6+71f46GFZOUW+hXX5zsX2PwMhus+Ojgd//W3sACCvLlTTmulLOdhMHUqnduHGFN6Evz1yjbVuJyqtKPaDsGLF8P5anLaA6l35V1ROmBl7JN8QszT44GVHFXV1oM9gBG60MnM5X6y7hYQtNEMh2/TMsuZwo/+F+hBiGEOL7FnJYHkTaFLNx8NlT5c2P80uMR0vQ+PAEtapMUNMy9GC6NGkdo39EaljmKzVpd8vjlSvqSnlSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MGFtqqBFNhY1cxN4CySsuYKwqXE3WNZAIbsx9Niiy/Y=;
 b=Gf8R5r4d4tOPDvWoEfgqUE+1w4ZMIiEIxTPJinnca10jhpgjkDYDCO9UFjnYRWCriO0w7GNTk9TH0xVW+2gc0woQv98FUP2DWg6D8aj/au+JdplIfU5+uHbwOS5NYKOWpfUt96pUOsTp++3I/Koyps6XL7nrzXCdZl+yu3ubyM8=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5877.eurprd04.prod.outlook.com (2603:10a6:20b:a7::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Thu, 7 May
 2020 13:27:44 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2958.030; Thu, 7 May 2020
 13:27:44 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, dl-linux-imx
 <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH] PM / devfreq: imx: Fix inconsistent IS_ERR and PTR_ERR
Thread-Topic: [PATCH] PM / devfreq: imx: Fix inconsistent IS_ERR and PTR_ERR
Thread-Index: AQHWJHCXcppwWXj5OkSdoM89ND1ZGKicnXng
Date: Thu, 7 May 2020 13:27:44 +0000
Message-ID: <AM6PR04MB496619DB404ADC0AC81E813C80A50@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20200507131245.GA709@embeddedor>
In-Reply-To: <20200507131245.GA709@embeddedor>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cc06d28b-641e-489a-43d9-08d7f28a6cfb
x-ms-traffictypediagnostic: AM6PR04MB5877:|AM6PR04MB5877:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5877886F5486300D732246D880A50@AM6PR04MB5877.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cWEetxA8iovql9uyGns0jNHNXclcGl7+otuAeYGITfSkLOIaMVwzrbPvwV3erizxUuM/nJQF7QJTd7UgWLLO+LkpBx6sHPwRMB9TtjUaTcoFM+bP1QwH20qNpgP6awQyXFDKyYuyRuhRu7TxnGzH6Xaqv2RPRPzTJkAlyTiIbPtyA66+f9J6LSbM9IM8XTe4RBQ3cf8AWhCwUI/W0vQwdwsk3OGh8r7OzCnSbO4Jlvd1g5nOgPraSQ8Gf/iOar1kfN1pJhmOfLrkAjuU1CREXs/OZJYS3vOjYk6i7VbcjKw2e11hjwxQqxon5Mha2tP+Yu4bGuH05neIAaH6HKM05VfID1TNrD4rapf1VbIRYCjunT8zNj5zp7icLxIcXnZbydeHR2XdgCDet/+4b7+tczFx0tdkJErehVru5/LAuuDQKP/chVPqimKvvmW2Dswtv7l97mCeK0IEuJLED3IKjZaQoKZ3/rVtz5dkVJKFtA1MwCGscfdJj2rftUOi9zwpLX5Bs/4zb/yiry4Z9wAZfNM2lM1LIIc+JGnf0O9ovs0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(376002)(396003)(39860400002)(346002)(33430700001)(54906003)(33440700001)(86362001)(8676002)(76116006)(44832011)(66946007)(110136005)(33656002)(316002)(8936002)(52536014)(6636002)(64756008)(6506007)(7696005)(66476007)(186003)(66446008)(71200400001)(55016002)(26005)(9686003)(83320400001)(83280400001)(83310400001)(83290400001)(478600001)(4326008)(2906002)(5660300002)(66556008)(83300400001)(7416002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: JXb6b3QJEXLjPnAdxHzhxJcycIVUR0bRqq2MmKlOq8hSWuc569DNxteTesx7pyRzpAFAiXyjxN0etwtSrJrVc68cbrIe7GJPiBJrgjd7v7AA5nKRVvBz9uU8U1lepHcpmKyop0jm2Yx5+Vu2hXbIxYBMvOzUutp/XoQMxhPyBTkqNMGM/1y13yYo6xNe3ktivGxjWNvmNxdXuXEokIHnqXIrNEHrAy9iGZopmv+NWZCTHFwbb6RjD+TvSRUJ2dk8z01+Zqq+HpA7GoUtZDI/rNLmpdegsI4ZQbw5tyBu+BIrdzNAjmymq7Z0SadIvXprIiqJ2ncSznI+y3j16ga7SklBMGmKpdobBVgUC0RgeZwLcGUTGTEegYNZ/V41EH7UnNN9Z1aPd8yCuqP1DGFvBHtb4n8xHW6oGl5+yJu5QklYjpKGh52eY/vkKpirB8rdyNQnt861h9M6pGOeaVgIAWudETCgu+TaO9xgES1CiLJ2v7/dtS25w/gN6KYi42lj+GpE6PgAwgksWJEZ4oMn2/ttV9GFX/YD7x26kkQqnJQnf1/b8XR5e22Phhyg0EZmwlOMpxqxQeIf0VH530fXjEaxDqhxnkgfQMgLOLR5Hm4xj+4E0AsddJsLJWGPo31JT5bucRsmpPA17kvMLFtvQa2twd0iNDelo+cSl84SpDIKf8xTCeXvcZlQYeA5DiOxu2R2J/BqutXlAQqIoD3WV9ER5hM4xpNBtnb01zuw+1JnPTNziik907ZnP+IwS4fTe7bFJdNYO4uDwtHDkS3TM7AjXbggPILqXQr4tUsWOo0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc06d28b-641e-489a-43d9-08d7f28a6cfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 13:27:44.2180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OFOJ8qgXBAhZxAbNtPOYqk5krl5iOvmg7VkWjN9xvpiaS9sGNwNDP+BDN1TyrInhmrI17ws7OOGBkaZ5utiKIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5877
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_062747_236818_CA2C8822 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.67 listed in wl.mailspike.net]
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Gustavo A. R. Silva <gustavoars@kernel.org>
> Sent: Thursday, May 7, 2020 9:13 PM
> 
> Fix inconsistent IS_ERR and PTR_ERR in imx_bus_init_icc().
> 
> The proper pointer to be passed as argument to PTR_ERR() is
> priv->icc_pdev.
> 
> This bug was detected with the help of Coccinelle.
> 
> Fixes: 16c1d2f1b0bd ("PM / devfreq: imx: Register interconnect device")
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks for the fix.
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  drivers/devfreq/imx-bus.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c index
> 532e7954032f..4f38455ad742 100644
> --- a/drivers/devfreq/imx-bus.c
> +++ b/drivers/devfreq/imx-bus.c
> @@ -88,8 +88,8 @@ static int imx_bus_init_icc(struct device *dev)
>  			dev, icc_driver_name, -1, NULL, 0);
>  	if (IS_ERR(priv->icc_pdev)) {
>  		dev_err(dev, "failed to register icc provider %s: %ld\n",
> -				icc_driver_name, PTR_ERR(priv->devfreq));
> -		return PTR_ERR(priv->devfreq);
> +				icc_driver_name, PTR_ERR(priv->icc_pdev));
> +		return PTR_ERR(priv->icc_pdev);
>  	}
> 
>  	return 0;
> --
> 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
