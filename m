Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81231A09C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 11:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=aQBBINWmJ32UoGT/WE55QUoMHb8XoABiiJlSpsx0eho=; b=Aj7IBR11tF0MMn
	avu/HpItVll5APcUTChDx2Rw1QvQY8twEZK9Jo8brZ4iAJS62Wvo/362JSAhd6cm50SzNm7lChClW
	Af/tJcCxykZIE8k4Pb9J58jfBwIGC9WieJzYE4xes5jd2zbwlVUgZ0KukA5vksMuJc7gRivHZmrZN
	MD4QkVb1CPLDKurReJ0Hkkeb0DxRU3iM/X0aLAxflQlk5TIdQ9r/ZXOY7I0cAyzVi/vmCyptGAwQq
	3qFjPNkXdq0mMAi50gXV+uIbHCvvCtCrp9Zf7Yw8cKtklG2g+fmbOKAbYL0sd7OF3a6h+89S112ED
	OTRPYiXFUzLHLUJ53e1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkFl-00029R-JK; Tue, 07 Apr 2020 09:10:41 +0000
Received: from mail-vi1eur05on2057.outbound.protection.outlook.com
 ([40.107.21.57] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkFe-00028w-1O
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 09:10:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mIAGM21XwbpsZATPe4BeDEgZo+pBkPoDCJBtQjCUMWeRKA6ozjzwVnnQn5Y5u2OEal0hhdWLi2BzQqidWO1fHhZgs7SGuuD4fqIrtel9Mcv4nEvg7FBr3/WxUXAzxlXB3v8BRF4bYAFqeUa52iTX/ig4iGSA/dbsh/K9bypsTx+HcvULVmyq5ue/vHnHUvUp1m6Qv5xWviiO1Mmi2a2cuBJB8ThEJPHWF5p1pJehkiLT9HzcNIkzCqNGoxFat6MNdXMfvr1lJayY29wkYIbxqXymBjnYSt8DyLldqnSgk9wxwsFV2/K5mjvAcYlQSAun2dwYQUlBMDRC/hGCmp7jVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4rBKPniWx+ylQ54Xkc1Drcnv51MYQVgQ/kEfF8Ifuhk=;
 b=NMskiodPJsmRl436JkSXgaTzA4Y1+HL3CysVpbOZC1Y/T0H6rJIl/MqN7gWvL2dQTFi2PXRmHaeJGMKUfXl4B64c2yI6NnKomVHONdF/iC9Rg66S+1KNLcV0zxlyImyAu5FiG6nMEQO867qwG5GV4EyFPJsqi2rsWTM8a5qt1h8JjVVaUenEe497/6G2bczJ0B8gvBTdoVv0frqqa/5I6xxMrmwMbYuspDVhwt5+Yi3IXVSnizP/0Y+WuWte0cat7Vf4UBd4dy13oYx2HHLxBKfbMjv5mMcTvS+fvj8vGz1LaROsbqbekZrPnFneX6Ky66G32d+8fCXsXWnyGj9JvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4rBKPniWx+ylQ54Xkc1Drcnv51MYQVgQ/kEfF8Ifuhk=;
 b=AjhSBOJvEpHMnzImjWDJTePqN2nb7sx++6u4ZAr0OLdCsS0ptfTP2ZyrNsDtOqwm7R2UZF5GKYsf702+HWBwfjBFkA8MNGGR+n+Tp/XhKN8TCf10f0DU9aWu6qt9Hh6ZFw2lSycoaSDVLTBUNPLh38YpMUckX08dNpTyFBGTO2s=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (2603:10a6:803:12e::23)
 by VI1PR04MB6095.eurprd04.prod.outlook.com (2603:10a6:803:f7::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.17; Tue, 7 Apr
 2020 09:10:29 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2878.016; Tue, 7 Apr 2020
 09:10:29 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH v2 8/8] arm64: dts: imx8m: Add NOC nodes
Thread-Topic: [PATCH v2 8/8] arm64: dts: imx8m: Add NOC nodes
Thread-Index: AQHWCDKCwo8em7bdXUyT4tjIdLJwuQ==
Date: Tue, 7 Apr 2020 09:10:29 +0000
Message-ID: <VI1PR04MB69417FFDFF452FC46889B686EEC30@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <cover.1585751281.git.leonard.crestez@nxp.com>
 <c167baa48d6830cf32b9ac51968eeadd684ebf2d.1585751281.git.leonard.crestez@nxp.com>
 <CAHCN7xKpwex8MQbTFAYKjGPQbQ1uOe7EywASmcakg8F_2w-iuA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [95.76.3.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9e7681b7-d762-4354-17ec-08d7dad384dc
x-ms-traffictypediagnostic: VI1PR04MB6095:|VI1PR04MB6095:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6095F346EEF0D3DF7A6FAE11EEC30@VI1PR04MB6095.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(346002)(39860400002)(396003)(81156014)(81166006)(7416002)(2906002)(6506007)(7696005)(55016002)(8676002)(26005)(316002)(53546011)(9686003)(91956017)(86362001)(76116006)(66946007)(186003)(54906003)(44832011)(66556008)(66476007)(66446008)(33656002)(5660300002)(478600001)(64756008)(52536014)(71200400001)(6916009)(8936002)(4326008)(45080400002)(966005)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NgW7M1Q/JOT+0LVMZ1BqywpQjqdJbVAZKmLlOrAnD1+DvFwgYjKOfjYxPWiH7rxTXdiKqkJ8iSv1h2yrwoZ+9PG810Fz0qd+D8dfcVSaEc1r+o9UJ3YZxN1CV+1PuihYV8ZrS2LFpdMamizwUEcxT/nD9429WlEginkXTD/7o6drEZwA/H4eyZsI8xcdrmMecu/P3BDxfQB1c1iWuflfqMPOhgSCdN7JnEADtqlnK8/6a6L8mLuPCcIpNG3rPm2gOMTeu0/divyBfBrA0nts0YYikWaVAyYFHnnHcZpAIGkPt1FRZ6aMJMoNWwOFYvNInCJ4eYputI9LjIZZusLjGPlmhJvRZ4dA0E5ftcvaExlymVJzOYPjFi07Ahbff84w5dpuoiAUrG5KfS8BqKmq3O5k51aNiW3FtqViWEtpuWvZVEnbrxSSKFkknwdgjUZbc/A+w63PGj24KafY9vDbEesovEREEnHN5Z9S8hrCy5I7ojPCq2Qmlx5sM6vgiFnsYhx06TYmMP+3GDz2fTeL3ax+K4lffzShl3o6nRgN5XSjQg/7ct5qYold4DKSD/4v
x-ms-exchange-antispam-messagedata: zbShVds7BkhxoLZsJpRct38cmVN7ZTje5f4fvrPUVQOsCIF/NIQBe6PK5Rhatd8o5N0E6Wv1kDNiy/DfeOFz/doyTQsfr0wOkg9LMmaob22R156PykgifSSffeqD8ERJCGO4byN5jwC9eaGG1EX2qg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e7681b7-d762-4354-17ec-08d7dad384dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 09:10:29.6184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oAjxY31OtrgFtr+Y99uuHs0HdMLuVUfCX7GrD1rTyGt5VHk3uYnPhVHUyR+R/0rbiYVNtZMFqV/uN4GnMetChA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_021034_228809_A628FAE9 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.57 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [95.76.3.222 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-04 4:25 PM, Adam Ford wrote:
> On Wed, Apr 1, 2020 at 9:35 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>
>> Add nodes for the main interconnect of the imx8m series chips.
>>
>> These nodes are bound to by devfreq and interconnect drivers.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 24 +++++++++++++++++++++++
>>   arch/arm64/boot/dts/freescale/imx8mn.dtsi | 24 +++++++++++++++++++++++
>>   arch/arm64/boot/dts/freescale/imx8mq.dtsi | 24 +++++++++++++++++++++++
>>   3 files changed, 72 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
>> index 175c28ae10cf..41047b6709b6 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
>> @@ -6,10 +6,11 @@
>>   #include <dt-bindings/clock/imx8mm-clock.h>
>>   #include <dt-bindings/gpio/gpio.h>
>>   #include <dt-bindings/input/input.h>
>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>>   #include <dt-bindings/thermal/thermal.h>
>> +#include <dt-bindings/interconnect/imx8mm.h>
>>
>>   #include "imx8mm-pinfunc.h"
>>
>>   / {
>>          interrupt-parent = <&gic>;
>> @@ -860,10 +861,33 @@
>>                                  status = "disabled";
>>                          };
>>
>>                  };
>>
>> +               noc: interconnect@32700000 {
>> +                       compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
>> +                       reg = <0x32700000 0x100000>;
>> +                       clocks = <&clk IMX8MM_CLK_NOC>;
>> +                       fsl,ddrc = <&ddrc>;
>> +                       #interconnect-cells = <1>;
>> +                       operating-points-v2 = <&noc_opp_table>;
>> +
>> +                       noc_opp_table: opp-table {
>> +                               compatible = "operating-points-v2";
>> +
>> +                               opp-150M {
>> +                                       opp-hz = /bits/ 64 <150000000>;
>> +                               };
>> +                               opp-375M {
>> +                                       opp-hz = /bits/ 64 <375000000>;
>> +                               };
>> +                               opp-750M {
>> +                                       opp-hz = /bits/ 64 <750000000>;
> 
> Out of curiosity, the 8M Mini runs up to 750M, and  the 8M Nano and
> 8MQ run up to 800.  The 8MQ had a patch to increase the assigned clock
> speed for the NOC to 800MHz
> 
> See: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnext%2Flinux-next.git%2Fpatch%2Farch%2Farm64%2Fboot%2Fdts%2Ffreescale%3Fid%3D912b9dacf3f0ffad55e1a1b3c5af0e433ebdb5dd&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C32c3655718e4459028e008d7d89baa31%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637216035403876452&amp;sdata=z%2B5afsPGbCk4HkRp4nR6QepOrm70Fi5B5dohyvaquxo%3D&amp;reserved=0)
> 
> The 8M Mini and 8M Nano appear to be setting the default speed to 0.

I'm not sure what you mean about this, the noc clock is required for 
mostly everything.

> Should the 8M Mini or 8M Nano do something similar to what the 8MQ
> did, or does this series negate the need for such a patch?

Instead of doing assigned-clocks noc frequency needs to be tweaked by 
adjusting OPPs in this list. The devfreq device for noc will overwrite 
other frequencies set for the noc.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
