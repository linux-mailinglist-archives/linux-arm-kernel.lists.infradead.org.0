Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3698DBC0CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 05:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKG2rL8GjsrCUeg+Q9dDFOcQLCEAbW9i5iBjmL/glxo=; b=FoY5arMTBb0pPS
	wgcTkG4k1OAcPeukQdXi+d/1bOO/81olu5Ruj5plHa/666tLwq8TL7hfNkXO9nQf9o9P629871Qpu
	LiAey11rnEGjPInQz2S6ReDzP5CQYVfnLgN81en0IMA77kA4QPpWKvoFxU78H6++ERHWEgj25m8Xl
	X2Hj+b6YWqf3mRHs6qqZPKrNJuMKIsGs0WS6UD6pOVcfL9x6lsWi4nLpElFB4YgUTj8i78lfZD2MH
	hTZ7OnBZzsrhm169Sv49FhokpO0tNSPVnwMzZA6+dI8Zj/nKjXASrxq+XEe9bq5CW485aUdFZOT7I
	PwUtvrsz2BPcfJY+Z/PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCbhX-0007QH-Js; Tue, 24 Sep 2019 03:41:19 +0000
Received: from mail-vi1eur04on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::614]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCbhO-0007Pv-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 03:41:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IqqwcTIJKt5/VXBlnfOAUX5DIh0huPbDEJ2iSBSQnLG09flD02IHL16vXOD3gibE6Ht80VeKyu9gxZWEyT2AI7NVpNTI/tpbnoSs/CqX5dV5tNpbNe11rIpChGm2e0tcd5THYO0vBeJWcaFFvIwdMr85KzlEurjP4L8d5QFY+lrRaG/+aE/NjAIXvwOI3TNSR80BLsju22ZTP24YLW58jq5wuU+QYG9K7D6zJ7qpGBuwOFd2NYLqDpLYNfWs0H6FD09qxqcjXIVPvRWlwWbtYRa+0lpY77Yeh2fjerqCIAYcyccNKjGkL67//1AR37dGD469V6eY34UX1WH/QDW8fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=252/gCK12tsBE8sBB7TGgtYFBce4YbAxAeF2MyfYb3Y=;
 b=eyvZ4Z0OqSz6jSkolYKEMl82v/9prrezas1o2Lao8BNFrk2IBJC38P91SBmz5ZOHekHXDR0o6shOw0iaXEn83+uk3DYefZZL2IAOKo9vyxW6x3k0VjsmUGT5efW7+5reNiX03QN8UHiMC81aRbUJY8smDT1b8XNdR3F1JX9G8+yDk+oJHATycBDLiOq6G6glJ1Dr9qAo8qHlevN+H1qS4csqErb/96HJg1fV+l6FwUH0TkVhq3aS5erqfoQE5YWuwwxfOmTiL3Sr4KMzxgNdC9luGmGw+v/Wc/LQ8WREnYXpg7UVn4tCZzjGRet1SuT95m4c+mZlJMsX8gQdc7CvSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=252/gCK12tsBE8sBB7TGgtYFBce4YbAxAeF2MyfYb3Y=;
 b=n0JFWJWYYgtuDxQ+bzJmc7KmOrFpH01bYN+Py4YYgWgVKeFZnKnVwO9xlLJh2tn5jFaON61amWdTrTXwDzA4qgElpguev5qGOfeGMwA4vBw42ObJSg/OoqwAyEnjp+iisrMdMoi5yCE8SjKyW8vq8glTrxqnX8LjaH1cco/Ocwk=
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com (20.179.255.161) by
 AM0PR04MB5473.eurprd04.prod.outlook.com (20.178.112.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Tue, 24 Sep 2019 03:41:05 +0000
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038]) by AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 03:41:05 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Russell King
 <rmk+kernel@armlinux.org.uk>
Subject: RE: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
Thread-Topic: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
Thread-Index: AQHVcTBTLQw+Flwg30aARc+RzydJIKc5yMSAgABn0oA=
Date: Tue, 24 Sep 2019 03:41:05 +0000
Message-ID: <AM0PR04MB66766AC0807A85B3E5428E028F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
References: <20190922102341.GO25745@shell.armlinux.org.uk>
 <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
 <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
In-Reply-To: <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcb60290-8d47-4aa3-d4e0-08d740a10763
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5473; 
x-ms-traffictypediagnostic: AM0PR04MB5473:|AM0PR04MB5473:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5473D1C7E8D571ECA025FDF98F840@AM0PR04MB5473.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(346002)(366004)(199004)(13464003)(189003)(6246003)(476003)(5660300002)(6116002)(7736002)(9686003)(6306002)(55016002)(71200400001)(305945005)(7416002)(6506007)(2906002)(3846002)(256004)(6436002)(86362001)(53546011)(102836004)(74316002)(7696005)(33656002)(66556008)(446003)(11346002)(71190400001)(966005)(66946007)(81166006)(186003)(8676002)(4326008)(54906003)(81156014)(229853002)(52536014)(76116006)(316002)(66476007)(486006)(478600001)(66446008)(8936002)(64756008)(66066001)(110136005)(76176011)(14454004)(25786009)(26005)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5473;
 H:AM0PR04MB6676.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: faoTRWCj5fvWyVTQzQnPbhs2Hom14dvMtRt7NoNNd3S8bgg4VVvVJsHgZBUyODf1mMpOd7eMGoB6fUWi7M1QBUHihhis6xpB9EwxPKHpGWxCcCKTyoxODxK7AGKUDc0yR4dyg7GNkatFJ/+IlAwE14gv/4ygddRarIVnOhE4n8mgf/1YXjV+l3GsTlTK6lNeH9Ibzl4DDYkOg1VL80BtuEo3U+plPy4GMW3ihS8f9uM7jaMyC6XlxX9n7IxGsqNeQ/O8XgVS/GR0QEDKlDHy5i3HTBIitMBzqMWo5eFAOn8tg68h+w7Q280uoPL6u9wbNrkZhEq+MKd8jX1SBMQr3gffpWTjvLPlAie/5HOtIIVWsUe82EpuQVUPG5UMLE4IfMGcfmwY6S4ERwSKbuz+rdKwBJTyj/DSUJbRyktKY9U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb60290-8d47-4aa3-d4e0-08d740a10763
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 03:41:05.3290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+s8eVNbI9wvu+cMqbIUrxv9QlZkvrVaWHzMSZ1UUqqvtHfspKPcBlq8edk0gJCDvBRaK8CJuJwkYmU2Cbx5Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5473
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_204110_948244_8AD70BC8 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:614 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 dann frazier <dann.frazier@canonical.com>, Will Deacon <will.deacon@arm.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "Y.b. Lu" <yangbo.lu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Monday, September 23, 2019 4:27 PM
> To: Russell King <rmk+kernel@armlinux.org.uk>
> Cc: Robin Murphy <robin.murphy@arm.com>; dann frazier
> <dann.frazier@canonical.com>; Will Deacon <will.deacon@arm.com>;
> Nicolin Chen <nicoleotsuka@gmail.com>; Y.b. Lu <yangbo.lu@nxp.com>;
> Christoph Hellwig <hch@lst.de>; Mark Rutland <mark.rutland@arm.com>;
> DTML <devicetree@vger.kernel.org>; Leo Li <leoyang.li@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Linux
> ARM <linux-arm-kernel@lists.infradead.org>
> Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
> coherent
> 
> On Sun, 22 Sep 2019 at 12:29, Russell King <rmk+kernel@armlinux.org.uk>
> wrote:
> >
> > The LX2160A esdhc controllers are setup by the driver to be DMA
> > coherent, but without marking them as such in DT, Linux thinks they
> > are not.  This can lead to random sporadic DMA errors, even to the
> > extent of preventing boot, such as:
> >
> > mmc0: ADMA error
> > mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> > mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> > mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> > mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> > mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> > mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> > mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
> > mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
> > mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> > mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> > mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> > mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> > mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> > mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> > mmc0: sdhci: Host ctl2: 0x00000000
> > mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> > mmc0: sdhci: ============================================
> > mmc0: error -5 whilst initialising SD card
> >
> > These are caused by the device's descriptor fetch hitting
> > speculatively loaded CPU cache lines that the CPU does not see through
> > the normal, non-cacheable DMA coherent mapping that it uses for
> > non-coherent devices.
> >
> > DT and the device must agree wrt whether the device is DMA coherent or
> > not.
> >
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> 
> As I am picking up patch1 and patch2 from this series, I can also help out and
> pick up this one, if that is okay by people?

There is some concern recently from linux-next maintainer about this causing potential conflicts.  https://lkml.org/lkml/2019/9/15/225

Regards,
Leo
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
