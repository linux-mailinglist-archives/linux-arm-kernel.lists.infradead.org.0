Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567AC8721C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 08:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pR0IPKky/QrfYtCyO78Dy4O8/yzm0y7p1vNsYjtGEp4=; b=f5IRj0vcvhU3qU
	j2+M/8RxlYZehVWJE3jnjoJiCvZLb8vCkbbN612/uyCOGjs4cxtXRXtfAe4BOuHJBHpZii9rfQU7a
	4E/vaMoSwjj/t2udAU8TMronEOuSC1g/W91qaRF4YfPMOHZcsC52emOtLk2y4G+oOZ8Olaio03V/1
	2OjD4yuaqDxFaqQTHn651UYPhjfSJG0suREFQz7hevmDAQ68uuxeH1qKW9Hh8MOTPZpWYIbWGYjQN
	PsjlINwtx0J25jVUMoMQQz8CNWn1r0lkfNW3L9+rpiBZPmRmmj5sIlUP7V9ONWWJQYoAd52KenN5/
	v3RIWcNxXAvjK8YQm3CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvyEz-0006NB-NQ; Fri, 09 Aug 2019 06:19:05 +0000
Received: from mail-eopbgr00054.outbound.protection.outlook.com ([40.107.0.54]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvyEo-0006M6-G0
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 06:18:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nEf1VGHvwd3nCUMcAuXVyFph8DQEr3iZAxByKtX+KM62oVlPSjQo6ylfHMqRkQ8WL48AKeBrfa1JVwaFFv5ZgJhJVzeQ+sQGM/TfX22CfpL848n/32KPSGymDglEYkDnh0ZqxXO+VWTUJUH8El4UCIZPKxqw7vQbIPH07j6ZDIB8MQmf5oqZtdbC/OF1nrU7ShcG7ew+fKvuwQd/CcPmZfi/S/5dChgIcsJenhSagGcL61nrXttkKM5rFHJLZihPWTTrtPNlUATK61Iw9rzD5+zd4nWQBwfWtKu5cPb/UcPV3g6r2kwAg5m6spYtgIPW4gTIv6cGICwwPzzWU3+bFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKbjWU+bBYnloma39ILsKN4v9tEditZ/aYS7lALNgqY=;
 b=F1v4JNxN24OQ0ClZAagmqY6sEscGCx3CRkgRSb+GD221VGp11oaH9SMhIx3Od+nJpxwYQ8+DPKbiQCGBicsV6DzL86VGEdgqCxwxHrnafuLkOhrqLJOlNzEYd4GLn+O7d7javDqYP+uEEksfNQRDkNYxppoQh1S+gxEHs/kLtMS18zPVyhkoYl/B05ONT7GkA0dWLEQZu716A/TlQLKltV0H/Pf4UlKZwf887KjWTv6uFpIlKCM2Pg3CaAXVXZg4g4kGnKEyRLKUC/r1P1y2myfI7Dj0ED+MrFQpRw3eO/rpomuMwG+W+FrFfr41c0tVuJ0VAJMZcoroolCFOWFnXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKbjWU+bBYnloma39ILsKN4v9tEditZ/aYS7lALNgqY=;
 b=sShPyJ8w3GkRAxtAHbmY4D19Sjb4x5wVexb5CuOtQNbcpRnT1RS/0zh6RLVUsm5D6hTSQ4AdxKjohCN7VsIB8Wl6mpujrcm8f5RPHsSuN8OsUiJI69E0WXl0v8rpIoRro7Kcj/BHAwbd5CCN+DsbN6hfcWXz3K7ysdqlagPKg5U=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2415.eurprd04.prod.outlook.com (10.169.134.140) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Fri, 9 Aug 2019 06:18:48 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::d805:690a:9e8a:9a74]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::d805:690a:9e8a:9a74%12]) with mapi id 15.20.2157.015; Fri, 9 Aug 2019
 06:18:48 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>, Shawn Guo
 <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: RE: [PATCH 2/2] ARM64: dts: Remove unused properties from FSL QSPI
 nodes
Thread-Topic: [PATCH 2/2] ARM64: dts: Remove unused properties from FSL QSPI
 nodes
Thread-Index: AQHU3yvM8yMRGyNksEqd6u7/XzJALabzNSzg
Date: Fri, 9 Aug 2019 06:18:47 +0000
Message-ID: <VI1PR0401MB2496C44034AB6DB5F5379904F1D60@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <20190320143800.3555-1-frieder.schrempf@kontron.de>
 <20190320143800.3555-2-frieder.schrempf@kontron.de>
In-Reply-To: <20190320143800.3555-2-frieder.schrempf@kontron.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.0.3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4bee526f-0cf0-4654-4493-08d71c9170a2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2415; 
x-ms-traffictypediagnostic: VI1PR0401MB2415:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB241523CC8C5257824F2A470BF1D60@VI1PR0401MB2415.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(13464003)(189003)(199004)(7736002)(53936002)(305945005)(102836004)(3846002)(478600001)(6636002)(66066001)(6246003)(66476007)(186003)(229853002)(4326008)(55016002)(25786009)(26005)(14454004)(9686003)(8676002)(53546011)(76176011)(446003)(6506007)(81166006)(476003)(8936002)(74316002)(7696005)(99286004)(76116006)(486006)(44832011)(2906002)(33656002)(64756008)(66556008)(66946007)(52536014)(66446008)(5660300002)(71200400001)(6116002)(110136005)(86362001)(54906003)(6436002)(5024004)(81156014)(14444005)(316002)(71190400001)(11346002)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2415;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 54KTFGs9xJaV/c/ssJ8B4tiIUCCsq+DusWhLfimtSf+oewqkgdYztToULVOIi2sQBv/HT7a3x0m8ST3Jqpvzkl2G/KfHUflNhP7GaDnvkPGcbw9gD2Z8s9LnkUlTZk8GEcXzxKBUhYvVmmnLSoCUuUhv2l0641eNyQVBFzvpOhDZSfkzVXria4tEnqNVul2Jc6Fh6yG2uH3BPjd5+cv15P7ryq6naItpsJMP+pBAb9ZqETpsj10zilj2TlIaLuuDBxv80aTe4S6zlIIWBQYJHZ6250BE/bu7zLa+GN/e6WJEcnAqYlszDt+CMYzg+9rXPViPrL+wOdgNe3QY1ShZgS1ZDggSdKYDjYe4PltsM2eRf2WErR2ug/9DidPaty/QsU8pc4AluYP53jzAAKkJBDp1CHmSe+RVjbyT/UbY8qM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bee526f-0cf0-4654-4493-08d71c9170a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 06:18:48.0063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QRpS0K584wRpT3MGi7DwS7MZBJGjW8ZzRKP4QhczzjPxjneCn/s9BlQpffumlLMVw8/NTSbhrcpYSkUukv9ooA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_231854_586693_7688284E 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ashish Kumar <ashish.kumar@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn/Leo,

Removing the "big-endian" property has caused problems in our UEFI firmware.
In UEFI, we use the device tree to detect and use the qspi controller and flashes attached to it.
We don't maintain a list of platforms like linux driver.

Can you please revert the endianness change from linux mainline ?

Regards,
Pankaj Bansal

> -----Original Message-----
> From: devicetree-owner@vger.kernel.org <devicetree-owner@vger.kernel.org>
> On Behalf Of Schrempf Frieder
> Sent: Wednesday, 20 March, 2019 08:08 PM
> To: Shawn Guo <shawnguo@kernel.org>; Leo Li <leoyang.li@nxp.com>
> Cc: Schrempf Frieder <frieder.schrempf@kontron.de>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; linux-arm-
> kernel@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [PATCH 2/2] ARM64: dts: Remove unused properties from FSL QSPI
> nodes
> 
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> After switching to the new FSL QSPI driver the properties 'fsl,qspi-has-second-
> chip' and 'big-endian' are not used anymore.
> 
> The driver now uses the 'reg' property to determine the bus and the chipselect.
> The endianness is selected by the driver depending on which SoC is used.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi | 1 -
> arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 2 --
>  2 files changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
> index 6fd6116509cc..2fb8138c6bb0 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi
> @@ -296,7 +296,6 @@
>  			interrupts = <0 99 0x4>;
>  			clock-names = "qspi_en", "qspi";
>  			clocks = <&clockgen 4 0>, <&clockgen 4 0>;
> -			big-endian;
>  			status = "disabled";
>  		};
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> index cb7185014d3a..b0ef08b090dd 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> @@ -215,8 +215,6 @@
>  			interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
>  			clock-names = "qspi_en", "qspi";
>  			clocks = <&clockgen 4 1>, <&clockgen 4 1>;
> -			big-endian;
> -			fsl,qspi-has-second-chip;
>  			status = "disabled";
>  		};
> 
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
