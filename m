Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCC31355BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:25:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yA1t6RaB0EtNyVeKvJLZkm+r8Fk/0dpS3I6SYWcZvIE=; b=avKIqQIPk0IYaL
	jCSKLX2/+gvbcq1y8WW95bmwkAwHkCzcj5l+hqsQkuo0SIJRx+GWGEH5IAIRDnODdShd8BUfQq6dd
	fqbXFhvIzFZx9PcSjw+xAJk6WzEs9BUBlCEauKS5qS2UX9HP+Pdp5QMWomgdOhXxSfpTfWo2nUiK0
	Stv788WMNMVryyiEm74YAyA/scFlciw1WNguC3ghzc9NPRaXvn/ec+PVvjFeHpohiXLCiOtAxEGKj
	Q1vqOs3stelDG2tgyCVqdxkCLTzvFOG6r6rkHcHWz2FeumeHQ7yheSps+H8FaePimO/NlVPO+myt5
	ys1jFI6vxjAy8xQmHYkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipU4a-0000nk-Rx; Thu, 09 Jan 2020 09:25:48 +0000
Received: from mail-am6eur05on2083.outbound.protection.outlook.com
 ([40.107.22.83] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipU4Q-0000nJ-NB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:25:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QKIGx68XXkE661lsBnAs7cn2WtfQRh4FekUYGCf2dkE6SaJdrR4d9WwPci4sit8E1o+g0EBzGYwXEy4BISWGyQ/D90MK4A4VjTR8OKSPLuE/Ga9tHUpL+eyNEggLGAC96ELM37dQqfcdOtZY0+v8SsKJ/+l5LPuW4ek9W2VwuFrd8rWFnvbeYg1PcTjW7qRQU/GSg44ZPX3wvvT75620cIh7f+wa5PmUHuFghxnNKagJ+gE9MlAp1+kpzjBZD8AuWKCGbAhudw9RvRouyON8R1hncS1n75SkRCTx5eTJ/Gt4KN3IEhSZIe2rOCvSfiSxurxfB49sUn9/KrJUyfDbRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lP1dQy1tK04By4k75sn4vOQgOWyYUHyaTKyfOJ+izhc=;
 b=e54+C2XegXfz9p1gccV+/irW5DzPlIa7/NSWY/bUSgosfcXREXdK+u0983Slc9ZoJZkXizZ2ccUGS1QdGTp0Pfz+yawzB1CPUQljDUDZoPert9VIqqqPmIXHecb7d9FTjbrfPvouwl+R8BUPIbwxXNVo1GGXw1VUZXGbxX2wdgNdZm0FZSNRn/FJ8UDyKTUw2M2NlGe87RA0vxx7Kzrs1fn9Zb4Qp912DyPKseuczrJKGQZELTlsPFQIYnQfmTzsa6dfX0T8H+HbQZKg9C7Bsf/mFRIBDYT9Jj5ikOP6eqVL9PO2Ki8ONsA/7UGH6bB3iXz+ZFi/IvwTEyUT29Jjiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lP1dQy1tK04By4k75sn4vOQgOWyYUHyaTKyfOJ+izhc=;
 b=RQR4WCfGlHALHkkI7j68cjecZu+bhz4ZIw3g7gIE+qdUmcpaPNom08hztaKKNdbfZj6DDmvJLb04wmCR4WH/qehbi4GpS4IsplvCtiynpRnof4ZvAMN39nFXCYXWM/rGyGVehWtAGh2z1eF6ZnYmdkVLHbOqMqSo/rHOj8U0Aow=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3867.eurprd04.prod.outlook.com (52.134.65.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 09:25:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f%7]) with mapi id 15.20.2602.018; Thu, 9 Jan 2020
 09:25:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect power
 supply assignment
Thread-Topic: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect power
 supply assignment
Thread-Index: AQHVvrKzedU6q1PoEkWGPbnH76QqjKfiCd2AgAAE9sCAAAzggIAAA3ow
Date: Thu, 9 Jan 2020 09:25:35 +0000
Message-ID: <DB3PR0402MB3916EBF00EECB42C1F4E2D40F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1577670071-1322-1-git-send-email-Anson.Huang@nxp.com>
 <20200109080600.GH4456@T480>
 <DB3PR0402MB39168406714A06869C33D037F5390@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20200109090950.GJ4456@T480>
In-Reply-To: <20200109090950.GJ4456@T480>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 56e6c54b-4067-4f43-aae7-08d794e5e1e9
x-ms-traffictypediagnostic: DB3PR0402MB3867:|DB3PR0402MB3867:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3867EE4BA9FA78EF8D0DAB3CF5390@DB3PR0402MB3867.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(199004)(189003)(186003)(4326008)(33656002)(478600001)(86362001)(6506007)(44832011)(7696005)(7416002)(55016002)(66446008)(64756008)(66556008)(66476007)(9686003)(26005)(52536014)(8936002)(316002)(76116006)(71200400001)(66946007)(2906002)(54906003)(8676002)(5660300002)(81166006)(6916009)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3867;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0of+fkwt9/ROEqELIxMXU1D79rZ4aPxhAmnZMDvio9JGIhLw/6CHB/yqqSQGsCYNzhRyHuqyfX7upObzo/Qyn6oc7W5QkMQQAOdx59JsKkmzZPb7Rl5vE7UONvmXTS33mb6pdXenMjkZWqiP9fHDIZvLRfTwQUCOA/KwwGumIhWWB8o95MW88Hp+Lkzk3iobz6WYdmt9x2SsdfZlvExYIhBl5VTh/JNDiA0B/KXkjXgHrTcG/QEMRGqQ6aS4Z405d5UrfgBveJ3YsOpCV2EcO4ZkHC0N2sSeV/mzrdOmt5XzlfVxgs+9kxyYnarsdR3gaa4v/6+RKoZnV9EVw0JO2PEOWcBjo7xG/+DAXckiXuH3QGwHCZmQ7Av/bU6+gV/MP7r+e5coSQkkl2KFNu0l5ZI8mp5Aao0H4mSYumZbKQQyyhWdPIqm9yz5KZA73n2qupYWhJFpvteyHJbic3SYqI/ZI/lLevVEQztKIPCHsCej23r4PVV8syRL3Zmmzk75
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56e6c54b-4067-4f43-aae7-08d794e5e1e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 09:25:35.4123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yvTRT++MAe72ctPbGOEUyIQoOpPgkgawkB9rZUeMOmjmrHGpmPPC9/9BtithJ/ouNyz4xzg4CmGzVDo/yIqWbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_012539_665070_EE0DE686 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.83 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andreas@kemnade.info" <andreas@kemnade.info>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect
> power supply assignment
> 
> On Thu, Jan 09, 2020 at 08:25:03AM +0000, Anson Huang wrote:
> > Hi, Shawn
> >
> > > Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl-sabresd: Remove incorrect
> > > power supply assignment
> > >
> > > On Mon, Dec 30, 2019 at 09:41:07AM +0800, Anson Huang wrote:
> > > > The vdd3p0's input should be from external USB VBUS directly, NOT
> > >
> > > Shouldn't USB VBUS usually be 5V?  It doesn't seem to match 3.0V
> > > which is suggested by vdd3p0 name.
> > >
> > > > PMIC's sw2, so remove the power supply assignment for vdd3p0.
> > > >
> > > > Fixes: 93385546ba36 ("ARM: dts: imx6qdl-sabresd: Assign
> > > > corresponding power supply for LDOs")
> > >
> > > Is it only a description correcting or is it fixing a real problem?
> > > I'm trying to understand it is a 5.5-rc material or can be applied for 5.6.
> > >
> >
> > It is fixing a real problem about USB LDO voltage, that is why we noticed
> this issue.
> 
> Okay, please describe the problem a little bit in the commit log.  Also squash
> the series into one patch, which is easier to be merged into -rc as a fix.

OK, will send a new patch with squashing them together, but will NOT have the fix tag,
is it OK? As the fix tag are different for each patch.

> 
> My question above that USB VUBS is 5V which doesn't match 3.0V suggested
> by vdd3p0 name remains unaddressed though.

The vdd3p0 is a LDO, the input is the USB VBUS 5V, output can be programmed to
3.2V, I think the name is from the target output voltage.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
