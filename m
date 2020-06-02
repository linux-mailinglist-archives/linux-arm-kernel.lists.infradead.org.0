Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7891EB6BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 09:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkTb3f/jGe0Y2Rh8GmYhdY3Ls2KIHsb0Jt279Ycrts8=; b=T0Go3cWVgPC/cs
	TCYZ2uFh543FzphQYO3pM+2A7rPZkus+Sxo+4P5dSUpXvYERhDAJBD/Ih7nlUhgZx/+LbFj6I4dPH
	qC4hR4i9negR9+jSYC0eT0CgRcdcMM05vF88BauH2R2t2lyHuQzxo8rYlGNRgbq8fFuzMxXtJXTiE
	a0rQ3AsVbvRaHBK5J+cZggxp8kBPTWS1j8lAzTmokA9HdZw+qJLSsH/pPS8ggpTaUii7NtO5Yl9hw
	ptB922gIleXTctVla1C4odjRQkAsFaBEWe3UoaSZlhgu+zqXvla5HIiigO69/gsyHiM1uCvl2snH7
	A9K3HhTC2cKOeLgTSGew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg1ea-0002nc-9s; Tue, 02 Jun 2020 07:48:08 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1eS-0002n8-4k
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 07:48:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aJBqGQdzbJ+aby3Y27NfN1Sw2QV3k3ylK6CKvlcJHIl6Y9kezwPDz09fZ8jZOM4AFSkIPRDgduPsbKEYMHCVkwwrLbIFmd3xTytnHwWU/kTb8qNJiwudDGnQQUayoT3ECeB4QsJLPi107mVu48Fy1/TTibC7rCXq/t+gXNowc3JA+ILDRn+kLc/N831gnWdthcRp0XdqfztkklJwFUSv4kW52Uze91yfIGyi/t+pXjbKARNhM77b6vSQyYev8ta0SyPSfH9CyU5Zqc3X0d54MknQ57b1M5QOHEVhYTgCLkzsXCOXtK5p/itmeQUjOSmsC9DslLdUKyABHF97848/Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QuoiHdTjpN7hxrxdLncJB82kcWTfUYaq9gwrIKlYD24=;
 b=WB97l81G2ZsoKdsfkreVdiXWZskdG6nH/ROS3YOPl7dJUGRmgwnDef91QBTlD6BQGBDorqdhBQ2Tr1+8WZ/DN5NdszXT6sfUxBkIbYcX4dVq3pbMiwk9jn/DHRKfg2gS64UnqmdJAZ9JX98cddc5Zsa4oany30SYYzNdWTxnMSK9n1OxgnCOzBm1BJ5Rb0hdC/Kdi6omYdjtx9Hkw6IDfY31i3Sz+asXELqE7UlZDKvWi8tG+E1Dp1rj1IZvtZs51x+eG5BEeOE8piuUYRS5oPJPVKmU0Z/eDiuM82zHdXqvQ3qxKCO0k5H+68SVBSrapD1Pls6zYjZ5W/n9MFUbXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QuoiHdTjpN7hxrxdLncJB82kcWTfUYaq9gwrIKlYD24=;
 b=gt2Llb1ZRpeKRwBV2DXeSP7Uv+Pu6DjkMPdY/j+SbWrn2p93EeAoRlrJyqjzexYqtdSeQ0oHCxqp7r/Txr/m41ScDwy4eMpM/hT18d4VQM/UDaOf7Ety6Q3SuU/sMFIyLDZT2N2/fRahy5UlVXPvMRm4knj+Af+XqGTXmMaRI8g=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2872.eurprd04.prod.outlook.com (2603:10a6:4:98::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Tue, 2 Jun
 2020 07:47:52 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Tue, 2 Jun 2020
 07:47:51 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT37doAjG8vSF0ywBJjXXTGn3qiGerCAgAAOdvCAADSbAIAAuXGAgAAPwICAPGmj8IAA668AgAAi6pCAAC0gAIAAAHwQ
Date: Tue, 2 Jun 2020 07:47:51 +0000
Message-ID: <DB6PR0402MB27607F1DD473BE02FC494E9C888B0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49665455AE49EB1B500BEB4080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276030B2D59423AF0FD3769388D30@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966169A7CB00C084FEA601980D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276083583D788E2685B78C3F88D00@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966A484AA8E480D7E479F9E80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276084207EDE5111E624938D888A0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966614B0277757E98BF24C9808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB6PR0402MB276061C15AC205604BDACC16888B0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <AM6PR04MB4966FC45AF02058F8297FF40808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966FC45AF02058F8297FF40808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a4cdd6ca-7a6d-48c7-07a2-08d806c940d5
x-ms-traffictypediagnostic: DB6PR0402MB2872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB28725621AA671014E590A934888B0@DB6PR0402MB2872.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LIvwE9a0z0SXbn5Wy1XL6SCT1qmul9lO0Brsb7OXDR8FIstOiNQpoVz1mPvmzoX0oOruqNn5Bp+s0roP0hS+NyLBigVBtkMYDQ7QTfouFJYvqKjMHOVi7GqvFLiPRbIWYw+38wX/O/MGP2IJhRHvglySAR8HJYdZXfEL8lch1bA5cKxsNzdffglR/fZRmeRlnC1vNrikaTAzPqYT8oUa20a6Q2eTc2O1gLCOetOGoC2GHLcunihyrtcLZvcAhyKODTV7W3SiIZ4GISyF1kAXaY7/9B/2o9dj7kzSwEdFZq4fQFhzrcy+zxnTcHE/nOje
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(66946007)(4326008)(186003)(33656002)(54906003)(66556008)(66446008)(64756008)(66476007)(5660300002)(2906002)(71200400001)(55016002)(8936002)(7696005)(9686003)(30864003)(316002)(44832011)(110136005)(478600001)(26005)(8676002)(6506007)(76116006)(52536014)(83380400001)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: DG56Dphz9cHPvp8xcsBAzvmthArJKY0PCzz0YR2WaB4eo7e/0gXSzyU5ayjOqHC91lvZWHXMCATAAAjG9Msa2mHp0kY/0iQjzUH47uaFRTgZS+cvDvENl20gSdrK6rc9xK2rDWdYFWAKyvHaKhLkz8jdDiTO3KSKpUvGDh6TWDrHTjY3JMmx6P7TEiV6rYjcVy55phFNJzSznc96GCHFPvD1iX8FjuxrtwMIIjI/Z7Nqzc6Sz4neMReLyUprfqt4PaNz3zQutoX5PzLPXovIM3/9p/NAojlcjom4Szkjq3aPhKd5Io63JrU0utLWcjmqVzY10y2fZF9PzIahb8LfuRxHgwCNcmI2DFgckPPSO2TrbBOvKDZ3lYggHbDuDPubGQFF17V2XRmkIYTzEUnNHweAWqMVC6KC8PKFM1dY3husRR1jsjgwML+hj9yE0b5Ue2kuf7kbh+0yn7Pibp2d7hfe3ay47rkoGvJ3ZpPD8pB5bi36I/Lq++0tabpF1SZy
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4cdd6ca-7a6d-48c7-07a2-08d806c940d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 07:47:51.7441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MARX06rEbzHQ5jCrsbxTixhe4c+GNWQdmdRakk1qLzDuK/Uoy5ZGcvHQ1xs5IRu6YvDbF3vv2jtbSMfhLIjeUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_004800_359346_E3ABA88E 
X-CRM114-Status: GOOD (  27.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Tuesday, June 2, 2020 12:51 PM
> > >
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > > Sent: Monday, June 1, 2020 8:40 PM
> > > > >
> > > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > > Sent: Friday, April 24, 2020 9:12 AM
> > > > > > >
> > > > > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > > > > Sent: Thursday, April 23, 2020 6:57 PM
> > > > > > > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > > > > > > > Sent: Thursday, April 23, 2020 3:00 PM
> > > > > > > > > >
> > > > > > > > > > Add resource management API, when we have multiple
> > > > > > > > > > partition running together, resources not owned to
> > > > > > > > > > current partition should not be
> > > > > > > used.
> > > > > > > > > >
> > > > > > > > > > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > > > > > > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > > > > > >
> > > > > > > > > Right now I'm still not quite understand if we really need this.
> > > > > > > > > As current resource is bound to power domains, if it's
> > > > > > > > > not owned by one specific SW execution environment,
> > > > > > > > > power on will also
> > > > fail.
> > > > > > > > > Can you clarify if any exceptions?
> > > > > > > >
> > > > > > > > There will be lots of failures when boot Linux domu if no check.
> > > > > > > >
> > > > > > >
> > > > > > > What kind of features did you mean?
> > > > > > > Could you clarify a bit more? I'd like to understand this issue
> better.
> > > > > >
> > > > > > When supporting hypervisor with dual Linux running, 1st Linux
> > > > > > and the 2nd Linux will have their own dedicated resources.
> > > > > >
> > > > > > If no resource check, that means 1st/2nd Linux will register
> > > > > > all the resources, then both will see fail logs when register
> > > > > > resources not owned to
> > > > > itself.
> > > > > >
> > > > > > Same to partitioned m4 case.
> > > > > >
> > > > > > Would it be better without the failure log?
> > > > > >
> > > > >
> > > > > Is it power up failure?
> > > > > If yes, it's expected because we actually use power up to check
> > > > > if resources are owned by this partition. It functions the same
> > > > > as calling resource check API.
> > > > > That's current design.
> > > > >
> > > > > Or it's other failures? Log?
> > > > Sorry for long late reply.
> > > >
> > > > Part of my XEN DomU log, there are lots of failure log. I think
> > > > better not have such logs by add a resource own check.
> > >
> > > Those error logs are intended.
> > > Resource owner check actually behaves the same as power up.
> >
> > If resource is not owned, it will not register the power domain.
> >
> > Without resource own check, it will continue register the power domain
> > and hook it into genpd list.
> >
> 
> That's the intended behavior to save the resource owner checking as it's very
> time cost to send SCU cmd for each domain during booting which benefits
> nothing except not exposing them in genpd list.
> 
> > I prefer we not expose the power domain not owned to current partition
> > and keep the err msg for people to easy see where it goes wrong.
> 
> If we really want to to do, I wonder probably another better approach is
> trying to re-use the partition Information built by bootloader as uboot already
> did that one time, not necessary to re-do It again for kernel as it's time cost.
> e.g. introduce a resource partition property in dt and initialized and passed by
> bootloarder to kernel to use later.

This will not work for hypervisor based VM runtime partition create and resource
assignment.

> Then we can still save those huge number of resource owner check CMDs.

So we have to live with them even I only need one SDHC for a VM? With
so many clk-scu entries and power domain entries there.

Thanks,
Peng.

> 
> Regards
> Aisheng
> 
> >
> > Regards,
> > Peng.
> > > So not quite necessary to add a double check.
> > > If we're concerning about the error log, we can change it to dev_dbg().
> > >
> > > BTW, as resource management will be needed by seco drivers later, So
> > > I will continue to review the patch.
> > >
> > > Regards
> > > Aisheng
> > >
> > > >
> > > > [    2.034774] imx6q-pcie 5f000000.pcie:    IO
> 0x6ff80000..0x6ff8ffff
> > ->
> > > > 0x00000000
> > > > [    2.034801] imx6q-pcie 5f000000.pcie:   MEM
> > 0x60000000..0x6fefffff
> > > ->
> > > > 0x60000000
> > > > [    2.035072]  sdhc1: failed to power up resource 249 ret -13
> > > > [    2.035619]  sdhc2: failed to power up resource 250 ret -13
> > > > [    2.036126]  enet0: failed to power up resource 251 ret -13
> > > > [    2.036584]  enet1: failed to power up resource 252 ret -13
> > > > [    2.037040]  mlb0: failed to power up resource 253 ret -13
> > > > [    2.037495]  nand: failed to power up resource 265 ret -13
> > > > [    2.037951]  nand: failed to power up resource 265 ret -13
> > > > [    2.038416]  pwm0: failed to power up resource 191 ret -13
> > > > [    2.038868]  pwm1: failed to power up resource 192 ret -13
> > > > [    2.039320]  pwm2: failed to power up resource 193 ret -13
> > > > [    2.039786]  pwm3: failed to power up resource 194 ret -13
> > > > [    2.040239]  pwm4: failed to power up resource 195 ret -13
> > > > [    2.040692]  pwm5: failed to power up resource 196 ret -13
> > > > [    2.041142]  pwm6: failed to power up resource 197 ret -13
> > > > [    2.041596]  pwm7: failed to power up resource 198 ret -13
> > > > [    2.042073]  amix: failed to power up resource 458 ret -13
> > > > [    2.042558]  lpspi0: failed to power up resource 53 ret -13
> > > > [    2.043033]  lpspi1: failed to power up resource 54 ret -13
> > > > [    2.043501]  lpspi2: failed to power up resource 55 ret -13
> > > > [    2.043992]  lpspi3: failed to power up resource 56 ret -13
> > > > [    2.044460]  lpuart0: failed to power up resource 57 ret -13
> > > > [    2.044935]  lpuart2: failed to power up resource 59 ret -13
> > > > [    2.045409]  lpuart3: failed to power up resource 60 ret -13
> > > > [    2.055014]  sim0: failed to power up resource 62 ret -13
> > > > [    2.055510]  adc0: failed to power up resource 101 ret -13
> > > > [    2.056467]  lpi2c0: failed to power up resource 96 ret -13
> > > > [    2.056946]  lpi2c1: failed to power up resource 97 ret -13
> > > > [    2.057424]  lpi2c2: failed to power up resource 98 ret -13
> > > > [    2.057898]  lpi2c3: failed to power up resource 99 ret -13
> > > > [    2.058371]  can0: failed to power up resource 105 ret -13
> > > > [    2.059289]  can1: failed to power up resource 106 ret -13
> > > > [    2.059801]  can2: failed to power up resource 107 ret -13
> > > > [    2.060281]  nand: failed to power up resource 265 ret -13
> > > > [    2.062764] dpu-core 56180000.dpu: driver probed
> > > >
> > > > Thanks,
> > > > Peng.
> > > >
> > > > >
> > > > > Regards
> > > > > Aisheng
> > > > >
> > > > > > Thanks,
> > > > > > Peng.
> > > > > >
> > > > > >
> > > > > > >
> > > > > > > Regards
> > > > > > > Aisheng
> > > > > > >
> > > > > > > > Thanks,
> > > > > > > > Peng.
> > > > > > > >
> > > > > > > > >
> > > > > > > > > Regards
> > > > > > > > > Aisheng
> > > > > > > > >
> > > > > > > > > > ---
> > > > > > > > > >  drivers/firmware/imx/Makefile       |  2 +-
> > > > > > > > > >  drivers/firmware/imx/rm.c           | 40
> > > > > > > +++++++++++++++++++++
> > > > > > > > > >  include/linux/firmware/imx/sci.h    |  1 +
> > > > > > > > > >  include/linux/firmware/imx/svc/rm.h | 69
> > > > > > > > > > +++++++++++++++++++++++++++++++++++++
> > > > > > > > > >  4 files changed, 111 insertions(+), 1 deletion(-)
> > > > > > > > > > create mode
> > > > > > > > > > 100644 drivers/firmware/imx/rm.c  create mode 100644
> > > > > > > > > > include/linux/firmware/imx/svc/rm.h
> > > > > > > > > >
> > > > > > > > > > diff --git a/drivers/firmware/imx/Makefile
> > > > > > > > > > b/drivers/firmware/imx/Makefile index
> > > > > > > > > > 08bc9ddfbdfb..17ea3613e142
> > > > > > > > > > 100644
> > > > > > > > > > --- a/drivers/firmware/imx/Makefile
> > > > > > > > > > +++ b/drivers/firmware/imx/Makefile
> > > > > > > > > > @@ -1,4 +1,4 @@
> > > > > > > > > >  # SPDX-License-Identifier: GPL-2.0
> > > > > > > > > >  obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
> > > > > > > > > > -obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o
> > imx-scu-irq.o
> > > > > > > > > > +obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o
> > > imx-scu-irq.o
> > > > > rm.o
> > > > > > > > > >  obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
> > > > > > > > > > diff --git a/drivers/firmware/imx/rm.c
> > > > > > > > > > b/drivers/firmware/imx/rm.c new file mode 100644 index
> > > > > > > > > > 000000000000..7b0334de5486
> > > > > > > > > > --- /dev/null
> > > > > > > > > > +++ b/drivers/firmware/imx/rm.c
> > > > > > > > > > @@ -0,0 +1,40 @@
> > > > > > > > > > +// SPDX-License-Identifier: GPL-2.0+
> > > > > > > > > > +/*
> > > > > > > > > > + * Copyright 2020 NXP
> > > > > > > > > > + *
> > > > > > > > > > + * File containing client-side RPC functions for the RM
> service.
> > > > > > > > > > +These
> > > > > > > > > > + * function are ported to clients that communicate to the SC.
> > > > > > > > > > + */
> > > > > > > > > > +
> > > > > > > > > > +#include <linux/firmware/imx/svc/rm.h>
> > > > > > > > > > +
> > > > > > > > > > +struct imx_sc_msg_rm_rsrc_owned {
> > > > > > > > > > +	struct imx_sc_rpc_msg hdr;
> > > > > > > > > > +	u16 resource;
> > > > > > > > > > +} __packed __aligned(4);
> > > > > > > > > > +
> > > > > > > > > > +/*
> > > > > > > > > > + * This function check @resource is owned by current
> > > > > > > > > > +partition or not
> > > > > > > > > > + *
> > > > > > > > > > + * @param[in]     ipc         IPC handle
> > > > > > > > > > + * @param[in]     resource    resource the control is
> > > > > associated
> > > > > > > with
> > > > > > > > > > + *
> > > > > > > > > > + * @return Returns 0 for success and < 0 for errors.
> > > > > > > > > > + */
> > > > > > > > > > +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc
> > > > > > > > > > +*ipc,
> > > > > > > > > > +u16
> > > > > > > > > > +resource) {
> > > > > > > > > > +	struct imx_sc_msg_rm_rsrc_owned msg;
> > > > > > > > > > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > > > > > > > > +
> > > > > > > > > > +	hdr->ver = IMX_SC_RPC_VERSION;
> > > > > > > > > > +	hdr->svc = IMX_SC_RPC_SVC_RM;
> > > > > > > > > > +	hdr->func = IMX_SC_RM_FUNC_IS_RESOURCE_OWNED;
> > > > > > > > > > +	hdr->size = 2;
> > > > > > > > > > +
> > > > > > > > > > +	msg.resource = resource;
> > > > > > > > > > +
> > > > > > > > > > +	imx_scu_call_rpc(ipc, &msg, true);
> > > > > > > > > > +
> > > > > > > > > > +	return hdr->func;
> > > > > > > > > > +}
> > > > > > > > > > +EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
> > > > > > > > > > diff --git a/include/linux/firmware/imx/sci.h
> > > > > > > > > > b/include/linux/firmware/imx/sci.h
> > > > > > > > > > index 17ba4e405129..b5c5a56f29be 100644
> > > > > > > > > > --- a/include/linux/firmware/imx/sci.h
> > > > > > > > > > +++ b/include/linux/firmware/imx/sci.h
> > > > > > > > > > @@ -15,6 +15,7 @@
> > > > > > > > > >
> > > > > > > > > >  #include <linux/firmware/imx/svc/misc.h>  #include
> > > > > > > > > > <linux/firmware/imx/svc/pm.h>
> > > > > > > > > > +#include <linux/firmware/imx/svc/rm.h>
> > > > > > > > > >
> > > > > > > > > >  int imx_scu_enable_general_irq_channel(struct device
> > > > > > > > > > *dev); int imx_scu_irq_register_notifier(struct
> > > > > > > > > > notifier_block *nb); diff --git
> > > > > > > > > > a/include/linux/firmware/imx/svc/rm.h
> > > > > > > > > > b/include/linux/firmware/imx/svc/rm.h
> > > > > > > > > > new file mode 100644
> > > > > > > > > > index 000000000000..fc6ea62d9d0e
> > > > > > > > > > --- /dev/null
> > > > > > > > > > +++ b/include/linux/firmware/imx/svc/rm.h
> > > > > > > > > > @@ -0,0 +1,69 @@
> > > > > > > > > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > > > > > > > > +/*
> > > > > > > > > > + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> > > > > > > > > > + * Copyright 2017-2019 NXP
> > > > > > > > > > + *
> > > > > > > > > > + * Header file containing the public API for the
> > > > > > > > > > +System Controller
> > > > > > > > > > +(SC)
> > > > > > > > > > + * Power Management (PM) function. This includes
> > > > > > > > > > +functions for power state
> > > > > > > > > > + * control, clock control, reset control, and wake-up
> > > > > > > > > > +event
> > > control.
> > > > > > > > > > + *
> > > > > > > > > > + * RM_SVC (SVC) Resource Management Service
> > > > > > > > > > + *
> > > > > > > > > > + * Module for the Resource Management (RM) service.
> > > > > > > > > > + */
> > > > > > > > > > +
> > > > > > > > > > +#ifndef _SC_RM_API_H
> > > > > > > > > > +#define _SC_RM_API_H
> > > > > > > > > > +
> > > > > > > > > > +#include <linux/firmware/imx/sci.h>
> > > > > > > > > > +
> > > > > > > > > > +/*
> > > > > > > > > > + * This type is used to indicate RPC RM function calls.
> > > > > > > > > > + */
> > > > > > > > > > +enum imx_sc_rm_func {
> > > > > > > > > > +	IMX_SC_RM_FUNC_UNKNOWN = 0,
> > > > > > > > > > +	IMX_SC_RM_FUNC_PARTITION_ALLOC = 1,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_CONFIDENTIAL = 31,
> > > > > > > > > > +	IMX_SC_RM_FUNC_PARTITION_FREE = 2,
> > > > > > > > > > +	IMX_SC_RM_FUNC_GET_DID = 26,
> > > > > > > > > > +	IMX_SC_RM_FUNC_PARTITION_STATIC = 3,
> > > > > > > > > > +	IMX_SC_RM_FUNC_PARTITION_LOCK = 4,
> > > > > > > > > > +	IMX_SC_RM_FUNC_GET_PARTITION = 5,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_PARENT = 6,
> > > > > > > > > > +	IMX_SC_RM_FUNC_MOVE_ALL = 7,
> > > > > > > > > > +	IMX_SC_RM_FUNC_ASSIGN_RESOURCE = 8,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_RESOURCE_MOVABLE = 9,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_SUBSYS_RSRC_MOVABLE = 28,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_MASTER_ATTRIBUTES = 10,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_MASTER_SID = 11,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_PERIPHERAL_PERMISSIONS =
> 12,
> > > > > > > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_OWNED = 13,
> > > > > > > > > > +	IMX_SC_RM_FUNC_GET_RESOURCE_OWNER = 33,
> > > > > > > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_MASTER = 14,
> > > > > > > > > > +	IMX_SC_RM_FUNC_IS_RESOURCE_PERIPHERAL = 15,
> > > > > > > > > > +	IMX_SC_RM_FUNC_GET_RESOURCE_INFO = 16,
> > > > > > > > > > +	IMX_SC_RM_FUNC_MEMREG_ALLOC = 17,
> > > > > > > > > > +	IMX_SC_RM_FUNC_MEMREG_SPLIT = 29,
> > > > > > > > > > +	IMX_SC_RM_FUNC_MEMREG_FRAG = 32,
> > > > > > > > > > +	IMX_SC_RM_FUNC_MEMREG_FREE = 18,
> > > > > > > > > > +	IMX_SC_RM_FUNC_FIND_MEMREG = 30,
> > > > > > > > > > +	IMX_SC_RM_FUNC_ASSIGN_MEMREG = 19,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_MEMREG_PERMISSIONS = 20,
> > > > > > > > > > +	IMX_SC_RM_FUNC_IS_MEMREG_OWNED = 21,
> > > > > > > > > > +	IMX_SC_RM_FUNC_GET_MEMREG_INFO = 22,
> > > > > > > > > > +	IMX_SC_RM_FUNC_ASSIGN_PAD = 23,
> > > > > > > > > > +	IMX_SC_RM_FUNC_SET_PAD_MOVABLE = 24,
> > > > > > > > > > +	IMX_SC_RM_FUNC_IS_PAD_OWNED = 25,
> > > > > > > > > > +	IMX_SC_RM_FUNC_DUMP = 27, };
> > > > > > > > > > +
> > > > > > > > > > +#if IS_ENABLED(CONFIG_IMX_SCU) bool
> > > > > > > > > > +imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc,
> > > > > > > > > > +u16 resource); #else static inline bool
> > > > > > > > > > +imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc,
> > > > > > > > > > +u16
> > > > > resource) {
> > > > > > > > > > +	return true;
> > > > > > > > > > +}
> > > > > > > > > > +#endif
> > > > > > > > > > +#endif
> > > > > > > > > > --
> > > > > > > > > > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
