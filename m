Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446C65628E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 08:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVsT0ofMhlfVOktvxVMLNQEji2Lv+IMo+PoQy0SOeCY=; b=CuPAlvP9suD+ZI
	BVqCFfsXUfiDro33YJ3+sD+4TRw0+q56NyWNqI+rJYiSFkjvPfv6HXIJju7sQ3A2WRkMT6CRoo6jP
	b9C9ebiZ/ePRCaZyoIEZE9ycJr5SW91yRdh8wxV1/4ZyoWYE4us3lyJ8qfce6drw3Dc/ztF+aDaBn
	JJSJuLjaYSRbDw95aUM4P08J0lzPI1Wx28mb5TfrEs6O+ihGlfUz7L4+WW37gxt4pl7X+klM6f2Qj
	1tXYLmKVebJqM/ShXmg6wLnr+EqDytqzjYTdtt0KPXO3WPfIEjQbPIHugL88dGRsMzPoK3k0TGHeX
	qqMQgv7N8EVcgDrv9RlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg1hW-0002vY-9N; Wed, 26 Jun 2019 06:46:38 +0000
Received: from mail-eopbgr40075.outbound.protection.outlook.com ([40.107.4.75]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg1h4-0002ur-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 06:46:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=j3Vb24M/076IkX0kb9so+89tvuWo5sQ3FLoUcIH8GHlFga5DFYPlD7TCYlAodLJnwBRgothGdtxlhWTRL+vWS+Uzv65CAD+psopBYX+R3MuqnLF4SH861tkNF/uCMjow/+weAYMLnkXt1sfOyjJMh6DhAWiYb6rLBMU6kFyIBWE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzXWd1mthSPfIqxOTeHfcPvzhNfmt/5Z7G1n45TKGno=;
 b=JbPCxB71wQTKybak8q9u2oGiUSiJKM8aDpED1oMRaqeRqrBQGx9AffBYkawj6/2A8CQNJ4bkQ9WthwbJVFrWhncgQFhYEa9RFkxeMGZU8RuFnszTAly7w4OUzJDAN/aiIsVHo8r07Z2wmZcykrcN0Z7XXCTr4E5P5o2b+POzBNY=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzXWd1mthSPfIqxOTeHfcPvzhNfmt/5Z7G1n45TKGno=;
 b=BLc6jlDB9DZASiDJjVKycYIXwI8KBRZAOWClHfAnt54xbcOh+MfwxbRCMbRxtwtRkjTJgnrQFhjJxMGwPM918q6AbRpI9P2/7ONJKDsHAy9FZ6NqkwYzNoELZz2RvuTXtGmLBBSgBB0YqhcojE/D4IAGPXh2WlK1ttdJ0xRno3g=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.33.203) by
 AM6PR04MB6055.eurprd04.prod.outlook.com (20.179.5.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 06:46:04 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2%7]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 06:46:04 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH] reset: Add driver for dispmix reset
Thread-Topic: [PATCH] reset: Add driver for dispmix reset
Thread-Index: AQHVKxptCiL92aUsgkqeLp394Rbp9KasdkqAgADEN5A=
Date: Wed, 26 Jun 2019 06:46:04 +0000
Message-ID: <AM6PR04MB49369AD1DE69A51B38471608F3E20@AM6PR04MB4936.eurprd04.prod.outlook.com>
References: <20190625055557.7507-1-chen.fang@nxp.com>
 <1561474623.5559.4.camel@pengutronix.de>
In-Reply-To: <1561474623.5559.4.camel@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e85682a-d279-4a2a-f844-08d6fa01f60d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6055; 
x-ms-traffictypediagnostic: AM6PR04MB6055:
x-microsoft-antispam-prvs: <AM6PR04MB605540789A211123E312E3B0F3E20@AM6PR04MB6055.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(366004)(39860400002)(136003)(199004)(189003)(13464003)(8676002)(8936002)(53936002)(6506007)(476003)(66476007)(71190400001)(446003)(102836004)(6116002)(478600001)(71200400001)(26005)(6436002)(316002)(14454004)(14444005)(2201001)(110136005)(66556008)(9686003)(86362001)(256004)(66446008)(5660300002)(52536014)(54906003)(76116006)(73956011)(64756008)(66946007)(30864003)(76176011)(2906002)(486006)(2501003)(53946003)(25786009)(7696005)(55016002)(81166006)(4326008)(11346002)(3846002)(6246003)(68736007)(81156014)(66066001)(74316002)(186003)(229853002)(305945005)(7736002)(99286004)(33656002)(53546011)(2004002)(579004)(559001)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6055;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PbSkOC7KniiFBCit35PU9MsjmqeQSWCTY/zkSwixonOewWRGvrI5RTv5eKDEgTyc3UusbbJqe7KY4epwg24owjq9+hKIANmXwA3RwcjNbe5AjWAHAduSFBHAp0GH4CTll3BB969B+S5NZFPttlaynRthpaeuynHF3NJndUxh3sQqBin/8IQix1Q0rekWdN5zrVnUIX9tOF0s51auRxzABeS35HP46AMUe40r6fdlCZocU68x3BIaLlWoA36NduGL+2wvBTQnk7hoKEmJX+mlp2LgFyaZ3pC3tT9Bf94t3MRuw/zyEHFelR5FMDODAwQPjrnIoDD8Ua4M98rVf42xN/fbvBCtgx7+zKUKqxNv7dFakpAD30YGaxodwldeYB3vQND6KHH90Nqnard1scX5z14hEjnvwvcmnXYGarbrTrk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e85682a-d279-4a2a-f844-08d6fa01f60d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 06:46:04.7856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chen.fang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_234610_807529_0148D8CF 
X-CRM114-Status: GOOD (  29.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

Thanks for your comments. And please see my answers below.

-----Original Message-----
From: Philipp Zabel <p.zabel@pengutronix.de> 
Sent: Tuesday, June 25, 2019 10:57 PM
To: Fancy Fang <chen.fang@nxp.com>; shawnguo@kernel.org; s.hauer@pengutronix.de
Cc: festevam@gmail.com; kernel@pengutronix.de; linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [PATCH] reset: Add driver for dispmix reset

Hi Fancy,

thank you for the patch. I have a few questions below.

On Tue, 2019-06-25 at 05:54 +0000, Fancy Fang wrote:
> This is an reset driver to implement a reset controller device DISPMIX 
> on IMX8MM and IMX8MN platforms. Dispmix reset is used to reset or 
> enable related buses and clks for the submodules in DISPMIX.

Unfortunately DISPMIX is not very well documented, so forgive my ignorance. It looks to me like some of those bits don't control reset lines, but are used to gate clocks.

Especially the i.MX8MN DISPMIX bits with clock enable bits and corresponding resets look like this should just be a clock controller that automatically (de)asserts the resets as necessary when clocks are enabled.

The same goes for the clock soft enable bits on i.MX8MM. If those bits actually control clock gates, they should not be described as reset controls in the device tree.
[FF] Make sense. The functions provided by the "dispmix reset" is more likely to be a combination of a clock gating module and a reset control than a standard reset controller. The reason why I choose reset framework to implement this device is that: 
First, this module is named as "dispmix reset" in the dispmix's design spec, so it gives me the first impression that it should be acted as a reset controller. And I'll check this with the IC designer
Second, the "dispmix reset" is separated from the CCM LPCG module which is used as the only clock controller device for the whole platform. So the CCM clock driver seems cannot cover this device.
Last, the "dispmix reset" is shared by all the submodules in the dispmix, so I abstract this device to be a reset controller driver to simplify the 'reset' logic for all the submodules drivers.
If using clock framework to cover this device, another driver needs to be implemented. I'll take a close look at it to see if this can happen.

> All the dispmix resets are divided into three subgroups:
> sft_rstn, clk_en and mipi_rst, and each of them contains several reset 
> lines to control several different modules on and off in DISPMIX which 
> doesn't require the standard reset flow, but only line assert and 
> deassert operations.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>
> ---
>  .../bindings/reset/nxp,dispmix-clk-en.txt     |  58 +++
>  .../bindings/reset/nxp,dispmix-mipi-rst.txt   |  57 +++
>  .../bindings/reset/nxp,dispmix-sft-rstn.txt   |  58 +++
>  drivers/reset/Kconfig                         |   9 +
>  drivers/reset/Makefile                        |   1 +
>  drivers/reset/reset-dispmix.c                 | 399 ++++++++++++++++++
>  include/dt-bindings/reset/imx8mm-dispmix.h    |  49 +++
>  include/dt-bindings/reset/imx8mn-dispmix.h    |  47 +++
>  8 files changed, 678 insertions(+)
>  create mode 100644 
> Documentation/devicetree/bindings/reset/nxp,dispmix-clk-en.txt
>  create mode 100644 
> Documentation/devicetree/bindings/reset/nxp,dispmix-mipi-rst.txt
>  create mode 100644 
> Documentation/devicetree/bindings/reset/nxp,dispmix-sft-rstn.txt
>  create mode 100644 drivers/reset/reset-dispmix.c  create mode 100644 
> include/dt-bindings/reset/imx8mm-dispmix.h
>  create mode 100644 include/dt-bindings/reset/imx8mn-dispmix.h
> 
> diff --git 
> a/Documentation/devicetree/bindings/reset/nxp,dispmix-clk-en.txt 
> b/Documentation/devicetree/bindings/reset/nxp,dispmix-clk-en.txt
> new file mode 100644
> index 000000000000..4375039eb072
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/nxp,dispmix-clk-en.txt
> @@ -0,0 +1,58 @@
> +NXP Display Mix clk-en Reset Controller 
> +=======================================
> +
> +This binding describes a reset controller device that is used to 
> +enable or disable the internal clocks for all the submodules(such as, 
> +LCDIF, MIPI DSI, MIPI CSI, ISI and etc) included by the Display Mix 
> +subsystem on IMX8MM and IMX8MN platforms. Like sft-rstn, only assert 
> +and deassert functions are required for submodule internal clocks 
> +enable or disable,
                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
See, doesn't this sound like it should be a clock driver?
[FF] As described above.

> +that means the clk-en can be treated as a real reset controller.
> +
> +Please also refer to reset.txt in this directory for common reset 
> +controller binding usage.
> +
> +Required properties:
> +- compatible: Should be "fsl,imx8mm-dispmix-clk-en" or
> +			"fsl,imx8mn-dispmix-clk-en".
> +- reg: should be register base and length as documented in the datasheet.
> +- clocks: phandle and clock specifier to disp apb clock for register access.
> +- clock-names: should be "disp-apb".
> +- power-domains: phandle to dispmix power domain.
> +- reset-cells: 1, see below.
> +
> +example:
> +
> +	dispmix_clk_en: dispmix-clk-en@32e28004 {
> +		compatible = "fsl,imx8mn-dispmix-clk-en";
> +		reg = <0x0 0x32e28004 0x0 0x4>;
> +		clocks = <&clk IMX8MN_CLK_DISP_APB_ROOT>;
> +		clock-names = "disp-apb";
                               ^^^^^
The "disp-" prefix seems superfluous here. Also,  isn't "ipg" commonly used for the peripheral bus clock?
[FF] It is okay to use 'ipg' name for this clock

> +		power-domains = <&dispmix_pd>;
> +		#reset-cells = <1>;
> +	};

Also I'm not convinced this has to be described with a DT block per single register. Why not just have a:

	dispmix: clock-controller@32e28000 {
		compatible = "fsl,imx8mn-dispmix";
		reg = <0x0 0x32e28000 0x0 0xc>;
		#clock-cells = <1>;
		#reset-cells = <1>;
	};

for the complete DISPMIX block?
This should be discussed with devicetree@vger.kernel.org in Cc: though.
[FF] I'll do this for the new clock driver.

> +
> +Specifying clk-en control of devices
> +====================================
> +
> +Device nodes in Display Mix should specify the reset channel required 
> +in their "resets" property, containing a phandle to the clk-en device 
> +node and an index to specify which channel to use, as described in 
> +Documentation/devicetree/bindings/reset/reset.txt.
> +
> +example:
> +
> +	lcdif_resets: lcdif-resets {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		#reset-cells = <0>;
> +
> +		lcdif-clk-enable {
> +			compatible = "lcdif,clk-enable";
> +			resets = <&dispmix_clk_en IMX8MN_LCDIF_APB_CLK_EN>,
> +				 <&dispmix_clk_en IMX8MN_LCDIF_PIXEL_CLK_EN>;

Again, these don't look like reset controls to me.
Are these gates on the clock inputs to the LCDIF module?
[FF] Same as described above.

> +		};
> +	};
> +
> +Macro definitions for the supported reset channels can be found in:
> +include/dt-bindings/reset/imx8mm-dispmix.h and 
> +include/dt-bindings/reset/imx8mn-dispmix.h.
> diff --git 
> a/Documentation/devicetree/bindings/reset/nxp,dispmix-mipi-rst.txt 
> b/Documentation/devicetree/bindings/reset/nxp,dispmix-mipi-rst.txt
> new file mode 100644
> index 000000000000..c47bfd4842ed
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/nxp,dispmix-mipi-rst.txt
> @@ -0,0 +1,57 @@
> +NXP Display Mix mipi-rst Reset Controller 
> +=========================================
> +
> +This binding describes a reset controller device that is used to 
> +reset or de-reset the MIPI DPHY master direction(for MIPI DSI) and 
> +slave direction(for MIPI CSI) included by the Display Mix subsystem 
> +on IMX8MM and IMX8MN platforms. Like sft-rstn, only assert and 
> +deassert functions are required for PHY reset or de-reset.

These sound like proper reset controls, but I am not sure it is necessary to put them in a separate device. Couldn't they just be added with the other reset controls into a single DISPMIX device?
[FF] I'll take this considerations.

> +Please also refer to reset.txt in this directory for common reset 
> +controller binding usage.
> +
> +Required properties:
> +- compatible: Should be "fsl,imx8mm-dispmix-mipi-rst" or
> +			"fsl,imx8mn-dispmix-mipi-rst".
> +- reg: should be register base and length as documented in the datasheet.
> +- clocks: phandle and clock specifier to disp apb clock for register access.
> +- clock-names: should be "disp-apb".
> +- power-domains: phandle to dispmix power domain.
> +- reset-cells: 1, see below.
> +
> +example:
> +
> +	dispmix_mipi_rst: dispmix-mipi-rst@32e28008 {
> +		compatible = "fsl,imx8mn-dispmix-mipi-rst";
> +		reg = <0x0 0x32e28008 0x0 0x4>;
> +		clocks = <&clk IMX8MN_CLK_DISP_APB_ROOT>;
> +		clock-names = "disp-apb";
> +		active_low;
> +		power-domains = <&dispmix_pd>;
> +		#reset-cells = <1>;
> +	};
> +
> +
> +Specifying mipi-rst control of devices 
> +======================================
> +
> +Device nodes in Display Mix should specify the reset channel required 
> +in their "resets" property, containing a phandle to the mipi-rst 
> +device node and an index to specify which channel to use, as 
> +described in Documentation/devicetree/bindings/reset/reset.txt.
> +
> +example:
> +
> +	mipi_dsi_resets: mipi-dsi-resets {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		#reset-cells = <0>;
> +
> +		dsi-mipi-reset {
> +			compatible = "dsi,mipi-reset";
> +			resets = <&dispmix_mipi_rst IMX8MN_MIPI_M_RESET>;
> +                };
> +	};
> +
> +Macro definitions for the supported reset channels can be found in:
> +include/dt-bindings/reset/imx8mm-dispmix.h and 
> +include/dt-bindings/reset/imx8mn-dispmix.h.
> diff --git 
> a/Documentation/devicetree/bindings/reset/nxp,dispmix-sft-rstn.txt 
> b/Documentation/devicetree/bindings/reset/nxp,dispmix-sft-rstn.txt
> new file mode 100644
> index 000000000000..7867018a409b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/nxp,dispmix-sft-rstn.txt
> @@ -0,0 +1,58 @@
> +NXP Display Mix sft-rstn Reset Controller 
> +=========================================
> +
> +This binding describes a reset controller device that is used to 
> +reset or de-reset all the submodules(such as, LCDIF, MIPI DSI, MIPI 
> +CSI, ISI and etc) included by the Display Mix subsystem on IMX8MM and 
> +IMX8MN platforms. Only assert and deassert functions are required for 
> +submodule reset or de-reset.
> +
> +Please also refer to reset.txt in this directory for common reset 
> +controller binding usage.
> +
> +Required properties:
> +- compatible: Should be "fsl,imx8mm-dispmix-sft-rstn" or
> +			"fsl,imx8mn-dispmix-sft-rstn".
> +- reg: should be register base and length as documented in the datasheet.
> +- clocks: phandle and clock specifier to disp apb clock for register access.
> +- clock-names: should be "disp-apb".
> +- power-domains: phandle to dispmix power domain.
> +- reset-cells: 1, see below.
> +
> +example:
> +
> +	dispmix_sft_rstn: dispmix-sft-rstn@32e28000 {
> +		compatible = "fsl,imx8mm-dispmix-sft-rstn";
> +		reg = <0x0 0x32e28000 0x0 0x4>;
> +		clocks = <&clk IMX8MM_CLK_DISP_APB_ROOT>;
> +		clock-names = "disp-apb";
> +		active_low;
> +		power-domains = <&dispmix_pd>;
> +		#reset-cells = <1>;
> +	};
> +
> +Specifying sft-rstn control of devices 
> +======================================
> +
> +Device nodes in Display Mix should specify the reset channel required 
> +in their "resets" property, containing a phandle to the sft-rstn 
> +device node and an index to specify which channel to use, as 
> +described in Documentation/devicetree/bindings/reset/reset.txt.
> +
> +example:
> +
> +        lcdif_resets: lcdif-resets {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +                #reset-cells = <0>;
> +
> +                lcdif-soft-resetn {
> +                        compatible = "lcdif,soft-resetn";
> +                        resets = <&dispmix_sft_rstn IMX8MN_LCDIF_APB_CLK_RESET>,
> +                                 <&dispmix_sft_rstn 
> + IMX8MN_LCDIF_PIXEL_CLK_RESET>;

From these names, on i.MX8MN these look like they could be an internal property of the DISPMIX clocks provided to the submodules. But on i.MX8MM the soft reset bits do look like actual module resets. Can you confirm whether this is true?
[FF] I'll check this with the IC designer, and I'll let you know the result when I get the answer.

> +                };
> +        };
> +
> +Macro definitions for the supported reset channels can be found in:
> +include/dt-bindings/reset/imx8mm-dispmix.h and 
> +include/dt-bindings/reset/imx8mn-dispmix.h.
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig index 
> 21efb7d39d62..1c5c510f1e18 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -49,6 +49,15 @@ config RESET_BRCMSTB
>  	  This enables the reset controller driver for Broadcom STB SoCs using
>  	  a SUN_TOP_CTRL_SW_INIT style controller.
>  
> +config RESET_DISPMIX
> +	tristate "IMX Display Mix reset support"
> +	default y

I'd prefer
	default ARCH_FSL_IMX8MM || ARCH_FSL_IMX8MN

> +	select REGMAP_MMIO
> +	depends on ARCH_FSL_IMX8MM || ARCH_FSL_IMX8MN

and
	... || COMPILE_TEST

for better build test coverage.
[FF] Accept.

> +	help
> +	  This driver provides support for Display Mix reset that is controlled
> +	  by dispmix GPR registers.
> +
>  config RESET_HSDK
>  	bool "Synopsys HSDK Reset Driver"
>  	depends on HAS_IOMEM
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile index 
> 61456b8f659c..529159bf247f 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_RESET_ATH79) += reset-ath79.o
>  obj-$(CONFIG_RESET_AXS10X) += reset-axs10x.o
>  obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
>  obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
> +obj-$(CONFIG_RESET_DISPMIX) += reset-dispmix.o
>  obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
>  obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
>  obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o diff --git 
> a/drivers/reset/reset-dispmix.c b/drivers/reset/reset-dispmix.c new 
> file mode 100644 index 000000000000..fedb3a3e6b42
> --- /dev/null
> +++ b/drivers/reset/reset-dispmix.c
> @@ -0,0 +1,399 @@
> +/*
> + * IMX Display Mix GPR reset driver
> + *
> + * Copyright 2019 NXP
> + *
> + * This program is free software; you can redistribute it and/or 
> +modify
> + * it under the terms of the GNU General Public License as published 
> +by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/reset-controller.h>
> +#include <dt-bindings/reset/imx8mm-dispmix.h>
> +#include <dt-bindings/reset/imx8mn-dispmix.h>
> +
> +#define DRIVER_NAME		"dispmix_reset_drv"
> +
> +/* DISPMIX GPR registers */
> +#define DISPLAY_MIX_SFT_RSTN_CSR		0x00
> +#define DISPLAY_MIX_CLK_EN_CSR			0x00
> +#define GPR_MIPI_RESET_DIV			0x00
> +
> +struct dispmix_reset_controller {
> +	struct reset_controller_dev rcdev;
> +	struct device *dev;

Keeping dev around is not necessary if you move the of_match_device into the probe function, see below.
[FF] I'll take a close look at this.

> +	struct regmap *rstcon;

Is there any reason not to just use straight readl/writel besides the automatic clock handling?
[FF] Use regmap is for simplifying the register modifications since the register has no SET or CLR shadow, so when set or clear one bit, the register needs to be read-and-modify. And besides, the register access requires disp-apb clock open, and regmap can handle this properly.

> +	struct clk *ipg_clk;

Unused?
[FF] Yes, this will be removed.

> +	bool active_low;
> +};
> +
> +struct dispmix_reset_entry {
> +	uint32_t reg_off;
> +	uint32_t bit_off;
> +};
> +
> +struct dispmix_reset_pdata {
> +	const struct dispmix_reset_entry *resets;
> +	uint32_t nr_resets;
> +	const struct regmap_config *config;
> +};
> +
> +#define RESET_ENTRY(id, reg, bit)			\
> +	[id] = { .reg_off = (reg), .bit_off = (bit) }
> +
> +static const struct dispmix_reset_entry imx8mm_sft_rstn[] = {
> +	/* dispmix reset entry */
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_CHIP_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 0),
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_IPG_HARD_ASYNC_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 1),
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_CSI_HRESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 2),
> +	RESET_ENTRY(IMX8MM_CAMERA_PIXEL_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 3),
> +	RESET_ENTRY(IMX8MM_MIPI_CSI_I_PRESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 4),
> +	RESET_ENTRY(IMX8MM_MIPI_DSI_I_PRESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 5),
> +	RESET_ENTRY(IMX8MM_BUS_RSTN_BLK_SYNC,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 6),
> +};
> +
> +static const struct dispmix_reset_entry imx8mm_clk_en[] = {
> +	/* dispmix clock enable entry */
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_CSI_HCLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  0),
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_SPU_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  1),
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_MEM_WRAPPER_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  2),
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_IPG_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  3),
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_IPG_CLK_S_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  4),
> +	RESET_ENTRY(IMX8MM_CSI_BRIDGE_IPG_CLK_S_RAW_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  5),
> +	RESET_ENTRY(IMX8MM_LCDIF_APB_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  6),
> +	RESET_ENTRY(IMX8MM_LCDIF_PIXEL_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  7),
> +	RESET_ENTRY(IMX8MM_MIPI_DSI_PCLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  8),
> +	RESET_ENTRY(IMX8MM_MIPI_DSI_CLKREF_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  9),
> +	RESET_ENTRY(IMX8MM_MIPI_CSI_ACLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR, 10),
> +	RESET_ENTRY(IMX8MM_MIPI_CSI_PCLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR, 11),
> +	RESET_ENTRY(IMX8MM_BUS_BLK_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR, 12),
> +};
> +
> +static const struct dispmix_reset_entry imx8mm_mipi_rst[] = {
> +	/* mipi lanes reset entry */
> +	RESET_ENTRY(IMX8MM_MIPI_S_RESET,
> +		    GPR_MIPI_RESET_DIV, 16),
> +	RESET_ENTRY(IMX8MM_MIPI_M_RESET,
> +		    GPR_MIPI_RESET_DIV, 17),
> +};
> +
> +static const struct dispmix_reset_entry imx8mn_sft_rstn[] = {
> +	/* dispmix reset entry */
> +	RESET_ENTRY(IMX8MN_MIPI_DSI_PCLK_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 0),
> +	RESET_ENTRY(IMX8MN_MIPI_DSI_CLKREF_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 1),
> +	RESET_ENTRY(IMX8MN_MIPI_CSI_PCLK_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 2),
> +	RESET_ENTRY(IMX8MN_MIPI_CSI_ACLK_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 3),
> +	RESET_ENTRY(IMX8MN_LCDIF_PIXEL_CLK_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 4),
> +	RESET_ENTRY(IMX8MN_LCDIF_APB_CLK_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 5),
> +	RESET_ENTRY(IMX8MN_ISI_PROC_CLK_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 6),
> +	RESET_ENTRY(IMX8MN_ISI_APB_CLK_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 7),
> +	RESET_ENTRY(IMX8MN_BUS_BLK_CLK_RESET,
> +		    DISPLAY_MIX_SFT_RSTN_CSR, 8),
> +};
> +
> +static const struct dispmix_reset_entry imx8mn_clk_en[] = {
> +	/* dispmix clock enable entry */
> +	RESET_ENTRY(IMX8MN_MIPI_DSI_PCLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  0),
> +	RESET_ENTRY(IMX8MN_MIPI_DSI_CLKREF_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  1),
> +	RESET_ENTRY(IMX8MN_MIPI_CSI_PCLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  2),
> +	RESET_ENTRY(IMX8MN_MIPI_CSI_ACLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  3),
> +	RESET_ENTRY(IMX8MN_LCDIF_PIXEL_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  4),
> +	RESET_ENTRY(IMX8MN_LCDIF_APB_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  5),
> +	RESET_ENTRY(IMX8MN_ISI_PROC_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  6),
> +	RESET_ENTRY(IMX8MN_ISI_APB_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  7),
> +	RESET_ENTRY(IMX8MN_BUS_BLK_CLK_EN,
> +		    DISPLAY_MIX_CLK_EN_CSR,  8),
> +};
> +
> +static const struct dispmix_reset_entry imx8mn_mipi_rst[] = {
> +	/* mipi lanes reset entry */
> +	RESET_ENTRY(IMX8MN_MIPI_S_RESET,
> +		    GPR_MIPI_RESET_DIV, 16),
> +	RESET_ENTRY(IMX8MN_MIPI_M_RESET,
> +		    GPR_MIPI_RESET_DIV, 17),
> +};
> +
> +static const struct regmap_config sft_rstn_config = {
> +	.name = "sft_rstn",
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = 0x00,
> +};
> +
> +static const struct regmap_config clk_en_config = {
> +	.name = "clk_en",
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = 0x00,
> +};
> +
> +static const struct regmap_config mipi_rst_config = {
> +	.name = "mipi_rst",
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = 0x00,
> +};
> +
> +static const struct dispmix_reset_pdata imx8mm_sft_rstn_pdata = {
> +	.resets    = imx8mm_sft_rstn,
> +	.nr_resets = IMX8MM_DISPMIX_SFT_RSTN_NUM,
> +	.config    = &sft_rstn_config,
> +};
> +
> +static const struct dispmix_reset_pdata imx8mm_clk_en_pdata = {
> +	.resets    = imx8mm_clk_en,
> +	.nr_resets = IMX8MM_DISPMIX_CLK_EN_NUM,
> +	.config    = &clk_en_config,
> +};
> +
> +static const struct dispmix_reset_pdata imx8mm_mipi_rst_pdata = {
> +	.resets    = imx8mm_mipi_rst,
> +	.nr_resets = IMX8MM_MIPI_RESET_NUM,
> +	.config    = &mipi_rst_config,
> +};
> +
> +static const struct dispmix_reset_pdata imx8mn_sft_rstn_pdata = {
> +	.resets    = imx8mn_sft_rstn,
> +	.nr_resets = IMX8MN_DISPMIX_SFT_RSTN_NUM,
> +	.config    = &sft_rstn_config,
> +};
> +
> +static const struct dispmix_reset_pdata imx8mn_clk_en_pdata = {
> +	.resets    = imx8mn_clk_en,
> +	.nr_resets = IMX8MN_DISPMIX_CLK_EN_NUM,
> +	.config    = &clk_en_config,
> +};
> +
> +static const struct dispmix_reset_pdata imx8mn_mipi_rst_pdata = {
> +	.resets    = imx8mn_mipi_rst,
> +	.nr_resets = IMX8MN_MIPI_RESET_NUM,
> +	.config    = &mipi_rst_config,
> +};
> +
> +static const struct of_device_id dispmix_reset_dt_ids[] = {
> +	{
> +		.compatible = "fsl,imx8mm-dispmix-sft-rstn",
> +		.data = &imx8mm_sft_rstn_pdata,
> +	},
> +	{
> +		.compatible = "fsl,imx8mm-dispmix-clk-en",
> +		.data = &imx8mm_clk_en_pdata,
> +	},
> +	{
> +		.compatible = "fsl,imx8mm-dispmix-mipi-rst",
> +		.data = &imx8mm_mipi_rst_pdata,
> +	},
> +	{
> +		.compatible = "fsl,imx8mn-dispmix-sft-rstn",
> +		.data = &imx8mn_sft_rstn_pdata,
> +	},
> +	{
> +		.compatible = "fsl,imx8mn-dispmix-clk-en",
> +		.data = &imx8mn_clk_en_pdata,
> +	},
> +	{
> +		.compatible = "fsl,imx8mn-dispmix-mipi-rst",
> +		.data = &imx8mn_mipi_rst_pdata,
> +	},
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, dispmix_reset_dt_ids);
> +
> +static int dispmix_reset_assert(struct reset_controller_dev *rcdev,
> +				unsigned long id)
> +{
> +	struct dispmix_reset_controller *drcdev;
> +	const struct of_device_id *of_id;
> +	const struct dispmix_reset_pdata *pdata;
> +	const struct dispmix_reset_entry *rstent;
> +	struct regmap *rstcon;
> +
> +	if (id >= rcdev->nr_resets) {
> +		pr_info("dispmix reset: %lu is not a valid line\n", id);
> +		return -EINVAL;
> +	}

This is not necessary, the core checks this in of_reset_simple_xlate.
[FF] Accept.

> +
> +	drcdev = container_of(rcdev, struct dispmix_reset_controller, rcdev);
> +	of_id  = of_match_device(dispmix_reset_dt_ids, drcdev->dev);

You can use of_match_device once in the probe function and store the pdata pointer in drcdev.
[FF] Accept.

> +	pdata = of_id->data;
> +
> +	rstcon = drcdev->rstcon;
> +	rstent = &pdata->resets[id];
> +
> +	pm_runtime_get_sync(drcdev->dev);
> +	regmap_update_bits(rstcon, rstent->reg_off,
> +			   1 << rstent->bit_off,
> +			   !drcdev->active_low << rstent->bit_off);
> +	pm_runtime_put(drcdev->dev);

I assume these pm_runtime operations will usually be no-ops because the users will have to keep the power domain enabled anyway.
[FF] This should be correct.

> +
> +	return 0;
> +}
> +
> +static int dispmix_reset_deassert(struct reset_controller_dev *rcdev,
> +				  unsigned long id)
> +{
> +	struct dispmix_reset_controller *drcdev;
> +	const struct of_device_id *of_id;
> +	const struct dispmix_reset_pdata *pdata;
> +	const struct dispmix_reset_entry *rstent;
> +	struct regmap *rstcon;
> +
> +	if (id >= rcdev->nr_resets) {
> +		pr_info("dispmix reset: %lu is not a valid line\n", id);
> +		return -EINVAL;
> +	}
> +
> +	drcdev = container_of(rcdev, struct dispmix_reset_controller, rcdev);
> +	of_id  = of_match_device(dispmix_reset_dt_ids, drcdev->dev);
> +	pdata = of_id->data;
> +
> +	rstcon = drcdev->rstcon;
> +	rstent = &pdata->resets[id];
> +
> +	pm_runtime_get_sync(drcdev->dev);
> +	regmap_update_bits(rstcon, rstent->reg_off,
> +			   1 << rstent->bit_off,
> +			   !!drcdev->active_low << rstent->bit_off);
> +	pm_runtime_put(drcdev->dev);
> +
> +	return 0;
> +}
> +
> +static const struct reset_control_ops dispmix_reset_ops = {
> +	.assert   = dispmix_reset_assert,
> +	.deassert = dispmix_reset_deassert,
> +};
> +
> +static int dispmix_reset_probe(struct platform_device *pdev) {
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	const struct of_device_id *of_id;
> +	struct dispmix_reset_controller *drcdev;
> +	const struct dispmix_reset_pdata *pdata;
> +	struct resource *res;
> +	void __iomem *regs;
> +	struct regmap *regmap;
> +	struct clk *apb_clk;
> +
> +	drcdev = devm_kzalloc(dev, sizeof(*drcdev), GFP_KERNEL);
> +	if (!drcdev)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res)
> +		return -ENODEV;
> +
> +	regs = devm_ioremap_resource(dev, res);

These two can be combined into devm_platform_ioremap_resource.
[FF] Accept.

> +	if (IS_ERR(regs))
> +		return PTR_ERR(regs);
> +
> +	apb_clk = devm_clk_get(dev, "disp-apb");
> +	if (IS_ERR(apb_clk)) {
> +		dev_err(dev, "Unable to get disp apb clock\n");
> +		return PTR_ERR(apb_clk);
> +	}
> +
> +	drcdev->active_low = of_property_read_bool(np, "active_low");

Does this have to be in DT? It could just be stored in dispmix_reset_pdata.
[FF] Agree. I have thought about this when I write this driver.

> +	of_id = of_match_device(dispmix_reset_dt_ids, dev);
> +	pdata = of_id->data;
> +
> +	/* init mmio regmap */
> +	regmap = devm_regmap_init_mmio_clk(dev, __clk_get_name(apb_clk),
> +					   regs, pdata->config);
> +	if (IS_ERR(regmap)) {
> +		dev_err(dev, "Failed to init mmio regmap: %ld\n",
> +			PTR_ERR(regmap));
> +		return PTR_ERR(regmap);
> +	}
> +	drcdev->rstcon = regmap;
> +
> +	platform_set_drvdata(pdev, drcdev);
> +	pm_runtime_enable(dev);
> +
> +	/* register reset controller */
> +	drcdev->dev = dev;
> +	drcdev->rcdev.of_node = dev->of_node;
> +	drcdev->rcdev.owner = THIS_MODULE;
> +	drcdev->rcdev.nr_resets = pdata->nr_resets;
> +	drcdev->rcdev.ops = &dispmix_reset_ops;
> +
> +	return devm_reset_controller_register(dev, &drcdev->rcdev); }
> +
> +static int dispmix_reset_remove(struct platform_device *pdev) {
> +	pm_runtime_disable(&pdev->dev);
> +	platform_set_drvdata(pdev, NULL);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver dispmix_reset_driver = {
> +	.probe  = dispmix_reset_probe,
> +	.remove = dispmix_reset_remove,
> +	.driver = {
> +		.name  = DRIVER_NAME,
> +		.owner = THIS_MODULE,

Not necessary, owner is handled by the platform_driver_register macro.
[FF]. OK, I'll remove this assignment.

> +		.of_match_table = of_match_ptr(dispmix_reset_dt_ids),
> +	},
> +};
> +
> +builtin_platform_driver(dispmix_reset_driver);
> +
> +MODULE_DESCRIPTION("IMX Display Mix reset driver"); 
> +MODULE_AUTHOR("Fancy Fang <chen.fang@nxp.com>"); 
> +MODULE_LICENSE("GPL");
> diff --git a/include/dt-bindings/reset/imx8mm-dispmix.h 
> b/include/dt-bindings/reset/imx8mm-dispmix.h
> new file mode 100644
> index 000000000000..3af137b1bfe2
> --- /dev/null
> +++ b/include/dt-bindings/reset/imx8mm-dispmix.h
> @@ -0,0 +1,49 @@
> +/*
> + * Copyright 2019 NXP
> + *
> + * This program is free software; you can redistribute it and/or 
> +modify
> + * it under the terms of the GNU General Public License as published 
> +by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef __IMX8MM_DISPMIX_H__
> +#define __IMX8MM_DISPMIX_H__
> +
> +/* DISPMIX soft reset */
> +#define IMX8MM_CSI_BRIDGE_CHIP_RESET			0
> +#define IMX8MM_CSI_BRIDGE_IPG_HARD_ASYNC_RESET		1
> +#define IMX8MM_CSI_BRIDGE_CSI_HRESET			2
> +#define IMX8MM_CAMERA_PIXEL_RESET			3
> +#define IMX8MM_MIPI_CSI_I_PRESET			4
> +#define IMX8MM_MIPI_DSI_I_PRESET			5
> +#define IMX8MM_BUS_RSTN_BLK_SYNC			6
> +#define IMX8MM_DISPMIX_SFT_RSTN_NUM			7
> +
> +/* DISPMIX clock soft enable */
> +#define IMX8MM_CSI_BRIDGE_CSI_HCLK_EN			0
> +#define IMX8MM_CSI_BRIDGE_SPU_CLK_EN			1
> +#define IMX8MM_CSI_BRIDGE_MEM_WRAPPER_CLK_EN		2
> +#define IMX8MM_CSI_BRIDGE_IPG_CLK_EN			3
> +#define IMX8MM_CSI_BRIDGE_IPG_CLK_S_EN			4
> +#define IMX8MM_CSI_BRIDGE_IPG_CLK_S_RAW_EN		5
> +#define IMX8MM_LCDIF_APB_CLK_EN				6
> +#define IMX8MM_LCDIF_PIXEL_CLK_EN			7
> +#define IMX8MM_MIPI_DSI_PCLK_EN				8
> +#define IMX8MM_MIPI_DSI_CLKREF_EN			9
> +#define IMX8MM_MIPI_CSI_ACLK_EN				10
> +#define IMX8MM_MIPI_CSI_PCLK_EN				11
> +#define IMX8MM_BUS_BLK_CLK_EN				12
> +#define IMX8MM_DISPMIX_CLK_EN_NUM			13
> +
> +/* MIPI reset */
> +#define IMX8MM_MIPI_S_RESET				0
> +#define IMX8MM_MIPI_M_RESET				1
> +#define IMX8MM_MIPI_RESET_NUM				2
> +
> +#endif
> diff --git a/include/dt-bindings/reset/imx8mn-dispmix.h 
> b/include/dt-bindings/reset/imx8mn-dispmix.h
> new file mode 100644
> index 000000000000..8703ebe7d4b2
> --- /dev/null
> +++ b/include/dt-bindings/reset/imx8mn-dispmix.h
> @@ -0,0 +1,47 @@
> +/*
> + * Copyright 2019 NXP
> + *
> + * This program is free software; you can redistribute it and/or 
> +modify
> + * it under the terms of the GNU General Public License as published 
> +by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef __IMX8MN_DISPMIX_H__
> +#define __IMX8MN_DISPMIX_H__
> +
> +/* DISPMIX soft reset */
> +#define IMX8MN_MIPI_DSI_PCLK_RESET			0
> +#define IMX8MN_MIPI_DSI_CLKREF_RESET			1
> +#define IMX8MN_MIPI_CSI_PCLK_RESET			2
> +#define IMX8MN_MIPI_CSI_ACLK_RESET			3
> +#define IMX8MN_LCDIF_PIXEL_CLK_RESET			4
> +#define IMX8MN_LCDIF_APB_CLK_RESET			5
> +#define IMX8MN_ISI_PROC_CLK_RESET			6
> +#define IMX8MN_ISI_APB_CLK_RESET			7
> +#define IMX8MN_BUS_BLK_CLK_RESET			8
> +#define IMX8MN_DISPMIX_SFT_RSTN_NUM			9
> +
> +/* DISPMIX clock soft enable */
> +#define IMX8MN_MIPI_DSI_PCLK_EN				0
> +#define IMX8MN_MIPI_DSI_CLKREF_EN			1
> +#define IMX8MN_MIPI_CSI_PCLK_EN				2
> +#define IMX8MN_MIPI_CSI_ACLK_EN				3
> +#define IMX8MN_LCDIF_PIXEL_CLK_EN			4
> +#define IMX8MN_LCDIF_APB_CLK_EN				5
> +#define IMX8MN_ISI_PROC_CLK_EN				6
> +#define IMX8MN_ISI_APB_CLK_EN				7
> +#define IMX8MN_BUS_BLK_CLK_EN				8
> +#define IMX8MN_DISPMIX_CLK_EN_NUM			9
> +
> +/* MIPI reset */
> +#define IMX8MN_MIPI_S_RESET				0
> +#define IMX8MN_MIPI_M_RESET				1
> +#define IMX8MN_MIPI_RESET_NUM				2
> +
> +#endif
> --
> 2.17.1
> 

regards
Philipp
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
