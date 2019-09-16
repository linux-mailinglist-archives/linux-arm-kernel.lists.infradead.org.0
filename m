Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B84B3A68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Zxyx6JSuJw6/CcMN0E8u7pKcxrMzIsGWZPkyN7R9KOs=; b=dWxNGL8VRJPCRu
	L2CsuC71w4BHWNYl8AM2iDVyDDKtBVy2SPmdAQpShSOqF2lRX5utibOXiAzOIUuv+5OahPtwNG60l
	QZg9dR9pag1dbhB35COqGukafjMKEqF/lMzg4o7kbkJd2bl5qeP4O2rk0RasEUq8v4BBRXaYGg6SX
	hc7fEWMYcN7vyT7ffbYWDeDG96WUyx/G3YsD1AyLSnU6D4RGiahKqKZ3Ex1fYmFnFr1uPQ9up2ZSM
	SgnnsFWpFwZ7P49iZws93FIUuaGCDavBSS0x9hPJ8jdf41uNYkouXrDDlJm05icg84K6JyHVV5WYj
	nSCiBhXeBNA137YEPJeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qDv-0002kT-Sh; Mon, 16 Sep 2019 12:35:20 +0000
Received: from mail-eopbgr20054.outbound.protection.outlook.com ([40.107.2.54]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qDT-0002h2-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:34:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=medvI1zpWPUrIsPH4uoDBwjY5l+6UaRc4VjTIwIxMqawRYNpb67ImWMLgv5+AHcGmwI0Fj/b7HWLk7ywkzvBkKLKVP+EU3Jqf+LOQVytN1UVFy6/3Ap0VWaoyEj1OTHKIV2o4iaFmEGE0SbUlE/FIjVQ2/rA1Qkp9PlDomfBAthy/nFQvZYW+7CVO2UseAixx3tBTwOI976fKVjSobh06v3Sz94uE/CVK5843n4ihWScQlknoIVdrrMmr9d+waxMw6G2Xj9Zcj9fLiSxqJdKH9OfpI68xJPjC3zEI8B+hxpqeit2DNhWN0qghwWIk+SkptRjWh8f/GWdKLgJo4SDgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ml3YPGsLpUOIkgTIous3KeFaFrHR8fYhTHyUTHQBDvk=;
 b=OsqCm5K1Ls2JCtopimvLl5yw7Jv+wO9ppElouZnVqT/3dn4iwE/rS0G4FYGhlGRoHdVTKLsRdRiIZPMR8SL5zIxsmvq0roH6qqQyFFrDGqnH+fGV3m0vKlLUaZOBV/DSLG4mLeTC68OsY+wUvxIJxb48tkwaRIufuy4fel+boCnY12gOWFekGrWbRt5xsCt7NGbl1ZApd6cpG+r8ToXz8BIrlCWwSNGtWwnjqdH6/GOl2hAotzXNFO+5Zf89KJHfOvfaDr8n3SGwOrtDNMX88tSl+ScXeI/5fZBBp/hsTvs7ApSVxNR0hD6zcrKEAOgIQH95k6NkEl8/vUSMcs4T4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ml3YPGsLpUOIkgTIous3KeFaFrHR8fYhTHyUTHQBDvk=;
 b=DQD0lSihdWhpEFFa6i9KeLWap9Bzz/jHy5gXF8D3bI3zFJAat2MAMGe5bksg6ymr4RArj+FMFJQ0Gs+et9tjGyXa3l8zDlpjJ776iow1ZI/NuW0hpa9GQHxnXBDq/AQVSxtr2JKBNP7LWzg0cDUf5x9T//SF2B96P6DVXOpMEuM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3280.eurprd04.prod.outlook.com (10.170.231.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.23; Mon, 16 Sep 2019 12:34:45 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 12:34:45 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [RFCv4 0/7] interconnect: Add imx support via devfreq
Thread-Topic: [RFCv4 0/7] interconnect: Add imx support via devfreq
Thread-Index: AQHVWcA7xPiNhLrdqkSG10Lu7U9EhQ==
Date: Mon, 16 Sep 2019 12:34:45 +0000
Message-ID: <VI1PR04MB702373BE28E4404C7F2CE75FEE8C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 566f74f1-8beb-4b4f-7e67-08d73aa241c7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB3280; 
x-ms-traffictypediagnostic: VI1PR04MB3280:|VI1PR04MB3280:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB328079E81EFC1924AE45127AEE8C0@VI1PR04MB3280.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(199004)(189003)(33656002)(486006)(44832011)(7696005)(9686003)(8936002)(81156014)(8676002)(99286004)(86362001)(55016002)(2501003)(66066001)(54906003)(110136005)(316002)(25786009)(476003)(14454004)(76116006)(91956017)(186003)(66446008)(66556008)(66476007)(66946007)(4326008)(64756008)(26005)(53546011)(76176011)(478600001)(102836004)(6506007)(3846002)(7416002)(6116002)(71190400001)(71200400001)(52536014)(81166006)(446003)(256004)(229853002)(6436002)(305945005)(53936002)(5660300002)(2906002)(74316002)(7736002)(6246003)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3280;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cIcb1sLISs6WjBDIovfGIeSHBXeZ9HrV/DNCBq26iQPPSL8chDkPbElHx/Y93thtdeEJtjNkfv5VeouaHbdtztcTPgmMXKhdERJPog6CNu5vdC8vLjLCly0ImDQ0fRy9hg4n7q97SExCfFZwaD0UYWH4AamMJq3E9+cNhRLelMLwclsn4oK4vQ1zNflpqO4oKkEZ4tZf8LbqHNvGhoGFaG3JsfHSyosckfCQ9DWCa2355cDFPc/a/WULhTxLEQTv6aQekdrCmUVQ0k4wps7OgY3oIeaXb6+DssvflSVNbAbq8YKQHUjfIorC4FUeCl1eCSDW0ucd62x31Y7eeF4TdbcZCyAL2w3nQ4kZ2IjXCl5PmJ60+qKbngbCgps1lPRvOB8Fqa+PE0sTyX7WrBp2MLW3BPmJOqOEhE9Dw6+VNpI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 566f74f1-8beb-4b4f-7e67-08d73aa241c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 12:34:45.4176 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CWaEHDDjLQDsP/13KOQHx/1aut7vKDMooUcJRCvOQoKjmBYNjfNXIJnzxRgOvi057LKJoUQRd88fFhkrsOphQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3280
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_053451_600298_3DBA7378 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23.08.2019 17:37, Leonard Crestez wrote:
> This series add imx support for interconnect via devfreq: the ICC
> framework is used to aggregate requests from devices and then those are
> converted to DEV_PM_QOS_MIN_FREQUENCY requests for devfreq.
>  
> Since there is no single devicetree node that can represent the "interconnect"
> new API is added to allow individual devfreq nodes to act as parsing proxies
> all mapping to a single soc-level icc provider. This is still RFC
> because of this

Any comments? I made a lot of changes relative to previous versions, 
most of them solely to avoid adding a virtual node in DT bindings.

The only current interconnect provider implementation is for qcom and it 
uses a firmware node as the provider node (with #interconnect-cells). 
However there is no obvious equivalent of that for imx and many other SOCs.

On imx there are multiple pieces of scalable fabric which can be defined 
in DT as devfreq devices and it sort of makes sense to add 
#interconnect-cells to those. However when it comes to describing the 
SOC interconnect graph it's much more convenient to have a single 
per-SOC platform driver.

My solution is to add an "icc_proxy" API so that a single platform-level 
interconnect provider can be referenced through multiple DT nodes. Does 
this make sense?

The implementation is not very pretty, the interconnect platform devices 
ends up enumerating the entire devicetree in order to find proxies.

Right now the interconnect API use a relatively standard split between 
consumer and "provider" but I think it might make sense to have a 
separate abstractions for "graph" and "midnode". A "midnode" could act 
as a DT proxy if there is no single representation of the "interconnect" 
and it could support custom scaling for itself (with the default being 
scaling kbps into MIN_FREQ).

There are also other options:
  * Pick one "main" bus and bless it as the "interconnect provider". I 
want to represent buses as devfreq devices so I would have to call from 
devfreq to ICC for registration somehow.
  * Maybe the "no virtual device" rule could be relaxed for the 
interconnect subsystem?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
