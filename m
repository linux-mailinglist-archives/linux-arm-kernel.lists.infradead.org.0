Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA6319C851
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 19:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToNLdD35/wAiL4X4DIv1PNt4lTazjWawm3v8XW6FvTw=; b=Jw2VWpkULPo95W
	yBKBUIIKCZizEQfNb1nkmzoC168egTGUKTafo4DltRESgjXHEpbAl0cWCZXcO0rnhaST9gePHlT28
	PLqtgvQ7FsIibLM8+1KDLX6UI5djK4RE5A087fGT1+LYFBe+6nmbYfEZ6n/tGn3ge2RGmo+BpkiYK
	0UkFnYGmH048IonGbR8RKzV0sEKrHIBV0ms4fahZqMGn9mmUJstnGa2+SLjmSMzLMCPaHXlDkRVVf
	3o/SuSnSKdZK7dtJilMjpq4aOIUKiaI6UBuJo+QI4BYXTTXu2QG/4d87+FFCwqJNTki+zJTHsNBhc
	fxBl7cR996qi7bcxuY5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK3yT-0007rv-FT; Thu, 02 Apr 2020 17:49:53 +0000
Received: from mail-dm6nam12on2127.outbound.protection.outlook.com
 ([40.107.243.127] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK3yM-0007rL-FM
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 17:49:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MHan/AU22NUCrqHg3yUm4mYQWL+47Mrt0BYQmp89tOqP+3QrCH/+BSkSxxe+Jln+Hzmr7U7O0ZbJgvnC9pPmjBxEzEzt7EwH4JIZWoWXT68Y8v23DWRxkuiQPl5Y9DwsXPr/wiTU2nMIuJfKBEb/3oOJ6vMgL6V/QT8Tdk8ekvolo7TObcX6tgfU/3Fon5iD5XX2pNZ6yhufWc9AwqSgvs6qPYM/ZQEZAxtSj0M6XueAzQrAxH6/RWuIIFlQ+sgd6a7/IEm71Y+1oS9meKpwJ4g1xeKxfyYxZrwW1In115Ns1JqcnpRO+MLveftORCMEGO5czPSCPfjRT0rkI5CT9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bgfZXywpAyquy7TsjJtjggn0+RS7mAuk+MHesGwXOfA=;
 b=gufA0M4LpgkH2ncWknhLxObYkaI+1+ymqYOEpbhHNVpiTTkxZs0yN1Hs14hop71Io44XYcFEuQPedYzex0fEgG0vOde3TzAhceKiIIG0gHw8Yg2ByhNS05tFC6JVgjbCsyMsPUN8oQKp5D8vnxEpboBsb4l7JvrA35ybkj7N4z3gBhOh3cLYGDGZjeCX2Z7ympfS49atr0EQkEmL/Hnx/mwuQahk/RPYkNt+xzN54ryzU/7oq47/Na19hZ8EWF4QLACXi9FaQkE5NB26FWsQnoK2FUDN4f0+VmFwz9vWC8zYkLC3Xk3BQi7cWxhwCjw58JY/fersFRXN/vNaNX3Vuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=northeastern.edu; dmarc=pass action=none
 header.from=northeastern.edu; dkim=pass header.d=northeastern.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=northeastern.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bgfZXywpAyquy7TsjJtjggn0+RS7mAuk+MHesGwXOfA=;
 b=fel6Nfjq0wLadEHCxT06gds8AoXty5qywThdjAsObysLSktXn1yeMXyhIQt1PRTHGuBiHqCuJ1V6yUBhLwJNuIwJIgDFfi/kaj7a0VP01r7H3JtM/lBFyfQyJbdIgPWGQx3366RDOJf2TJvnY4kffmrePmCSYK1GIranfroHwVg=
Received: from BL0PR06MB4548.namprd06.prod.outlook.com (2603:10b6:208:56::26)
 by BL0PR06MB4753.namprd06.prod.outlook.com (2603:10b6:208:5c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Thu, 2 Apr
 2020 17:49:13 +0000
Received: from BL0PR06MB4548.namprd06.prod.outlook.com
 ([fe80::20f8:a2f2:5ebc:da2]) by BL0PR06MB4548.namprd06.prod.outlook.com
 ([fe80::20f8:a2f2:5ebc:da2%7]) with mapi id 15.20.2878.014; Thu, 2 Apr 2020
 17:49:13 +0000
From: Changming Liu <liu.changm@northeastern.edu>
To: Patrick Venture <venture@google.com>, Andrew Jeffery <andrew@aj.id.au>
Subject: RE: [Bug Report] soc/aspeed: integer error in
 aspeed_p2a_region_acquire
Thread-Topic: [Bug Report] soc/aspeed: integer error in
 aspeed_p2a_region_acquire
Thread-Index: AdYGAIGuDCfrUgheRrujj/e7wCdDjwAKrhIAAB2TuoAAnH7qIA==
Date: Thu, 2 Apr 2020 17:49:13 +0000
Message-ID: <BL0PR06MB4548CB10837BB7E64104338EE5C60@BL0PR06MB4548.namprd06.prod.outlook.com>
References: <BL0PR06MB45481A385F546CF5B6855C16E5CA0@BL0PR06MB4548.namprd06.prod.outlook.com>
 <d694432d-a3f2-4aa1-b9ee-f99f18ee2d99@www.fastmail.com>
 <CAO=notwsjF3fVhY6gFVqsxTXYs=D7LHoOUDhcHSJLzRrsA7rGw@mail.gmail.com>
In-Reply-To: <CAO=notwsjF3fVhY6gFVqsxTXYs=D7LHoOUDhcHSJLzRrsA7rGw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=liu.changm@northeastern.edu; 
x-originating-ip: [2601:197:a7f:5cb0:e015:f2b5:42b5:30de]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de069d77-60a5-4c5b-37c1-08d7d72e27f0
x-ms-traffictypediagnostic: BL0PR06MB4753:|BL0PR06MB4753:
x-ld-processed: a8eec281-aaa3-4dae-ac9b-9a398b9215e7,ExtFwd
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR06MB4753C0D30193DDBC5720F2BAE5C60@BL0PR06MB4753.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR06MB4548.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(376002)(39860400002)(366004)(346002)(396003)(66476007)(33656002)(66446008)(64756008)(66556008)(107886003)(75432002)(478600001)(52536014)(5660300002)(110136005)(4326008)(54906003)(786003)(2906002)(86362001)(316002)(8936002)(81166006)(6506007)(53546011)(76116006)(7696005)(66946007)(8676002)(81156014)(71200400001)(55016002)(9686003)(186003)(70780200001);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: northeastern.edu does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8kT0IVgtKaulZK0h6OmnXQqwIn0+6j/aaznCslgzrrBMEr/h+wCi1ZRwV+chptv3ahUZJXqWBuEXOhn1uKa7AIWIvlBNrcjE9e917GLmKP5A0GnAsgfmCa5GNw6hEMqnqnrguNllIUucI3E436RyykknYNVNwmST8LVcYyldzZ3RA4FjSwMk6G91evRXjPGevZLDUAJluxX/trkbp6hOhzPLQdfmw0v6mMHp7KdRAAQEWB+1oXDcFpuFk8oXe4SXERSV1Fv4j0t4qRSPFQhPBf31E+R/VQ7lxEFnQjEjpJ/LhY6NmMaTOygyzRpoQuw0uf1bublzNZS8GmmfNImifdZD6DuGGBocsSKmT8wpgV/BZfP6GNDAgoPMTT3U5exWaItKgyrkkAOR20E2vArYuQ7p4MUB+39vjrb9jUJuWNUwIyUgoKum4BfzaZo8Ly4p/IX/Kk8vfVyXszQwK+LNSXpYw7HSSf/uP4pzkr9SUYZVuSOAs4D29KYd+z7Rm1Zw
x-ms-exchange-antispam-messagedata: GDvsoxu84H832r5o4H9jUB8Y51QZRB18Avo9o9g81D/Sr7neDt9BhZKIpefwebNN21ylPqhtuxPppLVVxQJB9C1GbXjHtM4+25yIy4rYC4OT3lWCg7uecuUIAgPwE7KTIfN1tbDmk2iAxLByUlNuvW1IJ6/7S/7vUUgX9pkh3RRKdQ4EAocrRl4lh0Io+d5YdjrFy+IL6Yngs0otfoFAew==
MIME-Version: 1.0
X-OriginatorOrg: northeastern.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: de069d77-60a5-4c5b-37c1-08d7d72e27f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 17:49:13.2787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a8eec281-aaa3-4dae-ac9b-9a398b9215e7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xLrgivdKSeoYNUh4L848M+dKlB9Qt5v2nBT9w68hQYxS2VoONy+ZnwDhadARwPOLm3twYf3O7BlY1ujSRfCbPKHr0eARNlWsND0+5/S43UI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB4753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_104946_606334_30EAE823 
X-CRM114-Status: GOOD (  32.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.127 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Joel Stanley <joel@jms.id.au>, "yaohway@gmail.com" <yaohway@gmail.com>, "Lu,
 Long" <l.lu@northeastern.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> From: Patrick Venture <venture@google.com>
> Sent: Monday, March 30, 2020 10:43 AM
> To: Andrew Jeffery <andrew@aj.id.au>
> Cc: Changming Liu <liu.changm@northeastern.edu>; Joel Stanley
> <joel@jms.id.au>; yaohway@gmail.com; linux-arm-kernel@lists.infradead.org;
> linux-aspeed@lists.ozlabs.org; Lu, Long <l.lu@northeastern.edu>
> Subject: Re: [Bug Report] soc/aspeed: integer error in
> aspeed_p2a_region_acquire
> 
> On Sun, Mar 29, 2020 at 5:37 PM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > Hi Changming Liu,
> >
> > I've added Patrick to the thread, who authored the driver.
> >
> > On Mon, 30 Mar 2020, at 06:07, Changming Liu wrote:
> > > Hi Joel and Andrew,
> > >
> > > Greetings, I'm a first year PhD student who is interested in the
> > > usage of UBSan in the linux kernel, and with some experiments I
> > > found that in drivers/soc/aspeed/aspeed-p2a-ctrl.c function
> > > aspeed_p2a_region_acquire, there is an unsigned integer error which
> > > might cause unexpected behavior.
> > >
> > > More specifically, the map structure, after the execution of
> > > copy_from_user at line 180 in function aspeed_p2a_ioctl, is filled
> > > with data from user space.  So the code at line 136 that is
> > >
> > > end = map->addr + (map->length - 1);
> > >
> > > the subtraction could underflow when map->length equals zero, also,
> > > this sum could overflow. As a consequence, the check at line 149
> > > could be bypassed and the following code could be executed.
> > >
> > > Although the fact that map->addr is a 64-bit unsigned integer and
> > > map->length is 32-bit makes the overflow less likely to happen, it
> > > seems doesn't eliminate the possibility entirely. I guess a
> > > access_ok could do?
> 
> I'll take a look, but certainly adding a 32-bit value to a 64-bit value has the
> possibility of overflow given a contrived attack scenario.
> 
> > >
> > > Due to the lack of knowledge of the interaction between this module
> > > and the user space, I'm not able to assess if this is
> > > security-related problem. I'd appreciate it very much to hear your
> > > valuable opinion on why this could not cause any trouble if it's
> > > indeed the case, this will help me under linux and UBSAN a lot! and
> > > I'm more than happy to provide more information if needed.
> >
> > It's certainly not expected behaviour and should be fixed :) We need
> > to check if the `end` calculation overflowed, but not using
> > `access_ok()`, as the value of `end` is an address in the physical address space
> of the SoC.
> >
> > The current behaviour does have a security impact, though probably not
> > in the way you're expecting, as the driver itself is a means to
> > violate the SoC's security. The SoC is a BMC and exposes several PCIe
> > devices to its host (a VGA graphics device and a "BMC" device). Both
> > devices expose functionality that allows the host to perform arbitrary
> > reads and writes to the BMC's physical address space _if_ the BMC has
> > allowed it to do so. This driver controls whether the capability is
> > exposed to the host (disabling denies the read capability) and what
> > regions of the SoC's physical address space can be written. Regions
> > are roughly broken up into memory-mapped flash, BMC MMIO, BMC RAM
> and BMC LPC host controller.
> >
> > Practically, enabling any region for write is to some degree unsafe:
> > for instance exposing the BMC's RAM to writes doesn't in any way
> > restrict what areas of RAM can be written, allowing e.g. arbitrary
> > code injection into the kernel or running processes on the BMC.
> > Enabling writes to the BMC MMIO region allows arbitrary control of the
> > BMC and its peripherals without having to gain code-execution (including
> escalating by removing write protection for other regions).
> >
> > The driver exists to assist a trusted firmware update process used on
> > some platforms where the host can request (e.g. via IPMI) that BMC RAM
> > be made writable, then drop its firmware update payload into a
> > predetermined location in physical memory, and finally complete the
> > transfer by requesting that RAM region be returned to at least read-only
> mode.
> >
> > To unlock unexpected regions of the BMC's address space in this
> > scenario the host would also have to exploit IPMI to craft an ioctl()
> > payload with the properties to trigger the overflow. Given that it
> > already has complete write access to RAM it may be easier to just
> > exploit the BMC kernel directly rather than chain an exploit through at least
> one other userspace process.
> >
> > Anyway, enough background :) Thanks for the bug report and for
> > analyzing the driver. Hopefully Patrick can take a look and cook up a fix.
> 
Hi Andrew and Patrick,
Thank you so much for this vivid enlightening explanation! The driver code has never been this clear.
Although it was a lot for me to digest but it undoubtedly helped a lot to understand how linux drivers actually worked.
You guys are the hero. : )

Changming Liu

> Yeah, this driver was deliberately written to enable accessing the memory
> regions controlled by the BMC, opening a security hole in the BMC.  It's part of
> the design.
> 
> >
> > Andrew
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
