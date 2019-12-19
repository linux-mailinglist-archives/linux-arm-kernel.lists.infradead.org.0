Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120DF125862
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 01:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Lk32s4I3B2sZRHfzMX9PtSZZsFqcAmO2a3kRCvd5V0Q=; b=l6rdYlbRoruZA9
	hg3oJl5+mZbtUD3JCVi6huSayh4i8HnCK3ogGhajv7Jyb240L0lwcJdyvo+cGwujXYOoFRcWN5ZmT
	+Gyju89TntSreJCB8xzH+ekBjuT9tMm/9yFiIXQWApEog2WSSNdT9ecBpRrWPyoERAEYcs/F3VHLw
	X9AXyXvLMvm+Mvy3/etF0O2jQUr6Mc4GtKnFFpnzZaIh/ZT8x0gswWtUtm1iCEw6ve522gPKs6NxJ
	L2Mk4PJ3y3sdDAub/VjyVcRfbSIPVyPfqiyyV3fSQUnxtEZWPbr3yTX4j60GAx80XszC4ZCwem+lN
	AEOSzT+LPc927za0NWGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihjWM-0004XR-W3; Thu, 19 Dec 2019 00:18:26 +0000
Received: from mail-eopbgr30058.outbound.protection.outlook.com ([40.107.3.58]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihjWB-0004Wk-8W
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 00:18:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZKEPA6sl7LbqDzKXkAhQxSlW/JzjAy3jaZsxHZdZFMfKIvOPoJyMogsFryHZYrOqhGk6Mrbw17I1Bs8kJcWdtqUzcAuWP42qJGzAO8ifjCD2aDLA7sYF5tSDASA06rkNv3+bkDlyT8wJaNJLpRfvSkY8fOH3VBnxfvLepmKk6VYTLuAuAa9kotqKqBhU2N8qwIoJdrFFrIHbkrT00mWBb18Rf2irGXY8STrvcJW8WoZSNv3NBEiivb4mHI+hkGj1Jma9jceW/jW84zaaEWDUpT6lFhPmCD8/5MHO7hNCdeARqqUs5WU9n+Lbw4OkEu/lHNMumZll2qQyJo2BoTbIWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XrnGVkzKvzUrsrZNlKOfhRsHgu+SgOG192yoHPWcIZs=;
 b=Q/yVDbSKc2uHuMshHwGw264CtOnC3R+OiRJ0KUheRVRQY4kDvI0vpNnRaekucTq1TjUzIuJJ7CJ1T6INnHVoNDYAMdosgyS5NthvnmSuaPQkzIi8P2px/0TyXGFp3X4VBCL7XpFO55Kte2/jCkmO6Vj4SoIWQz8YN3Yb14RID72uGEyAau5SOk47ZCBehxyAwGKtXup7u2iHXjFd4zsh+163zUq8bFQbwr90sBFuSEQLmyX245rqhQvzproGTd/deR2siN+mvEKBGLfLTHjq0JLvyhPRDWymRSF/FhDWZEHJR781zJewTz+Mdo2N8fWhsAJHjfhFqBKCzy2Y3JNeNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XrnGVkzKvzUrsrZNlKOfhRsHgu+SgOG192yoHPWcIZs=;
 b=iEIhRWsXHVu3tIWXpHeRT+z7QOWYBTTQpxBMixhYNOVJaFnGR6QXxit1BwIfVq6oWo4h4U0A3tMbjPvU0Y9LPG5uQSgI0GlT1bbr+S6zGgqvSKrwm+M1H7iPlpN2/dLFAjrKkhn9uP/MExI0yex7lslLchiHqV8LwR2A3W0HRzM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5216.eurprd04.prod.outlook.com (20.177.51.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.13; Thu, 19 Dec 2019 00:18:10 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.015; Thu, 19 Dec 2019
 00:18:10 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>, Jacky Bai
 <ping.bai@nxp.com>
Subject: Re: [PATCH RFC v6 4/9] interconnect: Add imx core driver
Thread-Topic: [PATCH RFC v6 4/9] interconnect: Add imx core driver
Thread-Index: AQHVmyeaK7vaeB5iSEWDg4w8jXcbxw==
Date: Thu, 19 Dec 2019 00:18:10 +0000
Message-ID: <VI1PR04MB702379A8A2A2B2F981EDB9BEEE520@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <ddfa004340787f8b138c54d89af486d9232dfff9.1573761527.git.leonard.crestez@nxp.com>
 <48136159-21ba-c3b7-52c9-1d9d711644f7@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:500:9200:180b:59ec:7e1f:6ab4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1332c512-28b0-4e06-d42f-08d78418ee0d
x-ms-traffictypediagnostic: VI1PR04MB5216:|VI1PR04MB5216:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB521655D3CA2FB703A5857A72EE520@VI1PR04MB5216.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(199004)(189003)(33656002)(186003)(7696005)(6506007)(53546011)(91956017)(6636002)(76116006)(7416002)(66476007)(64756008)(66556008)(66446008)(71200400001)(66946007)(4326008)(52536014)(5660300002)(86362001)(110136005)(54906003)(44832011)(8936002)(9686003)(55016002)(81166006)(81156014)(2906002)(478600001)(316002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5216;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z32RROcGqPP9xYnyTYJvffkbeshGM1iMntHX4s+kqbChkQc9V1M/iKlHa2X+sZI64cnvgtnRyVQ/y/I/hL3AWWm6FlOxa/SUtPx6isuEqWTEojgmzthOAgSWHZjXnPb6DKmHOcXY+5BwSqkCIdV587PmPFICgfX99AZOIMyYo1X2KlDmL0YVjpsK3/5ODfgjGi/4CGnfXBo4d6eGBpOhdaq8p0KzMUubr613mrExwljJx2ayWG2h8CV3PTjt8FG8I9pxwAvmMKMSmsTr9TZLwvcnJzCd6dF7QZzxUWiWyVFaUNTMHF5jtFLI4XJJgjAZ0AtsHzKMWOeiCd+qxoqx4QZHTvpbXcEwcFAamwDBiRX1CqYW/Vgh2VF6iboEK3d6SAqsJzh3VsZA8wSjM+Jcfm8fMpDffvGHVMf6FAvbhW0pTKqeLBSiyz53pncgKqyF
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1332c512-28b0-4e06-d42f-08d78418ee0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 00:18:10.1720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ud55QVHI4YJ+ytbbh29pssh655Iym6sptpoLP0/aPo6dEQ/jOZVSWDkuSlxEiznt5RJKJynDWrz+lsC7xSb5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_161815_372006_6EDEC6E4 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.58 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.12.2019 09:29, Georgi Djakov wrote:
> Hi Leonard,
> 
> Thank you for your continuous work on the patches and sorry for not reviewing
> this earlier.
> On 11/14/19 22:09, Leonard Crestez wrote:
>> This adds support for i.MX SoC family to interconnect framework.
>>
>> Platform drivers can describe the interconnect graph and several
>> adjustment knobs where icc node bandwidth is converted to a
>> DEV_PM_QOS_MIN_FREQUENCY request.
>>
>> The interconnect provider is probed through the main NOC device and
>> other adjustable nodes on the same graph are found from a
>> fsl,scalable-nodes phandle array property.
>>
>> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

>> +static int imx_icc_node_init_qos(struct icc_provider *provider,
>> +				 struct icc_node *node)
>> +{
>> +	struct imx_icc_node *node_data = node->data;
>> +	struct device *dev = provider->dev;
>> +	struct device_node *dn = NULL;
>> +	struct platform_device *pdev;
>> +	int i, count;
>> +	u32 node_id;
>> +	int ret;
>> +
>> +	count = of_property_count_u32_elems(dev->of_node,
>> +					    "fsl,scalable-node-ids");
>> +	if (count < 0) {
>> +		dev_err(dev, "Failed to parse fsl,scalable-node-ids: %d\n",
>> +			count);
>> +		return count;
>> +	}
>> +
>> +	for (i = 0; i < count; i++) {
>> +		ret = of_property_read_u32_index(dev->of_node,
>> +						 "fsl,scalable-node-ids",
>> +						 i, &node_id);
>> +
>> +		if (ret < 0) {
>> +			dev_err(dev, "Failed to parse fsl,scalable-node-ids[%d]: %d\n",
>> +				i, ret);
>> +			return ret;
>> +		}
>> +		if (node_id != node->id)
>> +			continue;
>> +
>> +		dn = of_parse_phandle(dev->of_node, "fsl,scalable-nodes", i);
> 
> Why is this needed? I would expect that the interconnect provider driver already
> knows which nodes are scalable based on the platform compatible string.
> Then maybe this driver should create devfreq devices for each node that is scalable?

The scalable nodes are independent devfreq instances which are probed 
through their own DT compat strings. It's even possible to reload 
imx8m-ddrc (the driver scaling the dram controller) at runtime.

The most common solution to fetch other devices on DT systems is via 
phandles and fsl,scalable-nodes is a phandle array. Since the provider 
is platform-specific and knows the topology of the soc it could even use 
of_find_node_by_path but that seems very messy. It's also quite brittle, 
I've seen several bugs caused by DT node renaming.

This support for arbitrary "scalable nodes" might be excessively generic 
and strict DT compatibility might be difficult to maintain if too much 
is exposed. Changing per-soc driver data is otherwise easy.

In vendor tree we only ever scale the main NOC and DDRC anyway so 
equivalent functionality could be achieved with a single "fsl,ddrc" 
phandle property on the noc.

Support for scaling peripheral buses could be implemented by adding 
additional properties like "fsl,display-nic". Such a feature would need 
careful measurement on real hardware anyway.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
