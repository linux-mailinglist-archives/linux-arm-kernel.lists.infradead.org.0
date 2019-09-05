Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF01A99A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 06:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNZEnMv/nmRhfPYUwHPO3ztUlldGRrRGMLLufZrWDzs=; b=DmPgiR5SAN8j+4
	s1QjvsJtrG4bidwPB5C+XUp7pIll9CYhKB6mQkhIps9Un22TwRqe5SlFd67huWEePuxtiphv5BrNJ
	B4/M78w5/ajvDYFDPNr3SJ3i6ukbo3v1IlMiPBJ1uBJzLv7Oh9TRk4wC8IFUDDKKqkBbU4T8p9kyZ
	q7EBNaW4sIOaYvBOJmH3dy0ye4/xNS+LdjJlzyQgV6UV71ewUF4mnq8ixgXxwDmtaPkY6al5P4mpS
	aDkqWwKVIVV6L7G8TNSdCH31PEDbez2RkzjEqvtgDMgkguYHECkDVzx96pHXyb79HAU6hQCbo4W3h
	Mpo18QeAXMHSAaNKOsQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5jT9-0007gQ-Hb; Thu, 05 Sep 2019 04:34:03 +0000
Received: from mail-eopbgr40051.outbound.protection.outlook.com ([40.107.4.51]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5jSt-0007g3-TD
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 04:33:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cr656mdKnZmL/TCrDxmvMKJZ3SL67BsOSULaOZYlTWPcHpmHwB6m1bb7fa6IyUGVVEdZWqIyOFBoklrlxuauZ07RU0fCxwVgKqGew0QNkUTvDQEZa7ZtxsQY4ZgJ7UmGN24wg/wFlX7hXVlN4deUWkHIcfN8Jklcp5q8/WsKFtV4PmaW/HeUZBI4bG568yiQoDOkCb69xnpC/8lC7xhuXZq+wwhRKLo9sr4AnohCBLxn98Yqi9HKWCovi9evhljQCrIBFguZ+6MBjVfUZRNRRws/3PNfvfVBNXbKQFEwAzTnqqZNWhRCilguLf6rd5YH6q9H3b73HrMPsV19Y7B6XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=avaDpKvXgso4dx/QmtD7Hl71dbR5CxEuNE1/dUXMv+4=;
 b=dviwHyu9/tMe7aqZ/qlXBe5K3wKAOwdPmWQZlf13oCwvXhAM6udfXpsitK60whhowBP08TcZ2ESw8PWA9NuODc36rYhFiTV2kVLs6hExDLvCYQW1dbAq2rRSIqRTdFVuLzIntL/KdHl+eAs9QCB8TH+PYk5mOZ0aeRXT8ReMdANd55Ve9P8BMSsoNDJrHrV6+rnkzZ1EeUeIUZgNlg4mxTv6H6JtS7TxEa4BafyDgkHFKQNlpQakgJMcGCvUBb/tWj3TBAsHFlciS0OzXK/dS66Et0fEIqAznFRRdZRjyajOt8u8oYJPZv2Bg9xp/uVOXsnoL4eOA0Dxbl28/2ANXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=avaDpKvXgso4dx/QmtD7Hl71dbR5CxEuNE1/dUXMv+4=;
 b=ojmNIiUvX1hCHDXc1pl9DW1TFcGjEvOA+fakr8dYgWZ2KqfMTqsDq4oWGVREuSFoZTAvL5HPVhM0u50Jq1NhJL2CgamkVRfPfWbVbl4j7RoXXgC1cZkMYgH+6/AIrJg8ktXJ76/TwAnULEkllbsxkhTr9ZLwrDO6BPMOc+YaJcE=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4667.eurprd04.prod.outlook.com (52.135.139.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Thu, 5 Sep 2019 04:33:44 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2241.014; Thu, 5 Sep 2019
 04:33:44 +0000
From: Biwen Li <biwen.li@nxp.com>
To: "'andy.shevchenko@gmail.com'" <andy.shevchenko@gmail.com>,
 "'rafael@kernel.org'" <rafael@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>, Udit Kumar
 <udit.kumar@nxp.com>, "'wsa@the-dreams.de'" <wsa@the-dreams.de>,
 "'rjw@rjwysocki.net'" <rjw@rjwysocki.net>
Subject: RE: [PATCH] ACPI: support for NXP i2c controller
Thread-Topic: [PATCH] ACPI: support for NXP i2c controller
Thread-Index: AQHVN9RWONVodUogYk2tb4fLvCueOacZMhcAgAAFiwCAAI1AgIAABROQgAMCJ+A=
Date: Thu, 5 Sep 2019 04:33:44 +0000
Message-ID: <DB7PR04MB4490E737C00CF9CA173AB2898FBB0@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190711102601.20582-1-chuanhua.han@nxp.com>
 <CAJZ5v0hY2sL+XfN_4v07_hjvoxgCAt+Q89+wNg5Pky6XKP-mqA@mail.gmail.com>
 <CAHp75VfFtMMQhetRFHrx=Ft7OWwyMqLrwP3sPjT6YVtr8xCHoQ@mail.gmail.com>
 <896b88d4-9d1b-922b-1784-55ef9a1a1830@pengutronix.de>
 <AM7PR04MB6885DB03C6B96C7932DDA74B8EB90@AM7PR04MB6885.eurprd04.prod.outlook.com>
In-Reply-To: <AM7PR04MB6885DB03C6B96C7932DDA74B8EB90@AM7PR04MB6885.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 09ddf1b3-09d0-4333-f572-08d731ba3c9a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4667; 
x-ms-traffictypediagnostic: DB7PR04MB4667:|DB7PR04MB4667:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46678644953757242F8865408FBB0@DB7PR04MB4667.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(366004)(39860400002)(396003)(199004)(189003)(26005)(6246003)(8936002)(966005)(74316002)(110136005)(6436002)(8676002)(66066001)(478600001)(9686003)(54906003)(4326008)(6306002)(476003)(86362001)(305945005)(2906002)(81156014)(81166006)(3846002)(7736002)(76176011)(11346002)(102836004)(53546011)(6506007)(53936002)(229853002)(446003)(14454004)(7696005)(186003)(45080400002)(7416002)(486006)(55016002)(6116002)(44832011)(256004)(64756008)(66446008)(66946007)(66476007)(66556008)(76116006)(71190400001)(25786009)(33656002)(71200400001)(99286004)(14444005)(5660300002)(52536014)(316002)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4667;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dsZ+rVCRe1StNRXL2GWcOUTLbQTy7W5efTggCMQsGX0/hKHTXdjFuLhHthmemMbVm76yJ3vsVyHVNGzBJh3ZnzyC7dVQX9R00HrwCL8MQVXAmw2dJMqR9zd6cz6IavL4Jb89F+ZzvH41xj6LY+9jlxmAoDKFKaVrhAUOwiBwzDneRHlFKqHZQB57cJzdOLwnuEfr0TA/kxpMG87rtz4O1Rq7LUFB6Pf1peARWi3+gTMWxLMc57W1bITLWDv3BgZZjJXagH2MrAY4ETopHOzs7lXIQybwypzyN2XgObUl6DjiVURrwFLUFTabzuhZmvFEpnkeSD+u6s2/y47MyIgdqOmFCaBTXaOtQQ4ZLwaUQws9/J+80CLoKX4MWBY6t2rkkyw32KQ6Aa7LqVAyWVkaRv8Ab0p1tBgAvc4cRPyMauE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09ddf1b3-09d0-4333-f572-08d731ba3c9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 04:33:44.5791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VebfGvSMsR2OHpZ/pyjQ7o5bqoBjwEhONfx0Ew8jxjsjpGt5pEX53BRm1RlROvsPAVRge10QdvlxM8ZRBwz/yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4667
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_213348_115265_E7851C4D 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.51 listed in list.dnswl.org]
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
Cc: "'s.hauer@pengutronix.de'" <s.hauer@pengutronix.de>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "'linux-acpi@vger.kernel.org'" <linux-acpi@vger.kernel.org>,
 "'linux-i2c@vger.kernel.org'" <linux-i2c@vger.kernel.org>,
 Chuanhua Han <chuanhua.han@nxp.com>,
 "'shawnguo@kernel.org'" <shawnguo@kernel.org>,
 "'linux-arm-kernel@lists.infradead.org'"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Hi,
> 
> On 02.09.19 23:16, Andy Shevchenko wrote:
> > On Mon, Sep 2, 2019 at 11:58 PM Rafael J. Wysocki <rafael@kernel.org>
> wrote:
> >>
> >> On Thu, Jul 11, 2019 at 12:35 PM Chuanhua Han <chuanhua.han@nxp.com>
> wrote:
> >>>
> >>> Enable NXP i2c controller to boot with ACPI
> >>>
> >>> Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
> >>> Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
> >>> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> >>
> >> Wolfram, any objections to this from the i2c side?
> >
> > May I propose amendment(s)?
> >
> >>> @@ -44,6 +44,7 @@
> >>>   #include <linux/pm_runtime.h>
> >>>   #include <linux/sched.h>
> >>>   #include <linux/slab.h>
> >
> >>> +#include <linux/acpi.h>
> >
> > If it's kept in order, better to go with it. (Yes, it is as I have
> > checked) However, property.h should be included instead, see below.
> >
> >>>          const struct of_device_id *of_id =
> of_match_device(i2c_imx_dt_ids,
> >>>
> >>> &pdev->dev);
> >>> +       const struct acpi_device_id *acpi_id =
> >>> +                       acpi_match_device(i2c_imx_acpi_ids,
> >>> +                                         &pdev->dev);
> >
> >
> >>>          if (of_id)
> >>>                  i2c_imx->hwdata = of_id->data;
> >>> +       else if (acpi_id)
> >>> +               i2c_imx->hwdata = (struct imx_i2c_hwdata *)
> >>> +                               acpi_id->driver_data;
> >
> >
> > The above altogher may be replaced with
> >
> > const struct imx_i2c_hwdata *match;
> > ...
> > match = device_get_match_data(&pdev->dev);
> > if (match)
> >   i2c_imx->hwdata = match;
> > else
> > ...
> 
> Instead of "may be replaced", I would say: it should be replaced :)
> 
> >>> +               .acpi_match_table = ACPI_PTR(i2c_imx_acpi_ids),
> >
> > Since there is no #ifdef guard no need to use ACPI_PTR().
> >
> 
> What iMX/(other NXP?) SoCs are with ACPI support?  Where I can get one? I
> would like to know more about it.
- Nxp has variety Socs, include i.MX, Layerscape, etc.
- You can get one from here https://www.nxp.com/design/qoriq-developer-resources/qoriq-lx2160a-development-board:LX2160A-RDB

> 
> Kind regards,
> Oleksij Rempel
> 
> --
> Pengutronix e.K.                           |
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
> ngutronix.de%2F&amp;data=02%7C01%7Cmeenakshi.aggarwal%40nxp.com%
> 7C640eb015a91f4959d3b508d7303168fb%7C686ea1d3bc2b4c6fa92cd99c5c
> 301635%7C0%7C0%7C637030861076879938&amp;sdata=sPWtkVtHHDvoRR
> ZmWJuipCO%2BEwG%2BcupgZvcIV1%2BrlEY%3D&amp;reserved=0  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
