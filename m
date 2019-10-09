Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6B5D08A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOc/P5eWHJs0rBi2a9+7W5jUDSfLYK0xdx2eQmg85y8=; b=GAB+GaPDROrtJW
	EfS4UbWKmv3bcKzFmcOdeZwUGJe5qOoE24axn1S/cqWsgtDUEEUaRC9EEuAUDoyNyEASKVbMhxIuM
	qtVwaF3+qrLa4lM9g24WOyBStiHVMERoMtoCrOW68/Xdpce48fMqSHPbFcxJtf+CjGgYVFkQ+Uzy1
	E7Lo+9pLHpFhEtoIgCt/wj3bdzhzZIbn4dDCznQYkNKWjIfzaQ3/7rdPaDHratmQQ6vmCHFlEDnez
	N/MUXEOYw2vLOC3lA+v/Ah+IeEnUBhOBifQL2Ek45/e4gRDJ0vfUgjqg7klb8MjBgtyV8f6ItecmT
	uTr+wkBAKJsnMWqVzObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6dE-0001eD-3S; Wed, 09 Oct 2019 07:43:36 +0000
Received: from mail-eopbgr150073.outbound.protection.outlook.com
 ([40.107.15.73] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6d5-0001dT-7A
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:43:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aBITk9laVtxC1yKnZGd7p9nJCBFWX8i2CARu4Cj03s/MPrGzJyccMpr59XmP8B9fj7b4gVWLDjYvRSVBG8EaIKxSyt6bVxtPE03PmmtIVpyodOu1PeTGPe972YADfkns1qMMN14LTik+uWWWFIMrMX42U84MmV8vfJ+mYIzsSU7gyKW1Xerzd4oQQFvcrZppxfrLZ3gE/pgYAXXyhPaENS+21vd1xwmEI0GImf8l2Lzu5kDvtgn2+TIZbe5xKT0xQ5k+OTMUvrGA9ia7e+RV4MxDkizdbseyvlLDGnVcl7dXW90OMDdJZXgtp2YMjGKyEQd2eiWtZ7jCJHFJg+Qfeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JezFGT7SYnw9AouOO/SQOroJZ5TZ0/9VIIVeY8a11O0=;
 b=gKsIk9vxxftpOTZVSRe84sOxEOR9qjBEyRphciq4h9DnrqHiDM/Nsuz+udWHS7b1uTmTap0FoqtSI+BhduPv9vxdPHm8z/JQhYKwJAOOgIa+OEnnRQW59iPxO11QO8oFhTGM1PbnOKmfkP5dRWFCCyY+HDcTcSxQU69nTx6sBeSqxnx+6l5zNRM0jBoKRXf76pU2hEYJ+RviePQ3mpfVfkOr3HtChGLNvBjMxA9iM9yjG1T8q3oN7JS353Pjc2uz9Pt9xxPYbOx68mZw6Zx/DGLa9ZvAZlOSiC8N2Gpq9Yvj/dAuyvhCDbI10FQBrNo6mzhVRwGi5UAZ8fKrTCbBMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JezFGT7SYnw9AouOO/SQOroJZ5TZ0/9VIIVeY8a11O0=;
 b=AEIA7XYOLT/hKBKBd39zumDhdZEIXVDgIJ+ZjChYAgqgPwj3nzPKzi+yL+2g4CW8MPdvE26FgOi9i8KkN5ON/9KxmR7QRI9AD3g/cLBl1UGclFUFejTL6sIGDBtepMhQ0xmOnTEW5nw2NYnnmE6s5hpSmiz5Hm3IOX6aDoybBy8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3836.eurprd04.prod.outlook.com (52.134.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 07:43:24 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 07:43:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] tty: serial: imx: Only get second/third IRQ when there is
 more than one IRQ
Thread-Topic: [PATCH] tty: serial: imx: Only get second/third IRQ when there
 is more than one IRQ
Thread-Index: AQHVfmm1cibywjMA5UifVvn4HL9DWadR35+AgAAA6hCAAATlgIAAAf4ggAAEgICAAADzQA==
Date: Wed, 9 Oct 2019 07:43:24 +0000
Message-ID: <DB3PR0402MB391677227A688D5DD56A8417F5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1570601911-9162-1-git-send-email-Anson.Huang@nxp.com>
 <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
 <DB3PR0402MB39165F9CE876772F8F94F187F5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20191009071403.ugd2wuac6ue5zsd6@pengutronix.de>
 <DB3PR0402MB39161E02A9D042948B71FDCDF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20191009073717.qlr2svma5fiaf4ad@pengutronix.de>
In-Reply-To: <20191009073717.qlr2svma5fiaf4ad@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a99a174-9d4f-43f3-5116-08d74c8c5d6a
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3836:|DB3PR0402MB3836:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3836CE4599F507FE3DECBE8BF5950@DB3PR0402MB3836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(39860400002)(376002)(189003)(54094003)(199004)(55016002)(6246003)(305945005)(52536014)(6436002)(66066001)(7736002)(8936002)(74316002)(25786009)(8676002)(76116006)(66946007)(81156014)(4326008)(66446008)(64756008)(81166006)(66556008)(66476007)(6916009)(229853002)(86362001)(14454004)(3846002)(6116002)(256004)(7696005)(76176011)(26005)(2906002)(6506007)(102836004)(7416002)(11346002)(99286004)(446003)(9686003)(478600001)(33656002)(54906003)(486006)(44832011)(316002)(476003)(186003)(71190400001)(71200400001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3836;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: akzimXs4Lk2OKyGVcCP4Yssd4yMA6Iv5ZYqWAT5aghZI7pEqpx9tJskPEWgQTeRXjWtp5eP4ZlYIxwJLqYJ9Jy1zNjFufIA6YTD9PHjYTJP3x0UokF2RajqwEPcaQfPWs2yAi3tbP7golf1VROstTqSFl0wwKqyFSdJfzRZHN4SCxnugHU3Ce3ZzrWH3srlQ5Q12eehwIBNVbZHCP8hCeDm6vv94V5c7zsjDkRuiyggvvMVeaLz/p74INcAtDmpq1DauE40auwNSme2llpWpMl9tfV6WMaPpZsyRRwJaGZbMGkWYRYlsjiczGG9UuU78ZMpnWplSsN8A0BROV01wBeYL2IM1ypi2Ess5HgIFaZBdFmzINJubFY98MzPQvaqwJ4mV9ZOZn58sOox+E9LOzJlOonSst4JusxhBy+raiFo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a99a174-9d4f-43f3-5116-08d74c8c5d6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 07:43:24.1826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HnHE5edpr8D21Ycgeqh0eCPcrqjV58CtaGDS+lC/zsN/Bcm2oruKeU6vvHEhVAdMr2A4rlTJn7VcfZSlxdfwRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_004327_266095_1006D507 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.73 listed in list.dnswl.org]
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "Rafael J.
 Wysocki" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Uwe

> On Wed, Oct 09, 2019 at 07:24:57AM +0000, Anson Huang wrote:
> > > On Wed, Oct 09, 2019 at 06:58:24AM +0000, Anson Huang wrote:
> > > > > The patch is fine given the changed behaviour of
> > > > > platform_get_irq. I wonder if it is sensible to introduce a
> > > > > variant of platform_get_irq (say
> > > > > platform_get_irq_nowarn) that behaves like __platform_get_irq
> > > > > does t Then the imx driver would just call
> > > > > platform_get_irq_nowarn without having to check the number of
> available irqs first.
> > > >
> > > > Agreed, it would be nice if we can fix this from the API level,
> > > > this is to save many patches from various drivers side, let me
> > > > know if agreement is reached and I will do the patch.
> > >
> > > I wouldn't expect that most callers actually want an error message
> > > and so these need a different patch (i.e. dropping the error message by
> the caller).
> > > This type of patch is fine and the normal load when something is
> > > consolidated.
> > >
> > > Which other drivers do you have on your radar that don't want an
> > > error message if platform_get_irq() fails?
> >
> > I did NOT mean drivers don't want an error when getting irq failed,
> > but I just agree that introducing another API with nowarn as you
> > mentioned upper, then i.MX driver can call it. For now, the FEC driver
> > also have many such error message, we will fix later.
> >
> > So if the API with nowarn is added, then I can change the API call in
> > some i.MX driver instead of getting irq_count first. Do you think I
> > should add the nowarn API and redo this patch to call it?
> 
> Having a patch (or a set of patches) is probably helpful to get forward here,
> yes. You have my blessing to create a suggestion. (Not that you actually need
> that :-)

Thanks, OK, then I will leave this patch as it is for now, and leave others to decide whether
to add a patch of adding new API of nowarn. Some drivers need to be changed anyway to avoid
this error message, either getting irq count first or calling new API once it is added.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
