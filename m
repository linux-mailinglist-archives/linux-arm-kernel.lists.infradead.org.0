Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AEF161C29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 21:10:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=FwaDvP7azn4sv8TanbyJEc4IsDN86n6ZjT+GN6vKc+Y=; b=WBI2lo+3WlDr/o
	Rm1gJcuvRzM3S2a02o5s685EFgEwsaNzWmuIG1A+IeALMdcV56NrP4tZaggYalnFlpW4n3D6CGrIh
	kpC2K6Xq7FkkfN3SwWbOZXsyIPR42EKzvsqoJVXUPriN7qru6DAGPTHwaZK7kxPd3nLhECOgKCnOm
	htN/Rsn0XAz6YMg/9+1s7BMXXA34UZi2dJ7h+q6ymxKMQdHXBWzbThnXLGuo5K5isV5WVnGKBBrMZ
	lW7MABoKkIpGND2eOS69vBcQ9OABPkE5luan5yEqvTH+pxRTx9w0ay1wKFGyYiRQ9sXe/h4TBIN+k
	BeScdXucJiO0hPmtQcBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3miL-0004BM-4N; Mon, 17 Feb 2020 20:09:57 +0000
Received: from mail-eopbgr40041.outbound.protection.outlook.com ([40.107.4.41]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3miB-0004At-KX
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 20:09:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AMFEPxwZkjjo6mDI64PD2lK3WXElvgT/qfjGl1mbb0LIBnbONX8lOCCcNMHqeqZ+KHRmR91T2C4oqVoalh4e4jJZRvLCa9eKY2omSdrrnxFYNpeCDv9J47Gl27/oy2xOd24FLELB0mu7sgyiTN2x/C86Gp7cLjiJi895dmkbFow/fAPCC2Inv9fD0B3CcqUDYAsjOD8QZHXIyYXus1NyedG2Dmc70EXvsViWM7ZLm7Kn8qHaQqxikKZl3TcGV0BO6ZnKAG2E6Ud2hdrUaYruniA6xnkl/3zNHobYusz0s6MgsUYYIjS5hOInbJ+s2u3eLPM//kwmewjTSw9eEztcRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rfter54AeAFRFf/tURQd/DevqtY2aVXTc0Jb1fgMJwA=;
 b=A5br8yqB3znGepqG5+7XF3tTfvKNOlVq/jeIswNEKAiD+dHA8kDqs+xQqKi6IG+UUHMA/qyOZansKQ+0q27wnkT/cHEEWIqeKjFYgqdI3/i9B8QsRfk06W8SD56uH55Ayhg5rQb35llU8+Ygb3KF/zbme0V+QRgn3QMTn/7D3j46P/fEB8yGS8tSvbwlaJincShBw14al4osdUMfbN+lsnNqTWru3xyE4ftbNlVKTbwqqO9OA5v3Z2iGWkMAITHd3b3dROB9/1zdU7hRFxbxudQq5o9OzbtsQZgqC5hJ6EbLJifIvHFnvPLVBwOUmOOcj0wDzJvo+pA/OIsLRFeG0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rfter54AeAFRFf/tURQd/DevqtY2aVXTc0Jb1fgMJwA=;
 b=lFNUhTPVE+Qhl214JNzgFBLp5QjHwylUtyUZVkrAHGmT7UsJXBG5dBveklcqzkB+GBsEQe6r1NbxtdtAQ9ySFEdQjfRUwfMHRN8HapeCCRwUL3yTr+WZ1u9P71r5gKZOtNzdelRy207S26LhcTh+KDakl3/sbePD3SMg4aIwSDg=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6094.eurprd04.prod.outlook.com (20.179.25.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Mon, 17 Feb 2020 20:09:40 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2729.032; Mon, 17 Feb 2020
 20:09:40 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Andy Duan <fugang.duan@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY
Thread-Topic: [PATCH] arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY
Thread-Index: AQHV5caiMKKkq2Vf80m7IxXHefTKlQ==
Date: Mon, 17 Feb 2020 20:09:40 +0000
Message-ID: <VI1PR04MB702395CCF71A85209077F9F1EE160@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20200217191503.31444-1-festevam@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f6d518d0-2a29-48e8-2eb2-08d7b3e55274
x-ms-traffictypediagnostic: VI1PR04MB6094:|VI1PR04MB6094:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB60944AB493073EC38B8146ADEE160@VI1PR04MB6094.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0316567485
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(39860400002)(366004)(346002)(189003)(199004)(9686003)(186003)(44832011)(66476007)(53546011)(26005)(55016002)(71200400001)(91956017)(66946007)(4326008)(76116006)(66556008)(64756008)(66446008)(110136005)(54906003)(2906002)(5660300002)(478600001)(33656002)(7696005)(6506007)(52536014)(8936002)(86362001)(6636002)(316002)(81166006)(81156014)(8676002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6094;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FUdyngtp4oNZ9SIPXqSPRjz8v5mnHjPtEkkE5qaT8wF/8OXwteblARe5BZaUdsbybDIrQX1t05VwRafN9UNG7ldZUbsu4OUGHKtazd7UID0rYhbPjgB+EttBS45tBT2vFmGgJmklyoOH5U4eXd2DSJz0RORURFGOGmTuuSVE46zR4PXWtcEeT2MVew/H9Z75E5+FxGTDqAifG0yJuyEszeq0WG1wETGLeZ9VpLq+EBZf0I/QWXe5CCuNXUZfHKXjtqXRVauwyKvqlQOgynCvtaAB5DDpBRXwnt4IyxhIGk6XuqcTpjT128ZYUhSUyvsOBaYfMXFb0QswrK95ehdeysxXNRgpOWNb8bJLewVtok+Ij4zi83CXc+YuC3h7oQMyGscNZEYo9kmtpIrW96Nu5xL8BBQdaZLl8TRqBS6w4UITCQpZyp/Fx9Vo4ZnwxM/swTbHjnx7xuL0eyJCsNPn5ohc/fEUIg2rSEa8oKriSCe6rVFuT3AIll3FVhiO/m80
x-ms-exchange-antispam-messagedata: bWJqbzoaH2o4UyN0YJZvG+QVfW8Cr0cdooRDEVVV8ruqMcJ8vQvWMznYhxjNI7O4bLHFQiwUgQehY+0UlwnQi6YCIUmr3ZvoYPY8l+1Au3/alO5aEDipGdPlvejF01RZZAiz+q8v4U89371ZV9V1JA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6d518d0-2a29-48e8-2eb2-08d7b3e55274
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2020 20:09:40.6740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LIz3UKF9NCD6bEmUei2DBBfkvlNpXderuQQwy8USu5ED1k8bXDZFAz6dfpsMf3WE3XZ3Q8rVu1S9BxpmQOLH0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_120947_852377_2144E7B1 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "robh@kernel.org" <robh@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.02.2020 21:15, Fabio Estevam wrote:
> There is only on Ethernet port and one Ethernet PHY on imx8qxp-mek.
> 
> Remove the unexisting ethphy1 port.
> 
> This fixes a run-time warning:
> 
> mdio_bus 5b040000.ethernet-1: MDIO device at address 1 is missing.
> 
> Fixes: fdea904e85e1 ("arm64: dts: imx: add imx8qxp mek support")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

+Andy

I remember that it's possible to get a second ethernet port through a 
baseboard on imx8qxp. It's not a default option but it's real.

Unless I'm missing something?

> ---
>   arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index d3d26cca7d52..13460a360c6a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -52,11 +52,6 @@
>   			compatible = "ethernet-phy-ieee802.3-c22";
>   			reg = <0>;
>   		};
> -
> -		ethphy1: ethernet-phy@1 {
> -			compatible = "ethernet-phy-ieee802.3-c22";
> -			reg = <1>;
> -		};
>   	};
>   };
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
