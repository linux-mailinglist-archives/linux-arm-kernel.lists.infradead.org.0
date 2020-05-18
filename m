Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B225D1D7486
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11bpm4VFLAn0iuTFsbFfYq4rnl03A38oyKOjzVMs9xY=; b=pype1Mka7amV1+
	+eTYmxxPc6QaEozPk7wmKE/FAeMcPgxbir52kGE20ayNGOm2z2B9xhCugOel4kWH6kYpc0PaQzA0q
	7cDWqVlc7f4pQwfwDlDcCE2FaImoG9cMNS5Gs8yV/yquF9URa8gpgHLwndkLzRl2c7yryYlwPGixM
	wfF1Yo1kN2yd2XuyxKFWuzPbsg+BKWew2ABL421A1SuXd0H7vF/oHehQ9h6dz2vr6OStWIwkFfaEB
	vAoef9b/EamuO2lDRZR9pQeoIBWfOXG59JJqHcnwK1stWK0xGeWjoM0ZOaueqPLwf1S407ZbZnH+s
	WeWpIt1pbWLuwytXER5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacWo-00048P-7o; Mon, 18 May 2020 09:57:46 +0000
Received: from mail-eopbgr140042.outbound.protection.outlook.com
 ([40.107.14.42] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacWd-00047g-SE
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:57:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lVY9nS90+ipMp33vWCtYJWQOxk4I62roKlPQxOWOpk1yflGJo+7b8RJ0svq4vc6LhLFPQcnROiNPGlrEBJqbyGgUR9S2nnAAjEJOZfnmWwjOxq/5ysJVUAdmv+fNRvNopQE7LQitmlu3oX/luw97nssyYJF6Nj0fYvc2O6OFKwOkCAiMHwZmoT3leX9cnZUMRWCDYp+qIpSLlvzR2jI+a77UoCdeBgdruS9L5kffnJccHc6eKygd/Z4TEusdzmQPuJmFjwMjl224Zg9APlv8f6wQD1P1VhdB0j5bAFvY3DQGI3/tiBrXU31lAFz4LvvAH24I1snu+SGJtz9SqWdVxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7RGQbqCAO950wpxFmLsgDj7UGeEmPT/FZOgufmsiFJM=;
 b=KehAtH0VD+H68gy0e0GOkJ6uE/qRXT95F8kyBIhxqg1jY21RcXh+NSzFSM+hlCQFs+hbFfD1Gd4EBjrVcY8RRW98HzNDu5JeleFNyZ/YdUYUZqVTwUqvUfOAFBav2K/kxGY7exYDQceCAN4+aonQ9CpheLQlvJeAsVsv1++mAxk2se+F9/ugpKeHfvEglzYVBTLA7H2jWn0cAlvAYBxJZmbBhCZ2OZ/Lk60KwJwW8y7ggWPdbtaaegmA2eNvD3ofO81mYflHCETzxdcY1UIkeeEQf4lxTngHORrV6h1FXVFPyQm4rt1LaCpMLOV+oceLOTD1bPvaQwf502RD+EUKug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7RGQbqCAO950wpxFmLsgDj7UGeEmPT/FZOgufmsiFJM=;
 b=Yi+9pAZx/gJs+mwt3rMpJAuACUOpQUHWu/z4D2wYtDKuqW8TMXbYleVolIZtcY3RPtLcP1TOByXw3svt7alBnnL0+nSZbnnHQkuLkcdngOBJeRJL/hfBRSxaBoQEkIJiO+EZlUna5X/WjdN8loGCHW1ogbL1gyaVA822Dc5rrDg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3945.eurprd04.prod.outlook.com (2603:10a6:8:3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 09:57:32 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 09:57:32 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "p.zabel@pengutronix.de"
 <p.zabel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
Thread-Topic: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
Thread-Index: AQHWKAWfz/hL/av3lkeqLSh6w78ioaitl5SAgAADGFA=
Date: Mon, 18 May 2020 09:57:32 +0000
Message-ID: <DB3PR0402MB39161E59A62C9802E8794E33F5B80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589250194-29441-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB496643088C27DB303166ED0D80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496643088C27DB303166ED0D80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b7241fa5-54cd-448f-bcb3-08d7fb11e27d
x-ms-traffictypediagnostic: DB3PR0402MB3945:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3945883BD54561CDA9976BDAF5B80@DB3PR0402MB3945.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 56tSm1AMfdtXx0iJcHh3ZdedNCYwNIQRzZ6neABsSDdAitkbfBxbIroSJbh6gjhPr2ftldhSTDHI19fNAqBYJRwGAaAZcK2D4Nddocy6SRx50D1i+6D+/vLVi4duLjlhYEAyKUGwCRB2VahMAtfSmlfLHEQGjEJ1eCeqdBNUhc0uKGlbZs/7F9jckqtkV7JzOyeRdgnjHwpg4K8hriI+DEN1wRDZ7pTusBF4jRWTF6vNXNDEqKl+wKfP4cjfUHPQgCLB6paiAMqxKbmzPUgaenPuU9Bz5lKt7svYDGGegbeMDOkMMm0TLbsikVk5OoRXngxDyj1r2e2w00CoWxXS2lDIadUwXC6ZYzrx/ZP3ntl/uhUav9AKN92wpNe0nkqdBQjgBWgnhHJVDkoseUDuYvcgLkNT15Gx3SngH9BUokxMr8SK6ZRJzUChV4gKq8ZM60Opltf25Bn8lMjv55tAwyNWBeRXdt3GJZjPmhhPloE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(26005)(5660300002)(71200400001)(186003)(2906002)(7696005)(8936002)(55016002)(44832011)(66946007)(76116006)(66556008)(66476007)(33656002)(86362001)(52536014)(66446008)(110136005)(316002)(478600001)(4326008)(6506007)(9686003)(64756008)(8676002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: uQ1KgHUzRkQvNtORMwYiwg1Ajrm/pZ7Y5+WB/opl2OSVeIZ4HaAsLH12z1YVc+ROfm/REaZRpU80qmnENswSBCvoCfntBmHdXEzKtdU0bio+2drEdDpLbbEPavA3tA2FjSVKnRR4FU9p+lXxocOCbER4yWzjkQoPOPcOYztGlFdfrFDetZ0VX7WsOuohFGpJR68xg6VvsmVwzkT2kPMSOhBNfZ8HWUmtB8j88IQRVj0ld7i8H/yub931cyVKFF7Vreg8FPl9ZFrURZUPMrT7Ar3jJ0Ctwm+v7+b9PyJqo3aoucwkFHo5fL/BuWqZO+Wfkbj8xhmZxXP61SvZFtvoyKCuCSc+zaL+dEKxq7VLPr7EgIGL2/YYSiMMLlEt+1iJY2nCZqrZEMp8J+4qTZQD2CLsCYCFiLBDUC7agaABA6onsdK5ojw3WPID+t/Mp0RoMJKU4dINobci+HzW+cPFFv95l0gWviF07sbCe9/JgUnjVB0vD3jmWBtBz3tsC9eI
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7241fa5-54cd-448f-bcb3-08d7fb11e27d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 09:57:32.8192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fNbGxSkfACYU93QWTCyKijCe36wbxxLzPBV3aLY1wPsbAGBRdAa8Cl3FGnNKeVJhCZsr8ijRgQ/YURd2bu285Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_025735_912916_E62240DA 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



> Subject: RE: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Tuesday, May 12, 2020 10:23 AM
> >
> > Convert the i.MX reset binding to DT schema format using json-schema.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  .../devicetree/bindings/reset/fsl,imx-src.txt      | 49 ------------------
> >  .../devicetree/bindings/reset/fsl,imx-src.yaml     | 58
> > ++++++++++++++++++++++
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
> What about mx6?

Will add all i.MX6 compatible according to DT.

> 
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> 
> Need description here

OK.

> 
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  '#reset-cells':
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - '#reset-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    src@73fd0000 {
> 
> s/src/reset-controller

OK.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
