Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC971F21C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 00:20:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzUldoFlfkhL2nNJa970+828/sHyH8BK66BFc5EgQiA=; b=L57wlAlnF7Tbhj
	s0mvbuaT+gdbJ6Lgf2dptLLpsK9Ir1vxIXXVTq0t36r+ua0xQUCUpHnxkh5s21ljAaUgFMhPfgB34
	r3s5ZuK7KekcTSlh18rPEqZC7YuLUPym5k6krzdZxMdSyfWpL3XLDWLoIJJN2cYmcvCXi8Pg07UJd
	lOGiDVpQGRgMN/WehjjqOW0HW1kWCro/niFfpunL1DRbGRnDMYGBpXq+1ZDdb0FV5dcaEBTouDviq
	VTE1wmzKy9aq3erHzubrbdTApfR7F6MAB7XTE+gCNimaaxCKcWQK48I2hXdx7hlPK315NB8+ODF7s
	SwCWDE0q+rHYGFFHwkFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQ7X-0003GG-U0; Mon, 08 Jun 2020 22:19:55 +0000
Received: from mail-am6eur05on2087.outbound.protection.outlook.com
 ([40.107.22.87] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQ7Q-0003Fl-Li
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 22:19:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UcvrGXcc+eqYDo8RE66odIjRuv3tQ50yUl6Cwj0rFIMQ75LV38nqlnZ0gA140we2ZqY0V1LH9lp6dZbZb53LS7k33C8IWPev2hIuLcQiaYjkoYjh+FfE1xN/QIvG3PUlJiSZkOIFhpv9245/tn6oe2aSQGk/KE3tkWiKd3VJ1NCP3DyoK8wnBahZEBMJ6y6ToFQvLvevW/3RSprSgnb+/LYh0ad4fNDJFvDC+zQvxTlhQTU6Pp/fioxvkchDgnIZF6XrJjhPsqQpoKDlqxoEgQ9zy5EO7XBTle2yq8CRdWUc2RLECQXQ5cMBOFwJaNROCgLONKLKvfqOu1G63RAsKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JII/8HUtHSBP7cs7TskOuCEgn1qOEgNt4Zt1AOFsecs=;
 b=CBW5E+1LJ9s1TLM7dESRdS1nQ8QMrY4thQHsNo69qs4HCzZNajRgJaa+Ogogsmpnaaa2GOONvzj3fkfOFoDozwbXnI8JTt+lwaEXm6au3tWpEfFiB1P9jQnuxsGzw/mCaoS3pD6rd8H6Ofg+PRUf4htN6zkTmikscFfwGesGW9BTBe9K+1W883RKxKEdMvnEBAFSSsfmV+P/2szLrOgsr3slj0ohjVCHnsOwDc2eiEx9Zo9UfbJWn5or4X8MZRqvXpa+TIYkMtQKwx8N1i8Z+FjWpVcuHGWU6k/9K5+V23cWZEFsthhBLe+wzrzdGAbisTboQBTRh0pvFCCZmNbHkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JII/8HUtHSBP7cs7TskOuCEgn1qOEgNt4Zt1AOFsecs=;
 b=e+2jn0D/PdNdF0uBZduKJtDAkTdADzQX0vSN0J/CCjA2ROMqWZAGWeplqe8O5TTGZRX+voQONWH7pJWnB9yrVyK5M7wXb+0bqv/2OwLGL+GqGYMQ7hDZuARVVl8EDWdA3GzuGqv2yeYJCtpw8nznPHwxL0PAemgATb57YHRTAsY=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (2603:10a6:803:121::30)
 by VE1PR04MB6765.eurprd04.prod.outlook.com (2603:10a6:803:126::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Mon, 8 Jun
 2020 22:19:42 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::48b1:c82c:905:da9f]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::48b1:c82c:905:da9f%3]) with mapi id 15.20.3066.023; Mon, 8 Jun 2020
 22:19:42 +0000
From: Leo Li <leoyang.li@nxp.com>
To: "Y.b. Lu" <yangbo.lu@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWL9lTv6y2cJdOCkaNFPUZn6UCfajPZbSQ
Date: Mon, 8 Jun 2020 22:19:42 +0000
Message-ID: <VE1PR04MB668745C015609F7D875FBFDE8F850@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20200522013052.2838-1-yangbo.lu@nxp.com>
In-Reply-To: <20200522013052.2838-1-yangbo.lu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d7208504-cdad-4840-c84d-08d80bfa0af8
x-ms-traffictypediagnostic: VE1PR04MB6765:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB67659CFB6E6BAE98A75FD1838F850@VE1PR04MB6765.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 042857DBB5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: idBy6kzVaeoodNA1tqPDWYIytfyW7Ie6git2jDvpkuojn1pCXv9/It1MfrJ8PZljWKItBnJ7KUYlZbRPaKSMRBHXUvGsKaQqUYI9fpYUMG63fAvzBS7Y8w3nezbQkMBq7wj81/KszaAj2X1U+MYTodRkKCt7wodl7fsx1Oxj+hgiZdefnlxMpNM6d6//XhztcMdZK/6Nf/zksR5Ulg324wjiFZZQxgqTTO8IWdFwfNkMZgBqlWLcGYBFio22NixHjzCvmAavKxrSESaWPC5P3iYpuBRH7OvmgEYnptl+gxoJOt8ugWXGRoBNkz/ECxEDgOlj7A4DKDOOPT70fKG0bw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6687.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(66556008)(26005)(86362001)(316002)(54906003)(186003)(53546011)(6506007)(110136005)(83380400001)(4326008)(71200400001)(7696005)(66446008)(478600001)(5660300002)(64756008)(55016002)(66946007)(9686003)(76116006)(66476007)(52536014)(8936002)(33656002)(2906002)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: XEEUqDW13aQIB+5tjuJgJ7csLwcaPLFPVxn+Awt4IbacpUibXblcG/pNDyUpGJbrYSe/u7UWRF18Gr3sC1Idrr404QyCc90war65eBhtolvhOiwA8dT1R5YkTSdC1DiwrExBfOSdKHFSKb/s5sf3u2yf+yw2GuVQ0PkcezuE1ZewjvmNlFYw/CU4pzR3RJ174boqmP8sWDwrGbTTQYvMVYcCgccH8uoOCZi27/QYzGq09GQ864fWzQc0pe6eERaoY0XPQJcJ1hHgYyRqFeqSJR1Lbw3Wx0FsYpXgCoVw/QhsCKPzhIHT/GMfjIqM+NRWKRuSpsfMvhGySR/i9TuxgEKxXrNGofBhYYiCJKgm1aepJKFnsk38toYx/zq9hQSXMSl+rMYtXXAzzB4DqUAWce7xTYM++K3zbt4+1ArDM35DbQseA2188UkE24731z2n1xeuGkLHcK+oz2B4yPquf2Hh9swazkcVSvnZgSFbwQeMjlYEmoPL1sQM47wNEMjB
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7208504-cdad-4840-c84d-08d80bfa0af8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2020 22:19:42.6241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v+99a7nFKiGb/WSASk3dj3JAuNh9BUN03u+R+N9ad6uPYV+OCHGaP0wKrnIvCg/5R5/WX0RhumRHhiWOIzoRUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_151948_818899_7CEFB1F4 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.87 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Cochran <richardcochran@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "Y.b. Lu" <yangbo.lu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Yangbo Lu <yangbo.lu@nxp.com>
> Sent: Thursday, May 21, 2020 8:31 PM
> To: linux-arm-kernel@lists.infradead.org
> Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>; Leo
> Li <leoyang.li@nxp.com>; Richard Cochran <richardcochran@gmail.com>
> Subject: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> The timer fixed interval period pulse generator register is used to generate
> periodic pulses. The down count register loads the value programmed in the
> fixed period interval (FIPER). At every tick of the timer accumulator overflow,
> the counter decrements by the value of TMR_CTRL[TCLK_PERIOD]. It
> generates a pulse when the down counter value reaches zero. It reloads the
> down counter in the cycle following a pulse.
> 
> To use the TMR_FIPER register to generate desired periodic pulses. The
> value should programmed is, desired_period - tclk_period
> 
> Current tmr-fiper2 value is to generate 100us periodic pulses.
> (But the value should have been 99995, not 99990. The tclk_period is 5.) This
> patch is to generate 1 second periodic pulses with value
> 999999995 programmed which is more desired by user.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
> Changes for v2:
> 	- Added more discription in commit message.
> Changes for v3:
> 	- Mentioned effect of the change in commit message.
> ---
>  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
> index 760a68c..b2ff27a 100644
> --- a/arch/arm/boot/dts/ls1021a.dtsi
> +++ b/arch/arm/boot/dts/ls1021a.dtsi
> @@ -772,7 +772,7 @@
>  			fsl,tmr-prsc    = <2>;
>  			fsl,tmr-add     = <0xaaaaaaab>;
>  			fsl,tmr-fiper1  = <999999995>;
> -			fsl,tmr-fiper2  = <99990>;
> +			fsl,tmr-fiper2  = <999999995>;

I noticed that the fiper2 is now the same as fiper1.  Can we just use fiper1 to generate the 1s pulse?  Or both of them have to be used?

>  			fsl,max-adj     = <499999999>;
>  			fsl,extts-fifo;
>  		};
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
