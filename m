Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03CCEFA63
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:04:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKZMOkMuuBj/5jfmZg/5IJr5u/4/sTCM5RWYBmaAtk8=; b=ZAo82QImtXr20L
	u/3WdY3Fp7uWhtSOdcmKaTOsAS1HrJlRcy/WvlG9zLYcDrZKBHnVfeYBvQsrbdy6Y/A0xJleDa8eZ
	qFG111jEtv3t+zfN9gQrJ1PkcyxRv20CqWbxl2aUTVtuDZ9p+fP9G9DFoTW4wv0QoQ1z9y1FeXAWj
	GMvr2eRV5dKbQjnncqAf+jsq/nWr9tC+xNVlIecAEovFT2q6UNAqoj65CFsmPIY5080Ymt6OHR9Z7
	HG7uNI2VmUrzXEYztRDqcRzrAs8bdHh6tr/TLQ1S9BFJZ2Bay1132RNxkHFGwep1XsGVx6ezZl+L7
	GrhyfxxCymapJMC5CV0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRvhX-0007of-IE; Tue, 05 Nov 2019 10:04:39 +0000
Received: from mail-eopbgr30088.outbound.protection.outlook.com ([40.107.3.88]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvhM-0007nG-Fx
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:04:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JShYW5tCyDKa0mVCaCY8gRoFKLqKuOXvVgT1f6Kjk235M2iaDpAHvN6X45KqqxtcdkoSkSupPsrGWcTiiW6334mzyCF0uLqaL2x9sLMCydDd7uovGV4e6QihwbPTxDoHDbjbceJb869o8fGogTaaDCLVWaAucNzLW7PwweyCmSyeVNjrgjKREZZzASKPK02CZxkZ5sO2WiFtNX01HEo1EBW7fE8hlwRW0r4wUaENSWz0JuDGhpgD/6Te+ziMLfuEMbwbAtmS/1AjRoRMS4idx+NLJJzGlrc+3WuDwj4GOApUH/s6u75v6vXA7UPm9fPeEG77cU56zZ0TqAO0yec5uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n7DJgdwZvma5Kt2IERTx97PHw09SHyxhlqv71znHz9g=;
 b=FGevoTS+igaTmDTXIJtAic7ewbwatsUd+JRi4dpZG57Q6A7tviQPnJViQaibW/NloJMEizu4lG8+/mzVYXFfMInHlcokZT0R/6hOKQawUndyh/CR8FC/Y3gZVOnUOGI/mhakZh5FGe0afZeCKboe4mgv+mfGDZ1ncPe0H61JINGjcdWFFU8ULjEujEDWw329TXZiSPR9EOswFZWmAU0dihGVx96C3xOi3D012JShrBtZKllUuN61gItvkAfOblTedpK9wWkrDs0YeqKxTZoNpACg10JEv3wmJb/Wf+2ROKbgcJqah66vo0bpZEIbzugGuXfmSUDS2owWjFkYtajGYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n7DJgdwZvma5Kt2IERTx97PHw09SHyxhlqv71znHz9g=;
 b=GzeeLfd6y8ZlblWbVvx40ux5daxgnmzy7AAyB5wPmjudkd47yynezrUEUXwoPaNHlcJzn+/q+y0MkHD+DEoVDS4UKA/O75D5XzqQ79Eugb8lyCSoA4hyIyS4wcFFpMRVtu59m9Vdm7O6T4IZrAEqNIx+QCnpEQfwi9Ul8B3ChTI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5156.eurprd04.prod.outlook.com (20.177.42.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 10:04:22 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 10:04:21 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: RE: [PATCH] clk: imx: pll14xx: initialize flags to 0
Thread-Topic: [PATCH] clk: imx: pll14xx: initialize flags to 0
Thread-Index: AQHVk6mXpyRie0JbfEaM7Eg+PLW60ad8VNgAgAABuPA=
Date: Tue, 5 Nov 2019 10:04:21 +0000
Message-ID: <AM0PR04MB4481010CA9D3672F55208092887E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
 <5fc2dfd6-ae59-6af8-0423-ddc8e0b4f78f@free.fr>
In-Reply-To: <5fc2dfd6-ae59-6af8-0423-ddc8e0b4f78f@free.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 12507ae2-c688-4d42-0432-08d761d787c4
x-ms-traffictypediagnostic: AM0PR04MB5156:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <AM0PR04MB515640A188637CE49E5EAF7F887E0@AM0PR04MB5156.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(39860400002)(396003)(376002)(51914003)(189003)(199004)(4326008)(76116006)(66946007)(86362001)(6306002)(7736002)(9686003)(478600001)(6246003)(99286004)(54906003)(71200400001)(71190400001)(316002)(55016002)(44832011)(476003)(486006)(446003)(11346002)(14444005)(256004)(305945005)(74316002)(6116002)(52536014)(6916009)(2906002)(25786009)(186003)(66476007)(45080400002)(33656002)(66066001)(26005)(14454004)(66556008)(229853002)(966005)(66446008)(64756008)(6436002)(5660300002)(7696005)(8936002)(8676002)(81156014)(76176011)(81166006)(53546011)(6506007)(102836004)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5156;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IF+06+Wqb4xdXHW1SQWL7uNVGdYYAegZYwqLnB2H6i2ZbTP8R3Ta0Be64wsmvB4npeXgSzITKpQBr8pqYomGNqWUj9mvUZWV2FhNQS2Vq5TGunOEhuEv4aIsQjw+9XRv/taJ+SpsuHPLGMw5uuE4F3NvwX/09pWwCFHXOCoDuTMuxrVeDcG1l7pH1SUsyVvtKrNkG81Nk3RJ4J6Xe7CvKX0AWaZVV3SVmO5Iu71mAUvkBzLmdwV+A2r3/19DElVck8Sn1aXlYSem11sLsphdeHfb5nmq7AXcSuK4neAeWTYpTfQEZMXkH1kX7nm39A6sKwjDUGyaJPsO3Cosmf59joyM2NVqF4w9n91ixrNinrQRl7gdj2KUr9XGZkA3KyCGHmMg5W/GIsZBNljWfzjY4Sns0rpDYShvjOy1pi1jBtBdVHTQrC/3b0r6AVNSjbgmTqYug2tJkxuzPH+J2Ty4GtwihgwcyagFLqBTa7RJpxc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12507ae2-c688-4d42-0432-08d761d787c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 10:04:21.8418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ne8SfVnWlDhZ5Wm71qazNaPP61UdPPkg6CLsjXkKTaL0FzjiNZLCbQg7vf9eR5x2AE/BQxfbkv2lKdTTxw3L7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_020428_661930_303BE335 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] clk: imx: pll14xx: initialize flags to 0
> 
> On 05/11/2019 08:21, Peng Fan wrote:
> 
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > init.flags is initialized with value from pll_clk->flags, however
> > imx_1443x_pll and imx_1416x_pll are not static structure, so flags
> > might be random value. So let's initialize flags as 0 now.
> 
> This is incorrect. When using an initializer list, struct members not explicitly
> specified are initialized to 0.
> 
> https://eur01.safelinks.protection.outlook.com/?url=https:%2F%2Fport70.net
> %2F~nsz%2Fc%2Fc11%2Fn1570.html%236.7.9p19&amp;data=02%7C01%7C
> peng.fan%40nxp.com%7Ca94356700d9c4f61614a08d761d53936%7C686ea1
> d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637085440717516996&amp;s
> data=cUQmXzdbaK6oZqWtJc3Vnh0FJBD1v1b%2FJqb4lRPis5w%3D&amp;rese
> rved=0
> 
> > The initialization shall occur in initializer list order, each
> > initializer provided for a particular subobject overriding any
> > previously listed initializer for the same subobject; all subobjects
> > that are not initialized explicitly shall be initialized implicitly
> > the same as objects that have static storage duration.
> (You might point out that the kernel is compiled with -std=gnu89 not C11, but
> GCC's semantics are the same.)
> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgcc.gn
> u.org%2Fonlinedocs%2Fgcc%2FDesignated-Inits.html%23Designated-Inits&a
> mp;data=02%7C01%7Cpeng.fan%40nxp.com%7Ca94356700d9c4f61614a08d
> 761d53936%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637085
> 440717516996&amp;sdata=nsiLE%2B91lfZ15zJtvg8D8nJbIpKJkPyaoKBtmMoa
> AwQ%3D&amp;reserved=0

Thanks for the info.

My understanding is wrong.
The patch was initially try to address what [1] did.
In [1], static was discarded and moved to a common place.
So I thought flags should be initialized as 0.

> 
> > diff --git a/drivers/clk/imx/clk-pll14xx.c
> > b/drivers/clk/imx/clk-pll14xx.c index fa76e04251c4..a7f1c1abe664
> > 100644
> > --- a/drivers/clk/imx/clk-pll14xx.c
> > +++ b/drivers/clk/imx/clk-pll14xx.c
> > @@ -65,12 +65,14 @@ struct imx_pll14xx_clk imx_1443x_pll = {
> >  	.type = PLL_1443X,
> >  	.rate_table = imx_pll1443x_tbl,
> >  	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
> > +	.flags = 0,
> >  };
> 
> What tree is this patch based on?

https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/log/?h=for-next

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/commit/?h=for-next&id=43cdaa1567ad3931fbde438853947d45238cc040

Thanks,
Peng.

> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felixir.b
> ootlin.com%2Flinux%2Fv5.4-rc1%2Fsource%2Fdrivers%2Fclk%2Fimx%2Fclk-p
> ll14xx.c%23L65&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Ca9435670
> 0d9c4f61614a08d761d53936%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
> 0%7C1%7C637085440717516996&amp;sdata=fPeaCJQKsdWZKVG431KNL8v
> hqT0y2TUMMntf1C66YNg%3D&amp;reserved=0
> 
> Regards.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
