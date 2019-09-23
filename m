Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA4DBBAA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 19:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=VR6V4QjhP1owzRPeWW07JLGbxh7I+okUA4nKlDK5Cpo=; b=YD7TC2nTFYCcbp
	/hwKjZyVclqhQHfuVDm1x3UiGVzCNDoeAuGpFK90xwL41xrB7qzW9Q1HjjGIxTpVQv6sNdTzbkACq
	SjhOKWGXWhsqkQGHj/FAAHAH3dYOLJTA6AhdjyhSq8o6PSC+JOIZhBInd+7THpzG0GDKfp04o4nhv
	+bo8CcsvLu/Ohl4flzhxydYRyWfikzQCiYcEym1ffq+qEpCb+9RtBQEd8s5B+me0UB8L8/6I4JpuB
	rRfCDW60h5LgizupR2rwbPA+Xlj05/HtEdufpP4LqawOuwH30udfsNPOJfqK1OMqFsSA0LvBTcNW2
	OWjco+wBVypduDKwrrGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSMY-000414-9D; Mon, 23 Sep 2019 17:43:02 +0000
Received: from mail-eopbgr60081.outbound.protection.outlook.com ([40.107.6.81]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSML-00040J-QW
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 17:42:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TZ2kSS+BOvyHG93Zo9qPbTX+65iL2FwwR2Ee6EcMcdo93DlLQj7dHgMsyAOwLjukWQBdD6VA9+NrSoBl+sFA/aCa7ZzbGMsprJROadR4ePtbUUw0H91okYhjYFuRSYV/lrijBSzOEJQ5fWX7IaIjVzc6Ez9azLSlaN7WsMzpUiFfslRleVccN21R/ud7s3nk26hEci12LFTaUvYbwUrESTtlFLDVHhRct3EUXcl8MU/TprDakaeePDmIBEcp7LuyOTBNeLAH4z6TryErDBKQdZH1WVD4+CiV5blezobeAboIlH6+Opdp0TKoW+/998DkR/t1/VkeNpxTqHnWdIDg7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJOJKN+sgBaEcTrpzkZQWFwbu+adaMmk0WcYQfXqFF0=;
 b=FPndjIopvvYNJl10VNATxsm//AB7fwYBiimo3nuthjjRpPGfFdAZzbDf72kcOFM54tbO6Ker2UwUANKfqP5B0Y9dbqqjG+tR6W+pAsBcob1+AGZunRqgFDA41wqrbU3/fROXseSHQmjeMpNi84xwDVtkDTPcSriBvNBXf7XX9zWP+fvHmI/3OhPOBf8HKcl1uIT3UoE1Clcp0qksfuiuI+5i6rOidMSmWMMWHzI/VCxp4bEoMtWt33JW+qQr8sBdqxAC+v50HC36KXP6NQ7/9li3NkAv/NHSKGYglJHKWoUJ3QxIWR/2aUTuIHQGt9S6ultVNe/pGP4gGo5Lb0xCfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJOJKN+sgBaEcTrpzkZQWFwbu+adaMmk0WcYQfXqFF0=;
 b=FkE6XXS+6gk8Hl7V9MvID47Qj5B9Fw9ePTzpWCfJephtV38u+ONEspVXngr72wJ3Cd7XCTCQ/ekPAf9QBYKeyfJRIf9ekHk6gm8ub1JUbI/goXSQX+xpRT4/0AOjVB4ct4Qcro9cQxFkvl4enP07sHGT1N1MkCEsVspgIkZ7Huo=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6782.eurprd04.prod.outlook.com (52.133.247.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Mon, 23 Sep 2019 17:42:46 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 17:42:46 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Rob Herring <robh@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [RFCv4 3/7] dt-bindings: devfreq: imx: Describe interconnect
 properties
Thread-Topic: [RFCv4 3/7] dt-bindings: devfreq: imx: Describe interconnect
 properties
Thread-Index: AQHVWcA+RMYwTA9YVU2r3Zx7nMHKVw==
Date: Mon, 23 Sep 2019 17:42:46 +0000
Message-ID: <VI1PR04MB70237046A8DF88936C7A83F8EE850@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
 <3f27038292c09c8bf07a086eac759132c100aedb.1566570260.git.leonard.crestez@nxp.com>
 <20190917201956.GA10780@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40eb87d4-953e-4189-061a-08d7404d720b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6782; 
x-ms-traffictypediagnostic: VI1PR04MB6782:|VI1PR04MB6782:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6782F9B4EF420D96EA4C43A7EE850@VI1PR04MB6782.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(39860400002)(346002)(136003)(199004)(189003)(3846002)(81156014)(8936002)(81166006)(110136005)(54906003)(2906002)(66946007)(66556008)(66476007)(66446008)(64756008)(44832011)(486006)(446003)(86362001)(14444005)(256004)(966005)(8676002)(14454004)(76116006)(91956017)(476003)(66066001)(33656002)(102836004)(74316002)(305945005)(76176011)(7696005)(71190400001)(9686003)(71200400001)(229853002)(6306002)(6436002)(25786009)(55016002)(52536014)(316002)(5660300002)(53546011)(6506007)(4326008)(99286004)(7736002)(7416002)(478600001)(6116002)(186003)(26005)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6782;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6lIyBnFfI3J0zxy4jQGH7pkIzn+bMkMW5Q9GBuF7rajQYfq2tIbaoyijLUBW6fl//nehw9ixMMBZAEmz4FBnxsZqKiUib4GRPlNGc2KVTQKwTcr0oKfwhGEaw8ZQVwXQndgrjKahbRcxWhnUdwzTjswJ0TZn0a3e2Ze0gKIgcrz22Grdfaajnuxmryf55qMgqat/SZHKiO/C3PQXfiRIP5/hVzHCXRi2pZp5NoTEbj6jfSxfGCH/LCnvniK04/qVayoP7rd4UxBtZarh84wZRQVTSNQngMct/qHqZ/nr8sP38zDQjLIGan5+k7neJdnNjLAYNuGnKSTUvWBmEreGzHpUSj6HukGW/0ZsbO42f11PU/QjJGZ64fjJzl8XnTBKXy3otJht3/5jGEIWWRvtt4fsG8X5FM0SNpo61Ka7bSA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40eb87d4-953e-4189-061a-08d7404d720b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 17:42:46.4337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kAp2IonbTaGyWFyLosPDlEw7i7W2lY9Ag9nVh38L40J6IjKUtMCWN6M2saeXUy0f3TtN94+/Rg6xj47Dp9jMPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6782
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_104249_947249_5074480C 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 17.09.2019 23:20, Rob Herring wrote:
> On Fri, Aug 23, 2019 at 05:36:56PM +0300, Leonard Crestez wrote:
>> The interconnect-node-id property is parsed by the imx interconnect
>> driver to find nodes on which frequencies can be adjusted.
>>
>> Add #interconnect-cells so that device drivers can request paths from
>> bus nodes instead of requiring a separate "virtual" node to represent
>> the interconnect itself.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml | 5 +++++
>>   Documentation/devicetree/bindings/devfreq/imx.yaml      | 5 +++++
>>   2 files changed, 10 insertions(+)
> 
> Please combine this with the other series for devfreq support.

I understand that having two series which add to the same bindings file 
is odd but the devfreq and interconnect parts are independent to a very 
large degree and devfreq can be useful on it's own.

The only reason devfreq bindings are updated is to avoid adding a 
"virtual" node for interconnect. Since DT is a big source of confusion 
here can you read https://patchwork.kernel.org/cover/11111865/#22883457 
and maybe offer some advice?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
