Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6994511D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 03:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vL6BzHo3ystdkr+hFbY3BB50YINQz/EN5GvuvnKdUk=; b=FJLVkmmAVuYgqb
	M5Mg5zZNW+MSh6CdzCA1XYjjYv3prA+ZxfRGK4Q7GwJYmOehjMyXUc3TiP15ZFszpW1+vFdqv0hTu
	Gqjitel2LIEKgqwk5YgAIfYhBmvD3TLuuTwPH6FLcvADUGubQH3Gg8Kz+SP38sJQGPfh4+/HrGAZG
	ltZx8KSlIBEpJlVi4MYkQQJn/jpQRIhOaf6gxSRuuPGKh5fNtA90L5teGsCgu4a6b/nildt008eGg
	QGrbWwVGNgKvMSp1GtjYnm7Yo5RQw0NiX/DFP1YIpsebpsIRGA3LN4LW0uCcVWYmzT/hZ+e37UPac
	RkxFcjBD/dkt13wBnq/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbasV-00013I-Eg; Fri, 14 Jun 2019 01:19:39 +0000
Received: from mail-am5eur03on0611.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::611]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbasM-000128-Pa
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 01:19:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXTU5iglnJrpZWNNHbPsjDUZTOhk1/ltTjfbfExQW8g=;
 b=oMOR7NZmLMjo2HsJztty7b0BdAkGpIPqRuqTLF8092vPXRgsz6t924jpziA59MlPLo9muThqQFLqA3qQJoZ/k6VHDTO09AcVBJKDnu9HN3Crn+Ci9Q7Cz2ICaytT/a3JqIy7H1z5ZCJKjc6gEK/V9LOsNF3N9aVo+BU5eviAToY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6210.eurprd04.prod.outlook.com (20.179.33.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Fri, 14 Jun 2019 01:19:23 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015%3]) with mapi id 15.20.1965.017; Fri, 14 Jun 2019
 01:19:23 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Topic: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
Thread-Index: AQHVDrkIcB6j+hDf/kC51b4HJvSviKaaWkOAgAAkkhA=
Date: Fri, 14 Jun 2019 01:19:22 +0000
Message-ID: <AM0PR04MB4481288D0D1B8DA704FEF82B88EE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190520032020.7920-1-peng.fan@nxp.com>
 <20190613230055.GA19296@bogus>
In-Reply-To: <20190613230055.GA19296@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 761aecd4-e36c-4c9c-f86b-08d6f066557b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6210; 
x-ms-traffictypediagnostic: AM0PR04MB6210:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB621072CB798FE86C7CC558AC88EE0@AM0PR04MB6210.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(39860400002)(346002)(396003)(199004)(189003)(68736007)(74316002)(6436002)(229853002)(55016002)(446003)(102836004)(14444005)(6306002)(26005)(6506007)(11346002)(476003)(86362001)(2906002)(486006)(44832011)(66066001)(6916009)(4326008)(9686003)(76176011)(305945005)(25786009)(53936002)(7736002)(8936002)(256004)(478600001)(76116006)(73956011)(33656002)(316002)(52536014)(7416002)(14454004)(6246003)(6116002)(8676002)(54906003)(71190400001)(71200400001)(966005)(81166006)(186003)(81156014)(3846002)(66556008)(66446008)(66946007)(7696005)(66476007)(45080400002)(64756008)(99286004)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6210;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pmwpbjBoOhWhGzNz/tNnbxtffYrouy9B/70hn0lgZPXN+FEXJ46/jhDQZbQxuVyfn3ytT15osbhBICM6LvvBhC1FWceZZaGyacH3bDRVe64Wyx6EEbR75mouM8/XoG5W0Jq2N2zEdpmafTiGdDEPjgSPqKTxvpKrAn4vBqGSvpeKJlckk/hwHWhWbIcZEUdhlJFpk3wBZSAPbofvfDSKxzFSCupGw17aPOSJuq4pVAjvnTA4D7ig+LN1O8/ggeui6xQdl/dmHedlNw6MrfAYANRNLQDIg7zBvQo022ktF/MSBoMCNfxdAJt1wITkYewCd3hth9JSL8I7xeUN26dfF4qTJDYqdIBsj9BlMX4D4GTC4IiSdsoAIz84K9djZMJwak7OGKcrEDriYXGIvMwkWwayKu0KDPYXsTUqyuexf0g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 761aecd4-e36c-4c9c-f86b-08d6f066557b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 01:19:22.9593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_181930_835360_DC77B50B 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:611 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> Subject: Re: [RFC 1/2] dt-bindings: imx-ocotp: Add fusable-node property
> 
> On Mon, May 20, 2019 at 03:06:35AM +0000, Peng Fan wrote:
> > Introduce fusable-node property for i.MX OCOTP driver.
> > The property will only be used by Firmware(eg. U-Boot) to runtime
> > disable the nodes.
> >
> > Take i.MX6ULL for example, there are several parts that only have
> > limited modules enabled controlled by OCOTP fuse. It is not flexible
> > to provide several dts for the serval parts, instead we could provide
> > one device tree and let Firmware to runtime disable the device tree
> > nodes for those modules that are disable(fused).
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > Currently NXP vendor use U-Boot to set status to disabled for devices
> > that could not function,
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsour
> >
> ce.codeaurora.org%2Fexternal%2Fimx%2Fuboot-imx%2Ftree%2Farch%2Far
> m%2Fm
> >
> ach-imx%2Fmx6%2Fmodule_fuse.c%3Fh%3Dimx_v2018.03_4.14.98_2.0.0_g
> a%23n1
> >
> 49&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Ceb74876c943c4471d7f
> f08d6f05
> >
> 2fffb%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63696063660
> 6051306&
> >
> amp;sdata=MrjCP0ufBu3uTb1ehTEu2g5eSQuYcho4UxuR9KUFEOA%3D&amp;
> reserved=
> > 0 But this approach is will not work if kernel dts node path changed.
> 
> Why would the path change? The DT should be stable.

It changes sometimes, such as
efb9adb27475 ("ARM: dts: imx6ul: Remove leading zeroes from unit addresses"),

in bootloader, we are using node path, so if the node name changes, the bootloader
will fail to disable the node.

Thanks,
Peng.

> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
