Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344C4BD6B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 05:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtH6hnl2BPO9jFQMW4mhSr5JoVnuMy8HhOeOAUqHzBk=; b=Tfhjml4OIYnBAW
	yEiMUKCLiO5uHxSSy2EGrhmycn7Qb3hX9mYYZm81Iag1wjbyvtSQYHvmmoyJKukZ/d4C1+srkSLJw
	oQ4nhc72aGIEv2vlyCRvSa08RIWjGDWtORSrNr0ZLjsIs7l6mkXJCh26dVJT9UnfBoSB692kfgeW8
	LvSdnEEFuERUFzQZOvhbpdO0vR/3++wvl23cgor9X7tA3OxWv1BQO8aL65ORPBqs8cwKSv574+4OX
	fOVja/bRyUmy5BbvO6FZ8VmTUyGE3blWNVk9DsjF7IxrpBM/C38rYTEk2i6DYA0jCrlZONDuXkKmP
	Eo6t4BUHlo2IHlkWgEFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCy0c-0003Qc-Gy; Wed, 25 Sep 2019 03:30:30 +0000
Received: from mail-eopbgr130054.outbound.protection.outlook.com
 ([40.107.13.54] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCy0O-0003QH-I1
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 03:30:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bZ86yfn+5qa7pJ/RBVfkGSEPeA15lfSQw/xW/PSiDYT0+3qh0HIFtr9QLjJjoFR1K02h+QkdJp5AYTpIPU5RHfIE8nh4U8Z6Qqu6wBf4kP1/Dd7XaX4T/j6nlk1QtnfvR08J+JCh/g9XvXGc0PyndUc/YpeqLZkw0A5KEjIMYZ0Vz8k72IrF/PB7TJHpMrp7m7AXcyvDQjFGpWjlMPTgEAwfCZ6zyxce/hWcKVMpKGPHG17/unHbFUUG2uyERwYl1fZmMOAkJjXTlgMiwcZ+0HwSuspf7Em0C4kVTmxuW5G4OF6UV6A2ugERuPEN9L8DRs65cOkdr29AOj/CCL3EKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnGcQDmeCtgFmkIlcEFzRwG/zbzs95WlNuDD3tNtmo4=;
 b=GIvj+zul34dTvQzANx6GmvpaFSToId/KKQeLVK3iOTgxVoil3aiV0wG0maRoN/lh38hplemBeWf2jqXcLnayN/N9WgLcyEskq5id8+Ed/WMyW9lWRAqbITSpg9GVDJcGdJm8SllILAxbpBpkxRaVpBcCJc+rsZ1LTvQseOYuzHk4LWvj2ejwXihzwcmrKwm2TM7t6IiXW1BSW9Gjq80iWqFzu6s4A4vJnCZ6uR5Us+iiAkgxVvEbBkjiLmUe4Z+E/9DEhTQR4U+3CtP/+bNiZhCHYbxraSsuyBaB6OYjnD5utV+86Wc7qYHMrp0SXWJr6ih4QcECaC0nTyhXBjtrXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnGcQDmeCtgFmkIlcEFzRwG/zbzs95WlNuDD3tNtmo4=;
 b=pSeFfacPf/iXRTq/BemJnfi4IH8eX1+pHasQZneHuMgjhA8Mrih6R2n6VGvniv4kdUb+QaGxCS+tGqnclsrF37zykOr+vGGiF8zCIVscv2UbZKRvWlnTKLigPCV/xEaLfUtFun5cZnTmIG3bq1UwuCVjafsLlX5UqL5qlRiFFk8=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4138.eurprd04.prod.outlook.com (52.134.108.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.22; Wed, 25 Sep 2019 03:30:12 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 03:30:12 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Ran Wang <ran.wang_1@nxp.com>
Subject: RE: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Topic: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Index: AQHVcoOnab7d5ysBNkWsXmY0PrfSuKc6/L+AgAC3JZCAAAkFAIAAANMg
Date: Wed, 25 Sep 2019 03:30:12 +0000
Message-ID: <DB7PR04MB4490FECDC76507AADC35948E8F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190924024548.4356-1-biwen.li@nxp.com>
 <20190924024548.4356-3-biwen.li@nxp.com>
 <AM0PR04MB667690EE76D327D0FC09F7818F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB449034C4BBAA89685A2130F78F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB66762594DDFC6E5B00BD103C8F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB66762594DDFC6E5B00BD103C8F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78874108-a8a2-4278-837f-08d74168ace2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4138; 
x-ms-traffictypediagnostic: DB7PR04MB4138:|DB7PR04MB4138:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4138F2D49457DFDA316F74968F870@DB7PR04MB4138.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(39860400002)(376002)(366004)(199004)(189003)(66446008)(2906002)(305945005)(476003)(74316002)(6116002)(4326008)(81166006)(8676002)(64756008)(3846002)(66066001)(66476007)(76116006)(14454004)(99286004)(81156014)(14444005)(6246003)(66556008)(66946007)(6636002)(86362001)(33656002)(256004)(7736002)(5660300002)(7696005)(55016002)(26005)(486006)(6436002)(229853002)(2501003)(102836004)(8936002)(446003)(54906003)(186003)(9686003)(52536014)(478600001)(44832011)(316002)(110136005)(6506007)(11346002)(25786009)(76176011)(71200400001)(71190400001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4138;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Imeb2s67+hrLJSOAeOCAajPt9gYM9nIIj5gO5y25R6Wwaym58w1y9InU4ik6vQvrBJJU3MH8z2IxjjRoWUoxjpCUezH5T+Y9P9np2duXmC+CRRf5fsjpPfIUmAG2fdwyOdGSi8ZbRJeYSGY2QZdnrDUZTv0QSDioQOkk6YyGoRWPhnEELUJED8STCN8Mk3hM5R+z7tiL9Ps+4FF0ytuEhr98eKLR0CzDl4m5D5zZnkKdGFZB1DiSws8wSa/xXrBJAvNVDXJP+bdeypE5G0vVArXOM77Xdz0Gqq457+WnvBrAfqC1z9HZmleNbhA2BE8P+chX+Iaf4Zc/B+Rqq+Vp51AvRUfIMoLieyJoRBwGZJnKWTr/GQiZCgNNbobEaCnUbJiBMbfqMTtXHZnyqydk7gkqKX1hF4vfev/hN6xPFKE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78874108-a8a2-4278-837f-08d74168ace2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 03:30:12.8095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MD1in9LD/8zv+UxBRy4b0yTClkW5uWGiC5d2Sq1IPWCVN3HzO48nsgO5lbyniVSvxfyB2SgcrSvNjuWfPqzXfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_203016_601660_11600BEF 
X-CRM114-Status: GOOD (  25.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.54 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > > >
> > > > The 'fsl,ippdexpcr-alt-addr' property is used to handle an errata
> > > > A-008646 on LS1021A
> > > >
> > > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > > ---
> > > > Change in v3:
> > > > 	- rename property name
> > > > 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> > > >
> > > > Change in v2:
> > > > 	- update desc of the property 'fsl,rcpm-scfg'
> > > >
> > > >  Documentation/devicetree/bindings/soc/fsl/rcpm.txt | 14
> > > > ++++++++++++++
> > > >  1 file changed, 14 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > index 5a33619d881d..157dcf6da17c 100644
> > > > --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > @@ -34,6 +34,11 @@ Chassis Version		Example Chips
> > > >  Optional properties:
> > > >   - little-endian : RCPM register block is Little Endian. Without it RCPM
> > > >     will be Big Endian (default case).
> > > > + - fsl,ippdexpcr-alt-addr : Must add the property for SoC
> > > > + LS1021A,
> > >
> > > You probably should mention this is related to a hardware issue on
> > > LS1021a and only needed on LS1021a.
> > Okay, got it, thanks, I will add this in v4.
> > >
> > > > +   Must include n + 1 entries (n = #fsl,rcpm-wakeup-cells, such as:
> > > > +   #fsl,rcpm-wakeup-cells equal to 2, then must include 2 + 1 entries).
> > >
> > > #fsl,rcpm-wakeup-cells is the number of IPPDEXPCR registers on an SoC.
> > > However you are defining an offset to scfg registers here.  Why
> > > these two are related?  The length here should actually be related
> > > to the #address-cells of the soc/.  But since this is only needed
> > > for LS1021, you can
> > just make it 3.
> > I need set the value of IPPDEXPCR resgiters from ftm_alarm0 device
> > node(fsl,rcpm-wakeup = <&rcpm 0x0 0x20000000>;
> > 0x0 is a value for IPPDEXPCR0, 0x20000000 is a value for IPPDEXPCR1).
> > But because of the hardware issue on LS1021A, I need store the value
> > of IPPDEXPCR registers to an alt address. So I defining an offset to
> > scfg registers, then RCPM driver get an abosolute address from offset,
> > RCPM driver write the value of IPPDEXPCR registers to these abosolute
> > addresses(backup the value of IPPDEXPCR registers).
> 
> I understand what you are trying to do.  The problem is that the new
> fsl,ippdexpcr-alt-addr property contains a phandle and an offset.  The size
> of it shouldn't be related to #fsl,rcpm-wakeup-cells.
You maybe like this: fsl,ippdexpcr-alt-addr = <&scfg 0x51c>;/* SCFG_SPARECR8 */
> 
> > >
> > > > +   The first entry must be a link to the SCFG device node.
> > > > +   The non-first entry must be offset of registers of SCFG.
> > > >
> > > >  Example:
> > > >  The RCPM node for T4240:
> > > > @@ -43,6 +48,15 @@ The RCPM node for T4240:
> > > >  		#fsl,rcpm-wakeup-cells = <2>;
> > > >  	};
> > > >
> > > > +The RCPM node for LS1021A:
> > > > +	rcpm: rcpm@1ee2140 {
> > > > +		compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-2.1+";
> > > > +		reg = <0x0 0x1ee2140 0x0 0x8>;
> > > > +		#fsl,rcpm-wakeup-cells = <2>;
> > > > +		fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>; /*
> > > > SCFG_SPARECR8 */
> > > > +	};
> > > > +
> > > > +
> > > >  * Freescale RCPM Wakeup Source Device Tree Bindings
> > > >  -------------------------------------------
> > > >  Required fsl,rcpm-wakeup property should be added to a device
> > > > node if the device
> > > > --
> > > > 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
