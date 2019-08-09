Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C4E87D85
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RI/Hssy8M+VUN4NgOpPB9fyzQEKrH3F2kqXK2LLf5JY=; b=daDx42s13ZT3Jw
	SZmDFpTBeoVfJit5rrlek3eUPivFf3M1mDFJhRkpY/9Ggye+J312cZX32bmBZJh+4UzZ3ndmmu8+I
	ocw5mh7cyu7m3KmRRWfOsAijxX+EbZcLyRmZjWPuCSsZ9dCtFJE4ru8vR3XoJkSPCBDFSieOrYcSf
	xzqHvb55sFMAs8WNzADIQWPZndZd6zVON4I65Kp4dLpT9kzy6cnSh6Iv+5wFA/3okOIA82ZVjzE/0
	CJoO8K72Se+Wg0oOlH6Y8vcvgolFi/3ndbjJmidLVajsIlHWiKXkKF/jZp/7nwZEYU1g4lLGrHUyU
	wvlSAmNo/opoeEWyxyoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6Pm-0007qZ-Hd; Fri, 09 Aug 2019 15:02:46 +0000
Received: from mail-eopbgr70117.outbound.protection.outlook.com
 ([40.107.7.117] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6Pa-0007pZ-Jp
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:02:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RcEqBs+/71DBinDHecibDcFMuHC2l+DIo/fUSzcP1W0xuPq3s5jIJDXwEQYcEgYvmJHRWcJWDIvx7v5sIIqb8so/bUtLhrNCSlk27yR6uDIF68jXCiRdRamRTAtNt90kZA5GySUn9kiCP97Ix6UJCesOiBlStfGAf6Rt4krko3AHVIvdggEVVt+NTfjGpma+kdSP/nxjZjYQbrIPxOEpg4+XxdVyhKh+0ZFoU7u5pXPlUuBgglZqZHv3/jiZtKPirtj5LjroHtgZtjGrhOxeHEowcHu4TkxgYFPHrt9cG8Q8Bkmd36OXuBpQBWo0qlN8OR24kX3/Zo5D3Y20wHUkNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O60uK62WHuee4hk9iz6nVOVFuWUS3MaIRFhpxdQ4Z88=;
 b=T+hCg3Yv2Vz0osTDu9EoVSFTXZl29+6/a2Axgay/jFp43LNLlf0u7HYJTSPNR8l/8tHX6Vy5MdexZnOCyPBuMEoOAP/PuNYfslMf6CXZYBRXZ1KYvIKoX72BOTbtzpqVKaMQp5qZWLBDLPDffgkk/NrLoXgMcR6fA5ivDpSyCCjWObQbiP0zkqrGch/7Ic0PoBb0HiroT/vvzPd4c9bSyDiE6iInI0HV2EzBbB/dGH5bkyEKK7vF31rftv7AyyKFfZiL43ha9eFlMtBlPWZ7q8qMm+2Lcj0TXZ98cevIPjEkCSXtZ+NzWoNxHmgJpBhhyNc8ZULa8emLBdz0YOaoLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O60uK62WHuee4hk9iz6nVOVFuWUS3MaIRFhpxdQ4Z88=;
 b=F612fisjz4prR1797TemJlehsXYnEhnBTFPCacZVhvA5T6pMB69Dt/8Mcm3XhC3eQFAYlHc2qr55PgRN212el8T/F68cgs84yMXKcnVBDLynYl+E4LvgNBbYxq2FIpxMr9L+1gYcjBgjFnAJGQoSnTrep33Yd9Il9qZJKeLqoIw=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB5647.eurprd05.prod.outlook.com (20.178.120.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 9 Aug 2019 15:02:31 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:02:31 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to can
 interfaces
Thread-Topic: [PATCH v3 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to
 can interfaces
Thread-Index: AQHVTPnPmra6ZluMjkW28s0c1K5lX6by7PoA
Date: Fri, 9 Aug 2019 15:02:31 +0000
Message-ID: <b84b451cf39db49188b45882a5c61a65da03eb2e.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-12-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-12-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54c6b61b-4518-43c9-5667-08d71cda9a72
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB5647; 
x-ms-traffictypediagnostic: VI1PR05MB5647:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB564725831553B93205D116F4FBD60@VI1PR05MB5647.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(366004)(39850400004)(396003)(136003)(346002)(376002)(189003)(199004)(53936002)(316002)(66946007)(6246003)(6436002)(86362001)(81166006)(81156014)(8676002)(4326008)(71190400001)(66446008)(229853002)(64756008)(7736002)(66476007)(305945005)(2201001)(91956017)(76116006)(36756003)(66556008)(6506007)(6486002)(102836004)(186003)(118296001)(110136005)(8936002)(76176011)(2616005)(71200400001)(11346002)(446003)(486006)(44832011)(476003)(14454004)(46003)(2501003)(54906003)(5660300002)(7416002)(6512007)(14444005)(256004)(25786009)(2906002)(99286004)(478600001)(6116002)(32563001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5647;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CDh9H/y/4CO4+lJFLCEzxERj1pcgsVd4acl2EjXMb023v4BThhiS1hXJUoO2t2qSbVuf/OBjMFm53MrDNGZTt89lD9K7ftu8tfeRk18D2XIadLAfIqVC/Tb4f3Vj3B/5UQnjVffFBj9xS6G7KK5DtV96K6K/5xfEGr1RCzXVIP8vJf7kXRpOivzS4uHr9juhRPd52j/Rr69f0xRa4fCap5kXI+LA++6LbFL5WN8kB9mKg/20MlFniCoR8GZlywjjXgGndmiWn2Dh6fWF1n7GzHSDSVRAK/GOJvQQGoAVNPbYOJin0CHlSzIS9RwKY7HbUeupQPMjD6m5CqFqLdFHt4+p9F+6PqGR7KnCXfV98uS2T5kn9FOkU+OnY0Z8PnYYA7iwdKnbNJCiOAnabsXIfxghkfQJGO5/17+doYRkNsk=
Content-ID: <C54E04AC58AC69479C00A40BCBAB2527@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54c6b61b-4518-43c9-5667-08d71cda9a72
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:02:31.2878 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8q1dbmk//vILHN1EHWOYZfz1PijjQ8+rShoUebxIx9ZCGvtVIp2W+Ak8gNkW6S3/RFn5E7uzQDGy/ZWKCeh0czfYwOeE5M6FVGYGe+kqSQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5647
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_080234_650993_9D0CB03A 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.117 listed in list.dnswl.org]
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
> This patch prepares the devicetree for the new Ixora V1.2 where we
> are
> able to turn off the supply of the can transceiver. This implies to
> use
> a sleep state on transmission pins in order to prevent backfeeding.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2:
> - Changed commit title to '...imx6qdl-apalis:...'
> 
>  arch/arm/boot/dts/imx6qdl-apalis.dtsi | 27 +++++++++++++++++++++--
> ----
>  1 file changed, 21 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> index 7c4ad541c3f5..59ed2e4a1fd1 100644
> --- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> @@ -148,14 +148,16 @@
>  };
>  
>  &can1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexcan1>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_flexcan1_default>;
> +	pinctrl-1 = <&pinctrl_flexcan1_sleep>;
>  	status = "disabled";
>  };
>  
>  &can2 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexcan2>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_flexcan2_default>;
> +	pinctrl-1 = <&pinctrl_flexcan2_sleep>;
>  	status = "disabled";
>  };
>  
> @@ -599,19 +601,32 @@
>  		>;
>  	};
>  
> -	pinctrl_flexcan1: flexcan1grp {
> +	pinctrl_flexcan1_default: flexcan1defgrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x1b0b0
>  			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x1b0b0
>  		>;
>  	};
>  
> -	pinctrl_flexcan2: flexcan2grp {
> +	pinctrl_flexcan1_sleep: flexcan1slpgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_7__GPIO1_IO07 0x0
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08 0x0
> +		>;
> +	};
> +
> +	pinctrl_flexcan2_default: flexcan2defgrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x1b0b0
>  			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x1b0b0
>  		>;
>  	};
> +	pinctrl_flexcan2_sleep: flexcan2slpgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL4__GPIO4_IO14 0x0
> +			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15 0x0
> +		>;
> +	};
>  
>  	pinctrl_gpio_bl_on: gpioblon {
>  		fsl,pins = <
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
