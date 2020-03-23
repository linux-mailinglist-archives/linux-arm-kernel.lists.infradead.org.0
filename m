Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A4B18EDA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 02:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wxmlFYyPIhzysl/XVov2f+gL9XNM9aAgytdlHmo/V4=; b=oNBbMXleGn60FX
	O/wY29JWtUrElbarACybC/K1aV48ankDfFfiwu6FKP/P66zik/ThFkiDSkX6kJ+mXK8zlWrilETjY
	0EposHNQ8uch+PgsfnF4xQI2C4Im1TP+cdsepONosnOoGGOEolD+mk8tmrk/FSvVWGgCyMO/AXiG7
	73uEdZu8M0bxg09W6SfgoUAyZO4pAWQgekSBYhJUqbSRhGvCKdQxd1NhXj5WfEeqkm75NmScacnV8
	zkgFW8cWJmhqMxpzo7cYhHJr2Ef4o3rC2NmO0etJE6sjkyy6uHUVk4N28gpikCQoL6qBmIfCWWvyt
	I79njAv0f0W/ni95aviA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGBvs-0000My-Bg; Mon, 23 Mar 2020 01:31:12 +0000
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGBvf-0000MT-VM
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 01:31:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/JzvsX0Sa7BFoVLwODXJR0jWpAcdZnkuJlfkuaFwvWSGcYrWWDkRIe26ZyRg7VLgRb0mQnOmB1OvvifttcNFX2fIQQgKpKcjsoF1u45EYusHizu7hjKke+tXy1PRDEfWneJtvYZxBZFvoqSko14JScFJR3qBVR//o9Ep67FHSvbZq6cm6nh70fSexv3zWXFgHzkIqWYnFr/AbTxhJD3Cp7Ua/QWQH23TezolS3G8A33+jBn0lwvrSAlFTlCJI2zty5HkIrtcpSkdQjxycVB0m0xWL6awhZnwHbwpjrL7z+aSxYKxfyz+HsbTEWA1wawsRPsW6kf3FlYr5JaDF5j7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UHah5/VfeCrKea9zpork/Yjrgydoh38ExCKpNnQo7RI=;
 b=ZakkDBs3VBl6zwVtVmuEZIO7uw2hC9LmQGuPTcwNhd2Fr0Ep27E/Nc12sj+visoK2+BWYaZD9IO8w00s4LTkh9UWBNZ71i3qFzvaYkVHs+7y3r+grVYf+NsGn0K+2SxQ8jHr+/dFRkS4BlNRCx5WtCSwihnZztW+BG7uuDFIvQ3uawNJDtVQMYE417zbD066OLnxxkuHq2HS6/X+bjPffslTfWt9UZ6LqJCn/tB/jvyaxUd7xaEOyCs6ftp8e1HqQEN5UWlwNKqxsYnbNfnF2Yh2o6gMHWwYU+zvu3qfQ1uDz7tAcSB5PGT8gncOCVhO9hX/K5D80XDCLm39JWjj4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UHah5/VfeCrKea9zpork/Yjrgydoh38ExCKpNnQo7RI=;
 b=m1u2hbYX6Mqcd6vLrhceKlN3CT4xuzZT77tbvTN+SSnjD7RLCblhppGMMmTD1/KcttMowOFZVfMHXxDMBrdKWjrMBPbRqukmiyO0wuJeHM+GYhC2EKjQDvawg4ptfeyl87VwAc6mo+nDAvNJ70CdgsczZDtJwiP+EDr4+AWLj8o=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6674.eurprd04.prod.outlook.com (10.255.182.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Mon, 23 Mar 2020 01:30:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 01:30:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "nsaenzjulienne@suse.de" <nsaenzjulienne@suse.de>
Subject: RE: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
Thread-Topic: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
Thread-Index: AQHV9tsrS4nkBuxsuEaY66LPIEgB5ahVd31w
Date: Mon, 23 Mar 2020 01:30:53 +0000
Message-ID: <AM0PR04MB448169DA5092A277A11BBABA88F00@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: da9e1d03-b4e9-4a00-e448-08d7cec9d428
x-ms-traffictypediagnostic: AM0PR04MB6674:|AM0PR04MB6674:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6674E615AA5DE3DDB9FD34DA88F00@AM0PR04MB6674.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:254;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(199004)(6506007)(186003)(4326008)(110136005)(52536014)(5660300002)(316002)(54906003)(55016002)(2906002)(9686003)(66446008)(64756008)(66556008)(66476007)(44832011)(86362001)(33656002)(71200400001)(478600001)(76116006)(7696005)(8676002)(66946007)(81166006)(81156014)(26005)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6674;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HjhafMNrygEzsLH3OiGx28ONawF7sRdI4lbL10N/RcFhPJM50jpbMX+uINOPLB9Ob6NsMN21so1Bmyx7XO8TurfJb7hPor8NHcvZqNPSvAb3OCO+r0McWVcLbAHAxkXbl1i+nx2P2HE5imPG2LR5JOiq9Oy+OI1YlSw7BjnDbXrVUbAYB1ajx2+jNGMsz7eYjYTGrtEP+k0nKz57xbNXeOgJKGCJXTugCJTRUnS26V9xfmKapXrwHJURv+deCfn4JrQI7KAYxU8rMcvMbKhLK5JkLZsnYI4QIdhD0e1MWaXhFAwqeQmX/CSzLCM4yP58t2C76XmJ0m6lVVuu2lO40kHJYu2Qy5UV1ZcstAhcNVfrGDJs7M3Xcc/XMrq+95eCheFpaJFlsVQFaXJ4XvbYyJtaNUmDzE2FOBHpOMSxGT6B0+kD+yLPIKnOccQ2/2Hw
x-ms-exchange-antispam-messagedata: +qTbs05tx/7U+U7oW/ZUiU6hmiL/jR7/kI+3iPR6yTMJkIPc9Zi4KwyLC+H/5roDiQGBOzyNtX10nD+Etnrq2I6XsVotW2VJuswS3EJlNgQqdyzy7ktpX0yS7X9qZQhndsTfOYiIm/1uIeegO+wrRw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da9e1d03-b4e9-4a00-e448-08d7cec9d428
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 01:30:53.8563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c5wOpNKWLXzPWRe7LXh1kJ4tDNa+iwjbTzltSi+Gh3MteQOWbvJwACCVvY6qsaeRjowF2gTX88dVX84JCbVUWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6674
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_183100_015475_2EB366A2 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable
> without EXPERT

Gentle ping..

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> enables both ZONE_DMA and ZONE_DMA32. The lower 1GB memory will be
> occupied by ZONE_DMA, this will cause CMA allocation fail on some platforms,
> because CMA area could not across different type of memory zones.
> 
> Make CONFIG_ZONE_DMA configurable without EXPERT option could let
> people build non debug kernel image with CONFIG_ZONE_DMA disabled.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig index
> 217e12ff2115..c4ba8bf011e1 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -270,7 +270,7 @@ config GENERIC_CALIBRATE_DELAY
>  	def_bool y
> 
>  config ZONE_DMA
> -	bool "Support DMA zone" if EXPERT
> +	bool "Support DMA zone"
>  	default y
> 
>  config ZONE_DMA32
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
