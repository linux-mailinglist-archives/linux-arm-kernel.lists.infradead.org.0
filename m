Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F0D1AB7D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 08:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EmQ3Z64xz/A7PCSol2AiYOvBJc2eSP+PubmQzmiCD4=; b=T6h+WOq4NMKvF5
	8Yxny1jP6v8imRTIjyAh5rtW5ohR5/4nGTIx0SgthOeM1j4w0n+e/pz9GLWufFduco9gFJMcXjF1Y
	FMYG+U25Lba7H741yt26leGk3m4aiJOZVylFjofPZyhbxD5SsiU0N5Mw7MVvIITj4iTLT7o+oFjYz
	DMaVMj5R70Hc4i36FwSosyQ8Jc5mzqcjz0yfFftw7aTWijqCEXjujQHw8ByoUxvaQNKtDsPXgik1n
	0RSi7BaRzTnHD4r7M/2a1cyRNVbi+3dojNU2KUdqXldOG1JgPgrv6bB8Hr6KZdX8DlnN7nMFcGgDO
	Afp+wsyhvxsBk0FtavdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOxpF-0007rn-CH; Thu, 16 Apr 2020 06:16:37 +0000
Received: from mail-vi1eur05on2049.outbound.protection.outlook.com
 ([40.107.21.49] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOxp7-0007qV-G8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 06:16:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LWzGuDAPd7zlSSICVvF0+2sR0v77L4i8p6SwLKiAB1tmK3Sk03T2n/mLiICTH5yvXvHkC9Su1YVVosB4DbY+BDqgIdQH5JBXiuOaoLh4pXKZThdWQYoNmcAY+rm1MihtkI3y4WzhbbOCCbzXXwpEZPzFAIehCUYpCwFQt4JK3JwLh+/l0So41HM7iOGSpXEdjwNPxh7xfT2Lnta9IaD+40kqp2jg30UaaKh4c6d6EyTDVak1fo4Hf0f7DG1ETC0tHpFJEDsuvqkHlJVQNmiMHTvUEoL3r2oq0/Mxpz3hi+qHHh0TWnk/K1kdzdFm/TWLm5PDGvDqarDv4Y7bMo13AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9fjyfTPX276GIV6J5ZkAEiJKCdZuURyFXqVVKsKed3k=;
 b=V3hL9XMzISBVzF0CxNlDBdnYm+Dsje63dxBnLeBvO+BAmjcK0+DXytvcdsHmR/Rn73ljaeOjoK4rxM577qWdFqGN3OSVqq7Tt/WRaiJ7ngQM2SxrTssSPwEndz10D1Rq4n8ThvnqRPhY+o034rn0ug/oN2Wv8089k/11lIZlJU8/x5hGXOYMfsY3/L1pwlLSxyQuaMXu/mDYGuLYwVMQeaWEvQx7k6VBYEnE4dyne69r40e/H6Ltd67hTT1KH+yPQ16+v95DurwRVlFTvXRFkx6eNaBgurZLdFK6P1TE0tnSoobf8p64RhK0edtlRS0PIqQeY9O4TgodOEhxeAHqQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9fjyfTPX276GIV6J5ZkAEiJKCdZuURyFXqVVKsKed3k=;
 b=DCwOWYHROx30qFL0XbPodF+2pGoK2JrLwc9+7EgLpQrY3zQpZ1jzDG9PH1v+1xCs0Zd6b5r7KDmBWwJ2/Vmp/qGl2pZPsp5Xeh8JrvK0mRIadZfNZlB2Pu9+G0jlFTlyJuihSZeGJVTby1J0XAA/KVKKgtacyCMuaWWR6vHrnXk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3755.eurprd04.prod.outlook.com (2603:10a6:8:f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Thu, 16 Apr
 2020 06:16:23 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2900.028; Thu, 16 Apr 2020
 06:16:23 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Thread-Topic: [PATCH 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Thread-Index: AQHWE6hQuNBNfLUpxU+eFy69TbX/iqh7NrqAgAAOwFA=
Date: Thu, 16 Apr 2020 06:16:23 +0000
Message-ID: <DB3PR0402MB391654AB729CC8E27467E6C1F5D80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587011171-24532-1-git-send-email-Anson.Huang@nxp.com>
 <20200416052229.m6ur2coyfg6ef7vz@pengutronix.de>
In-Reply-To: <20200416052229.m6ur2coyfg6ef7vz@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9f9eed6e-d5b4-41f2-f091-08d7e1cdb005
x-ms-traffictypediagnostic: DB3PR0402MB3755:|DB3PR0402MB3755:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB37554AC1D21A81D0426E1695F5D80@DB3PR0402MB3755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0375972289
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(136003)(376002)(396003)(66556008)(66446008)(66476007)(66946007)(33656002)(71200400001)(9686003)(76116006)(4326008)(86362001)(44832011)(55016002)(186003)(8676002)(81156014)(54906003)(2906002)(45080400002)(5660300002)(6916009)(6506007)(478600001)(8936002)(53546011)(83080400001)(316002)(26005)(52536014)(7416002)(64756008)(7696005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L7RfxUid8/cGrNB1Qr1CeWULeviejqUttJTKj1ZWJ1v6q/ic1Qo2f2Utfz/MYoXrSYvOWJwgEEW4WXWDbxYD5su3bghi3P5MMqLjyu7YBHoHNzhUH9IpOsbSTVRgeW8jBsVs/5IPMfgGxgCxp7q0XG9O75i620NzTUbJSAqBUGm//OgJrexNW1Rnzd2Dcj5H8DOuHk0uK0QO73STgQYZUUNis9ekO/VQNqIrEqayXol0520RkeQxQBjbkMx7NikXRWI6BV6IdYC+xBx23SIyN8pkp4yIOJv7gzp+K0hkQZD6q1gp7+XeXxjExoNb6lXOjCO7g6Zzb9sc6ecU1dg/jTeeF4yKpr3UQoEp35DcLkc2zCeFf+1vmde7HfXcsmv3MARz5PbZYFCxe45X9EYarHZVea/n9IafTTLxk797D3JoRK8f0tNDwPe/yVClTMqCmApwaMWBOR0iMLW2aPQCaIOkimc+Wjss3Q8nzrXE0giy1eEqsTptJQdZve1MHSINlQXbPy6/5DNJacfpb0MXOg==
x-ms-exchange-antispam-messagedata: 7VHUPH0lV8QOX8qXqF0MZ6u9zmmGtyR5MaFT7Cs7DXJ29Kx0GTfG2T+tJznytZwDPle9TBSxQOFJaDpd/r9+kMkGjOhN2oaooF0KXJSIYgosaO0n2OLTEVT/hSaIJwv1VbRJoOxRhieVDeT3bLH/HQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f9eed6e-d5b4-41f2-f091-08d7e1cdb005
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2020 06:16:23.2939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4G2jotaQQxGzrbdOKRxxYvU8xwVGEJAwPmAulFiPt6mgyIQa5ku8KnIfAhzXQVfOAMmPHOkXlQcJVYrpO6XivA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_231629_624962_2A0668D4 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.49 listed in wl.mailspike.net]
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> Subject: Re: [PATCH 1/5] dt-bindings: clock: Convert i.MX6Q clock to
> json-schema
> 
> Hi Anson,
> 
> thanks for the patch. I have two questions please see inline which applies to all
> patches.
> 
> On 20-04-16 12:26, Anson Huang wrote:
> 
> ...
> 
> > diff --git a/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> > b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> > new file mode 100644
> > index 0000000..084d4f0
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> > @@ -0,0 +1,69 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Fclock%2Fimx6q-clock.yaml%23&amp;data=02%7C
> 01%7
> >
> +Canson.huang%40nxp.com%7Cf07db2c34e834628725208d7e1c63083%7C6
> 86ea1d3b
> >
> +c2b4c6fa92cd99c5c301635%7C0%7C0%7C637226113645218967&amp;sdat
> a=sBVaIF
> > +hEoFSfaot7P%2Bjcbu6gnAlaB%2BDeEUqn3sv3%2BA8%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cans
> on.hua
> >
> +ng%40nxp.com%7Cf07db2c34e834628725208d7e1c63083%7C686ea1d3bc2
> b4c6fa92
> >
> +cd99c5c301635%7C0%7C0%7C637226113645218967&amp;sdata=KLIuh1sJ
> 2OQDp%2B
> > +zSncLn87ziXGb85rwJFu2NnLgvxGI%3D&amp;reserved=0
> > +
> > +title: Clock bindings for Freescale i.MX6 Quad
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: fsl,imx6q-ccm
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    minItems: 1
> 
> Why 1 and not 2? The RM describes that the ccm has 2 interrupts.

This is a typo, since we all use 2 interrupts for ccm, I will change them to ONLY 2;

> 
> > +    maxItems: 2
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: 24m osc
> > +      - description: 32k osc
> > +      - description: ckih1 clock input
> > +      - description: anaclk1 clock input
> > +      - description: anaclk2 clock input
> > +
> > +  clock-names:
> > +    items:
> > +      - const: osc
> > +      - const: ckil
> > +      - const: ckih1
> > +      - const: anaclk1
> > +      - const: anaclk2
> > +
> > +  fsl,pmic-stby-poweroff:
> > +    $ref: /schemas/types.yaml#/definitions/flag
> > +    description: |
> > +      Use this property if the SoC should be powered off by external power
> > +      management IC (PMIC) triggered via PMIC_STBY_REQ signal.
> > +      Boards that are designed to initiate poweroff on PMIC_ON_REQ
> signal should
> > +      be using "syscon-poweroff" driver instead.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - '#clock-cells'
> > +
> > +examples:
> > +  # Clock Control Module node:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    clks: clock-controller@20c4000 {
> > +        compatible = "fsl,imx6q-ccm";
> > +        reg = <0x020c4000 0x4000>;
> > +        interrupts = <0 87 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <0 88 IRQ_TYPE_LEVEL_HIGH>;
> > +        #clock-cells = <1>;
> > +    };
> > +
> > +...
> 
> Why these '...' here?

I will remove it

Thanks,
Anson

> 
> Regards,
>   Marco
> 
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
