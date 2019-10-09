Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7673D07D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWoInADHOtK+RGcJy+ebIMQttPGJfBSOCx7G9wEiir4=; b=gBVWLGz/oj8wvb
	A8P2v0lOGwZKowKsyTDlrNXA54eHbrMdqLXqFg9cfDMfxMKmDgCgv4eSeahybno6ywl72GfR/gu54
	hGSOcEpBcG619VLGFfc99QPL9TNIlGsBvnMk28ByT6XPFWM5bv2lTXsziQrwUMcd9BLiI7FkxW42j
	jNPWZlhzLy+cdVynoy2TfgABl8lRBhodsnBlGX9z5jzyjoCKRXSLtjPq7luZf1bmDDjYouUT8zPmf
	aJB82+DdK/3oDNpsOYJFJo8tlGFKqkvgEaIFv9m9MMdtinI4Vc63b/yEyWzb1P5aMjEJvJHMmEk1t
	RUERSma+LIvo+jGkXseQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI64Z-0000Kx-Ey; Wed, 09 Oct 2019 07:07:47 +0000
Received: from mail-eopbgr70044.outbound.protection.outlook.com ([40.107.7.44]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI64O-0000Jm-Dr
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:07:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M0dX4yT4orrJTl64wj1ssS3uTjx2Vaa1I5f0Q/z/B4XR4IQWTBrcRIQckzScn3shLB817WlNz3fp2hW+hpLlQ08TD1auFrl3zlfzYJZFGe3NQEcFMGXXtDqJeIen+uuUnfkxXfUQXbYbp310+ToGmc6c7fKtrxXbBBvJPOTjVl0oBbPY4N3qooSoTkJKQrTMuBY8HncApnviQt56N97ZgCHOZK33EXO+1nNZ4uIrZL+osJ0Pd14FPor4/RKTccaAdzsLpHSzTxBP/jRMqLWBFm58b/BKzde6ro/veesfJOecye9aa5y2xhDZCVWplgE5UoZtTWeClNU1EuH0uEDYqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lo9ZzsD/FaizBaQirx94P85jK9kqal0x2gPoaVP+df8=;
 b=oFjrsbEPLXIyu8CjIpCyAJ1LuhpnvgyZeXTBZsm7z5zmb8bnNlOgxc1uITQs6iy/NFgxwxyXekye5KjGI2qNG5QcyQ+VQGmiYEtFWQ2x4pw5eRmPUow+xzwzb/n3052DtYdRJeYwAegl8cJ77e3MimRZZDuTCUx9QnpKLlBUH/cNMd3eMwrNkVkps6W3WyG7FjzKwUv7fe1PWXkI+BT66k2IiRHZoVQH+jv3LPBUrrRsaJrUmoKZXO9CGYgRi8WTe07KtUUzVuSbPN9MxB+msV3vOhifQO3SEgd1wBNscBsYngxDmYg5CLTih0PN5uRecPNsQmCsQ4jlwsEDD86soQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lo9ZzsD/FaizBaQirx94P85jK9kqal0x2gPoaVP+df8=;
 b=UQ+hXdxbkr1yPD/5NtOYCRxwQPQJf7bJ12ql0bLMCVJ7nYA+JD1X/b2AXVHooeNYKtgFFtOj9iNubx8JEtgYXyT7F0A6Dz2VikTW32fXZ4w/mFzwd9QGk69nZvy4rEYuG0v9yR6UvfefGjLznkPTCFKFsW824cdfuYf6lMe+lnQ=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4684.eurprd04.prod.outlook.com (52.135.137.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 07:07:31 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::7804:558a:eef9:cc11]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::7804:558a:eef9:cc11%7]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 07:07:31 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [EXT] Re: [v4,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr1-alt-addr' property
Thread-Topic: [EXT] Re: [v4,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr1-alt-addr' property
Thread-Index: AQHVdBVfjfPwF+3qiEeWnk+Mu250Hac/xdUAgBIws9A=
Date: Wed, 9 Oct 2019 07:07:31 +0000
Message-ID: <DB7PR04MB4490AAF196950B43FA11590A8F950@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190926024118.15931-1-biwen.li@nxp.com>
 <20190926024118.15931-3-biwen.li@nxp.com> <20190927171420.GA28375@bogus>
In-Reply-To: <20190927171420.GA28375@bogus>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 092bf8f0-2797-4071-747e-08d74c875a62
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB7PR04MB4684:|DB7PR04MB4684:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4684433CBC4CCA2AB7CD5C7D8F950@DB7PR04MB4684.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(366004)(396003)(39860400002)(136003)(376002)(346002)(199004)(189003)(6306002)(64756008)(66476007)(476003)(14454004)(6436002)(6116002)(66946007)(8676002)(66446008)(33656002)(6916009)(66556008)(76116006)(478600001)(66066001)(14444005)(256004)(9686003)(229853002)(3846002)(966005)(25786009)(55016002)(6246003)(71190400001)(74316002)(7736002)(5660300002)(71200400001)(44832011)(99286004)(446003)(316002)(4326008)(305945005)(11346002)(486006)(8936002)(52536014)(26005)(6506007)(54906003)(81166006)(81156014)(2906002)(186003)(76176011)(102836004)(86362001)(7696005)(142933001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4684;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vX+3lJkJqFNOl7bm3tXMx+rQmNNRxwfl0NyeChm9CIS29nLAbU1v4gVp/QLQ1dftyMqrJdCMIwa15Pkn1K7KWq89gUVTe0d7dQxSavHIm93eT4Rp/LDtTnT3OrJ9BKXvqNPNcwYmXjsCTuRB3pXRgFynVaO2CbHyNHwwXdtGRLqs0kcj01UEOE8Poba64Gqql8O/RVTJ02nbjST/Vq9h+v6rwLgW3tvVBDZkkWYdzlUa4Y49lnpEQ9iTJ6oUZcq3IS7d1RQO/oJDEhnaXbXSbxxBBCU+kK6zNYAAlQ0TmJqzPPkOhi1hlI8qhYQ5Bw/uW8r60u+FFuGnragRtNxsJJ798TzCuBuq74rKDxwrKZwZ1ZxtQuzH91Cu41y7aKf8F/ipz5sJ2n5A+49amA0v5q4Lee4tW3tclgp/5eN/rt2Ys/En+wjZ6/nQ05r6uyQ/3G7qKmB1cab1Cxv1YNm2Sw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092bf8f0-2797-4071-747e-08d74c875a62
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 07:07:31.5183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y7rcta2MxEfQa8BuyRLSJ4ELq8BvDY5IWNxxMMxbcUpDVTlpwos3Q86M9Eimn0ASXgZZWcKh10e5oBU3qDtW2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4684
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_000736_466449_CDC88F93 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Ran Wang <ran.wang_1@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> On Thu, Sep 26, 2019 at 10:41:18AM +0800, Biwen Li wrote:
> > The 'fsl,ippdexpcr1-alt-addr' property is used to handle an errata
> > A-008646 on LS1021A
> >
> > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > ---
> > Change in v4:
> >       - rename property name
> >         fsl,ippdexpcr-alt-addr -> fsl,ippdexpcr1-alt-addr
> >
> > Change in v3:
> >       - rename property name
> >         fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> >
> > Change in v2:
> >       - update desc of the property 'fsl,rcpm-scfg'
> >
> >  .../devicetree/bindings/soc/fsl/rcpm.txt      | 21
> +++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > index 5a33619d881d..751a7655b694 100644
> > --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > @@ -34,6 +34,13 @@ Chassis Version            Example Chips
> >  Optional properties:
> >   - little-endian : RCPM register block is Little Endian. Without it RCPM
> >     will be Big Endian (default case).
> > + - fsl,ippdexpcr1-alt-addr : The property is related to a hardware issue
> > +   on SoC LS1021A and only needed on SoC LS1021A.
> > +   Must include 1 + 2 entries.
> > +   The first entry must be a link to the SCFG device node.
> > +   The non-first entry must be offset of registers of SCFG.
> > +   The second and third entry compose an alt offset address
> > +   for IPPDEXPCR1(SCFG_SPARECR8)
> 
> If only on 1 SoC, can't all this be implied by "fsl,ls1021a-rcpm"?
Currently on SoC LS1021A. Maybe other soc need this!
> 
> Adding a property means you need both a new dtb and kernel to fix the
> errata. Using the compatible string means you only need a new kernel.
You are right, but it will be more flexible. Thanks.
> 
> >
> >  Example:
> >  The RCPM node for T4240:
> > @@ -43,6 +50,20 @@ The RCPM node for T4240:
> >               #fsl,rcpm-wakeup-cells = <2>;
> >       };
> >
> > +The RCPM node for LS1021A:
> > +     rcpm: rcpm@1ee2140 {
> > +             compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-2.1+";
> 
> Both of these compatible strings aren't documented.
These compatible strings is here: https://patchwork.kernel.org/patch/11105281/
> 
> > +             reg = <0x0 0x1ee2140 0x0 0x8>;
> > +             #fsl,rcpm-wakeup-cells = <2>;
> > +
> > +             /*
> > +              * The second and third entry compose an alt offset
> > +              * address for IPPDEXPCR1(SCFG_SPARECR8)
> > +              */
> > +             fsl,ippdexpcr1-alt-addr = <&scfg 0x0 0x51c>;
> > +     };
> > +
> > +
> >  * Freescale RCPM Wakeup Source Device Tree Bindings
> >  -------------------------------------------
> >  Required fsl,rcpm-wakeup property should be added to a device node if
> > the device
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
