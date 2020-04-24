Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D35F1B7EE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 21:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=5yWE5HW+Pd159IDggC+2YWcrWx9fKs256jjy4Jfdl1U=; b=Kgo989VvMM46/9
	9KHUwZrVFMOEu38gSbjgg+DNmhk/Wn59JqqJSy8yB+rnP3WsXqTQUeSePOPoEc2LcsPAUgcTNveiS
	OrNY+ErPCot5zMOgM6eroPfQXwu2rCz0VPqBTVdlobrvxdwEkZitgG1Km2cKX8gWNTvU+bwInPCJQ
	h4WvBNHWH5Husvs9lZ7RFMxNBvKxjMAoxAWp0+pWrSL0WiPEH5/qciOl91vg+0HlaLx9Eqh4NXO2W
	fY+vxToFuo8/3ne1e5+ri1QykIqmaGloO9tGXEnslBMVDw+3CywASdwKrTEW4kdoIGquQJmKJf24H
	pbuxQ01u/rkbyrk+sypg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS41t-0006w0-Vm; Fri, 24 Apr 2020 19:30:29 +0000
Received: from mail-db8eur05on2074.outbound.protection.outlook.com
 ([40.107.20.74] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS41k-0006vA-90
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 19:30:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dBBO1xGjxQxdgI4ygAZohKBC36M7BDo6FLBl/hKZBGay4Yx+BymAdvAFCDv0Igb3HYOlrpUHBTVnDDh/K2A1LNmWro4r53T6bDtJXY3nN1QWn9W2+mUBWRf8sFJ6XYEQrbp6thV+znzFOJ8N5n0C55gtMfnYimN+zPc7TtpxT6vCDYiA35okMRuIx+03G6lSlguo+Z/nOs8Mtbt8RMe8PXKPOPQD/OE78s/0ZXbwGUUa28LT7vIxE0XQtmWJR9Vwb4Y8mB1iWyghKWzoxjWOpj12aVF1no2njHRx1uZxEApSKzZTsPEZTfHFWSDJmcXBvCZsw6O94RDkOrpVFSnajA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0qKlRQqAB1bUXMrfvUiqzHpw4g9p8Nvk0sfgkgiaeGs=;
 b=S8kIKYoPsyY3ggHTuNTAQcFMzF/6twc4FdqXx/n4Of/gg8WLECUcXNNTiG2dBJTIJ0wQUhcEi2/McVGskSM167MBvrFc0HUHXce/VOp6de5S+TyGClNEr/MFqiHD3V74nYN/jqhVHDGGA4xY/nBZUZuLPnUBO+Wh1Szby9dS+RTqzL3RwLOaWqpLBECCAt1VQbI/Wuo+tMbKVsuZmq0e0g30HRdeq9XFZxd9QGiUnEU5riCi/G3U9sGN8z6l1iK/p2YHHlbWO0rLmtPxzPQamqIEPBnhRa+qJP2JSOfTiVxjiDBc+WEfL+t6q4uo/D8exlC2Zv5XsVqUBcM9tAHd/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0qKlRQqAB1bUXMrfvUiqzHpw4g9p8Nvk0sfgkgiaeGs=;
 b=eNybmrkEIe2ZKhuJuF7YkRynVH85oSIZCVCTf/2QcRxtFv6b8HuXFfBQ6HY7eXyDvCP0dtCvAjLTZXmuZSN+Q72qEYfIywwANT/q2cy5xprSOo6g0t0RsoYFpX+k6Gpxpn/LBcyV867v3VLZ2ylzRSxNdztDgFYgCLnhu4djZjg=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (2603:10a6:803:12e::23)
 by VI1PR04MB5056.eurprd04.prod.outlook.com (2603:10a6:803:5a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 24 Apr
 2020 19:30:16 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::8de5:8c61:6e4d:9fe9]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::8de5:8c61:6e4d:9fe9%9]) with mapi id 15.20.2937.020; Fri, 24 Apr 2020
 19:30:16 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: Re: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M
Thread-Topic: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M
Thread-Index: AQHV+Fizr+1km/QCtUyii39f5J5PvQ==
Date: Fri, 24 Apr 2020 19:30:16 +0000
Message-ID: <VI1PR04MB6941A5E995F36689CB2A098DEED00@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <DB6PR0402MB27608E9A3D273DCFF6D90AE888D60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [95.76.3.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: aa211548-22d8-4d0d-d073-08d7e885eacf
x-ms-traffictypediagnostic: VI1PR04MB5056:|VI1PR04MB5056:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB50566DAEDCF88747671951EBEED00@VI1PR04MB5056.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(376002)(396003)(346002)(39860400002)(81156014)(316002)(5660300002)(4326008)(52536014)(8936002)(8676002)(66946007)(33656002)(66556008)(91956017)(66446008)(66476007)(86362001)(26005)(2906002)(71200400001)(64756008)(76116006)(44832011)(9686003)(6506007)(53546011)(7696005)(186003)(7416002)(54906003)(478600001)(110136005)(55016002)(966005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 74Ks0nZs/rs8BjDB+MFDHxoSBk5b2fmzSgCkw4LFDJEqYCTqV+3yB2mS8t/ENTU9spRJqdJENX/B0vRJ4JBWfcSHhEAvvuKmbW2kLN2spfURN8qyOaeta7mfUFqCRoYKqRXA/7rt81gEttCgcEJdCwdZ/ZWqKvsLAyIyN11giOSaPd3T3jTphNMk/wa0FmGlfqNw8jdudeuwDiz/enGvL1YqmMOBQGNaTIioq4r/BNwSVGYoY7PCaMZb+2fi6Z9xAbCRkqdpykW8f2h+pTD56PiCSLlbYmyu2GWhhPhDRir6I9v+eB44JEqE4LNRJ9rUtfU6jsHezA6f0bDBHeJnx97MX70ao+ZAO8BjwCPPG8aWwfYvL1VSTQwGncXkCbArGOfstiOhAS0/EEPLdwnpF5wP1KAbTwu/emjsSZbJfga1LiaxH2k23RSXSdjuj7+v0leY5K8baHMZQrdQCN3Tu8H7aNIpzKogdl5q9qNtVS8zG4nAYEZNA4uMCviTd1viHOEXcZM/4XwmzEimPTpJ4A==
x-ms-exchange-antispam-messagedata: ohEOcDTqPq3VGspBDBpf8Bi6gKHpBkvunXaQVXyIVBJAwm30Z8tXPQ6LftFALO8VZIK7dBhRsmshteA4z0j4SnCZxh/bh2I2I+A9dEZUk5RRwN4m++eJhRAzrYqO+asENiUNXOPqJk0R3tGM5W+wJA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa211548-22d8-4d0d-d073-08d7e885eacf
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 19:30:16.2503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8F5wskCsyKqR9tJO4WmC4LRTsx7A1roSVcrPPO7wf58oSLb/CeSWNYwNQm6Ao9maXSvDDjqYiHJoJaD1DK227w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_123020_322256_1474844E 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [95.76.3.222 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.74 listed in wl.mailspike.net]
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
Cc: Andy Duan <fugang.duan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>, Jun Li <jun.li@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-18 4:45 PM, Peng Fan wrote:
>> Subject: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M
> 
> Ping...
> 
> Thanks,
> Peng.
> 
>>
>> From: Peng Fan <peng.fan@nxp.com>
>>
>> Patches based on for-next
>>
>> V2:
>>   Patch 7, drop wait after write, add one line comment for write twice
>>
>> V1:
>> Patch 1,2 is to fix the lockdep warning reported by Leonard Patch 3 is to fix pll
>> mux bit Patch 4 is align with other i.MX8M using gate Patch 5 is to simplify
>> i.MX8MP clk root using composite
>>
>> Patch 3~5 is actually https://patchwork.kernel.org/patch/11402761/
>> with a minimal change to patch 5 here.
>>
>> Patch 6 is to use composite core clk for A53 clk root Patch 7,8,9 is actually to
>> fix CORE/BUS clk slice issue.
>>   This issue is triggerred after we update U-Boot to include  the A53 clk fixes
>> to sources from PLL, not from A53 root clk,  because of the signoff timing is
>> 1GHz. U-Boot set the A53 root  mux to 2, sys pll2 500MHz. Kernel will set
>> the A53 root mux to  4, sys pll1 800MHz, then gate off sys pll2 500MHz. Then
>> kernel  will gate off A53 root because clk_ignore_unsed, A53 directly sources
>> PLL, so it is ok to gate off A53 root. However when gate off A53  root clk,
>> system hang, because the original mux sys pll2 500MHz  gated off with
>> CLK_OPS_PARENT_ENABLE flag.
>>
>>   It is lucky that we not met issue for other core/bus clk slice  except A53
>> ROOT core slice. But it is always triggerred after  U-Boot and Linux both
>> switch to use ARM PLL for A53 core, but  have different mux settings for A53
>> root clk slice.
>>
>>   So the three patches is to address this issue.
>>
>> Patch 10 is make memrepair as critical.
>>
>> Peng Fan (10):
>>    arm64: dts: imx8m: assign clocks for A53
>>    clk: imx8m: drop clk_hw_set_parent for A53
>>    clk: imx: imx8mp: fix pll mux bit
>>    clk: imx8mp: Define gates for pll1/2 fixed dividers
>>    clk: imx8mp: use imx8m_clk_hw_composite_core to simplify code
>>    clk: imx8m: migrate A53 clk root to use composite core
>>    clk: imx: add mux ops for i.MX8M composite clk
>>    clk: imx: add imx8m_clk_hw_composite_bus
>>    clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M bus clk slice
>>    clk: imx8mp: mark memrepair clock as critical
>>
>>   arch/arm64/boot/dts/freescale/imx8mm.dtsi |  10 +-
>> arch/arm64/boot/dts/freescale/imx8mn.dtsi |  10 +-
>> arch/arm64/boot/dts/freescale/imx8mp.dtsi |  11 ++-
>>   arch/arm64/boot/dts/freescale/imx8mq.dtsi |   9 +-
>>   drivers/clk/imx/clk-composite-8m.c        |  67 ++++++++++++-
>>   drivers/clk/imx/clk-imx8mm.c              |  27 +++---
>>   drivers/clk/imx/clk-imx8mn.c              |  25 +++--
>>   drivers/clk/imx/clk-imx8mp.c              | 150
>> +++++++++++++++---------------
>>   drivers/clk/imx/clk-imx8mq.c              |  29 +++---
>>   drivers/clk/imx/clk.h                     |   7 ++
>>   include/dt-bindings/clock/imx8mp-clock.h  |  28 +++++-
>>   11 files changed, 240 insertions(+), 133 deletions(-)

For 1-6 and 10:

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
