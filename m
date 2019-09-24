Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD93BCBF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aj9eM3AYUZfnbq5GP5Pe+2a18S00FWAZhhcVhQrUdqk=; b=X9PZ/HN17xmvuC
	p5TOumfJyIyUxc+THOuuOLoUGSi/0yAQPwveiX3WIEeR9RLkdWqiFLEaeyPHYiYsacm+mAbl3anXg
	BFs+R1jlnokaciFTZVxT6FSgfzCD6IqdmRtl4yaMDdvzQ38XM+Rp9Y9Yzxh0Eiwxuh/iqKVmkBOA+
	aXw4JAyCfbNynMMdhedpig0f091po4s59bEcYZCX43/EulUDGBRXYNCgDcs+4HhdBTh79WShWjzZK
	X3MjD7dp1A/R5QQnuRHtRy6TVGR1J2gvKp00UMP7IlvErU1xJobTzknnsrOJHF4o7Lo2pb4BCtjdd
	Obim7ncGp0V9pLfrF0GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCnD5-0002pB-8y; Tue, 24 Sep 2019 15:58:39 +0000
Received: from mail-eopbgr20048.outbound.protection.outlook.com ([40.107.2.48]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCnCq-0002ol-Nu
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:58:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJ4JfewuqTvIgu7w4gwdqg3ib/k7aUOGA4YEMvxjUgx/3sVPYggK2hardhKuHoHGXJ6QGgYxsvQSYWTutGoVgObPLRegwrhRnW891wrDqerK9FrbImvYEw+QjBROanRH3jrnL3em2xafsIkLtkM386DkWAYx7CxX63Y9j+zLGcsUZVoSwizX9iF/ENhmY+5bX+BAWvjPaCFaT35Xn+aHK6n8EVn49/WtRoVend19Z1HVRxgtQn1oU1HzlKuNfYGdERezEGzoodjNZtDnxGFMmQx1FdKqNYX0gcOjPLM6ngD1+f8WNTuzKTUCwCV5KSHYNoV/OJdgmW5gpVWGecydAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdNR+dOuvKKacJRvcxKNBK1AoGIZGuXr0h8aSamrKzo=;
 b=Md1Vbzi3xPv/3qlfCftiOmjLVsCMopicbTkB82/AYr8XIrMcOHqvB5otuHCzh/TZAa5mF7W05bcUNlLMZuBqeVPV7rQUHaNtUk8Ts4uPw8CxpGjEnbYPvHlPlwWjHlF3mHx4WA8nlRnMCPxmOkPZUBV5ax595xzAmNVl2xlB/Uh9M7OdK8hp4V4eonlt68CQg8kd6QENNis9e9QgSkrJhqc8bkSJlV6NkuR0ac0qezprBUf5KBsVAKhoDMel/lr6NHkTwtAwRO8KVl4vwpPMTYiEe1OgZvkfCaTdNAlDg9z+xMAU+P/qp3xZnkiEsyIIwJZrk6hZ5E8Ce7PcO7TF2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdNR+dOuvKKacJRvcxKNBK1AoGIZGuXr0h8aSamrKzo=;
 b=JtBkjlTDoN4TiK157SDU0ouhGSM/h65fa0nyQlkVqhfaZqunRZXTrDvvziK2d3E/H8m6HamQZPN/i+33rqYA22ZTem2WTv6wcj7336MVFw8Ma70VkvKu5XOXmT/TtTMciBQtCSNkNdryGssznQQK8+Tvz+FfwIA2yuKfO149WQE=
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com (20.179.255.161) by
 AM0PR04MB5602.eurprd04.prod.outlook.com (20.178.118.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Tue, 24 Sep 2019 15:58:21 +0000
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038]) by AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 15:58:21 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Biwen Li <biwen.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Ran Wang <ran.wang_1@nxp.com>
Subject: RE: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Topic: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Index: AQHVcoOnKERg3NBKWEeinvrVMNtD66c6+UIw
Date: Tue, 24 Sep 2019 15:58:21 +0000
Message-ID: <AM0PR04MB667690EE76D327D0FC09F7818F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
References: <20190924024548.4356-1-biwen.li@nxp.com>
 <20190924024548.4356-3-biwen.li@nxp.com>
In-Reply-To: <20190924024548.4356-3-biwen.li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7783c7de-e7a0-43d2-16c1-08d74108065b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5602; 
x-ms-traffictypediagnostic: AM0PR04MB5602:|AM0PR04MB5602:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5602934205EE1BCD76BA43838F840@AM0PR04MB5602.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(136003)(346002)(376002)(199004)(189003)(13464003)(8676002)(2906002)(52536014)(2501003)(3846002)(99286004)(81166006)(71200400001)(71190400001)(7696005)(14454004)(66066001)(74316002)(33656002)(4326008)(229853002)(6246003)(55016002)(6636002)(478600001)(5660300002)(6116002)(54906003)(6506007)(53546011)(66446008)(102836004)(66556008)(66476007)(186003)(81156014)(76116006)(76176011)(66946007)(64756008)(9686003)(6436002)(26005)(86362001)(25786009)(14444005)(305945005)(7736002)(256004)(446003)(11346002)(8936002)(476003)(110136005)(486006)(316002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5602;
 H:AM0PR04MB6676.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0dczoCsZ62W8zLCdTd3LMlHpB7mTXoKjujRzuXcb7Al7+G/sJluDH6Sln8T0Dw+QWgoNbQPOgoEBKed5AP6yTgSVTeXmXiFJQwSI5g1xshgI6FSYUvIcJXWmAW7gUwC+ih7o7FhjyK53EyDWMevBwcSAZjRkHi0h1fSBKM7rWxF27n1OXg6bv01tFCQ+67MWQiKm/hMa77NYmUTgQ9sZVTZuEXkljZvhov5B2FhJ0B33By8mAwyA3LCC+V2O76Z7Y5CnWq+vhmOLrf99m8w1eabCoWM0u+y7l7lZ0zjZ8Fvqw6T4/2DUgJ244VF7vpVulWJCDZ1AYJC9DMW38bASy/veOZ48S3MGPlZZG1yUEhu+pkNU/lpoySmP7jxcgocoVsGzKqwLO3VbUxe67cb2GPgmwOTp0LHUYiatmCG1EZg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7783c7de-e7a0-43d2-16c1-08d74108065b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 15:58:21.7621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VwlBb0n5LXv/Eu24Va0FshGFl3ssvrRmM+sUAJIdhUFKPWCi2CFG8UIOyflug7muzzNkouhYArBkIh2i9PwPhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5602
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_085824_889851_FED6E7D7 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.48 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Biwen Li <biwen.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Biwen Li <biwen.li@nxp.com>
> Sent: Monday, September 23, 2019 9:46 PM
> To: Leo Li <leoyang.li@nxp.com>; shawnguo@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Ran Wang
> <ran.wang_1@nxp.com>
> Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; devicetree@vger.kernel.org; Biwen Li
> <biwen.li@nxp.com>
> Subject: [v3,3/3] Documentation: dt: binding: fsl: Add 'fsl,ippdexpcr-alt-addr'
> property
> 
> The 'fsl,ippdexpcr-alt-addr' property is used to handle an errata A-008646 on
> LS1021A
> 
> Signed-off-by: Biwen Li <biwen.li@nxp.com>
> ---
> Change in v3:
> 	- rename property name
> 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> 
> Change in v2:
> 	- update desc of the property 'fsl,rcpm-scfg'
> 
>  Documentation/devicetree/bindings/soc/fsl/rcpm.txt | 14
> ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> index 5a33619d881d..157dcf6da17c 100644
> --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> @@ -34,6 +34,11 @@ Chassis Version		Example Chips
>  Optional properties:
>   - little-endian : RCPM register block is Little Endian. Without it RCPM
>     will be Big Endian (default case).
> + - fsl,ippdexpcr-alt-addr : Must add the property for SoC LS1021A,

You probably should mention this is related to a hardware issue on LS1021a and only needed on LS1021a.

> +   Must include n + 1 entries (n = #fsl,rcpm-wakeup-cells, such as:
> +   #fsl,rcpm-wakeup-cells equal to 2, then must include 2 + 1 entries).

#fsl,rcpm-wakeup-cells is the number of IPPDEXPCR registers on an SoC.  However you are defining an offset to scfg registers here.  Why these two are related?  The length here should actually be related to the #address-cells of the soc/.  But since this is only needed for LS1021, you can just make it 3.

> +   The first entry must be a link to the SCFG device node.
> +   The non-first entry must be offset of registers of SCFG.
> 
>  Example:
>  The RCPM node for T4240:
> @@ -43,6 +48,15 @@ The RCPM node for T4240:
>  		#fsl,rcpm-wakeup-cells = <2>;
>  	};
> 
> +The RCPM node for LS1021A:
> +	rcpm: rcpm@1ee2140 {
> +		compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-2.1+";
> +		reg = <0x0 0x1ee2140 0x0 0x8>;
> +		#fsl,rcpm-wakeup-cells = <2>;
> +		fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>; /*
> SCFG_SPARECR8 */
> +	};
> +
> +
>  * Freescale RCPM Wakeup Source Device Tree Bindings
>  -------------------------------------------
>  Required fsl,rcpm-wakeup property should be added to a device node if the
> device
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
