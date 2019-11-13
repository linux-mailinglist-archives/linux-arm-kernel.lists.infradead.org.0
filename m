Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED12CFB508
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xw4RFpIgYxfi6jNV7JTrCLpUsgfLJJ0GssOF+K6/57o=; b=I+8wqVXhVWl27C
	t5XblGr/M5vqOUZAM4tbg4YxduwoW9nHzppS8b24EgtlLAjn0S1P0tCnBct4tG50qxBtKvMneD/Oj
	pUf24fH2SzLra2zJ5jpRKJo50i0U9yyOvJNHc4klgAH9JeDpqj5ipk9qbBok8doZjhGT0cO1606KZ
	osVfdYo4vOaUAWApdgHleBl8ZQZKReTm7KC2uPFpBt3YwmjxgiW+YHPIIxX0CkUQsUjojgOdWbV5A
	l/qDvhB2tHih2QTbp49j80bpvGrsAYo/wmIpaP+LVMbocp1dpadI4uBzxzII8A7NF2r0uy+4frw/G
	W7IunFX5cLGQ4s/YYW+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvU2-0004O4-05; Wed, 13 Nov 2019 16:27:06 +0000
Received: from mail1.bemta26.messagelabs.com ([85.158.142.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvTu-0004NU-AV
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:26:59 +0000
Received: from [85.158.142.104] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-a.eu-central-1.aws.symcld.net id AA/FC-10028-0DE2CCD5;
 Wed, 13 Nov 2019 16:26:56 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNJsWRWlGSWpSXmKPExsWSoc9prXte70y
 swel+E4upD5+wWTy7eYvNYv6Rc6wWD6/6W9z/epTR4tuVDiaLTY+vsVosvX6RyaJ17xF2ixdb
 xB24PNbMW8PosXPWXXaPpxMms3tsWtXJ5nHn2h42j81L6j0+b5ILYI9izcxLyq9IYM1Y+rmq4
 D9fRcubhcwNjOt4uhi5OBgFljJLvLtygxHCOcYicXXvdCYIZzOjxO/en2wgDovACWaJaS+ugz
 lCAtOYJKaeuM4O4TxklPg0sR9oACcHm4CFxOQTD8CqRAQmMUn837ObFcRhFuhmkphwdjM7SJW
 wQITEop8TwTpEBCIlFqycyA5hG0lc6u8Fi7MIqEpcmrCOCcTmFUiU2PW8kRFiXQujxJRlE1hB
 EpwCHhK39i8Ga2YUkJX40riaGcRmFhCXuPVkPlizhICAxJI955khbFGJl4//sULUp0qcbLrBC
 BHXkTh7/QmUrSQxb+4RKFtW4tL8biCbA8j2lVh11R2mvOfISqgSC4kl3a0sECUqEv8OVUKECy
 Sufn/KDmGrSrzc+RbqGhmJG7tOs4C8IiHwklXi3rvl7BMY9WchuRrC1pFYsPsTG4StLbFs4Wv
 mWeCgEJQ4OfMJywJGllWM5klFmekZJbmJmTm6hgYGuoaGxroGuuZ6iVW6iXqppbrJqXklRYlA
 Ob3E8mK94src5JwUvbzUkk2MwHSXUsjAvoOx9dtbvUOMkhxMSqK825tPxwrxJeWnVGYkFmfEF
 5XmpBYfYpTh4FCS4J2meSZWSLAoNT21Ii0zB5h6YdISHDxKIrzvdYDSvMUFibnFmekQqVOMuh
 wTXs5dxCzEkpeflyolzvsApEgApCijNA9uBCwPXGKUlRLmZWRgYBDiKUgtys0sQZV/xSjOwag
 kzGuvCzSFJzOvBG7TK6AjmICOaDl8CuSIkkSElFQDk7zvVJ0PuVfErk4+5hrg/HvKuY6A0NrX
 tyxdH91yvuLzqPj3vcycrjXGbBFXsitkGX4uFt6RliIw425M3hFrb99ghjoX2b/CTX/X8Cir/
 rzhIs7hrW7Wm1q2WcR3wYzlL/dkmHpsXXzy477b6zNytk4K/TBPquWuEZesnKlYaEHflG9/Q/
 2ERBZvN1Wxtm0N1ujxuvVBwiX/7VODx50/XiateRSgoTll66TCTcuznrEIzWwL3Zs8r3JWFV/
 Z12qHj5nfZTxfmfezftnM/UFi92rNqiPl9z1vKlluzJHQr074c6xqzqXUNgaP0Buua5TCGiac
 zb63+vQS7xkFiyNqgpmVFvB9eTh/3rPvkea+SizFGYmGWsxFxYkAwDIe1X4EAAA=
X-Env-Sender: Adam.Thomson.Opensource@diasemi.com
X-Msg-Ref: server-30.tower-229.messagelabs.com!1573662415!156306!1
X-Originating-IP: [104.47.9.59]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 10246 invoked from network); 13 Nov 2019 16:26:55 -0000
Received: from mail-ve1eur03lp2059.outbound.protection.outlook.com (HELO
 EUR03-VE1-obe.outbound.protection.outlook.com) (104.47.9.59)
 by server-30.tower-229.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 13 Nov 2019 16:26:55 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jY+sXC5L6YiIdowZE1Tm50TZ5OqaamkuQw56OCEHKB6S3X1UX87bZKeJksAVv86de6JML0I3Ow0ADsYkf0c8cdqYUV1R2DVT/2B5CaZ242oQOJ4TOLyNEshO4BMrhlWpI6GYo+NTp6Wx5ieZLJHXWV8s5efLA0mIwBHZSyVTomnasmIDw8sRzLKysb7CVyXrO7iqIF5aunPg0m1YTmHz/DrS/pdczUEfwY6+OG/4dehflTCpj3x2n9YaFhDl96sLwYt2Kp4hiRcupsURCWjIu9OWxNSxzjRwf2ZodYoq2Q5rQV9LAQ95SyQ+BH1N6xx7kkQNq9gK+8b/N8/JtijWvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HsWFo6ZrTNj3g5iLsswo3sFlnTHax8F8dGFc/+TJDLQ=;
 b=F1BwXjhLsUm+FwnEafhGf05dvZvvi6lC9qfhMKqAA91sZ3zzNsbySO04aEqKGhZp1Pn8IK0EZEvDV91OhE5tgMqjG9IFUfvZ6TES89xKAh/D4MwrcdVs89cPQ4hz6bDG8bkYYE4RQMizC8dw16ZgkV5XuJo+IkTW4fgXQHDdzwJgX5dfaCd38Ey7vuQRUnSBaTv1mBPfsA2V0spmyt1FDw3o+nuf+DcrOBUnrzfQIe8V2BBelf09P9VcU2DlsP9aPo6yp2WHyMU2iX4LCVAUK/bUBG3lHhM77Bbm0vokDZZ2MLMKqbFL4oQ59tI25DQ3MffdVNBjQ9X+FcwOPqtGmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=diasemi.com; dmarc=pass action=none header.from=diasemi.com;
 dkim=pass header.d=diasemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dialogsemiconductor.onmicrosoft.com;
 s=selector1-dialogsemiconductor-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HsWFo6ZrTNj3g5iLsswo3sFlnTHax8F8dGFc/+TJDLQ=;
 b=o3exijC3sW2C4MRRlo7cIG9VygaU9UPqCY/+v9Q3k3ZdnEQBmnGF1jgAOVAPbUnnp7bBxtm+r2R+4iXRBq3EnGwj58R0Ns734PSYhQCKWVEg9qtepr1iwIK45/Q/VP1Yjv+npQOGQNfvRRL/b9BtlYxEwRCPEpUtfbTLl5uX62g=
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM (10.169.154.136) by
 AM5PR1001MB1202.EURPRD10.PROD.OUTLOOK.COM (10.169.149.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 16:26:54 +0000
Received: from AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5525:87da:ca4:e8df]) by AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5525:87da:ca4:e8df%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 16:26:54 +0000
From: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
To: Christoph Fritz <chf.fritz@googlemail.com>, Adam Thomson
 <Adam.Thomson.Opensource@diasemi.com>, Mark Brown <broonie@kernel.org>, Fabio
 Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v2 4/4] ARM: dts: phycore-imx6: set buck regulator modes
 explicitly
Thread-Topic: [PATCH v2 4/4] ARM: dts: phycore-imx6: set buck regulator modes
 explicitly
Thread-Index: AQHVmigFtP7n0Kqa1kqoZVHZyeFd4aeJSc/w
Date: Wed, 13 Nov 2019 16:26:54 +0000
Message-ID: <AM5PR1001MB099480739860863EB08EA73280760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
 <1573652416-9848-5-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1573652416-9848-5-git-send-email-chf.fritz@googlemail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.225.80.228]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb8b96e6-7466-4aff-9633-08d768564be0
x-ms-traffictypediagnostic: AM5PR1001MB1202:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5PR1001MB1202B763EC4313328BFA26CDA7760@AM5PR1001MB1202.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(136003)(396003)(39850400004)(199004)(189003)(66946007)(64756008)(66556008)(66476007)(476003)(14454004)(66446008)(74316002)(486006)(478600001)(25786009)(186003)(26005)(7696005)(11346002)(76176011)(7736002)(33656002)(52536014)(305945005)(5660300002)(53546011)(6506007)(55236004)(102836004)(446003)(6436002)(54906003)(256004)(6246003)(110136005)(316002)(4326008)(9686003)(6116002)(3846002)(8676002)(99286004)(76116006)(81156014)(81166006)(7416002)(2906002)(8936002)(86362001)(66066001)(55016002)(71200400001)(71190400001)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR1001MB1202;
 H:AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: diasemi.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8SVhryl/uvgwdQGu2FxcKdo7Z/8cLdzeWqxUUChmaZP+J2XyAH5EaPza2CjSxkOFlVS6Syr0JU3Mbu9Oyz9jaBdWs+aVklK5xYB5XV2eRPMIn+53Rw5cBVl0Mnj5ME4BDowasxdo00FH7oOSHIpWkGaplE4+fdX9m67Oa9INRZ6SinB1BlwaeaAwoZ5U0jUhqB38HnJUyDVlU6+phlmPnzH552kgGZiyNsY8Bn6t+LHdwWOTMx/vTw7FQ0ZumcKf3mitODsgGSonVGoBYTGRwvCOXOcpW6ypP1WyGHTCpjENUp3QakZxFqNuyB04wBiZNhLJkmk3JhJI7Og/lLOI+hW9Aq26rWKfM7KzBdJkCHlu4hraKX06CKCJ8bcg1jmnDh7I738e8UaZcK60tUITI+cnDwA/q1DSbnVHgekrQVOxc3kcU6OZg9Cg2XMDFi0A
MIME-Version: 1.0
X-OriginatorOrg: diasemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb8b96e6-7466-4aff-9633-08d768564be0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 16:26:54.4081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 511e3c0e-ee96-486e-a2ec-e272ffa37b7c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O2HVtD0/uC8Q5PsU/NwoLcUkNHDOhvbEa9Jbk950Jnjcr7MZ9BGZDes04NkRkFVhIPI2bMMuq9UJp8GPCMHBQGQ87m3A3lj04tudEOC1oSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR1001MB1202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_082658_512885_DD48C69B 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [85.158.142.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [85.158.142.1 listed in wl.mailspike.net]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Support Opensource <Support.Opensource@diasemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13 November 2019 13:40, Christoph Fritz wrote:

> This patch sets initial buck regulator modes explicitly to a state this
> hardware needs. So a wrong initial mode set by bootloader or pmic itself
> does not interfere anymore.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>

Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>

> ---
>  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> index 6486df3..644625d 100644
> --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -5,6 +5,7 @@
>   */
> 
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/regulator/dlg,da9063-regulator.h>
> 
>  / {
>  	aliases {
> @@ -109,6 +110,7 @@
>  				regulator-name = "vdd_arm";
>  				regulator-min-microvolt = <730000>;
>  				regulator-max-microvolt = <1380000>;
> +				regulator-initial-mode =
> <DA9063_BUCK_MODE_SYNC>;
>  				regulator-always-on;
>  			};
> 
> @@ -116,6 +118,7 @@
>  				regulator-name = "vdd_soc";
>  				regulator-min-microvolt = <730000>;
>  				regulator-max-microvolt = <1380000>;
> +				regulator-initial-mode =
> <DA9063_BUCK_MODE_SYNC>;
>  				regulator-always-on;
>  			};
> 
> @@ -123,6 +126,7 @@
>  				regulator-name = "vdd_ddr3";
>  				regulator-min-microvolt = <1500000>;
>  				regulator-max-microvolt = <1500000>;
> +				regulator-initial-mode =
> <DA9063_BUCK_MODE_SYNC>;
>  				regulator-always-on;
>  			};
> 
> @@ -130,6 +134,7 @@
>  				regulator-name = "vdd_eth";
>  				regulator-min-microvolt = <1200000>;
>  				regulator-max-microvolt = <1200000>;
> +				regulator-initial-mode =
> <DA9063_BUCK_MODE_SYNC>;
>  				regulator-always-on;
>  			};
> 
> --
> 2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
