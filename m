Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C605F41C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 09:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=jkpxhCwptxGJnUzjnvN6a4uANWgjjMNI7gKEAZ+Q0Tc=; b=SwFLliDAa8Alwg
	Vq0Qtglrr/b+WL+5GZy2mbpmd7ayQDjROSNQLD+pBpctE1GbgZ0LXsaqz6Bonx+AFHcl2eX7wAwJJ
	JIfYdy2wgLCBumDY93b1UvMLHkq7ZFUQj+9uXKNmx36mIf+2r+tcz5xrO5zxcVU/1zK/Cy3243Soy
	SW2prvcHgYmDFcwwtpHDqJvltrPeWuoL2GF95YtQN7/FuBDsgFuUFCOsJt3awVWwR3+00EciJ64V5
	+7lV2j2Zo9jeAY/GqHaSR1wnirkVbjVBXo94+bbhbRKh8kR47BYY/pThapS5NfE8PcR3aNna9s2/f
	gr1VitvMCyYX/z7Z8PTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwUk-0006pj-J0; Thu, 04 Jul 2019 07:49:30 +0000
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwUT-0006op-7R
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 07:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bg3YVZyZix9ibFcYWOAmR1P6Nh6H6haGJXEGrezCKN0=;
 b=MNlvGOO1bE3gwqoiyFfMX5odP8T+TWf78MbA83x0OAD/GJt9aK4yiMkabyBGFRCZ1Wtv4OHc0r4HwAg6lsU+phZs4bX5n99clwnjuGwiMzfMaoQboWr9WzKV0rsyRHrFoy/bzsEU0+ModE6TGHFKOzC1r7FX4uiD3tYO2ipyPfU=
Received: from DB7PR04MB5051.eurprd04.prod.outlook.com (20.176.234.223) by
 DB7PR04MB4185.eurprd04.prod.outlook.com (52.134.111.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.16; Thu, 4 Jul 2019 07:49:07 +0000
Received: from DB7PR04MB5051.eurprd04.prod.outlook.com
 ([fe80::6c98:1416:8221:bdfc]) by DB7PR04MB5051.eurprd04.prod.outlook.com
 ([fe80::6c98:1416:8221:bdfc%4]) with mapi id 15.20.2052.010; Thu, 4 Jul 2019
 07:49:07 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Index: AQHVMjEDVn995bhE70i5OsdReRFRhA==
Date: Thu, 4 Jul 2019 07:49:07 +0000
Message-ID: <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
References: <20190704061403.8249-1-Anson.Huang@nxp.com>
 <20190704061403.8249-2-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f05be104-3873-4909-9548-08d700541803
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4185; 
x-ms-traffictypediagnostic: DB7PR04MB4185:
x-microsoft-antispam-prvs: <DB7PR04MB41851512C4255B5A3548A931EEFA0@DB7PR04MB4185.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(376002)(366004)(396003)(199004)(189003)(33656002)(9686003)(71190400001)(81156014)(81166006)(102836004)(26005)(229853002)(446003)(55016002)(53936002)(6116002)(8936002)(316002)(54906003)(71200400001)(186003)(110136005)(476003)(44832011)(486006)(3846002)(91956017)(6436002)(7416002)(478600001)(68736007)(76116006)(73956011)(6506007)(15650500001)(6246003)(4744005)(7736002)(66946007)(305945005)(64756008)(66446008)(66556008)(66476007)(86362001)(14444005)(256004)(5660300002)(4326008)(2501003)(99286004)(53546011)(52536014)(76176011)(66066001)(74316002)(25786009)(7696005)(14454004)(8676002)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4185;
 H:DB7PR04MB5051.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PRJDAL7OvTH5whHzKkeF/40C9fZaeEpPHcI9fzXDbyWGVTmzg8YmFbx9mWBlwatAcZFEn9dpR6rdKRucH83HyO0+3kgnGgKWgdA8UThJaaPeLQC46dIcAAxA5wmYxgS/Y7N4sMlXg1h2avH58VK0EA91JNC5ZVIarVFqwCR84jep+WVFoEdU5x+1+9iKgih0U6rpSYtyPRA9SSH2A1H8kwjvGqFDrSgdx81wCfqWUGKbQO4DdR+h5/ngmOMgqQ/AW7k8+pMxXc1sC5LVg5XyjTtrZKTJ9pNVh8M3M6B8980hKuu9HcE93utaqZvKIoy9hCpHEf3tbc6S4sg28Rx1F3ktv6e4ukziKdAHWxjFpU/X2XzjdikA6H9sc8pJyhyOUeBpnxS/2oDiNvdyVXQzuvxq8eUgOIElCuqHotIz4jk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f05be104-3873-4909-9548-08d700541803
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 07:49:07.5136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_004913_344778_88AF76C6 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/4/2019 9:23 AM, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Assign highest OPP as suspend OPP to reduce suspend/resume
> latency on i.MX8MM.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index b11fc5e..3a62407 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -136,6 +136,7 @@
>   			opp-microvolt = <1000000>;
>   			opp-supported-hw = <0x8>, <0x3>;
>   			clock-latency-ns = <150000>;
> +			opp-suspend;
>   		};
>   	};

What if the highest OPP is unavailable due to speed grading? Ideally we 
should find a way to suspend at the highest *supported* OPP.

Maybe the opp-suspend marking could be assigned from imx-cpufreq-dt 
driver code?

--
Regards,
Leonard


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
