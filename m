Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B05BC508
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MvzbM9PbzpiyH2HBbRX/ErGcpGj7f9bUi7CYHKqWTE=; b=PEKYXUe9bs08V2
	+rXuc5U/MPkBTVyrjCGRH+G/T5/KUXG67NpDwniIZnHmWf4BTzIju3aGKN47etx1hnElpKEzFVnum
	ciKsQzuFwaan6zeB8P/mpEQ9s2uMMDF3AdFcZ9haTlPoNbFZ40S+FJpptdMtB0rokqabLdRBjzkGw
	Jys9euYyhqw/21K+r6CaPw4By/MQdj5cpCTHjDOQht9wvbN1wUU/YdYwYRI8NQKzcYff2xVwL5UdS
	YEGvQTCmKPatqCOvOVCBEjXpdzCgM9up56jT+3ZS4iitJNGPg7euS2jYIwPBaiovgmuqx0m57ERJS
	Hyk7GWfDY309AaIj7IFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChIw-0007Gl-DF; Tue, 24 Sep 2019 09:40:18 +0000
Received: from mail-eopbgr80077.outbound.protection.outlook.com ([40.107.8.77]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChIe-0006hj-Hl
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:40:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YOgEeVt9vlJVZDsurc1EQneToBJ6QZZ8WIsJfLGAEwIGWqhnbbENnrYB71CmA3yq3KE7LtXIrbrf6sUxTuwkT3iGG41O7qYNzULhcObv8/PgJuM+NKziWf0Js5NInl6Cd1hJ6JsGRoNv0PHb3nRaSHmdKqIoK44JIWxVjJBMtcjBT8aBcMZoY5v6Oxr05Mzggrmt9f/T7GhJ+cFLGbGFqM3ziTxC5WzUafzljLO59kzj75AVBRj1SiV5WuB6NTbWUXgasjigdaen3+CdekwykF+7DX4t38e5J5RLti2uFKrOOxql5Y6CFaBv2dfbud2XUmDFype99YgfznSfk79W0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wz0Kso3t+UOd86smnVFoGzYLV4qVYfDQ5UddDsPC0Z0=;
 b=XJ2Wpq0p7i0IvFCSCUSCCktW1JC0dG/EvgpFQ9YPC3MycXm5WPBR3rm/w8w/8j3jKJB9gumrBMD13ZujDiHwy03NpuWRWuxkGDkzAUIMwWpOcy/3THXM8NXWSFW9/cJ9VGDWvFGM4jCNS637mwmUYO1DvaPTyeUdqeaOlvCs85l19gseZ/ZLXh6mm3vzfstjql/Dzr9rev1kRPEFq47q0YY2p6ux/MuvppTU/nVKx6cjdDD+ixYe/wqFqpkZtMlr2JxyV8mMIgD9h/IAww96KyUZl9UW4DDIQZimh7lChgklPGK2o9lzQsqfay2nF3rQOh1Ajoa4I476i2BANuHLvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wz0Kso3t+UOd86smnVFoGzYLV4qVYfDQ5UddDsPC0Z0=;
 b=SI1X04GHHerigxjWpJAlnPQXI5Ftj2SvOEip+WfglaNoS5O1fRU3ZNVd2rHuimk5rgajoGdVRVltt6MQcu5opvXEYotLhQUnRrjf4lQCuKDWA5FmDj8m8TTDNOnUYy3NWzobyJSXq8m4++56Shf6IhV++uc6Fa7dySIynTtYanU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4898.eurprd04.prod.outlook.com (20.177.41.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 09:39:57 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 09:39:57 +0000
From: Peng Fan <peng.fan@nxp.com>
To: =?utf-8?B?QW5kcsOpIFByenl3YXJh?= <andre.przywara@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>
Subject: RE: [PATCH V7 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH V7 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVcdlNWqhZHpusdUul3c2IEB+mNac6SpkAgABJPnA=
Date: Tue, 24 Sep 2019 09:39:56 +0000
Message-ID: <AM0PR04MB44815CAA10EAB980B094679688840@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1569220514-27903-1-git-send-email-peng.fan@nxp.com>
 <30b20102-40d5-1446-1513-e64b47459db8@arm.com>
In-Reply-To: <30b20102-40d5-1446-1513-e64b47459db8@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31e46045-3678-4390-0e12-08d740d3293e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB4898; 
x-ms-traffictypediagnostic: AM0PR04MB4898:|AM0PR04MB4898:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB48981131038714AE8AE518AB88840@AM0PR04MB4898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(346002)(136003)(51914003)(199004)(189003)(99286004)(66476007)(110136005)(5660300002)(66556008)(8676002)(76176011)(52536014)(486006)(66446008)(44832011)(966005)(81156014)(6436002)(8936002)(26005)(2201001)(102836004)(2501003)(4326008)(45080400002)(229853002)(6246003)(14454004)(256004)(6306002)(3846002)(55016002)(71200400001)(33656002)(186003)(53546011)(305945005)(81166006)(6116002)(7696005)(476003)(66066001)(71190400001)(14444005)(316002)(6506007)(7736002)(25786009)(54906003)(2906002)(11346002)(64756008)(76116006)(15650500001)(478600001)(9686003)(74316002)(66946007)(86362001)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4898;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nUOBWOW7J9s2QgZxHNp/9MY6hp+OHwwhDmabQf7f32bcwWezfVAnG/jHV4+W7OH+LClzm2CCetqsC+3FptemwgOUJaccfPCCCTsrukBJeSMNFe2fro55hJpo36aEM13gjpt/fzYEQGth6aKL/pMpvqFmFj54tY0JAmYaXQJUF7Au1uwIrQJ+LS6e1CYhTlMqvAxXUGjbilhCKXLw1pmocgCTai3vWan827Ni4Dj8yW2KhIbJrfoBerGVpIESgvxgzjDmcySzXh0rK3TKRln1Xwm0u4nxEdMhpLHsnhbO328roqZXaverCiWKEmO/weMlPi1ifSbZVEb/uK2MMFI64PxHbDmFc1M0j+5HGgpQHPZe3KsftaisaBt8U2etNMkDh9KxiLbR6tIRTm2RwLJb4b2LqmDFA0A4MsIXiUyZqVI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31e46045-3678-4390-0e12-08d740d3293e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 09:39:56.8985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vtck0EF/+gJk9vHEnjb7jZvm2+WeyCSgOOyXftOajnGGC/myFdEznbeh4Rdz56uJqF9Y7+wr54YLQY2X8wZuOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_024000_757764_0405D10A 
X-CRM114-Status: GOOD (  29.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.77 listed in list.dnswl.org]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

> Subject: Re: [PATCH V7 0/2] mailbox: arm: introduce smc triggered mailbox
> 
> On 23/09/2019 07:36, Peng Fan wrote:
> 
> Hi Peng,
> 
> thanks for the update!
> 
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > V7:
> > Typo fix
> > #mbox-cells changed to 0
> > Add a new header file arm-smccc-mbox.h Use ARM_SMCCC_IS_64
> >
> > Andre,
> >   The function_id is still kept in arm_smccc_mbox_cmd, because
> > arm,func-id property is optional, so clients could pass function_id to mbox
> driver.
> 
> Well, to be honest, this is the main thing I am opposing:
> 
> It should *not* be optional.
> 
> The controller driver DT node should *always* contain the function ID.
> The reasons for that I explained in the other emails to Jassi:
> We can't safely execute smc calls from the Linux kernel, unless we also
> comply with the SMCCC standard. So we should not leave the choice of the
> function ID to the mailbox client.
> Also this much better separates the mailbox controller driver from the client.
> 
> So I think we should reach an agreement here.

I am ok to mark it as a required property in v9, but I am not sure Jassi accept it.

Thanks,
Peng.

> 
> Cheers,
> Andre
> 
> > V6:
> > Switch to per-channel a mbox controller Drop arm,num-chans,
> > transports, method Add arm,hvc-mbox compatible Fix smc/hvc args, drop
> > client id and use correct type.
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fcover%2F11146641%2F&amp;data=02%7C01%7Cpeng.f
> an%40n
> >
> xp.com%7C52d7e331c222426852a508d740ae7d42%7C686ea1d3bc2b4c6fa9
> 2cd99c5c
> >
> 301635%7C0%7C0%7C637048990507177346&amp;sdata=N%2BWdEXh9QXn
> F4cn2DjCwHk
> > qpD1JxtP%2BBfQwn3E3lzYs%3D&amp;reserved=0
> >
> > V5:
> > yaml fix
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fcover%2F11117741%2F&amp;data=02%7C01%7Cpeng.f
> an%40n
> >
> xp.com%7C52d7e331c222426852a508d740ae7d42%7C686ea1d3bc2b4c6fa9
> 2cd99c5c
> >
> 301635%7C0%7C0%7C637048990507177346&amp;sdata=XcRM%2FH4ZQAU
> QmT%2FDlGzq
> > 93LjlVhUYuvEmdYSezivTog%3D&amp;reserved=0
> >
> > V4:
> > yaml fix for num-chans in patch 1/2.
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fcover%2F11116521%2F&amp;data=02%7C01%7Cpeng.f
> an%40n
> >
> xp.com%7C52d7e331c222426852a508d740ae7d42%7C686ea1d3bc2b4c6fa9
> 2cd99c5c
> >
> 301635%7C0%7C0%7C637048990507177346&amp;sdata=8f0Etfnd29Q6LHx
> bymLVyvEE
> > 7ElGZzN3uVMcIL%2BmZNQ%3D&amp;reserved=0
> >
> > V3:
> > Drop interrupt
> > Introduce transports for mem/reg usage Add chan-id for mem usage
> > Convert to yaml format
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fcover%2F11043541%2F&amp;data=02%7C01%7Cpeng.f
> an%40n
> >
> xp.com%7C52d7e331c222426852a508d740ae7d42%7C686ea1d3bc2b4c6fa9
> 2cd99c5c
> >
> 301635%7C0%7C0%7C637048990507177346&amp;sdata=U2%2BjaU06Iu0h
> ULuCz0RT1r
> > vhSfjsu%2BWuKzjTfY7MuNw%3D&amp;reserved=0
> >
> > V2:
> > This is a modified version from Andre Przywara's patch series
> >
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> rnel.org%2Fpatchwork%2Fcover%2F812997%2F&amp;data=02%7C01%7Cpe
> ng.fan%40nxp.com%7C52d7e331c222426852a508d740ae7d42%7C686ea1d3
> bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637048990507177346&amp;sda
> ta=dku%2BfT%2BDLilVU5T0fdHMzuUi4DYCM7aV1FQB4vaKCVE%3D&amp;re
> served=0.
> > The modification are mostly:
> > Introduce arm,num-chans
> > Introduce arm_smccc_mbox_cmd
> > txdone_poll and txdone_irq are both set to false arm,func-ids are
> > kept, but as an optional property.
> > Rewords SCPI to SCMI, because I am trying SCMI over SMC, not SCPI.
> > Introduce interrupts notification.
> >
> > [1] is a draft implementation of i.MX8MM SCMI ATF implementation that
> > use smc as mailbox, power/clk is included, but only part of clk has
> > been implemented to work with hardware, power domain only supports get
> > name for now.
> >
> > The traditional Linux mailbox mechanism uses some kind of dedicated
> > hardware IP to signal a condition to some other processing unit,
> > typically a dedicated management processor.
> > This mailbox feature is used for instance by the SCMI protocol to
> > signal a request for some action to be taken by the management processor.
> > However some SoCs does not have a dedicated management core to
> provide
> > those services. In order to service TEE and to avoid linux shutdown
> > power and clock that used by TEE, need let firmware to handle power
> > and clock, the firmware here is ARM Trusted Firmware that could also
> > run SCMI service.
> >
> > The existing SCMI implementation uses a rather flexible shared memory
> > region to communicate commands and their parameters, it still requires
> > a mailbox to actually trigger the action.
> >
> > This patch series provides a Linux mailbox compatible service which
> > uses smc calls to invoke firmware code, for instance taking care of SCMI
> requests.
> > The actual requests are still communicated using the standard SCMI way
> > of shared memory regions, but a dedicated mailbox hardware IP can be
> > replaced via this new driver.
> >
> > This simple driver uses the architected SMC calling convention to
> > trigger firmware services, also allows for using "HVC" calls to call
> > into hypervisors or firmware layers running in the EL2 exception level.
> >
> > Patch 1 contains the device tree binding documentation, patch 2
> > introduces the actual mailbox driver.
> >
> > Please note that this driver just provides a generic mailbox
> > mechanism, It could support synchronous TX/RX, or synchronous TX with
> > asynchronous RX. And while providing SCMI services was the reason for
> > this exercise, this driver is in no way bound to this use case, but
> > can be used generically where the OS wants to signal a mailbox
> > condition to firmware or a hypervisor.
> > Also the driver is in no way meant to replace any existing firmware
> > interface, but actually to complement existing interfaces.
> >
> > [1]
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgith
> >
> ub.com%2FMrVan%2Farm-trusted-firmware%2Ftree%2Fscmi&amp;data=02
> %7C01%7
> >
> Cpeng.fan%40nxp.com%7C52d7e331c222426852a508d740ae7d42%7C686ea
> 1d3bc2b4
> >
> c6fa92cd99c5c301635%7C0%7C0%7C637048990507177346&amp;sdata=fFE
> KK8jYap5
> > igpH6ESGTHYfnhBZMsL2zB%2BdykMdOPwg%3D&amp;reserved=0
> >
> >
> >
> > Peng Fan (2):
> >   dt-bindings: mailbox: add binding doc for the ARM SMC/HVC mailbox
> >   mailbox: introduce ARM SMC based mailbox
> >
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       |  95
> ++++++++++++
> >  drivers/mailbox/Kconfig                            |   7 +
> >  drivers/mailbox/Makefile                           |   2 +
> >  drivers/mailbox/arm-smc-mailbox.c                  | 168
> +++++++++++++++++++++
> >  4 files changed, 272 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
