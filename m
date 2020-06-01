Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDA91E9F77
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IydtQcTPe3u/GwNfsWbvo83TxSRGShB4igxBwaJM8Y=; b=AlTl1vRWlskHGV
	26wpFPmztS/W64MzvEC6oC0HuJdaSmJIsvdgIXA5QHS0lUh1wmAr42sdnU1gy+0hS4L718hUd9GMM
	fhyn3ckx63634o5z1NLEucvS0aZsIbnjCupJT6pIj5MDahhrGz40QM2p4+ni3Ntn+G3i9UNhSt7fC
	yAA5Ikf4H6iKgyTyus228aqcyerxKTzrkumzFnMUy5ieToYxnbdYXMcu5mv+zHmR6I5tzy3UQS0Pv
	CjmyYhm9M/JwvS1coo29AgP6SZpNwRAfaiMnDh6glqSClPSyNq+KK4TTYKY1g3pC2TueaT+ff5ln6
	lDVcvTCQdD6ijYMTpoCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jff9x-0006jc-Bs; Mon, 01 Jun 2020 07:47:01 +0000
Received: from mail-vi1eur05on2059.outbound.protection.outlook.com
 ([40.107.21.59] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jff9o-0006jD-U0
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 07:46:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MAtDg19ZHqcjhNfZ5kn+z79ANjHR1uyO39xHK6OwzjQcudf0X2a8rlF2cONEzor6cgpWIdipRAkLbfCHa7NohJMp3qaB1MliM62pTRIlAoo7XHXa2QtFWAT4Bd9I0O6SeiIwKZJOM5ANJT0IdNb5visAL7S5ObaVOkF7jeK3qeu+22FyyMRqyMmlKTpVlIPNLSRgHI3cvFFPh27jqIz52xIYcYaDc2CVaGAc7FbHre/jD7l2EXWD/q0dkzjhZ1YQD0K6tx7/VUa36RbrExNxwKaphc2vtmUL/O6wQZptYtHl7+tKKr6K5Sztm+2wTI6CvbhfrRmQqMLndqYRiWXijA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OpBtoyl5vtCYFHJ2bKE2PdquTCV5ebMWUXRKuhmkbHY=;
 b=lVLwral91M4g4suSJf0rdGknWvgzixEzXNuK3aqKA0QbiG8j1tGenPig3ydP0H1j7KiqO27zxhRdEnx2ImuqQHMddlAN96WSXRyY4ygysn+VeYz1tRNTBilM6qOhw57SoiSks0V/sLyXbGw5+V7y/B08L9eLVGckBDTt9ZPJdCG7bAVNluR9mv7QbCAQaRbDnwz0Mv9qGkDxPVkFsU0ELKdxGc+9fRnHHJv0beBkpXIGoN3VrxXz8dUOPLRvtV6LxP2wn3EZqbtL4XjSWfIcMRUydCVC8fAowIa/CxdwZ5jhAeWorNvnwRIONlsFvFw8ISz6d7HS55jZMnz3KSu8Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OpBtoyl5vtCYFHJ2bKE2PdquTCV5ebMWUXRKuhmkbHY=;
 b=RO7tec3zb9D8nUUHLYDL952t269h0UBQTbFlbGnTbXbcA2nsIiSHMyHhTlG/9V1gt0O7onEQSoruO5aJCrx5k1ZJn9U/vvoHRHODAU7s1W5lXE0Y8BmjMfqVollkUyy5YTMQi6zl+R4ihX7BDi+j7qGyuCeWUa7w7K389EdEISo=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6437.eurprd04.prod.outlook.com (2603:10a6:20b:f3::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.18; Mon, 1 Jun
 2020 07:46:50 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 07:46:50 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Fabio Estevam <fabio.estevam@nxp.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>, "linux@rempel-privat.de"
 <linux@rempel-privat.de>, "jaswinder.singh@linaro.org"
 <jaswinder.singh@linaro.org>
Subject: RE: [PATCH V2 2/3] arm64: dts: imx8m: add mu node
Thread-Topic: [PATCH V2 2/3] arm64: dts: imx8m: add mu node
Thread-Index: AQHWN8hFjjdbAZYyRk6dAkOuQwcHuajDYSkg
Date: Mon, 1 Jun 2020 07:46:50 +0000
Message-ID: <AM6PR04MB496620ABEA09A0571B42A9B4808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
 <1590982999-7149-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1590982999-7149-3-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e2487ef8-e808-45b7-b335-08d805fff1a0
x-ms-traffictypediagnostic: AM6PR04MB6437:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6437DFBE6027426814687B02808A0@AM6PR04MB6437.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:510;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zdh4KfTt+eju1dsw0hWgiz1Usg74vhAI1Iyk95xw5k1HK0Jits9ujUMIQWJqIjlH/SIyDL3963Bqm6apnewgdllUKusNT713Wzm6pHpYdbfqgMWoIzu4QzNhE9Bt++dzjlSKphUOHa3YnZ7u1GEbiqwYHt6Iv+Kpl9TJL/rxyk66ZNaPImJifT5/b8BXGV+Brp0Tz8X5ybv1vwUuWK8HiYv7uWfC6YbHC/eV3PQAS7ieSk/KCqTfx5IEcZCHLVb8sEoeAV0o8T03DRVmdyXv0jKf1lVueV0cdBmwxSN3ycQknViYvGp5xhF9KsKEjC4gOvysyzk6oMMRQe25kGAkschynkMnNepbjnUrT4cEn3DyrS6eez8QaMddPlhOTSzBHajQPMz8gbxihUXlW+aMD8BfoDq9/sZQzdCFhuRxYqGoyaD9vQRS4CTnmyb+4AYdeW+m2Da2CU9ye7Pva9M1Jg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(376002)(366004)(346002)(6506007)(966005)(8936002)(86362001)(4326008)(44832011)(71200400001)(478600001)(33656002)(8676002)(7416002)(2906002)(7696005)(83380400001)(52536014)(54906003)(186003)(66476007)(66446008)(64756008)(66556008)(66946007)(110136005)(55016002)(26005)(316002)(76116006)(5660300002)(9686003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: BZ8C6lbCV9xFVH8xQuyLEwJayJfTXrp/sEPuxF8Jd8mvzk708ihpyqxiWCddHIPGZt6zZqjGEn0LzyLRIoGRUEKH1sp3Fw3dPYINcaKafz3vzEjYf7kfV6B9KLEzldJg4q+83vINSQy/PFn5/bCYwQPPTTG/jmk8htk06eEj+UhTAIoFHe0B0mb3bLbKw2doMaLhWZea4LG/CftslpC3QZLQzilqIeWHY5s/gmn7f2Nr6sr36rX80T0yd1U2J4IC/Cu1qtdtEVYpQwHRKSw1BIBaLlO8nhaYGlAAEUGjusWW+LfTeXgQRI9Pk9hvZZOLYwSpTJxnZou9JNZa5AXgXpwMY2oifTy7uuZY/UeUmpoW1TgJDHpKd4C++QJejVStnjIOjPjmcbC57LtefzkHEA8gJLJ2hiycvRNThmxqZKcQUq7d+QQLLkBuft9K8NW+glQHXIXVsWwxjEHUYuC93l9Kn9C3hvgvbp3u54+9+YU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2487ef8-e808-45b7-b335-08d805fff1a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 07:46:50.0355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Ul8jkW/lx2Rn0GE2u22PLNd38EqF3NpuURK/sgHs5UJW0QuA3V25565amjiL/O5Xl61pr74UiIBbOuwR4a3Yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6437
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_004652_969613_86F2FAEF 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.59 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.59 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Monday, June 1, 2020 11:43 AM
> 
> Add mu node to let A53 could communicate with M Core.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++++
> arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++++
> arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++++
> arch/arm64/boot/dts/freescale/imx8mq.dtsi | 9 +++++++++
>  4 files changed, 36 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index aaf6e71101a1..fc001fb971e9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -775,6 +775,15 @@
>  				status = "disabled";
>  			};
> 
> +			mu: mailbox@30aa0000 {
> +				compatible = "fsl,imx8mm-mu", "fsl,imx6sx-mu";
> +				reg = <0x30aa0000 0x10000>;
> +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MM_CLK_MU_ROOT>;
> +				clock-names = "mu";

You missed my comments about this unneeded line in the last round of review.
https://lore.kernel.org/patchwork/patch/1244752/

Regards
Aisheng

> +				#mbox-cells = <2>;
> +			};
> +
>  			usdhc1: mmc@30b40000 {
>  				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
>  				reg = <0x30b40000 0x10000>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index 9a4b65a267d4..c8290d21ccc9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -675,6 +675,15 @@
>  				status = "disabled";
>  			};
> 
> +			mu: mailbox@30aa0000 {
> +				compatible = "fsl,imx8mn-mu", "fsl,imx6sx-mu";
> +				reg = <0x30aa0000 0x10000>;
> +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MN_CLK_MU_ROOT>;
> +				clock-names = "mu";
> +				#mbox-cells = <2>;
> +			};
> +
>  			usdhc1: mmc@30b40000 {
>  				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
>  				reg = <0x30b40000 0x10000>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 45e2c0a4e889..b530804f763e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -621,6 +621,15 @@
>  				status = "disabled";
>  			};
> 
> +			mu: mailbox@30aa0000 {
> +				compatible = "fsl,imx8mp-mu", "fsl,imx6sx-mu";
> +				reg = <0x30aa0000 0x10000>;
> +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MP_CLK_MU_ROOT>;
> +				clock-names = "mu";
> +				#mbox-cells = <2>;
> +			};
> +
>  			i2c5: i2c@30ad0000 {
>  				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
>  				#address-cells = <1>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 978f8122c0d2..66ba8da704f6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -959,6 +959,15 @@
>  				status = "disabled";
>  			};
> 
> +			mu: mailbox@30aa0000 {
> +				compatible = "fsl,imx8mq-mu", "fsl,imx6sx-mu";
> +				reg = <0x30aa0000 0x10000>;
> +				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MQ_CLK_MU_ROOT>;
> +				clock-names = "mu";
> +				#mbox-cells = <2>;
> +			};
> +
>  			usdhc1: mmc@30b40000 {
>  				compatible = "fsl,imx8mq-usdhc",
>  				             "fsl,imx7d-usdhc";
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
