Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F7D2AE7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFaPQXseS+7UyzGzyE03ovUiRNkjbPNU+JfzKvx9KOA=; b=r8JmtpiloObVXl
	ImXELrkFbfFPx2M2sHOxtwJEIwF1IbaxPDSlRzHDNfaNk9kKC67Ht7hcw3fjkGoYzIHMi2t5ucODa
	32jjfeMC66AkhND4F+5stf1ouzlpr5G3CprGrznqOluiaiR29U9t6817t/IZA7wKGSc5eBPKpfZBV
	tTOSy0F6iPcq6+hu84bA04x37g+6LiSyzXK/WqTFuq2LrDf0MkLFkpUkz4V+wnoR4yxz6y9v9DgQs
	ivw2dQg+rZ4MnY8SXeuieJB8sLvcP/bFjSBf8vnIHgdBvZt7rdyknPBifSCu4SBIbsrVmhIplv+T+
	Npio4bMaJEJ27Rc9ghSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV8y2-0002g6-FJ; Mon, 27 May 2019 06:18:42 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV8xv-0002fh-Fc
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:18:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7X7v+RtS/SbVEEjw5DxlmYSuKS2YIRWftn6TCROuTO4=;
 b=s+I2dBFUSkMP2AemcyE5xktmm+etzNZDJTz2WGvy/kfDzHJwsuY0C39dTihv1fuz32IWjj2YRhfY+U51uxlEa1Kc9MyiLNmTxfGrGRcclBLHNc0JPk0Ykt8YESoBD+JuSV3W45TD7x9UX+vkfTvY7YNWCH1g6U1yr1YSrDn22BM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6436.eurprd04.prod.outlook.com (20.179.252.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Mon, 27 May 2019 06:18:31 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 06:18:31 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, Florian Fainelli
 <f.fainelli@gmail.com>
Subject: RE: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVESt7O8zUR8j7k0mzGFqyu7YBg6Z4+DAAgAGZogCAA+OE0A==
Date: Mon, 27 May 2019 06:18:30 +0000
Message-ID: <AM0PR04MB4481A7076D94A55BD48F8ACC881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
 <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
 <20190524175658.GA5045@e107155-lin>
In-Reply-To: <20190524175658.GA5045@e107155-lin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 579881cf-ea4f-45c3-1863-08d6e26b240f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB6436; 
x-ms-traffictypediagnostic: AM0PR04MB6436:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB64364715FF660DE415640280881D0@AM0PR04MB6436.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(346002)(136003)(39860400002)(189003)(199004)(7696005)(71200400001)(6246003)(71190400001)(99286004)(66446008)(53936002)(52536014)(53546011)(86362001)(6506007)(102836004)(316002)(33656002)(5660300002)(6306002)(66066001)(9686003)(26005)(15650500001)(186003)(8676002)(81156014)(76176011)(81166006)(25786009)(55016002)(305945005)(8936002)(4326008)(54906003)(44832011)(68736007)(74316002)(486006)(110136005)(7736002)(476003)(446003)(11346002)(229853002)(14454004)(66476007)(7416002)(6436002)(45080400002)(64756008)(66556008)(2906002)(76116006)(3846002)(6116002)(478600001)(66946007)(73956011)(966005)(256004)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6436;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +3Q0dguV4QvkyxujNG/jKeheVdx3VRXzLaYL3X0olcmnBwCGaWqh+VFHUG7j/qqB7RRoixpyzb0hSzGyzuT6PAAfE/z2CC2ReG+6vhsn2Vn7K6SFtdmQZ0yKzmUORklX8Ys7rzbxkBm2fhQjfW31DM2ph4+j99V48H6V9ko4YQAtXurWkTd+nZlckvukkwEaZVHfigh8xodTFvW/vTHBFUQ5FoksXk6Z4htswnXSWLeTWQvuZorg2pDOfiy8DlS/OApdIfTq4hSozD1708FGKSzSjyH3Eo7gX//9EzF8fdGKLvZ7Zc7QdrxJT3YlMUDkQHjlgndxZ+W3meWy1kqn5YQPEvJy97+kADjovRFcuR2sCSJ/KbRON1RFBCTo+iAv71/tDt8O7v9yEisDzELMhFHLraf59FwooPdl/k9Nibw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 579881cf-ea4f-45c3-1863-08d6e26b240f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 06:18:31.2451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_231835_524400_3238CF58 
X-CRM114-Status: GOOD (  24.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

> Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
> 
> On Thu, May 23, 2019 at 10:30:50AM -0700, Florian Fainelli wrote:
> > Hi,
> >
> > On 5/22/19 10:50 PM, Peng Fan wrote:
> > > This is a modified version from Andre Przywara's patch series
> > >
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> rnel.org%2Fpatchwork%2Fcover%2F812997%2F&amp;data=02%7C01%7Cpe
> ng.fan%40nxp.com%7Cfa2ba15f479b49eb219f08d6e0713ea3%7C686ea1d3b
> c2b4c6fa92cd99c5c301635%7C0%7C0%7C636943174355592142&amp;sdat
> a=Y94rnxDEoMm9nyRyjJrYBqRduc5XkvvQhno7zfIQ%2B04%3D&amp;reserve
> d=0.
> > > [1] is a draft implementation of i.MX8MM SCMI ATF implementation
> > > that use smc as mailbox, power/clk is included, but only part of clk
> > > has been implemented to work with hardware, power domain only
> > > supports get name for now.
> > >
> > > The traditional Linux mailbox mechanism uses some kind of dedicated
> > > hardware IP to signal a condition to some other processing unit,
> > > typically a dedicated management processor.
> > > This mailbox feature is used for instance by the SCMI protocol to
> > > signal a request for some action to be taken by the management
> processor.
> > > However some SoCs does not have a dedicated management core to
> > > provide those services. In order to service TEE and to avoid linux
> > > shutdown power and clock that used by TEE, need let firmware to
> > > handle power and clock, the firmware here is ARM Trusted Firmware
> > > that could also run SCMI service.
> > >
> > > The existing SCMI implementation uses a rather flexible shared
> > > memory region to communicate commands and their parameters, it still
> > > requires a mailbox to actually trigger the action.
> >
> > We have had something similar done internally with a couple of minor
> > differences:
> >
> > - a SGI is used to send SCMI notifications/delayed replies to support
> > asynchronism (patches are in the works to actually add that to the
> > Linux SCMI framework). There is no good support for SGI in the kernel
> > right now so we hacked up something from the existing SMP code and
> > adding the ability to register our own IPI handlers (SHAME!). Using a
> > PPI should work and should allow for using request_irq() AFAICT.
> >
> 
> We have been thinking this since we were asked if SMC can be transport.
> Generally out of 16 SGIs, 8 are reserved for secure side and non-secure has 8.
> Of these 8, IIUC 7 is already being used by kernel. So unless we manage to get
> the last one reserved exclusive to SCMI, it makes it difficult to add SGI support
> in SCMI.
> 
> We have been telling partners/vendors about this limitation if they use SMC
> as transport and need to have dedicated h/w interrupt for the notifications.

This is an option, and we could add optional property.

> 
> Another issue could be with virtualisation(using HVC) and EL handling so called
> SCMI SGI. We need to think about those too. 

Using dedicated HW for virtualization that support vcpu scheduling might be
not a good choice, do you mean this? Dedicated pin vcpu to pcpu should be fine,
just like jailhouse hypervisor.

I will try to get more info on this
> and come back on this.

Looking forward.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
