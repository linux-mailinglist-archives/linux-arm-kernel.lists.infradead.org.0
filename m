Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08022B3C40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBH6F3AduoVzr/2bSrPC7ulW+JgrHiqpQlnKsb100sI=; b=YjXh0XItPrr+w6
	o8HU5r/BKkbSn1VEKPMQ+8zWGTbUdzdyqzJMYmPnpgqjO1ctpIreyixehG0vmIiKJAyqPLNJ1NIaQ
	9eJIx2Q7yOSvTtqsvBiBDTWvNkGTOS8UrufYABp2A8TNnnRHUay+AFAxUaIGF3EBRp3x9/ib71ASw
	lWswDPYoUa2rHqpChu9JqSPVrt3b9sPvbt2ltoGn2aidqOlroMvY4KlxW7Nxcp4FIXGbEtjXU53qm
	8VA6/+XK7aSWWxtOQsTzL/JM9gKrYbjYI6/gCaBwZIEUTkablzl1olhtDg5PQd8sloNd6PdHuOAJI
	cRyow+bl8dCHr/Paac8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9riR-0003dB-SY; Mon, 16 Sep 2019 14:10:55 +0000
Received: from mail-eopbgr00075.outbound.protection.outlook.com ([40.107.0.75]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rhy-0003c4-C2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:10:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/fcLENGe1JlqiMGMi31KLcV1OMpzuMOazB7m6SV9zxA8cQvPqTmvje6bPssUQbdvb9XCBNjcBcrM298OcBUPe+cjj0OinHQWvFAcOD+lc/BCVfthb0F64YvL7BRKN/1x6K+H68DtyTJbhPOz4h5I4BtbdWQzTO2Xay+qTlTy6xb78YdDHIlpn7YGtFUkmkC23Mdp3d7xYpWz+VpKRPs510IyLi1lKQFST1K5JNhI6u82VLqNH2un78b8QlIOk1/aTO02FAfmYT4whFNyk5rWoEpP4oRBwnxTMuGfXchS3SShE4PsR+hdyE2/+ZbG3xNOs+DXZjVM3zNzmwBFwzgKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tPaLUiU5KaIQ2OGfxf4Qa3upo8wq8ZBalvB4QOKJ9AA=;
 b=cfEp59TtQ8jw7r2d1AtrSrjuNJi3sCzPEvGJ8QcHLFzkU0Y1iqPSFM0D6Ktx2tglQlILXRjYGdQ5lOEvAJBgopgvOy0Vo2bEBT7Sp2BcWdKRZVeV3oubD8yBFArPI+X0CnLql++5UKmS4rOERD7z0vHr+mZ1LEusKtSvx2Kbfhr+cBVfkSwKCPRg+hT45A9RzHSLrWnkc5WduB+4tWHU3XNS9gf4dhJ5SP2FS3xRHb1r0WKlzHuM2wtncceTdwl2+mx13mHJ69eTfJnMCObS0jSzguu0tOdzZN+MA7XMitiGEchQX8e5aJXwd+WGcCmEe0p2JVZ6rQpMEBRcZSSqTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tPaLUiU5KaIQ2OGfxf4Qa3upo8wq8ZBalvB4QOKJ9AA=;
 b=kRQ0DFuTPLUkV7LziUuz3rHtEKhyiWhfOYt+tDbZUX+mtBWcb4LnbCZcxfBJUetY96S4s5ultbc3Y/PvfxjX8mBNJtr7Cr/WqN9Zt+ExX4us/4G1VAjkGATFv6drLcdDMeqGuBR6ICADudVDvDKGooGNoLRBEwLVnoaTx//UU3Y=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB3840.eurprd04.prod.outlook.com (52.134.16.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.20; Mon, 16 Sep 2019 14:10:18 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::f919:a62a:998c:6e9a]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::f919:a62a:998c:6e9a%6]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 14:10:18 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, Fabio Estevam
 <festevam@gmail.com>, Robin Gong <yibin.gong@nxp.com>
Subject: RE: [EXT] Re: [PATCH 0/4] Fix UART DMA freezes for iMX6
Thread-Topic: [EXT] Re: [PATCH 0/4] Fix UART DMA freezes for iMX6
Thread-Index: AQHVaZcvm/+EXlr62U2kolBBt3UOQqcuWX8AgAADtDA=
Date: Mon, 16 Sep 2019 14:10:18 +0000
Message-ID: <VI1PR0402MB3600FB067CC5FABCAB1EBBB6FF8C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <CAOMZO5BKiZGF=iR071DaWLp-_7wTVJKLbOn3ihwPeVVSNF6nCg@mail.gmail.com>
 <2613a28d-d363-ee4e-679a-e7442e6fde48@emlix.com>
In-Reply-To: <2613a28d-d363-ee4e-679a-e7442e6fde48@emlix.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42c872ee-2147-4e0b-b55a-08d73aaf9aaa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3840; 
x-ms-traffictypediagnostic: VI1PR0402MB3840:|VI1PR0402MB3840:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3840051182A97F84F5DCD029FF8C0@VI1PR0402MB3840.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(376002)(366004)(396003)(51914003)(199004)(189003)(305945005)(6116002)(256004)(8676002)(4326008)(76176011)(81166006)(8936002)(6246003)(81156014)(55016002)(316002)(6506007)(53546011)(11346002)(99286004)(9686003)(186003)(446003)(54906003)(6436002)(102836004)(33656002)(2906002)(229853002)(476003)(14454004)(26005)(3846002)(7696005)(53936002)(71200400001)(74316002)(66446008)(7736002)(7416002)(110136005)(6636002)(64756008)(86362001)(66556008)(66946007)(486006)(76116006)(478600001)(5660300002)(66066001)(71190400001)(25786009)(66476007)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3840;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q5t1OnkCRZvxKzr6sJzmHXxDXg/01X0t9oiUkpQCjBuZj1gPAbwGuDfyz70nOT+KudfOeDJ+Gq+sBRMaEp2Mnmy772gbO5D8vGRTVQ0L7O2XLKZhVL0bGkg/3pafurZrDEESslzPR/rTMcM59kND+t4W7YA+r4Lh+YJLivYaHQ0D4HteqbzOtCNooJUFgIclk1PxBMto0SK5vN3GR9ilCXNBAXcFCmmFuTFNHsKyrXoO9Us+gR2Ahv/Gn3XuZk+Z4R741vQdyylcm3Ty3eJkCEJuAKSbD/Gg9zNHcSsONAb6ACRgxnAWvERsjiwd1EBZnh772EZ+fxt5PlNzs6lt8+/RT5GR8sXERR1Nb/LiId7zGqqaDM8oQVErFzdXPrC6GP+SAr756PewvcHS1EKqzI+dVh1V4Ig1bI47xPq4ahg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42c872ee-2147-4e0b-b55a-08d73aaf9aaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 14:10:18.3162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MCXK2AputaCX9BUh4lM+rrOGZso3HOeHN1iEnJWh5QAliEqiNqSI1B4NgdPGXY9e2JftdF8SnAZ9zyECMbU68A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_071026_417721_AAB20E14 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philipp Puschmann <philipp.puschmann@emlix.com> Sent: Monday, September 16, 2019 9:55 PM
> Hi Fabio,
> 
> Am 12.09.19 um 20:23 schrieb Fabio Estevam:
> > Hi Philipp,
> >
> > Thanks for submitting these fixes.
> >
> > On Wed, Sep 11, 2019 at 11:50 AM Philipp Puschmann
> > <philipp.puschmann@emlix.com> wrote:
> >>
> >> For some years and since many kernel versions there are reports that
> >> RX UART DMA channel stops working at one point. So far the usual
> >> workaround was to disable RX DMA. This patches try to fix the underlying
> problem.
> >>
> >> When a running sdma script does not find any usable destination
> >> buffer to put its data into it just leads to stopping the channel
> >> being scheduled again. As solution we we manually retrigger the sdma
> >> script for this channel and by this dissolve the freeze.
> >>
> >> While this seems to work fine so far a further patch in this series
> >> increases the number of RX DMA periods for UART to reduce use cases
> >> running into such a situation.
> >>
> >> This patch series was tested with the current kernel and backported
> >> to kernel 4.15 with a special use case using a WL1837MOD via UART and
> >> provoking the hanging of UART RX DMA within seconds after starting a test
> application.
> >> It resulted in well known
> >>   "Bluetooth: hci0: command 0x0408 tx timeout"
> >> errors and complete stop of UART data reception. Our Bluetooth
> >> traffic consists of many independent small packets, mostly only a few
> >> bytes, causing high usage of periods.
> >>
> >>
> >> Philipp Puschmann (4):
> >>   dmaengine: imx-sdma: fix buffer ownership
> >>   dmaengine: imx-sdma: fix dma freezes
> >>   serial: imx: adapt rx buffer and dma periods
> >>   dmaengine: imx-sdma: drop redundant variable
> >
> > I have some suggestions:
> >
> > 1. Please split this in two series: one for dmaengine and other one
> > for serial
> >
> > 2. Please add Fixes tag when appropriate, so that the fixes can be
> > backported to stable kernels.
> >
> > 3. Please Cc Robin and Andy
> >
> > Thanks
> >
> 
> Thanks for the hints. I will apply them if the contentual feedback is positive.
> 
> p.s. Did you forget to add Andy? I don't see a Andy in the to- and cc-list.

For dma and uart, please to- me and yibin.gong@nxp.com, thanks.

Andy
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
