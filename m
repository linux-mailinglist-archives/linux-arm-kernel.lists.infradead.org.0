Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E8187E33
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eY9aisJCS/bhUa1eugyEg5hCGQxntj8ND2WI47Gs11k=; b=n8A9aSH5k2FCXU
	2W2rrw5X1bhYrwxxlrrccNevOt1s7YjtridVW5BM758NlJfeDRTVUDhYzaTGMxyafqj66P0itp9o4
	KmQgWjAs3Diw65/524sL5mW2EleaqsbaVfbIIaqPbSQbnt2I45JN63FqHrNY0isQ04NE2v/cN4c6L
	hJCzDniYxBYAwasGUuQpOwh/W9idlzQFFwwIXA/g0aH37ZrsTvW4kB9YTKBJ1ODOiBpB44NZajSVE
	y2sIXM33Mp8sq1X2O1TjLQW+JQakC/rnSGq87KE/4RJq9g4kJ613rQkHN86aKjian0EAW84kZRZwH
	3Wy8IsKHewuA1PZZ33Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6z5-0002nR-VY; Fri, 09 Aug 2019 15:39:16 +0000
Received: from mail-eopbgr10105.outbound.protection.outlook.com
 ([40.107.1.105] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6yr-0002hf-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:39:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DP4vlNYOgj2Z+7q6cH8f66cPcqp3xp6rP7jReXY9pS+ggUhbcmJJpXAfZOJ9IpndS1AehzLY4LQFSMmBJmkl+my6F1hInTa1HgJ9x95Apeo4mBq7fEd6D9tei8wO98Z6vzsPnJaROYFFYfVoatVb0iJ0T0RXlrp1SWRKjwT7W1az3HgO41iGqeKUu/+XxWOIdJENUU53j+kMldrSbg4QKszf0FufPlWzOB8zdqzfIUl7zdHAlM/ii9yjHPbTTl+ghVpuqNW5cYirBOLCJ4T3m4D/8nRjpmBmya6RbNU5E7DXdURs/RkXCLylZw/7GVzEjUa9xFyb6u4UVL4bgUJxUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=as1RaMgZa8Nni1Tfq3bI4P9rTd7B1XaSX+Y7gmNzI7s=;
 b=kO2hnVLznyd+zeJIVTlx7fD3wYpLmL+gx5BaPv6MGhst0TbiLSAsIed4TUhotkgTA1qnP6QO3IKvpZ0v89LmZbicjBwNP7n6CvN5TpLA8gR+4ECm9ZDjNBsOBeBgmt7AkmBsFX/syfEG4d5BS+ypobfGeJcJInlHUcIP2xJt1xXLbM9jOF38dSWwiIq8yFO7k3f/RxLTx218FNCCzMFiJxDzA3xTTtd7O4jJwqjbEDxl3HLDmLL7/R/vNO//8Ms3XHuXXKUVUVwXYWm6BvQVg3eDNRnrWtylgGsg4TC7KQcaCQFd2WVYRkxWIiTmu6gOOq9YLJOgMEtTN7zBRptONw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=as1RaMgZa8Nni1Tfq3bI4P9rTd7B1XaSX+Y7gmNzI7s=;
 b=KCew+Ed8r/VG8mNDbHWcrTmqXIDmHMcmxxcnphcVSrqWIqTE86HUcXtDQVmf3R2ieIik4D6/JZTY49eXqMh1tWOf42NLew85T9c5s1dx7xIoognRQP0KLQZcKKNQECcnnjICAzMRIjtAL2P6gwNjc8guoRPVvSR63vkMZ0b49vE=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB4909.eurprd05.prod.outlook.com (20.177.51.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 9 Aug 2019 15:38:58 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:38:58 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 14/21] ARM: dts: imx6ull-colibri: Add sleep mode to fec
Thread-Topic: [PATCH v3 14/21] ARM: dts: imx6ull-colibri: Add sleep mode to fec
Thread-Index: AQHVTPnTvAF3yo3qqkOkBzEMOHzWcKby9ymA
Date: Fri, 9 Aug 2019 15:38:58 +0000
Message-ID: <a2350a640f613bc7e41fa56f3909d462941125b6.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-15-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-15-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6b0f3b6-183c-4f46-8398-08d71cdfb231
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB4909; 
x-ms-traffictypediagnostic: VI1PR05MB4909:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB49090B2D7F0DC595AEFEC3F9FBD60@VI1PR05MB4909.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(396003)(376002)(39850400004)(199004)(189003)(186003)(14444005)(256004)(6506007)(446003)(11346002)(102836004)(6116002)(46003)(76176011)(2616005)(118296001)(478600001)(476003)(44832011)(71200400001)(71190400001)(66446008)(8936002)(66476007)(66556008)(486006)(66946007)(64756008)(2906002)(91956017)(76116006)(2501003)(25786009)(4326008)(53936002)(6512007)(86362001)(2201001)(305945005)(99286004)(7736002)(14454004)(7416002)(6436002)(36756003)(6486002)(5660300002)(110136005)(316002)(6246003)(54906003)(229853002)(8676002)(81166006)(81156014)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4909;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ju+X5w9dBFirHWzKwMudSac9t97qsWIF/QO95oi3qovaO4e9DWOmzczDJmOcmyMUPkf44znsZYnGxi/wlUcO2kHYvDXeh1TrJi/aquFHiGiGBSx+dC+oDT7tBrTDwNiOEILSfF445jzjWR7yuk6KwfyJNWvl42yVZPE+46nd1EmGI/b8LX9YdvZ0Srzu0AHpHpCsWnqAFrzYh4ucrqJdN3sfYC0iqG6XYfFGEf6MSa2af09KMc5lfKNtZUnI1nQoJrFTfsSBRCCLxpbbq0aDezCBUYXKL/V15mnzN2AMDU0ImcxwAFKWchniVauN2sRheH5FUKBM7WduLeSw97EsSzJwa23e1Fe7FRiXYhnpQNung/QWPLmaHrMjDuqsUTaX+z6FDGD/rPb3r9f+V5v3/Z3t/6/rjFAIAIuIYC0KwPs=
Content-ID: <F8771B20DCCFC64687326A1AB7862887@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6b0f3b6-183c-4f46-8398-08d71cdfb231
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:38:58.7769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lKvel299bd5igBrMq263J0aUTXlXi81P6Hele7uD9af1HHXOrhvKnGuwaTpCU9v9G4vqEAkJ9bePacWEbz1GFfdivliQMaf2ORmDUtlpPyg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_083901_658704_02786B1B 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.105 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> Do not change the clock as the power for this phy is switched
> with that clock.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6ull-colibri.dtsi | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> index d56728f03c35..1019ce69a242 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
> @@ -62,8 +62,9 @@
>  };
>  
>  &fec2 {
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "sleep";
>  	pinctrl-0 = <&pinctrl_enet2>;
> +	pinctrl-1 = <&pinctrl_enet2_sleep>;
>  	phy-mode = "rmii";
>  	phy-handle = <&ethphy1>;
>  	status = "okay";
> @@ -220,6 +221,21 @@
>  		>;
>  	};
>  
> +	pinctrl_enet2_sleep: enet2sleepgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO06__GPIO1_IO06	0x0
> +			MX6UL_PAD_GPIO1_IO07__GPIO1_IO07	0x0
> +			MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x0
> +			MX6UL_PAD_ENET2_RX_DATA1__GPIO2_IO09	0x0
> +			MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10	0x0
> +			MX6UL_PAD_ENET2_RX_ER__GPIO2_IO15	0x0
> +			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x400
> 1b031
> +			MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x0
> +			MX6UL_PAD_ENET2_TX_DATA1__GPIO2_IO12	0x0
> +			MX6UL_PAD_ENET2_TX_EN__GPIO2_IO13	0x0
> +		>;
> +	};
> +
>  	pinctrl_ecspi1_cs: ecspi1-cs-grp {
>  		fsl,pins = <
>  			MX6UL_PAD_LCD_DATA21__GPIO3_IO26	0x000a0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
