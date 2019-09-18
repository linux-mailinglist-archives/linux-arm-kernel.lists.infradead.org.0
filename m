Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CF0B6519
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rv5P9Pv9I2x7Sj0Mdac0BIm0pn335VxLRYvloaNVNXU=; b=TCTID0gJFhFWss
	xg5hOVd0CVWqbum4WYFq+sHGpkhbyHy6ukrIuOveUwuY1MA+53hcoy6irA+pC51MfLoezSQn4OOYk
	1Qg9GL6aYx92BBoSSxUHS8IWSlc6Uqg68djfJwNPxvXHjQjCc7rixPHx6laeDnioBpTe6Q+cjdc99
	NzaNmds42zeDkK3nY2xaBP0tytsmGh+xX5vCSe/ck/ETPzRZgrOOnOJEIwrgW7b1anMFwK78ew/Do
	7JkaIuU0TGpNN2Ny8Upg6y0HYyCXirFSQDQ7ERlQ53uxPbwS3MSQ+e/50PYixhZK39WXd72f/bHtQ
	z85ny52x6RATXb7Y84aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaNJ-0002FQ-A0; Wed, 18 Sep 2019 13:52:05 +0000
Received: from mail-eopbgr10073.outbound.protection.outlook.com ([40.107.1.73]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaN4-0002DW-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:51:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SB+qx4O6/fNxv6KDyObUnKLWyB+XB+j+dmTs/O4kF+U5SzYlLm/nazdffTq56mM7+6lhPVZADmNs45LYtWArXSw9VMMGE4QG3k+VpLkuoKYEkvCKgpJBuGvawCAdWgH6ZwksT/cFegrpUqYNmC/DungH7JPEOAPzKNZgLmucCgosMl3H/YS/s3LHweiUi4qGwuqJwyF9w/UE7zHxVqQ4kVr3AWFrnIF1EJP+nI4djLI3LCAc0O5LzVT9lJPE5cc9RKot82aaa7/A+zuUiLPNhKzUuYYYMJNL1//NdPNHU5bLHc4mq1k5998B6d92jHc2AWv09Km42w+y+wNXBf9IMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SYJcJVDwhiUgGE4StWC4WUa+QVIzGdI6djdgc8jGVUg=;
 b=PcJoadqdwGXu2wHJ/LF9Vs4LAuHFV86YX4EmoXn1pbFuE48o4LJn50UQzDD/j+E/2lM1xslKKaB9ic9p1hP7PjMdbfCLlquDf4LQCrkwnEPUdLmSfWqyHc3bOLh8jjLUP8MCeIv2Qw3SWobRy/5JZTmEPY9MzA0K05M2M4Pus1h41ltLa/vg88htAdLbRnwK1jBHCbkwAUJofApqzLqaT8fnfubfm7jfNs7F/LyYf8iJVMNhI1RPRJUMWWnOLyOZAYiJz96iFOkpbr1gW+tY+iTVQE2sfgWoTQeg/HIzi1oGpC5+uEQ5BHRfHjq3sQqp8T8nAx7ObY2QYjESqgd3rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SYJcJVDwhiUgGE4StWC4WUa+QVIzGdI6djdgc8jGVUg=;
 b=Vdgsq5PIbo/Z/ijiNMe05rzE1BDE8drq95Ga+wQSSHoEPP8BPvlGyZ7V4guuRHU7bVbNxH57L8b/Ca8TBnKEJDRrEMMx23gbJXt+LgdJ61bN9MAdnPTWcHUEAy+T3GiZQ5CQlvJy88mCbV1aXqX6E9Gxgo5idN//J4btsSzZPI4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4354.eurprd04.prod.outlook.com (52.134.90.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 18 Sep 2019 13:51:47 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Wed, 18 Sep 2019
 13:51:47 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVbHNaBQCH9BWPL0mqFSSgcphDeqcwIoOAgADH+gCAADitQIAAT5WAgAAEqNA=
Date: Wed, 18 Sep 2019 13:51:47 +0000
Message-ID: <AM0PR04MB4481DB4590FF3DB941C88BBC888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
 <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
 <AM0PR04MB44811AE46803D10FD8A5B8B0888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY09pPqM-47zNFVGMNM9wrDF9iiVuqKTXrEd4-PdOxBPrQ@mail.gmail.com>
In-Reply-To: <CABb+yY09pPqM-47zNFVGMNM9wrDF9iiVuqKTXrEd4-PdOxBPrQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e30e789b-3cff-40a9-29d9-08d73c3f5924
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4354; 
x-ms-traffictypediagnostic: AM0PR04MB4354:|AM0PR04MB4354:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB435450381D15F46EEBBA7A51888E0@AM0PR04MB4354.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(199004)(189003)(14454004)(9686003)(55016002)(478600001)(14444005)(4326008)(229853002)(256004)(25786009)(7736002)(6436002)(6916009)(74316002)(1411001)(71190400001)(71200400001)(6246003)(305945005)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(33656002)(476003)(11346002)(81156014)(81166006)(8676002)(8936002)(446003)(102836004)(6506007)(186003)(15650500001)(53546011)(66066001)(76176011)(7696005)(99286004)(6116002)(54906003)(316002)(4744005)(44832011)(486006)(52536014)(3846002)(2906002)(26005)(86362001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4354;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bFmedldT0DWIAkWJWAuuOSWrmbMYkN/jpd/6WEHWqYDcv1xP0H4B0A6R6MFU/QHi9tW0hEOZ5CeYY/GdJDRVwp3zMV908NHaBk54AiwOzhMbzxvjmGoyf1/GxFFlyIG7uwHODV2s6mN7O5aqhtZGEZn+aeeW1PIy4fubgvNuajpMf3Fd+SE47qCA/fdjd48qnvX+6Iu3Xt/E+4aqGUy2euMU6xjLYFeD1nZmKlFhR39FTJW+k7CyOQ2Vq8EvtOlL39Cqf4yjtwdIRUBd5stL0KRvi+8rBVqLeUEMI1YWLt4b4koUIJ2gUAwBjRe/kP1VI9L6qhgX06H46as9sV8gp44dHRJVuoM8wXbxI5reGk0Ktt9pzCe9lBdn+aE1eR51lgn9F//Aotk+5FI9adKoYq5Jbi5lZBJYCNMzruO1t4w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e30e789b-3cff-40a9-29d9-08d73c3f5924
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 13:51:47.1063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MF4nMwPBAaSmtGJs8kFkolqo+L3PMKK5j+LTUWIQXXNmQpIsHU/RiT1RtDuJ/Xxq1i7w66CCEDVt71eZQfuPjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_065150_417217_EEF888C5 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the
> ARM SMC/HVC mailbox
> 
> On Wed, Sep 18, 2019 at 3:53 AM Peng Fan <peng.fan@nxp.com> wrote:
> 
> > > >
> > > > > +
> > > > > +  "#mbox-cells":
> > > > > +    const: 1
> > > >
> > > > Why is this "1"? What is this number used for? It used to be the
> > > > channel ID,
> > > but since you are describing a single channel controller only, this
> > > should be 0 now.
> > > >
> > > Yes. I overlooked it and actually queued the patch for pull request.
> >
> > In Documentation/devicetree/bindings/mailbox/mailbox.txt
> > #mbox-cells: Must be at least 1.
> >
> > So I use 1 here, 0 not work. Because of_mbox_index_xlate expect at least 1
> here.
> > So I need modify Documentation/devicetree/bindings/mailbox/mailbox.txt
> > and add xlate for smc mailbox?
> >
> No, you just can not use the generic xlate() provided by the api.
> Please implement your own xlate() that requires no argument.

ok. Will add xlate.

Thanks,
Peng.

> 
> Cheers!
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
