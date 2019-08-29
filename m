Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5007A1553
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 12:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFjy2LQWvPMEl1/MPBnYjB9oewgBJQunDpUtCatM8Ik=; b=Ln6Mn287/9EGHj
	Tx/IpgFcv4nvr3BWzkUSLbfXrJ3hWIRpHaT2p/ONBo7tb+1BPI5K1opoz10etK3U2YVaLzL2gkjL/
	PDdazolkWSKAF5gU+A1HtA/FPhnrTRcNxuqbWAFMVN2nWO67xQRFKO87HhEARgYnw4++uLZ9VX+pK
	5TRh0I7qKPwEJ4LOtbmoyNhRg2qLH79fwVEaCjXncrg4rv70XpMeigqmvCCAVpjWiSaPdi6POLc5j
	E2udaC2yJ1BjRW6RrXQEys0VvsmCfEIyNa1GH5u6RpHCnsB/psFSKzQRrrkxIlZe5VRZSncAJMYsb
	L0PhoxDHdLH0XOFT5eSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HFn-0000E6-2q; Thu, 29 Aug 2019 10:02:07 +0000
Received: from mail-eopbgr130048.outbound.protection.outlook.com
 ([40.107.13.48] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HFY-0000Dg-4w
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 10:01:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N3GXfLbVmI8QxffjjpvywKpGEP1wZYQyg+e1p3QvU8ONuSZNLfqR+sal41UlRP6mcET28ZRUL87leegjxSP2BBkTG3wwhym9CwILWIr296sVvNjdL4RPzCa2Gjh5E5FDFriLUXUVjOdtFD/H647hU/oNuqWtySRRfrTKXwDq896SRuh4E3RnQfikeFRksz9vgsbG0hzAZkhyjaczJ4UZKUXmMF1Bxxsy0D6dV0IiaFuJil6Bl3l1CJ3ivP2WCvoz4juY6jsF/dsBz0mQbX3e5ZTiYpp6n0OAnM9MiigIRF1/maZK7IVezWESDaTImQkoy12PownxshdE7v2LJjf7vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XHF5o7WCLXio8EuF9KeFSuDJPE1eGkDeWnl5zHc2QQo=;
 b=m/+u+xRhhHMVxDSqiTGzG3puExKn2U8LSpwLrOndw936BIcolnDZiceacIL6AECCwKA8vPh2XR0RpF5C4fIqGFHw2tdXcJ69tt1eP75pT129L/r/46MrKLWHDQEizrS6l1SuzHtjDYmM45l5tFcYMlbPKV/eQQeiqgcyespgTQlUPyyGvGIRkoP0zcGlnJIcZ3G0AvKuHwj5BcOXoRIjLBBDpUtK4O9iv0pHOuTIVGytimw4Lz1cPS4P7iyrJNZn/p0iyZnpT64ZMSQMQktUaBtcmWu3wce/aExoSswbxvplgLmfLXN6tk1V96Sn7WApo1aiHZrfe/8V1C9ruL9dkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XHF5o7WCLXio8EuF9KeFSuDJPE1eGkDeWnl5zHc2QQo=;
 b=LxwRc3V+Ch7q/J12dpzgU3p9W8hyOVeDZN6MWtFg/aHeSWRg4qtYvVi9gu4W0wJfJ2fS0hHzFmk6pbLAtE+Py1CyAMRkv/ZFXH7Z597rKuKaSdo2+1FRKoSHpP8Jd4ymYBzoJaPwDU4cHL1Nfdziu02VwnPUEftmAPpB/qRt7KI=
Received: from HE1PR0902MB2075.eurprd09.prod.outlook.com (10.170.255.17) by
 HE1PR0902MB1753.eurprd09.prod.outlook.com (10.171.97.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Thu, 29 Aug 2019 10:01:46 +0000
Received: from HE1PR0902MB2075.eurprd09.prod.outlook.com
 ([fe80::3914:9799:b8a4:e891]) by HE1PR0902MB2075.eurprd09.prod.outlook.com
 ([fe80::3914:9799:b8a4:e891%3]) with mapi id 15.20.2199.021; Thu, 29 Aug 2019
 10:01:45 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH v3 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Topic: [PATCH v3 01/11] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Index: AQHVXlDCj1UcA2HR9UqRNdBbxYJSJg==
Date: Thu, 29 Aug 2019 10:01:45 +0000
Message-ID: <20190829094624.GC18928@optiplex>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <1563289265-10977-2-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563289265-10977-2-git-send-email-aisheng.dong@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P123CA0002.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::14) To HE1PR0902MB2075.eurprd09.prod.outlook.com
 (2603:10a6:7:1e::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f72a3e2-98de-4798-3790-08d72c67e516
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR0902MB1753; 
x-ms-traffictypediagnostic: HE1PR0902MB1753:
x-microsoft-antispam-prvs: <HE1PR0902MB1753D3CAE60521DC2AF94438EBA20@HE1PR0902MB1753.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(346002)(376002)(366004)(39830400003)(396003)(199004)(189003)(81156014)(81166006)(6512007)(9686003)(476003)(11346002)(76176011)(386003)(6506007)(102836004)(25786009)(53936002)(6246003)(4326008)(3846002)(6116002)(486006)(256004)(14444005)(44832011)(446003)(99286004)(2906002)(6436002)(7416002)(508600001)(6916009)(8676002)(7736002)(1076003)(305945005)(33656002)(316002)(86362001)(33716001)(54906003)(66446008)(64756008)(66556008)(66476007)(66946007)(71200400001)(71190400001)(186003)(52116002)(26005)(5660300002)(6486002)(229853002)(14454004)(66066001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0902MB1753;
 H:HE1PR0902MB2075.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2q/8hHroWZNlW3iDxxccm0y7qv6y77mQTfMkSyWqVMB/HS6oJNOgUNTUNtCp4nflNLby9fpEJC6NgJbZF3nArA1+2zUM9er3ciau1TE3kJ8dv36bNh26G1RZq1Gp/oMZMwvwcrTB59Ok8L8yGj+y5KGK+ldIIgt+ZAi8KCnQoLdh+RuiDvRUqxygYhQXxioesT+Ob+jBj84WRJpMkn84I84jX2MJ5PIW+D8c/uvgbQm4Rb5cewhwmqeFJLktKyu3G1SEDjmnVsow56Kog/QruzFPOtsWRilHw/SO13UFsmnmO5dM4k65uaR5WV1grQgMX2EbI7hFa+oi5G3ORAqm77t/tyzMxlUatCF4qXxgUS4ToBkekC/jCDp5xXS34evR60fBeU3i53sWA6zBVU9+GL4+lqkEmtpOu6hPRO8cYGE=
x-ms-exchange-transport-forked: True
Content-ID: <701C1D21AA60824F951B836EAA177A09@eurprd09.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f72a3e2-98de-4798-3790-08d72c67e516
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 10:01:45.4114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y+xMs3mxOUeU9MOUsnjv3tZTnUl6j/h+m5bDMy7dbh8fPkFWHNLtAV/fzAYzkoePT40gUBVUf6wdPTtTpKWnE1TovBo+qEW2B0sspVR/Ncs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0902MB1753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_030152_245508_4DEDAAC0 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/07/19, Dong Aisheng wrote:
> There's a few limitations on the original one cell clock binding
> (#clock-cells = <1>) that we have to define some SW clock IDs for device
> tree to reference. This may cause troubles if we want to use common
> clock IDs for multi platforms support when the clock of those platforms
> are mostly the same.
> e.g. Current clock IDs name are defined with SS prefix.
> 
> However the device may reside in different SS across CPUs, that means the
> SS prefix may not valid anymore for a new SoC. Furthermore, the device
> availability of those clocks may also vary a bit.
> 
> For such situation, we want to eliminate the using of SW Clock IDs and
> change to use a more close to HW one instead.
> For SCU clocks usage, only two params required: Resource id + Clock Type.
> Both parameters are platform independent. So we could use two cells binding
> to pass those parameters,
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

This Patch series (v3) is running fine for some weeks on my iMX8QM Board.

So feel free to use my Tag:

Tested-by: Oliver Graute <oliver.graute@kococonnector.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
