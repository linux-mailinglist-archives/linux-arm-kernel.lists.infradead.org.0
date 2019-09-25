Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5024ABD727
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 06:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1Yrne1xWkfUE0fOgDw/7jKuaWt5IfzJ4e6To3frwIo=; b=FiYRdrdIm4yIvS
	M2ocZ/JmAvN+puJzHVFnoc9dvGYn1UcUB8Ea1wjdbud0uwCBhUPZTratBi73s2EZefpYZUtBZBnym
	Le233PdV2lAmGYKIawZunDPm7YQy9xO8VKT2wpABJMhOlVIqJwHIlMuic5osSdniOG1dWzdKuzhCl
	th6Ss3Ec1rxNrQFlYgMk4J6loovIIh5HoP+M5dp86/G5fiioc1pD5Jj0BEJgJiVgNQaI/Nd7891y3
	Lm00LFqzeuFteqzoFnUDCh2Ukau/uurXcPLoErL8ZN9g/OCraKbwhc4/+CGmrb+qKVwRlB5ZM0PP4
	9cW86VOJr50fPPUVYjMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCynm-0003YB-OF; Wed, 25 Sep 2019 04:21:18 +0000
Received: from mail-eopbgr50050.outbound.protection.outlook.com ([40.107.5.50]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCynZ-0003U4-1B
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 04:21:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1t+EWkSuOQNyJu+gTesN+AA092Mj2qMuYFxEpTmYhzQ6FyqZQii0teQ5WKY9YU8YfdvRFRSPqCqwy6iUo3W9PK3arIxqAJvkcAWx51Q/Jqjq2OZrKQ61YKkmX5Q6eaKh0WQ6EjK9VK2hNIsEyUQ8D+0y9rhnF9xVoGppDuo2o6ABBEcqA22XWunG5bWb0IKzx8hiv10dLRPqJWbGZI9d9q2gaGXLw7sBFZXE96kkegwNnyK5JHU9d1gmjVS6qirqlCzXZ2lAJctQuteey/0574DcjnnTZMLXDuzcWdBhJIIJj29xfXEm9JdlwxrNXMhnB2gITEjr5jzzstHr2T0EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7bNViU+H4OT41P5xc4/eS9rZMyylBGXYUnt0p+fNMaM=;
 b=WFd77ANpSopNXs2nWWQu0AD2qvyN004VLbTgHgDLUNuSPt/tJLbXDoIr19VOh6G1rHOk3pHzqLFaitJkMf8FukCQNXKxwXuBA21LmZe2S8d5wz2YoANIWFA7XI/nG7Wr/cfDTGmy4anoVt9WEKhcxXq5ffl79gtaZYpo1r5ZC6QjhZqZZdzO1mYYDoVVwEngsoYrkomGgYunkSIXXaBNkvoj3fmK7lEeuyuwmIuF1//je2UEsVYaXAx3576XJkTmkijHKxnCaAXH6X+jHxvJBiVfnJfCZgKBiWGLI5XR6ykmXB6jLiFtt/TjZL6FvpatJ7hBpn3kydJKnSbzvHfs+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7bNViU+H4OT41P5xc4/eS9rZMyylBGXYUnt0p+fNMaM=;
 b=qmAZ0rtwE3EBZcabCJpiBIgv7XFcgUoKZRwu1vcfA5sKlwIDEYjvpvsr6VlBXC3/FUTT/VPsageMPIB3EicF+iWgKzr/crxOOhd0sE7do6vUhzmYUXHCfiEaA8UMVGZ/5oVQk3JeKZGofymxLFMi9C+WcZyTISkvwr0QRGzzB78=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4220.eurprd04.prod.outlook.com (52.135.131.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 04:21:01 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 04:21:00 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Ran Wang <ran.wang_1@nxp.com>
Subject: RE: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Topic: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Index: AQHVcoOnab7d5ysBNkWsXmY0PrfSuKc6/L+AgAC3JZCAAAkFAIAAANMggAABmICAAAIKMIAAAb8AgAACHkCAAAZAMA==
Date: Wed, 25 Sep 2019 04:21:00 +0000
Message-ID: <DB7PR04MB4490684FE0E95695E89173948F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190924024548.4356-1-biwen.li@nxp.com>
 <20190924024548.4356-3-biwen.li@nxp.com>
 <AM0PR04MB667690EE76D327D0FC09F7818F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB449034C4BBAA89685A2130F78F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB66762594DDFC6E5B00BD103C8F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB4490FECDC76507AADC35948E8F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB6676BD24B814C3D1D67CF9F88F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB4490EAE9591B5AE7112C9D188F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB6676B8A6F7C7C3BC822B45B28F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB44902BADDDFD090BAF4178C68F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB44902BADDDFD090BAF4178C68F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4dddadb6-cadb-4864-3d9c-08d7416fc5ae
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4220; 
x-ms-traffictypediagnostic: DB7PR04MB4220:|DB7PR04MB4220:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB422053D18B496356B9510E718F870@DB7PR04MB4220.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(189003)(199004)(74316002)(26005)(305945005)(52536014)(7736002)(33656002)(66476007)(229853002)(64756008)(3846002)(66446008)(2906002)(86362001)(76116006)(66946007)(14444005)(5660300002)(25786009)(478600001)(6116002)(256004)(110136005)(14454004)(66066001)(476003)(71190400001)(55016002)(11346002)(9686003)(71200400001)(4326008)(99286004)(486006)(54906003)(2940100002)(81156014)(44832011)(6506007)(2501003)(6246003)(316002)(186003)(102836004)(446003)(8676002)(7696005)(8936002)(66556008)(6636002)(6436002)(81166006)(76176011)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4220;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GC8hJbU44SOz2jrg8HjT4lOVgwasMQGrqN1cktwoQuRJLQ0lCkNzdNz10cvkGabzFIKbqLT/C7T2p9CPFNnuQrs1FSybz4UnN5RrcDfPho41gT/DrPmNCMnTsiTFZTyp5r7ddhTD7+Pwbmf5tbZu+LFcy/0rlfDb7OxzxDFnD/3lYK0xzPmjBHcBpAlk7+f2w1i8lyUmQ0xn2gSWPbQfET4w6/oIg0lQmr1/E06CIkeM4Aih73fLf6QrhO6RJDdFYr0UvrShMwJvfN4iC3wNDvWAizyC2cqY55O1FHKmBC+buKe+7/ozDT4Xe7uwnWwSXVkzD3MkdAunAkcdr7Z8Nk5Pnxc0jLItTbWaTN4OWkvRd8GLzxm9Bj4qlTqhrwmLSOryHe5scg/oXC+OZ0PtmYyCfwwQBKGJZ6VJ8oCIJvI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dddadb6-cadb-4864-3d9c-08d7416fc5ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 04:21:00.8411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a+1pcrM7oEO4ET9TkuPrI3cCiFdkMCe5PXaMfVtKn6Ae2vYbGrX4/C9zWkPrZWueFxBXb1YCQzufeV+CYH6rqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4220
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_212105_166195_33B35430 
X-CRM114-Status: GOOD (  29.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.50 listed in list.dnswl.org]
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

> > >
> > > > > > > > >
> > > > > > > > > The 'fsl,ippdexpcr-alt-addr' property is used to handle
> > > > > > > > > an errata
> > > > > > > > > A-008646 on LS1021A
> > > > > > > > >
> > > > > > > > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > > > > > > > ---
> > > > > > > > > Change in v3:
> > > > > > > > > 	- rename property name
> > > > > > > > > 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> > > > > > > > >
> > > > > > > > > Change in v2:
> > > > > > > > > 	- update desc of the property 'fsl,rcpm-scfg'
> > > > > > > > >
> > > > > > > > >  Documentation/devicetree/bindings/soc/fsl/rcpm.txt | 14
> > > > > > > > > ++++++++++++++
> > > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > > >
> > > > > > > > > diff --git
> > > > > > > > > a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > index 5a33619d881d..157dcf6da17c 100644
> > > > > > > > > --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > @@ -34,6 +34,11 @@ Chassis Version		Example
> > > Chips
> > > > > > > > >  Optional properties:
> > > > > > > > >   - little-endian : RCPM register block is Little Endian.
> > > > > > > > > Without it
> > > > RCPM
> > > > > > > > >     will be Big Endian (default case).
> > > > > > > > > + - fsl,ippdexpcr-alt-addr : Must add the property for
> > > > > > > > > + SoC LS1021A,
> > > > > > > >
> > > > > > > > You probably should mention this is related to a hardware
> > > > > > > > issue on LS1021a and only needed on LS1021a.
> > > > > > > Okay, got it, thanks, I will add this in v4.
> > > > > > > >
> > > > > > > > > +   Must include n + 1 entries (n =
> > > > > > > > > + #fsl,rcpm-wakeup-cells, such
> > as:
> > > > > > > > > +   #fsl,rcpm-wakeup-cells equal to 2, then must include
> > > > > > > > > + 2
> > > > > > > > > + +
> > > > > > > > > + 1
> > > > entries).
> > > > > > > >
> > > > > > > > #fsl,rcpm-wakeup-cells is the number of IPPDEXPCR
> > > > > > > > registers on an
> > > > SoC.
> > > > > > > > However you are defining an offset to scfg registers here.
> > > > > > > > Why these two are related?  The length here should
> > > > > > > > actually be related to the #address-cells of the soc/.
> > > > > > > > But since this is only needed for LS1021, you can
> > > > > > > just make it 3.
> > > > > > > I need set the value of IPPDEXPCR resgiters from ftm_alarm0
> > > > > > > device node(fsl,rcpm-wakeup = <&rcpm 0x0 0x20000000>;
> > > > > > > 0x0 is a value for IPPDEXPCR0, 0x20000000 is a value for
> > > > IPPDEXPCR1).
> > > > > > > But because of the hardware issue on LS1021A, I need store
> > > > > > > the value of IPPDEXPCR registers to an alt address. So I
> > > > > > > defining an offset to scfg registers, then RCPM driver get
> > > > > > > an abosolute address from offset, RCPM driver write the
> > > > > > > value of IPPDEXPCR registers to these abosolute
> > > > > > > addresses(backup the value of IPPDEXPCR
> > > > registers).
> > > > > >
> > > > > > I understand what you are trying to do.  The problem is that
> > > > > > the new fsl,ippdexpcr-alt-addr property contains a phandle and an
> offset.
> > > > > > The size of it shouldn't be related to #fsl,rcpm-wakeup-cells.
> > > > > You maybe like this: fsl,ippdexpcr-alt-addr = <&scfg 0x51c>;/*
> > > > > SCFG_SPARECR8 */
> > > >
> > > > No.  The #address-cell for the soc/ is 2, so the offset to scfg
> > > > should be 0x0 0x51c.  The total size should be 3, but it shouldn't
> > > > be coming from #fsl,rcpm-wakeup-cells like you mentioned in the
> binding.
> > > Oh, I got it. You want that fsl,ippdexpcr-alt-add is relative with
> > > #address-cells instead of #fsl,rcpm-wakeup-cells.
> >
> > Yes.
> I got an example from drivers/pci/controller/dwc/pci-layerscape.c
> and arch/arm/boot/dts/ls1021a.dtsi as follows:
> fsl,pcie-scfg = <&scfg 0>, 0 is an index
> 
> In my fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>, It means that 0x0 is an alt
> offset address for IPPDEXPCR0, 0x51c is an alt offset address For
> IPPDEXPCR1 instead of 0x0 and 0x51c compose to an alt address of
> SCFG_SPARECR8.
Maybe I need write it as:
fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x0 0x0 0x51c>;
first two 0x0 compose an alt offset address for IPPDEXPCR0,
last 0x0 and 0x51c compose an alt address for IPPDEXPCR1,

Best Regards,
Biwen Li 
> >
> > Regards,
> > Leo
> > > >
> > > > > >
> > > > > > > >
> > > > > > > > > +   The first entry must be a link to the SCFG device node.
> > > > > > > > > +   The non-first entry must be offset of registers of SCFG.
> > > > > > > > >
> > > > > > > > >  Example:
> > > > > > > > >  The RCPM node for T4240:
> > > > > > > > > @@ -43,6 +48,15 @@ The RCPM node for T4240:
> > > > > > > > >  		#fsl,rcpm-wakeup-cells = <2>;
> > > > > > > > >  	};
> > > > > > > > >
> > > > > > > > > +The RCPM node for LS1021A:
> > > > > > > > > +	rcpm: rcpm@1ee2140 {
> > > > > > > > > +		compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-
> > > > > 2.1+";
> > > > > > > > > +		reg = <0x0 0x1ee2140 0x0 0x8>;
> > > > > > > > > +		#fsl,rcpm-wakeup-cells = <2>;
> > > > > > > > > +		fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>; /*
> > > > > > > > > SCFG_SPARECR8 */
> > > > > > > > > +	};
> > > > > > > > > +
> > > > > > > > > +
> > > > > > > > >  * Freescale RCPM Wakeup Source Device Tree Bindings
> > > > > > > > >  -------------------------------------------
> > > > > > > > >  Required fsl,rcpm-wakeup property should be added to a
> > > > > > > > > device node if the device
> > > > > > > > > --
> > > > > > > > > 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
