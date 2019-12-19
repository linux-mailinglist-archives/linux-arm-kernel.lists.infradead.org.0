Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9001264D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=wVFdzJ0M3sXvVrouvJYfd1tm7STswDS2vdZWaquTezA=; b=fO73Gbc7Pg4j1/
	zxJFUPNg1tw/tAKPIYZ81TyJcipkXfm2GMZc/HcuOORKr0pLyjcnSAUCk1mSBvxeVP0bmWeNSE2km
	cgmaDzPrU24yoJUhfc/+t9JxbD/4JE0Ex8+DxFVc0ISQo4SeZ5VNg9iQ1t+/FPI87p4v9VNBzhIvQ
	ujyELAS6Ixby4H/I2/CoOh25qeSrDuDSnd3lS0Zo4Kz/34iVucqZB7Iw1vwhNLN0/31JTb8PoLUfp
	SGGIQvJ9/4TuXHjPQ1paSju678WPmdqQjArp96i+UTb3ekj71NMtJS5cw5n2ueRnghJYI3OLN1vx/
	wvj25NOwe5t/KmLJ9gfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwqr-00043p-3t; Thu, 19 Dec 2019 14:32:29 +0000
Received: from mail-eopbgr140074.outbound.protection.outlook.com
 ([40.107.14.74] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwqQ-0003sH-5r
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:32:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zb4DuD5iuEvrg48pmcMJFf+BEqFGJl/po9NILSCkvAyZ1JcVpo4SCOiR31TBMBBV6HBPLDOkiAgFnb86HItNygLebpNHkMtP0xsc6EHHm8fpKIun7xqgtU5HWLXxGMsNCJh/7L9HJwAJjNNAFwu1HTmw7AEziQQrq/eO0d3JPGJ0G05UqvxmCVdwlh6k1yu+0Sp6+KxyfPHOP5qC+OsW6/3mx6WGlBjrSTrkMuAwBK2KlQ49x03GJFY4Jv+gHjDHmR+TXYBXD8cVtlAjx/8wXOtx0ZDF70X+lGT5SSyEvUysWxBn8XiOg3CD19OPk1CCFsATRSjfmKhvlL3Ija+K4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jc1T/65v0qYnIC6SuRuQqjeRzDQjNcIK9gM0QwrdW44=;
 b=VSBHRA7kYRrSuZ8fl70xbsW41P5eKO+Jb+lC/vdKTiTD+EhJDM/fMMUMz8/6Jv/9Wm3t+TcWxUpSz3cTYyKBB83RJ6D0FtfKv+/wZWvWWUYCDd6kF/cs/WB87CjRkXGOq3eEPdSJJFoEXnMniWbdavdPqv05RSUWu6gexxlFfCqT0by2WESvhDlFF4JuiXULar0qDpeTwry/omnPglIR0HMLu1euTKjreaNRmKfeWlDoAfEtMKR3mMmInEKfAM0N6lu/tVbiJpCeCQeBc8ptc3Z/Zt93KcSVKqVa/fhmZJn+kabzdJuAZJdSRqGHl0uAUKvNN5f0slxEn9ukH6+e1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jc1T/65v0qYnIC6SuRuQqjeRzDQjNcIK9gM0QwrdW44=;
 b=TpVVtdaBOwnAi1/pbGrcLGe30OiJHmCuHwLANKPM13mLOtboOUQFF4yEXwXXrhIPWDcF7Ht9gqubGttvGOwM2P2nU9Ok5mXZvegR3XoY/1ArujlDjEqHEmffbEUcdyzhP6Fa1qlP8qE0r5Jl5sj0g/jBObk6G7BdpiK5CnR8vUU=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6304.eurprd04.prod.outlook.com (20.179.27.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 14:31:58 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.015; Thu, 19 Dec 2019
 14:31:58 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [PATCH RFC v6 1/9] dt-bindings: interconnect: Add bindings for
 imx8m noc
Thread-Topic: [PATCH RFC v6 1/9] dt-bindings: interconnect: Add bindings for
 imx8m noc
Thread-Index: AQHVmyeXQvJfRqjmjUWtYoVDBCNHfg==
Date: Thu, 19 Dec 2019 14:31:57 +0000
Message-ID: <VI1PR04MB7023423D8D5D633074978430EE520@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201051epcas5p2a6b58f0d86fb8bed72a206ecd5df295d@epcas5p2.samsung.com>
 <6db2ce55ee62dd8548aa8e1e0ecdf8c06eda868f.1573761527.git.leonard.crestez@nxp.com>
 <c1c03b30-d82a-6f2b-156d-0e1948e0df5b@samsung.com>
 <afd618d6-d78c-a989-2d1e-60c368ec267f@samsung.com>
 <VI1PR04MB7023A61DD48302CF0E0B3B81EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <b8fc116f-d99f-37c6-ce07-aa0f844ac604@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 09a745d7-76ee-4245-9999-08d784903432
x-ms-traffictypediagnostic: VI1PR04MB6304:|VI1PR04MB6304:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6304986D49FCFB6E7FEEFB7FEE520@VI1PR04MB6304.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(376002)(136003)(199004)(189003)(51444003)(66556008)(86362001)(2906002)(966005)(9686003)(478600001)(45080400002)(71200400001)(7696005)(52536014)(76116006)(91956017)(64756008)(26005)(66476007)(53546011)(66946007)(6506007)(5660300002)(44832011)(316002)(54906003)(30864003)(66446008)(110136005)(33656002)(8936002)(4326008)(55016002)(186003)(8676002)(81166006)(81156014)(7416002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6304;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HAnrmU7BbOTzNrfK02UvmrqrVgmaUx5Db8ISjsm1i8b7DTLvpZz0Dzgt565nd6n9Bu2XBXFeXiOWuTqNgELAO+5cQ98NMAEC4plmvjUr9CqBQj8pGq8gUjR8zGD6godFwWA6GsoC7aEWnE8dBldmodkZLTfHj1kGO8yULYX+QGkYb/TO1S0IXb8zEhku3OSBfTMOPrgUQASD+M0ZimnUNf6/tSIgGTb5mWmayY1cu07bnRArXe57N2XjG9i6Fh20Cu2fzCA+tv1DaR+QMpqcXGWcmpVp72IuYyZCP+pE9NokYEl0+3kf5xjlAjayKCYt9qO2dwyq95SeOj5lgp1aW9M6LX/j5DeQjOCzToeUcqWpEY2i3onFu/GnM8lwJKGoeoFwy1vILCQMTZdE2J9gmd3PlQzMNM+ofTp7BG92A9xcw+GiUeHeWVk7vr+MPJVUrQjMB3vTlVVpC10L8Eq+vBObgcEX68QGKEOFVF9FA4ZdIMwtBsryTYjuXrHc8UOvg9sxsfDbzt0dojmILSC25AvCV5jmBIezClCRRmPRGTbyT18DKTUGv3x/t90NJxD3
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a745d7-76ee-4245-9999-08d784903432
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 14:31:57.9126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n+jAanrU/4ZgVoAXdDEkX0XH74qv5dvD29rYFFVg9cenK+S9vQvn5UvEm6FN26lrEd5l+ItdJzDn5InYtTQOSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6304
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_063202_382715_988BA4AB 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.12.2019 02:08, Chanwoo Choi wrote:
> On 12/17/19 12:09 AM, Leonard Crestez wrote:
>> On 16.12.2019 05:18, Chanwoo Choi wrote:
>>> Hi,
>>>
>>> On 12/16/19 10:12 AM, Chanwoo Choi wrote:
>>>> On 11/15/19 5:09 AM, Leonard Crestez wrote:
>>>>> Add initial dt bindings for the interconnects inside i.MX chips.
>>>>> Multiple external IPs are involved but SOC integration means the
>>>>> software controllable interfaces are very similar.
>>>>>
>>>>> Main NOC node acts as interconnect provider if #interconnect-cells is
>>>>> present.
>>>>>
>>>>> Multiple interconnects can be present, each with their own OPP table.
>>>>>
>>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>>> ---
>>>>>    .../bindings/interconnect/fsl,imx8m-noc.yaml  | 104 ++++++++++++++++++
>>>>>    1 file changed, 104 insertions(+)
>>>>>    create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>>>>> new file mode 100644
>>>>> index 000000000000..5cd94185fec3
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>>>>> @@ -0,0 +1,104 @@
>>>>> +# SPDX-License-Identifier: GPL-2.0
>>>>> +%YAML 1.2
>>>>> +---
>>>>> +$id: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fprotect2.fireeye.com%2Furl%3Fk%3D8570eb5a-d8a45732-85716015-0cc47a3356b2-92a5b92cc514d07e%26u%3Dhttps%3A%2F%2Feur01.safelinks.protection.outlook.com%2F%3Furl%3Dhttps%253A%252F%252Fprotect2.fireeye.com%252Furl%253Fk%253D0c13f3e0-51df3f45-0c1278af-0cc47a30d446-77e809543b673ffd%2526u%253Dhttp%253A%252F%252Fdevicetree.org%252Fschemas%252Finterconnect%252Ffsl%252Cimx8m-noc.yaml%2523%26amp%3Bdata%3D02%257C01%257Cleonard.crestez%2540nxp.com%257C2d1f1868afa140702a6b08d781d6ab68%257C686ea1d3bc2b4c6fa92cd99c5c301635%257C0%257C0%257C637120631307418544%26amp%3Bsdata%3DH2q5nQlKYyLIivkBYUTaRD1Nu3WcnphPJny3k%252BK%252BGFE%253D%26amp%3Breserved%3D0&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C769d8e354f3b4d00b84508d782854a17%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637121381290437871&amp;sdata=HYMJJHWyiKRhf7GDjKoOwjDpcZuYqlFlmRrDZnIRx5w%3D&amp;reserved=0
>>>>> +$schema: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fprotect2.fireeye.com%2Furl%3Fk%3Df7cec483-aa1a78eb-f7cf4fcc-0cc47a3356b2-4154a3c43886f5ed%26u%3Dhttps%3A%2F%2Feur01.safelinks.protection.outlook.com%2F%3Furl%3Dhttps%253A%252F%252Fprotect2.fireeye.com%252Furl%253Fk%253D87c672dc-da0abe79-87c7f993-0cc47a30d446-414d3b4d0127419a%2526u%253Dhttp%253A%252F%252Fdevicetree.org%252Fmeta-schemas%252Fcore.yaml%2523%26amp%3Bdata%3D02%257C01%257Cleonard.crestez%2540nxp.com%257C2d1f1868afa140702a6b08d781d6ab68%257C686ea1d3bc2b4c6fa92cd99c5c301635%257C0%257C0%257C637120631307418544%26amp%3Bsdata%3DT6PgQ1DWI4OLOx3gifRRt%252FNImdVrgDUoswZ%252FNKw3oR8%253D%26amp%3Breserved%3D0&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C769d8e354f3b4d00b84508d782854a17%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637121381290437871&amp;sdata=fIbrUUOUtZ5nt%2FH1tm3dzaI1J%2FGn5Gc54ms93HnBnQg%3D&amp;reserved=0
>>>>> +
>>>>> +title: Generic i.MX bus frequency device
>>>>> +
>>>>> +maintainers:
>>>>> +  - Leonard Crestez <leonard.crestez@nxp.com>
>>>>> +
>>>>> +description: |
>>>>> +  The i.MX SoC family has multiple buses for which clock frequency (and
>>>>> +  sometimes voltage) can be adjusted.
>>>>> +
>>>>> +  Some of those buses expose register areas mentioned in the memory maps as GPV
>>>>> +  ("Global Programmers View") but not all. Access to this area might be denied
>>>>> +  for normal (non-secure) world.
>>>>> +
>>>>> +  The buses are based on externally licensed IPs such as ARM NIC-301 and
>>>>> +  Arteris FlexNOC but DT bindings are specific to the integration of these bus
>>>>> +  interconnect IPs into imx SOCs.
>>>>> +
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    oneOf:
>>>>> +      - items:
>>>>> +        - enum:
>>>>> +          - fsl,imx8mn-nic
>>>>> +          - fsl,imx8mm-nic
>>>>> +          - fsl,imx8mq-nic
>>>>> +        - const: fsl,imx8m-nic
>>>>> +      - items:
>>>>> +        - enum:
>>>>> +          - fsl,imx8mn-noc
>>>>> +          - fsl,imx8mm-noc
>>>>> +          - fsl,imx8mq-noc
>>>>> +        - const: fsl,imx8m-noc
>>>>> +
>>>>> +  reg:
>>>>> +    maxItems: 1
>>>>> +
>>>>> +  clocks:
>>>>> +    maxItems: 1
>>>>> +
>>>>> +  operating-points-v2: true
>>>>> +  opp-table: true
>>>>> +
>>>>> +  devfreq:
>>>>> +    $ref: "/schemas/types.yaml#/definitions/phandle"
>>>>> +    description:
>>>>> +      Phandle to another devfreq device to match OPPs with by using the
>>>>
>>>> Better to use 'parent' instead of 'another' word for improving the understanding.
>>>
>>> I think that 'devfreq' is not proper way to get the parent node
>>> in devicetree. Because 'devfreq' name is linuxium. The property name
>>> didn't indicate the any h/w device. So, I'll make 'devfreq' property deprecated.
>>>
>>> So, you better to make the specific property for this device driver
>>> like as following: and use devfreq_get_devfreq_by_node() function
>>> which is developed by you in order to get the devfreq instance node.
>>>
>>> 	fsl,parent-device = <&parent devfreq device>;
>>
>> This is only a "parent" in the sense that it's assigned to
>> devfreq_passive.data.parent. The "devfreq" name is indeed too generic.
> 
> I thought that 'devfreq' property name is generic.
> But, it's not proper for DT binding because DT file show
> the h/w and the relation of h/w. 'devfreq' property name
> has not meant h/w.
> 
> So that devfreq core doesn't force to use the specific property
> name to get the devfreq parent instance on DT. Just, devfreq core
> will provide devfreq_get_devfreq_by_node() function.
> 
> I developed it on devfre-testing branch[2]. Before I'm sending
> the these patches, you can check them.
> 
> [1] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fchanwoo%2Flinux.git%2Fcommit%2F%3Fh%3Ddevfreq-testing%26id%3Df3678b4e6b75dccfe8bb87d005da2d68c70fdeab&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C769d8e354f3b4d00b84508d782854a17%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637121381290437871&amp;sdata=R21Tv1QgofBvMYb2VaxFjKSerwQ3tl8kakcYRyALmgM%3D&amp;reserved=0
> [2] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fchanwoo%2Flinux.git%2Flog%2F%3Fh%3Ddevfreq-testing&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C769d8e354f3b4d00b84508d782854a17%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637121381290437871&amp;sdata=uH0d9LvrbCHgZJdrPJNJ8c8w45J7x1QyM7t5I3j%2BpSw%3D&amp;reserved=0
> 
>>
>> The DDRC can measure bandwith usage and I want to use the passive
>> governor to make the main NOC match OPPs.
> 
> which one use the passive governor? And which one is the parent
> devfreq device for devfreq device using passive governor?
> 
> In my case, it is difficult to catch the relationship
> between devices. I'd like you to explain the detailed relationship
> on binding document for user.
> 
>> But at the bus level DDRC only has AXI and APB slave ports.
> 
> 'DDRC' indicates the 'drivers/devfreq/imx8m-ddrc.c?
> 
>>
>> Buses on imx don't have a parent/child relationship; in fact there are
>> even a few cycles.
> 
> You mentioned that 'imx don't have a parent/child relationship',
> Why do you use 'passive' governor? It is difficult to understand
> the hierarchy of imx.

The imx8m has a main NOC in the center between the CPU and the DDRC 
(dram controller) with many other peripheral buses around the NOC.

Here's /sys/kernel/debug/interconnect/interconnect_graph on imx8mm:
https://gist.github.com/cdleonard/84d103dafc9131fcb8ca9a494822a131#file-imx8mm-svg

A lot of stuff is omitted, it mostly just includes high-performance bus 
masters.

DDRC has a performance monitor attached which can measure current 
bandwith and feed it to an ondemand governor. I want to use passive 
governor on the NOC so that it matches frequencies with DDRC and scales 
proportionally, otherwise if NOC is at low frequency then dynamically 
scaling up the DDRC might be ineffective.

Perhaps you could explain how parent/child relationships work on exynos?

>>> [1] [PATCH RFC v5 04/10] PM / devfreq: Add devfreq_get_devfreq_by_node
>>>
>>>>
>>>>> +      passive governor.
>>>>> +
>>>>> +  '#interconnect-cells':
>>>>> +    description:
>>>>> +      If specified then also act as an interconnect provider. Should only be
>>>>> +      set once per soc on main noc.
>>>>> +    const: 1
>>>>> +
>>>>> +  fsl,scalable-node-ids:
>>>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>>>> +    description:
>>>>> +      Array of node ids for scalable nodes. Uses same numeric identifier
>>>>> +      namespace as the consumer "interconnects" binding.
>>>>> +
>>>>> +  fsl,scalable-nodes:
>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>> +    description:
>>>>> +      Array of phandles to scalable nodes. Must be of same length as
>>>>> +      fsl,scalable-node-ids.
>>>>> +
>>>>> +required:
>>>>> +  - compatible
>>>>> +  - clocks
>>>>> +
>>>>> +additionalProperties: false
>>>>> +
>>>>> +examples:
>>>>> +  - |
>>>>
>>>> Is it enough example to understand the relation between
>>>> imx8m-ddrc.c, imx-devfreq.c and imx interconnect driver?
>>>>
>>>> In my case, if possible, hope to show the more detailed
>>>> example. This example seems that don't contain the ddrc
>>>> dt node (imx8m-ddrc.c).
>>
>> OK, I'll elaborate explanation on noc binding.
> 
> Thanks. If possible, you better to add almost example cases.
> 
>>
>>>>
>>>>> +    #include <dt-bindings/clock/imx8mq-clock.h>
>>>>> +    #include <dt-bindings/interconnect/imx8mq.h>
>>>>> +    noc: interconnect@32700000 {
>>>>> +            compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
>>>>> +            reg = <0x32700000 0x100000>;
>>>>> +            clocks = <&clk IMX8MQ_CLK_NOC>;
>>>>> +            #interconnect-cells = <1>;
>>>>> +            fsl,scalable-node-ids = <IMX8MQ_ICN_NOC>,
>>>>> +                                    <IMX8MQ_ICS_DRAM>;
>>>>> +            fsl,scalable-nodes = <&noc>,
>>>>> +                                 <&ddrc>;
>>>>> +            operating-points-v2 = <&noc_opp_table>;
>>>>> +
>>>>> +            noc_opp_table: opp-table {
>>>>> +                    compatible = "operating-points-v2";
>>>>> +
>>>>> +                    opp-133M {
>>>>> +                            opp-hz = /bits/ 64 <133333333>;
>>>>> +                    };
>>>>> +                    opp-800M {
>>>>> +                            opp-hz = /bits/ 64 <800000000>;
>>>>> +                    };
>>>>> +            };
>>>>> +    };
>>
>>
> 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
