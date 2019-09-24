Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE01BC2A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:30:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZTvDNE0kEhGF2bsDsn5f38TVS2vdMDv9avIQ6KLFTE=; b=p9Hd53kAExJZWl
	TFx2zLsTWSGGmkPv/JF/V6e88zvBpoXd0OjfNq9yNYAeUQLA26xZD9pvtK/JRyHuM5RKVNCGbM1O4
	QkB2W4DhdPfSRAwvncXKt69DEpFElteUclvXRztQFhldb8f7cdhI0kqgo5LcZB19hIRj7cbFy6AVR
	OCT2qDv3vg7ILRu1G3KhZPL1dV/sl1CBLl8awvECVmWUPBGYb2v54XXlCdXXJ3PEEoRSLjrAYR8aC
	kTOSsbP8YbDk4Ji/l+RHHLte87dMEhDdep5jLj9cxCm+XrwTo1cOa8cHAQxvWO1ZtEuCyCZOV9o33
	sBt2/8+5KXZ1Zz9JDvlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfGx-0004jo-7F; Tue, 24 Sep 2019 07:30:07 +0000
Received: from mail-eopbgr60084.outbound.protection.outlook.com ([40.107.6.84]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfGh-0004g3-WE
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 07:29:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mH2lO+vRf9HLaBHGwQRBWne/DKcVRFD4p4fy/wBDOZRhy98nuUXvSCyMZsi47OyFZ+9LgN/sKQiGaTdIJkhN9yioBhCuj25rhJTMbE/ruwOKcmm+QFSvSu5H0eLf0kxdVGnbz5isdnQsnaxbwnqHEWLFBU1LGdNfMjnZEC0J5lQMDGWmxwaQc/0RhJB/9csaznZVCe0TIVY2+H5Ix08u8fZK2fCNHASqMEjbPXRn1CJtHN9LOO2GvTCm5mof5AL97piPR9uvjko/Whlh9nS0lBwYfv8GwauyVAAm03PFG1imRz+Yj8AA6SLhFf0By2WG2mhELpKIjFYRKW//vQCjqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s3b9upYoTaeUk9bsGSP+/UDu6EB3kCExUqD9fW7lnK4=;
 b=FMy9irviXLfNQBQMfUpaMRk9UwHK1NNtiYEGCmlaKV1z1lKe6oGT9z0S6d25LcOK74jrNafoiEtQvEPl9T4/vDA1W5KGLT6/cPzL6g2/7AEGKHL2hxwmKhvVGhcuqsH/KFNNXLqx8zXLVQrpDgrfxF2K0ufO0JijU325igvTYFbXsFdkq/A8m1vL4uHi9Tal0+dfCJTQz0mwy7j5it/gGz0ybKbUrJqoNOyon7j21aj+nD4o2y2mQ4aQuiv9H66o6oL/PtkLpZSmUZTymfyCIFNa60ckbPTSPFjJW8TbKNhecIgf72UH7Fam3OD7qGNBskrAIflGy8FN7NO/kk3cDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s3b9upYoTaeUk9bsGSP+/UDu6EB3kCExUqD9fW7lnK4=;
 b=N4f9rcB06BWE+q6T3XyLRAro8Qzsb5w24Dx0Rx0bWylJSSjtBFB6G3HAlawxCKuwl6k2afJawhY4Il6m8dJP0Mwe5jqrC01zFxhUb4YZeOXRZSIBmckO1523b6fVEPmsRlBE01pd90jZRHlyU2uG5BbdhKauD+A5SyOG5JLzul0=
Received: from VI1PR04MB6237.eurprd04.prod.outlook.com (20.179.24.74) by
 VI1PR04MB5584.eurprd04.prod.outlook.com (20.178.123.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 07:29:46 +0000
Received: from VI1PR04MB6237.eurprd04.prod.outlook.com
 ([fe80::c887:7d43:1e17:9485]) by VI1PR04MB6237.eurprd04.prod.outlook.com
 ([fe80::c887:7d43:1e17:9485%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:29:46 +0000
From: Laurentiu Palcu <laurentiu.palcu@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: Re: [PATCH 5/5] arm64: dts: imx8mq: add DCSS node
Thread-Topic: Re: [PATCH 5/5] arm64: dts: imx8mq: add DCSS node
Thread-Index: AQHVcqnXLHpdfPMJ/UmLEZxa2CZIFQ==
Date: Tue, 24 Sep 2019 07:29:46 +0000
Message-ID: <20190924072945.GB25260@fsr-ub1664-121>
References: <1569248002-2485-1-git-send-email-laurentiu.palcu@nxp.com>
 <1569248002-2485-6-git-send-email-laurentiu.palcu@nxp.com>
 <CAOMZO5AOVfBpz2Azh65iT_W3CBZUxf9KnqA=kdow7XWd4j--Qg@mail.gmail.com>
In-Reply-To: <CAOMZO5AOVfBpz2Azh65iT_W3CBZUxf9KnqA=kdow7XWd4j--Qg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.palcu@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18ff87f7-0649-42f5-5001-08d740c0f9c7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5584; 
x-ms-traffictypediagnostic: VI1PR04MB5584:|VI1PR04MB5584:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB55843BEFE0AAA0FE43120154FF840@VI1PR04MB5584.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(366004)(39860400002)(136003)(346002)(376002)(396003)(189003)(199004)(6486002)(7736002)(14454004)(316002)(186003)(102836004)(81166006)(6506007)(53546011)(6246003)(446003)(6916009)(76176011)(6512007)(229853002)(33716001)(4744005)(2906002)(26005)(25786009)(8676002)(44832011)(6436002)(81156014)(4326008)(3846002)(478600001)(256004)(305945005)(1076003)(71190400001)(9686003)(11346002)(86362001)(71200400001)(476003)(33656002)(5660300002)(6116002)(54906003)(66066001)(99286004)(76116006)(91956017)(66476007)(66946007)(66446008)(1411001)(486006)(64756008)(66556008)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5584;
 H:VI1PR04MB6237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WH6U6Wo+lynr4JlIn0L5LgmhS/vPxssRsb9jLr5zZv1Ry40NPPwAAJyhU3AZ0mc2wvdv4b8ZIdJrSrX7LVKCYJc8Gg19S5ZuSagmqW9UInum1MWUMmlnKYwqRp4dl52SYwQblRyU9GYHH9LM85NlbS+VTELJIgMl4JzdYQRVCYRVyQB9wfpuz5FLHiWHiEo5A0JyiTsipcdKgEqKNqMlPXKlDftCAtO/GlF32KS4lcRYqS2g6jsE/n2LENCJ2szrfzuG5vGJwnW3NzbDTXGCuwUrMG1EfSteVlIUMgGNe2EgIi0rGGbHGlkEF3E6DIas4+BQP8ybNgK+89lBPPfmyDbv9cAhdxDd7RSxv4b+Wmwtnw4/ySaUhq2YYQweBKhT+QXunfzuZ0dfOs+QkST85l67vP9i3zWnUlaigVvyaag=
Content-ID: <A2FB6DA96285D2448B3353184E71BB06@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18ff87f7-0649-42f5-5001-08d740c0f9c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:29:46.2952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rX5NSESuUOOKUk9WupBHLBwXTXJBK/1dKWQdX/Wjr57Lp9V6ovZR8A4lu5Cy93hN7gzXScSIfINAmq0XtDMczQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5584
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_002952_040390_4419D995 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.84 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 =?iso-8859-1?Q?Guido_G=FCnther?= <agx@sigxcpu.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On Mon, Sep 23, 2019 at 01:12:42PM -0300, Fabio Estevam wrote:
> Hi Laurentiu,
> 
> On Mon, Sep 23, 2019 at 11:14 AM Laurentiu Palcu
> <laurentiu.palcu@nxp.com> wrote:
> 
> > +
> > +                       dcss: dcss@0x32e00000 {
> 
> Node names should be generic, so:
> 
> dcss: display-controller@32e00000

fair enough, done.

> 
> > +                               #address-cells = <1>;
> > +                               #size-cells = <0>;
> > +                               compatible = "nxp,imx8mq-dcss";
> > +                               reg = <0x32e00000 0x2D000>, <0x32e2f000 0x1000>;
> 
> 0x2d000 for consistency.

will change this as well.

Thanks,
laurentiu


> 
> > +                               interrupts = <6>, <8>, <9>;
> 
> The interrupts are passed in the <GIC_SPI xxx IRQ_TYPE_LEVEL_HIGH> format.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
