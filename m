Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D164BBCA6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 16:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=x2aanusGhZ4XwqjuHHWxvMXlsxQoJ7pjXAX9NmFDtEw=; b=BTPi/ikPCpS6Kk
	hw8tnZ0DaDrXkgMyFJK7ktrse55o0c6FfzMzFk8tVtOaEW3oiE2VzGsGP5+OYtSB7BHUlkCPY+NUJ
	ppylvHNyvgcuqNBMKkOXv+M4Wn2z0VdzC1z82LTxD+eOkJeIBiBp/LXrT1QPa3oXVV1FtwhVfAIZU
	UOM7IkEme36OfTl0Yh+FmWFO+D2YCHwEpkBipkPZKj1kWh32tTeM0MQpv2EhydxC9hjK9V/U1FoSI
	7Rm6BatygEy8kd072BmVGQkNrAPAlOkZ1kLkcEHkfJH2uCZxSX3Dpe9k/WGG6Z0BZ+SU4zpEhgzQC
	4hvonHOLkn6eN2dc5KJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iClzX-0004DJ-EB; Tue, 24 Sep 2019 14:40:35 +0000
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iClyb-0004C6-2t
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 14:39:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwzRuL/Uo9pIhjKUDgYbMgMCAtxwc5nMVISBfFOCeQHbRtpL0w4cUnDv+nc4afslPxOGEyZq2KNWl81x6xmfpOUgHH7tsYJ2KhDJP5a003YFipTiJiOBIIh7OAfjOrMc14cZhqgKzIgPYjatG6OFPrSI4K2suj3tfni6USD8CFgQTYzAi7oThF/JKvc1vShJK3KcOGFHutm1x9bJWclkQyXQZjzVwrnHGIYihCIbk20OxpgGv51cPZPrUpvNd+B9F/XEGHN7swpt+9clEDev5Gq/4C4YCRHbQ+ww8iI4JZainQZCIZRt8ZeQVvIccxm4uMGT7iGoFESyOIqrqrE1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qaPTX1+ECsNDZKD4Sxs1jnEBpRZlfNPnnBPcigeOdoM=;
 b=VXkibDDfu2Rj3qZy+cF7bjqsXSJA9Ytqq+y9hcXbn3vA1oIeNF6FgogmzZPS11gmlmeLXWD2YZH59E+qI0l8BEMlQoHC+MG6mC98NSENE1uJnVGH+VnBZ7AEiS09Y9zj/aW6cjF8IdwrvBxm6cuiqMhgCEeCZGnr0HY3tBJ6S56FHbb9kyE5/BBM4khoms8fuh+84D10C3NESTP6jzIOVfEXXO7CF6aNc7Xp5vH4Dwh0yx+mpies7AXOI6U8C95AQg4XHaO0c2kMHdlUodZQudK370VOXpmMeEVTGcjDWVYo50OnpNgXATUrkDlkuaz9FMPjf4DlXSr0V49XLVMaUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qaPTX1+ECsNDZKD4Sxs1jnEBpRZlfNPnnBPcigeOdoM=;
 b=KoiPiDTU8DhFbvVRKOxJGoC6pQvWspIm2auaOjl/51NgE8Oq6fDADVV5v9MR2mDzWcSC8+xaMVlQ9uWOZUElJJUjN6SLfZ+YKpIo7ScQvMxIxXMcpv5kAhLxbGHnElK8dnO73MwUZnlQDxH9fWX6kFM7xi2lh7+sAAvp8Iiz5KY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4591.eurprd04.prod.outlook.com (20.177.55.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 14:39:28 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 14:39:28 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Rob Herring <robh@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [RFCv4 3/7] dt-bindings: devfreq: imx: Describe interconnect
 properties
Thread-Topic: [RFCv4 3/7] dt-bindings: devfreq: imx: Describe interconnect
 properties
Thread-Index: AQHVWcA+RMYwTA9YVU2r3Zx7nMHKVw==
Date: Tue, 24 Sep 2019 14:39:27 +0000
Message-ID: <VI1PR04MB7023FEED855FAA9707790B3AEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
 <3f27038292c09c8bf07a086eac759132c100aedb.1566570260.git.leonard.crestez@nxp.com>
 <20190917201956.GA10780@bogus>
 <VI1PR04MB70237046A8DF88936C7A83F8EE850@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAL_JsqLj9FdoSwt7HZwoX42GS9RJ6Zeze=bUZs-tia2oS+OzUA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce9c6c68-4e0b-4d2c-a673-08d740fd00d1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB4591; 
x-ms-traffictypediagnostic: VI1PR04MB4591:|VI1PR04MB4591:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4591898A5BBBF7DF6C2F5795EE840@VI1PR04MB4591.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(39860400002)(346002)(136003)(199004)(189003)(3846002)(81156014)(81166006)(8936002)(66446008)(66556008)(110136005)(54906003)(2906002)(66946007)(64756008)(486006)(446003)(256004)(86362001)(14444005)(44832011)(966005)(91956017)(14454004)(76116006)(8676002)(476003)(66476007)(66066001)(478600001)(305945005)(229853002)(55016002)(102836004)(6436002)(74316002)(76176011)(7696005)(71190400001)(6306002)(71200400001)(9686003)(4326008)(52536014)(33656002)(6246003)(53546011)(6506007)(186003)(26005)(316002)(5660300002)(7736002)(99286004)(7416002)(25786009)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4591;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 18YlBvV+s61lLpf1ZQAY2KyKIFgmp4qX1kkSon/Xq4npXXYU7N84Ih/CaBS4h4mAE/uX8y7Uf/WblSbyNxl9JkN0gYO4Q+QTc1nKqxViLI2mnyqqsG32gUw2chqdbYg6P4UrOAJingAyT3iGxACFJZXlhBnP0Yt7IFNrbWMoKAKrWxw7Oj0XkiyrWvpv8GqNH8dnpCNWJ/JMHHSxx2NzAjj88JkpKPg8cN9S1XqloZF+gLkbFIFcBsJnebLYsUBLFkb/IlCa4H+Ds5jcQihd8VI0mHYMqdoKk+qqGKYKVXNM1wX4ZKRW4X+ZnOlLb2D2+JLAstU/rHw+x5aYdiPZC0aXvPcSeKKMcjiQSDbnsXR+fnioTpLZHWM000Pdlf8igudc2F/BVw48CqME9LlkZLXsg5jb6vGrjuA10CttnYwR6XxSjxgIVwNRYVSF69LO72pwq6WgX0HA9hqiAvpshg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce9c6c68-4e0b-4d2c-a673-08d740fd00d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 14:39:27.9376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h7/RSfCIig0Dw3r31dT7xigl+fWGtBlCr0qVU/z9L/IdynQtNrovbY9n1GdU9bwOWxk5DU/s1LDf6+ZDNMyrKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_073937_132672_5058FBDF 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.71 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24.09.2019 00:04, Rob Herring wrote:
> On Mon, Sep 23, 2019 at 12:42 PM Leonard Crestez
> <leonard.crestez@nxp.com> wrote:
>>
>> On 17.09.2019 23:20, Rob Herring wrote:
>>> On Fri, Aug 23, 2019 at 05:36:56PM +0300, Leonard Crestez wrote:
>>>> The interconnect-node-id property is parsed by the imx interconnect
>>>> driver to find nodes on which frequencies can be adjusted.
>>>>
>>>> Add #interconnect-cells so that device drivers can request paths from
>>>> bus nodes instead of requiring a separate "virtual" node to represent
>>>> the interconnect itself.
>>>>
>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>> ---
>>>>    Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml | 5 +++++
>>>>    Documentation/devicetree/bindings/devfreq/imx.yaml      | 5 +++++
>>>>    2 files changed, 10 insertions(+)
>>>
>>> Please combine this with the other series for devfreq support.
>>
>> I understand that having two series which add to the same bindings file
>> is odd but the devfreq and interconnect parts are independent to a very
>> large degree and devfreq can be useful on it's own.
> 
> To start with, I'm suspicious of any 'devfreq' binding because that's
> a Linux thing. I somewhat expect that the interconnect binding should
> replace the devfreq binding, but I haven't been able to investigate.
> 
> Design something that matches the structure of the h/w not how Linux
> drivers happen to be structured. I can't tell what that is without any
> context around adding a couple of properties. Nor do I have the time
> to dig into each SoC vendor's bus structure if it's even documented
> publicly.

Device tree binding files are organized based on linux subsystems but 
otherwise there's little particularly specific to "devfreq" in this new 
binding.

An imx NIC or NOC is a physical component of a SOC which can run at a 
variable clock speed. The device binding uses standard clk and opp 
tables in meaningful ways so that first part is reasonable.

I also want to implement an interconnect provider but an "interconnect" 
is not a single device but rather a graph of discrete buses. Some options:
* Add a custom virtual device, easy but not upstreamable.
* Have a single icc provider device use the individual buses as 
"proxies" for OF parting. Implemented in this series but not very pretty.
* Pick the "main noc" as the single interconnect provider?

Alternatively the approach of defining the graph in the driver could be 
dropped and everything could be described in DT (quite verbose). This 
seems to be what Samsung is doing:

https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=176291

It might even possible to use of_graph; this is complicated but the NICs 
and NOCs do in fact have discrete ports with assignable properties.

 > I also don't follow why you need 'interconnect-node-id' and if you do,
 > it should be a common property.

The "interconnect-node-id" property in devicetree identifies nodes from 
the interconnect graph; for example the DDRC node identifies itself as 
IMX8MM_ICS_DRAM.

--
Regards,
Leonard


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
