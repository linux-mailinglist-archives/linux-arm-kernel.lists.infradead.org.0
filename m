Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B901D748D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqboSUqLkj2prbrlGhdselQ+bFT2+XeJjRgKGg0eK80=; b=qLHcR52JBm5ti8
	D0FTXOJEEfV7yqXQb//sTf/9Ku/pY3a8Zw2u3zqknxiPXirRFnVTAPEqGESnQQeWI67bBXq/KfUOZ
	cUeFNNf3Hb2Hed26LoJQINI8XFvYtQbjvav+QSGORyhctBWBtdz+AvDB3oENjjiZNPt2hznXUpy8E
	KJzQAhYAKTqCBGLBwd4vULzsqfkh0N41vWYI2KPfOh/n1MjG9UFumvaSRAOenR6qMddxfq3MQG4I4
	YCddZDvJULHDFuAliBgLX6YS7Z+ZG9UpSTQsU25XmcLyRkfji8YiOClzfQMISn21ugZjXZ+8SpCsM
	5W7WGdEnhNP7H394JXfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacYB-0004lt-Vf; Mon, 18 May 2020 09:59:12 +0000
Received: from mail-eopbgr140077.outbound.protection.outlook.com
 ([40.107.14.77] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacY1-0004kB-Em
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:59:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hp+vxEhs3TF5E9NdOgXErr8ZI7KzI7Eltb4fNdzbfMav71SNyq/hzdX2Glhn7cRk4/GyqPX+PWtaURfFk4h0IYl0mdcm9PhaN0Cm7Gcz5JgEWvT8T10YKhKrp1J62Z9hSZpds+omNKzHoqjxfHipj57TFEfroA6LNd0JTk6inxDuFPVH0SP38ZuTcXwCHA690irH3xjNbZDSeRHHHxzyg3xTx/OlEFr8eQN4iGnbgyDHYprWHpJQwGLXQ8L7ddWPMFwT44rizPGKAQcYYTdEPQVS9rMNmOjSzrEBd3DHTy0AYm2u7Zx07dASJbfJ7wH0hmoIQCt+V2HXPLtOkq3nhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hzkSqmCfl3gsfOqRJDHsoaKWKJPRsKHfDgaS37cMMA4=;
 b=E8lXU0awceJEN+KWZyveit7+UmREFsP2cLojXm007fLc5hNi8EzTFk3cS4eu3XjFJgR7O5VJaOWP2ye0YAKyehM5a6oxZpHI3nAQi8bOos6BqKG66N33a6qzkcd8phNAMdyqeSUp4T68WRw5keY+JsDENHocMM+uxM58WjEg8sr87LtxHzhLZVZR6OY6j+Gw1blY7ZLhjCvFIYae3g8yf7/8fVkTyShnmJu7ZZNrhMNkQ4IdH3TTyGC4CiogikJOwUgCxSEq6W2zp6YKvQEe45aXUjnucnugkJpQlq2rN3ZLv5lD3bZGdK6Em8o4dP6iHhymyNuSfovICs/D+iBDNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hzkSqmCfl3gsfOqRJDHsoaKWKJPRsKHfDgaS37cMMA4=;
 b=G33oEG8UvLe4yIvewwViGgm7NqaCIoPaRYHicUAbauIlwLiLilP4zxiOAELnmNlPLDQcKAsMDirV8ung3tcUrXLujJelx2PcJkIBWB37ncNUSypxaf4WS2D5Pyybh4JqS4pK02vzJsogbLTstTVy9zkjfYo960b6Z0UvfI6KIAQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3945.eurprd04.prod.outlook.com (2603:10a6:8:3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 09:58:58 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 09:58:57 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
Thread-Topic: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
Thread-Index: AQHWKAWfz/hL/av3lkeqLSh6w78ioaitoQOAgAAEbYA=
Date: Mon, 18 May 2020 09:58:57 +0000
Message-ID: <DB3PR0402MB3916154554C6AB2C6BBEDE1DF5B80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589250194-29441-1-git-send-email-Anson.Huang@nxp.com>
 <719ed778a36e7edfea080d42e9b837432e595d15.camel@pengutronix.de>
In-Reply-To: <719ed778a36e7edfea080d42e9b837432e595d15.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e0b58638-d1a6-4477-b0e5-08d7fb121534
x-ms-traffictypediagnostic: DB3PR0402MB3945:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3945B5450F5D4E09D94D9674F5B80@DB3PR0402MB3945.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VfHXL3fQBkgp2bJOQaBFgyP+v6eyKTffxbJJRLai6RZP3RSvOyEnfNzo6I8uCBeOlqDjG69ml5eBNTav40yXF/tDtvhvCscT8nMzt5IJezT20hfSGyMpzuMH236sY7n7Pa8JSfKmEgGsbmTA+wL0iK45iigAHOnai8z5zpO6KVe1PwaJqgw6i9HKq9KfYOFelv4S9xx3irG/Nd3V2pfQjLpkX2rbySby0zAolhj8+eLi35Uvoyy/kq8/TyodrhnGTf9/lU2ybvJ8VJdY7YG6+gNUgRkvwE3LB3OkQ3l9KoNg83umi24FCEe7KCb6o0Fo3e+2DrQj78UB0I6tj+NV04oujIeIkXAyNDecTLDO9N/0nW1odVab2Lz7Hk9Asefss4cnP8bbNjqcXeMgb3BFudszM2pTb3h1AAPKTSsJf3mD/0SpH/tsIvGhj9pafTbhGnQhBGRZY/NODaj41EgU5FiVLMhjCnd1jDgVCUW1K0FD2vnTRJobjPbfBPV+QsHx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(26005)(5660300002)(71200400001)(186003)(2906002)(7696005)(8936002)(55016002)(44832011)(66946007)(76116006)(66556008)(66476007)(33656002)(86362001)(83080400001)(52536014)(66446008)(110136005)(316002)(478600001)(4326008)(6506007)(9686003)(45080400002)(64756008)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: e12wAll5lyTHMbCxZiF27lzk0u2J7e5m4GcZE5QE/PtwF/gSBjICTTNmmq16dvI7Xd4Te7NYLKhKuhvcbLkv2QPNervPvYtt5O35kN48AzwkY+SzdMlB5eN6W31G04W3+K/hK4bEqyjSWnfk4L72vu5VdJ2nxkZSqyt2gAzK+qjChinMBZB/KB2SL9owNsFK/40JM8Gary2RihgJr/lWZQoHQ85/Rk0XVCQzj7qykxvNL33I3rluegjCx60Bkk4BF8537ZudAHwZIF3dIngC2K7NRwURtuJMkHTX1rczXmp7aVY4P8qJ0fLc4IOTa8Rh4vKs0Xpfn6COogcF+ag3usu4MkqPPOYL5s648SNItsK5RsywNIN8JOHwZ0f96ld43iF6XFLvtxwAUX7ifdeCO28+3/3i64M/n5fireuloy7zKrEAweASlamfUIaMR45OdD74XbhZek41ul33gTYC59y+zBZcFFCbqqCtYWAeIOQznx1Yz2DvTiMERJdvhBbU
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0b58638-d1a6-4477-b0e5-08d7fb121534
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 09:58:57.9142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FMAWE+tfhRA5UieTaTDbvlLvFlTLSILsiZLV6Ev5XpYodUtIU/SUEB8Bj7Os2ocPr7aHlTcVe6Kli4wbq3pDgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_025901_504988_CF7A513B 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.77 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Philipp

> Subject: Re: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
> 
> Hi Anson,
> 
> On Tue, 2020-05-12 at 10:23 +0800, Anson Huang wrote:
> > Convert the i.MX reset binding to DT schema format using json-schema.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> thank you for the conversion.
> 
> > ---
> >  .../devicetree/bindings/reset/fsl,imx-src.txt      | 49 ------------------
> >  .../devicetree/bindings/reset/fsl,imx-src.yaml     | 58
> ++++++++++++++++++++++
> >  2 files changed, 58 insertions(+), 49 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> > b/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> > deleted file mode 100644
> > index 6ed79e6..0000000
> > --- a/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> > +++ /dev/null
> > @@ -1,49 +0,0 @@
> > -Freescale i.MX System Reset Controller
> > -======================================
> > -
> > -Please also refer to reset.txt in this directory for common reset
> > -controller binding usage.
> > -
> > -Required properties:
> > -- compatible: Should be "fsl,<chip>-src"
> > -- reg: should be register base and length as documented in the
> > -  datasheet
> > -- interrupts: Should contain SRC interrupt and CPU WDOG interrupt,
> > -  in this order.
> > -- #reset-cells: 1, see below
> > -
> > -example:
> > -
> > -src: src@20d8000 {
> > -        compatible = "fsl,imx6q-src";
> > -        reg = <0x020d8000 0x4000>;
> > -        interrupts = <0 91 0x04 0 96 0x04>;
> > -        #reset-cells = <1>;
> > -};
> > -
> > -Specifying reset lines connected to IP modules
> > -==============================================
> > -
> > -The system reset controller can be used to reset the GPU, VPU, -IPU,
> > and OpenVG IP modules on i.MX5 and i.MX6 ICs. Those device -nodes
> > should specify the reset line on the SRC in their resets -property,
> > containing a phandle to the SRC device node and a -RESET_INDEX
> > specifying which module to reset, as described in -reset.txt
> > -
> > -example:
> > -
> > -        ipu1: ipu@2400000 {
> > -                resets = <&src 2>;
> > -        };
> > -        ipu2: ipu@2800000 {
> > -                resets = <&src 4>;
> > -        };
> > -
> > -The following RESET_INDEX values are valid for i.MX5:
> > -GPU_RESET     0
> > -VPU_RESET     1
> > -IPU1_RESET    2
> > -OPEN_VG_RESET 3
> > -The following additional RESET_INDEX value is valid for i.MX6:
> > -IPU2_RESET    4
> > diff --git a/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> > b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> > new file mode 100644
> > index 0000000..276a533
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> > @@ -0,0 +1,58 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Freset%2Ffsl%2Cimx-src.yaml%23&amp;data=02%
> 7C01
> >
> +%7Canson.huang%40nxp.com%7Cd622f3b31cca4b2e7b4808d7fb0fae99%7C
> 686ea1d
> >
> +3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637253917082767416&amp;s
> data=7e%2
> >
> +FAy3dz4goXW6rNH2tAl3z5oNQ%2FIZ6Nykn4uBZ7S20%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cans
> on.hua
> >
> +ng%40nxp.com%7Cd622f3b31cca4b2e7b4808d7fb0fae99%7C686ea1d3bc2b
> 4c6fa92
> >
> +cd99c5c301635%7C0%7C0%7C637253917082767416&amp;sdata=U%2Fs60
> QKHaPc5Ar
> > +GxJP97FLL%2BsClgZkuSmeQWKofm4oQ%3D&amp;reserved=0
> > +
> > +title: Freescale i.MX System Reset Controller
> > +
> > +maintainers:
> > +  - Philipp Zabel <p.zabel@pengutronix.de>
> > +
> > +description: |
> > +  The system reset controller can be used to reset the GPU, VPU,
> > +  IPU, and OpenVG IP modules on i.MX5 and i.MX6 ICs. Those device
> > +  nodes should specify the reset line on the SRC in their resets
> > +  property, containing a phandle to the SRC device node and a
> > +  RESET_INDEX specifying which module to reset, as described in
> > +  reset.txt
> > +
> > +  The following RESET_INDEX values are valid for i.MX5:
> > +    GPU_RESET     0
> > +    VPU_RESET     1
> > +    IPU1_RESET    2
> > +    OPEN_VG_RESET 3
> > +  The following additional RESET_INDEX value is valid for i.MX6:
> > +    IPU2_RESET    4
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: "fsl,imx51-src"
> 
> "fsl,imx51-src" is the only compatible the driver matches on, but we have
> these combinations on compatible SRCs in the device trees:
> 
>   "fsl,imx50-src", "fsl,imx51-src"
>   "fsl,imx51-src"
>   "fsl,imx53-src", "fsl,imx51-src"
>   "fsl,imx6q-src", "fsl,imx51-src"
>   "fsl,imx6sl-src", "fsl,imx51-src"
>   "fsl,imx6sll-src", "fsl,imx51-src"
>   "fsl,imx6sx-src", "fsl,imx51-src"
>   "fsl,imx6ul-src", "fsl,imx51-src"
> 
> That could be described using oneOf and and an items list of const values per
> SoC like in the qcom bindings.

Yes, I noticed this and will add all of them in V2 per SoC, thanks.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
