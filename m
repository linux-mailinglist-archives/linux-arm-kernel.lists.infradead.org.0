Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075A2BC074
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBH0WeUnqkc/NqzyA0lwuxtSxrVvGWLiHnOOEILmIIc=; b=X9ddvHXj+YLPUD
	LVjgaGuiyA9rURTRjh8nyUoIQO8xXW/6Q4NFlCig0JTYZ2XN6mpzO4Pl3G1vg8/viuC8Id01IY9/E
	Oxf+SF5yJRjQ3vqKu1WtZ/y7puKF+iG7FjjQpbsAyBKJvfBzH/ZTC4YxxtJW3rlWcpmqi7EKBDveg
	guLDJfnL2FxBa5NpIXBMJQRklrO6nKdEjp8Oh+njgK1CUpk8OpXQ7GyakSUMDJJzCGHS8GgDiT8O/
	OuGeiCnIdOwur7n0poCAcHi1OCbjVlooG0BD9WKHmTVtpujZDpUOhD00d7r4pL4XbLBt8Rycjk28Q
	bY/2GTZCyJ1QcGfObSXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCayR-0005Pc-Je; Tue, 24 Sep 2019 02:54:43 +0000
Received: from mail-eopbgr60041.outbound.protection.outlook.com ([40.107.6.41]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCayI-0005P5-2V
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:54:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GESaykoAR2nUCoh7v3fA76DTNUNGsFZdt/3kqJKe6lCcldtAql+nWSJwjuSp/+Y2epNo3tZzqbea0Y6C2rz9m1HVWnc4mhdPZ4SCwlu45bFLVkUHL4PdhYoLW7MQNHd+cufgrTWyx/RADWPv+N8/hmvLvjjaVK/Et5yanBpzm6Tu00xdeH+sotjd+ZjbqoWoroOF/UGwr1yZbKicMyfhJRQ7oX1u7irs4UIbr+LQZLpYVTdwc62DH8tvQ3Sja3FYbYACEzPWVZGr/hXyhUjGP/u5MQkcQsKaQ0zgCvJfzB8nGOnvil6BZ4+wBEnk9/H8jtEvw4X7tyf562nAcYcYLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gjl4MKyaiL/mqRDszJCfjHKT/WoFTDMaW0kLmCM2dGw=;
 b=dP71ocDUftQHUxfEA0leFFvyapWM7A5DUnlspiEzv7wMQRfOoxKOLfoEN8Z2bENnY9Eo9/a4J97vpCFlzrroPQAEH3vuFxqUtq5Jz5M9MiFGKtx5lP0Bc2emuB/LrbLXrkgE0RhqHPJp5abyTU+9k9kCtWMkuks5zj3svmB0/SD1l/0uKD60BI8KPRi35XaQ868Gm3yijAUtSJyuE6iRX9VQJ65f6RlIIsPPwduMFwOd6r39DIGFl8f+RxPWXCDs9BLzjUpZ6IH3RrduKw87WyoypYPG4GHrX1yHgrcHixdU8cTBjPiicEMGNhoilEKJeA0ZWasbcarV64olk+dXYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gjl4MKyaiL/mqRDszJCfjHKT/WoFTDMaW0kLmCM2dGw=;
 b=pmy/NP8BUTxptP2YI+O5VMUm4rBw0/5IHEKmn1CZvR1qNhjZR+RMoSqCkfcpcYLFn8xGXS1YXfb70zw/bCEMzDCIF0K6506+Va+IETeF3oH73WG7v9nmrKeEmLg7OSyeyPTmlTt0ehYPMsGG181NpKumz911j3OQXmF4W4+QD6M=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6291.eurprd04.prod.outlook.com (20.179.33.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 02:54:29 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 02:54:29 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Florian Fainelli <f.fainelli@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com"
 <sudeep.holla@arm.com>, "andre.przywara@arm.com" <andre.przywara@arm.com>
Subject: RE: [PATCH V8 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V8 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVcnVfRZj6+kc000W2JZMWqMWPIac6ICmAgAABN5A=
Date: Tue, 24 Sep 2019 02:54:29 +0000
Message-ID: <AM0PR04MB4481500C3000D2CCEE548DC288840@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1569287538-10854-1-git-send-email-peng.fan@nxp.com>
 <1569287538-10854-3-git-send-email-peng.fan@nxp.com>
 <1f01ea8e-8953-82ae-933c-721385dc0c13@gmail.com>
In-Reply-To: <1f01ea8e-8953-82ae-933c-721385dc0c13@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45c9f9dc-c759-4f39-e432-08d7409a8509
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6291; 
x-ms-traffictypediagnostic: AM0PR04MB6291:|AM0PR04MB6291:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB62910133B3C8EE8273E0EA6388840@AM0PR04MB6291.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(376002)(346002)(136003)(199004)(189003)(102836004)(316002)(110136005)(6116002)(66946007)(64756008)(66556008)(66476007)(76116006)(53546011)(54906003)(86362001)(66446008)(5660300002)(44832011)(52536014)(6246003)(71200400001)(71190400001)(305945005)(2201001)(11346002)(446003)(81156014)(81166006)(2906002)(3846002)(7736002)(9686003)(476003)(74316002)(8676002)(6306002)(55016002)(256004)(486006)(6436002)(66066001)(2501003)(45080400002)(15650500001)(966005)(14454004)(4326008)(478600001)(76176011)(186003)(8936002)(26005)(99286004)(229853002)(6506007)(33656002)(25786009)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6291;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ASCQ8gIcHqk4t395BdK9OdVSjROl9+fZYI7025NBpIfEnd4VAebqXSCWdX84D8NIp7F0r8/tHcIlXGqKxEiO78rEhnuMbslRCyTF86zmoquwyG1ly4Ge5jzWQbOFdHVTWjjViNs2cw6yKa0kn/O+tebAewyBDg95RKXsMkANZOVcdU6NWMPDCVjly+FRBjUMyPv+u89clQ/hZTFJisGV+NfSiy3KfkXoGRe/jAZVtaF/R4EhxP1ga287n0o+a8DGM0PZ3A7BG87ML3cvq3wikPqT4ofWtwRg8fgvY2IHTuIshSGl+EUkHFiHCMKUcYtmgLEXTi/LG0m+bWEWRGKofmdudxjLibWztWbM07/FO84RGXshSakX60SyfyLq6A/L6z0JCl9as6qY2iCQeRBvObg16Yn9k+YwUgY9HN5RCuA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c9f9dc-c759-4f39-e432-08d7409a8509
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 02:54:29.6184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TggDN0lVKDSNLoMmAKKBcsjRoXAIW7qGd5wTKNc6MZvnk+rB6awYkFTI5+Bkx1JhcMjBXrLc3+lJ3X64zT0qug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_195434_120034_CCE3D1AC 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian

> Subject: Re: [PATCH V8 2/2] mailbox: introduce ARM SMC based mailbox
> 
> Hi Peng,
> 
> On 9/23/2019 6:14 PM, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > This mailbox driver implements a mailbox which signals transmitted
> > data via an ARM smc (secure monitor call) instruction. The mailbox
> > receiver is implemented in firmware and can synchronously return data
> > when it returns execution to the non-secure world again.
> > An asynchronous receive path is not implemented.
> > This allows the usage of a mailbox to trigger firmware actions on SoCs
> > which either don't have a separate management processor or on which
> > such a core is not available. A user of this mailbox could be the SCP
> > interface.
> >
> > Modified from Andre Przywara's v2 patch
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > .kernel.org%2Fpatchwork%2Fpatch%2F812999%2F&amp;data=02%7C01%7
> Cpeng.fa
> >
> n%40nxp.com%7C296c7cd2225e4ca32bb808d74099afb2%7C686ea1d3bc2b4
> c6fa92cd
> >
> 99c5c301635%7C0%7C0%7C637048901144091126&amp;sdata=JDo%2Be7Tt
> hoi4jve0O
> > S8qe3%2Fpji4g8CgRxL7ntCQx3Fg%3D&amp;reserved=0
> >
> > Cc: Andre Przywara <andre.przywara@arm.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> 
> [snip]
> 
> > +typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
> > +				    unsigned long, unsigned long,
> > +				    unsigned long, unsigned long,
> > +				    unsigned long);
> > +static smc_mbox_fn *invoke_smc_mbox_fn;
> 
> Sorry for spotting this so late, the only thing that concerns me here with this
> singleton is if we happen to have both an arm,smc-mbox and arm,hvc-mbox
> configured in the system, this would not work.

Yes. Thanks for spotting this.

 I do not believe this could be a
> functional use case, but we should probably guard against that or better yet,
> move that into the arm_smc_chan_data private structure?

Agree. Will Fix in v9.

Thanks,
Peng.

> --
> Florian
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
