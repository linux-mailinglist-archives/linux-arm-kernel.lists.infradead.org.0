Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA0F1C9B69
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 21:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ATom3+NtAr4Xx9Bj4KwipfskYLLlJQS5HVntoKyTN44=; b=GiiQNLpIbtCuYHmRXMVCdvxc6
	Q+/HJpU6ECXuz48Minr7qtz5E8KdI68lMafNI0mqBUEfEnB9xrF96reRGOtUZO5KrDoXuAiOo+H+z
	P8rd9wwdIQAi4HG1k2mdGtSVmr/qzhT88WsYFC3VK49ZlQwksTfF9ON7SH1UsGUjPokEE35w7nsi1
	hIuRGFJKy25V8NsctG58/fB0SuIMdVW7yNphnJDcPQ9fTNFaFf0s8GoISnN488eM/88nA3lc7qhLA
	URw/93s9C7nLjitxWcUegpXpQXJH4Mr2UEjIvxcXnyuJgilRzfZ9ZQ/p3zhXUh/5MrSj+TcSBKuk5
	eF5jAvPAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmb9-000733-Dq; Thu, 07 May 2020 19:54:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmb0-00071p-Da
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 19:54:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E7961FB;
 Thu,  7 May 2020 12:54:11 -0700 (PDT)
Received: from [192.168.122.166] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D60F83F68F;
 Thu,  7 May 2020 12:54:09 -0700 (PDT)
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
 <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <83ab4ca4-9c34-4cdd-4413-3b4cdf96727d@arm.com>
Date: Thu, 7 May 2020 14:54:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_125414_543134_DF6C0BD8 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Calvin Johnson <calvin.johnson@oss.nxp.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/7/20 12:27 PM, Andy Shevchenko wrote:
> On Thu, May 7, 2020 at 4:26 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
>> On 5/5/20 8:29 AM, Calvin Johnson wrote:
> 
>>> +             if (sscanf(cp, "ethernet-phy-id%4x.%4x",
>>> +                        &upper, &lower) == 2) {
>>> +                     *phy_id = ((upper & 0xFFFF) << 16) | (lower & 0xFFFF);
>>> +                     return 0;
>>> +             }
> 
>> Isn't the ACPI _CID() conceptually similar to the DT compatible
>> property?
> 
> Where?

Not, sure I understand exactly what your asking. AFAIK, in general the 
dt property is used to select a device driver/etc based on a more to 
less compatible set of substrings. The phy case is a bit different 
because it codes a numerical part number into the string rather than 
just using arbitrary strings to select a driver and device. But it uses 
that as a vendor selector for binding to the correct driver/device.

Rephrasing the ACPI spec, the _CID() is either a single compatible id, 
or a list of ids in order of preference. Each id is either a HID (string 
or EISA type id) or a bus specific string encoding vendor/device/etc. 
(https://elixir.bootlin.com/linux/v5.7-rc4/source/drivers/acpi/acpica/utids.c#L186). 
One of the examples is "PCI\VEN_vvvv&DEV_dddd"

So that latter case seems to be almost exactly what we have here.

> 
>> It even appears to be getting used in a similar way to
>> identify particular phy drivers in this case.
> 
> _CID() is a string. It can't be used as pure number.
> 

It does have a numeric version defined for EISA types. OTOH I suspect 
that your right. If there were a "PHY\VEN_IDvvvv&ID_DDDD" definition, it 
may not be ideal to parse it. Instead the normal ACPI model of exactly 
matching the complete string in the phy driver might be more appropriate.

Similarly to how I suspect the next patch's use of "compatible" isn't 
ideal either, because whether a device is c45 or not, should tend to be 
fixed to a particular vendor/device implementation and not a firmware 
provided property.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
