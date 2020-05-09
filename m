Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C161CBB9D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 02:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/IOtRoMz4pw4Dx4SpoMJFr5eT3c/uebNetF1aar+43c=; b=QfBoqbg74KeG36v+J6WyDxuxY
	szqco9Cfv/3ZUL60l+qMQyQASHWLkF0RdQ6RF3GK94vpxoAdhEbag7WGxWCG9wepLx6d/1K77+nQf
	b4whw4jCEynxKlxtoQfuY4b91KXHWwDDwyQ/KwW1g5V2cvMNHhX0d4Urd8nTrgJRkKc5wklkTXSk0
	2vcZO7EsRE/J8MFrVGWbMvHs7eeRV1BOgQJQamjjTX5MtMDRIqFcSvld7kCshvryfQTogVJy4GSmM
	Nmue8nFRJddYmFL8cGU3ur6KVhE5r+rNVd1Imbqux6ja5s2kqRT/7nLypt4ssuQTIQONAJo82ICUY
	2a39vByjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXD5n-0006au-0y; Sat, 09 May 2020 00:11:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXD5c-0006a9-DK
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 00:11:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCB73D6E;
 Fri,  8 May 2020 17:11:33 -0700 (PDT)
Received: from [192.168.122.166] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A3D893F68F;
 Fri,  8 May 2020 17:11:32 -0700 (PDT)
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
To: Andrew Lunn <andrew@lunn.ch>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
 <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
 <83ab4ca4-9c34-4cdd-4413-3b4cdf96727d@arm.com>
 <20200508160755.GB10296@lsv03152.swis.in-blr01.nxp.com>
 <20200508181301.GF298574@lunn.ch>
 <1e33605e-42fd-baf8-7584-e8fcd5ca6fd3@arm.com>
 <20200508202722.GI298574@lunn.ch>
 <97a9e145-bbaa-efb8-6215-dc3109ee7290@arm.com>
 <20200508234257.GA338317@lunn.ch>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <8e67dd6c-e83d-d366-9799-940708e6ae3d@arm.com>
Date: Fri, 8 May 2020 19:11:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200508234257.GA338317@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_171136_538881_1A9679C6 
X-CRM114-Status: GOOD (  26.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
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

On 5/8/20 6:42 PM, Andrew Lunn wrote:
> On Fri, May 08, 2020 at 05:48:33PM -0500, Jeremy Linton wrote:
>> Hi,
>>
>> On 5/8/20 3:27 PM, Andrew Lunn wrote:
>>>>> There is a very small number of devices where the vendor messed up,
>>>>> and did not put valid contents in the ID registers. In such cases, we
>>>>> can read the IDs from device tree. These are then used in exactly the
>>>>> same way as if they were read from the device.
>>>>>
>>>>
>>>> Is that the case here?
>>>
>>> Sorry, I don't understand the question?
>>
>> I was asking in general, does this machine report the ID's correctly.
> 
> Very likely, it does.
> 
>> The embedded single mac:mdio per nic case seems like the normal case, and
>> most of the existing ACPI described devices are setup that way.
> 
> Somebody in this thread pointed to ACPI patches for the
> MACCHIATOBin. If i remember the hardware correctly, it has 4 Ethernet
> interfaces, and two MDIO bus masters. One of the bus masters can only
> do C22 and the other can only do C45. It is expected that the busses
> are shared, not a nice one to one mapping.

Thats whats going on with the NXP too AFAIK. But the mcbin is one of the 
ones with the "compatible" embedded in the DSD properties.. AKA, they 
buried the entire DT node there.

> 
>> But at the same time, that shifts the c22/45 question to the nic
>> driver, where use of a DSD property before instantiating/probing
>> MDIO isn't really a problem if needed.
> 
> This in fact does not help you. The MAC driver has no idea what PHY is
> connected to it. The MAC does not know if it is C22 or C45. It uses
Thats all I was trying to say (the mac side capability is implied by the 
HID/CID that instantiates it).

> the phylib abstraction which hides all this. Even if you assume 1:1,
> use phy_find_first(), it will not find a C45 PHY because without
> knowing there is a C45 PHY, we don't scan for it. And we should expect
> C45 PHYs to become more popular in the next few years.
> 
>> In fact this embedded nic/mac/mdio/phy 1:1:1 case, is likely a requirement
>> for passthrough into a generic VM, otherwise someone has to create a virtual
>> mdio, and pass the phy in for the nic/mac.
>>
>> AFAIK, NXP's part avoids this despite having a shared MDIO, because the phy
>> state never leaves the mgmt side of the picture. It monitors the state and
>> then feeds that back into their nic mgmt complex rather than using it
>> directly.
> 
> That is the other model. Don't use Linux to drive the PHY, use
> firmware in the MAC. A number of MACs do that, but it has the usual
> problems of firmware. It limits you on your choice of PHYs, bugs in
> the firmware cannot be fixed by the community, no sharing of drivers
> because firmware is generally proprietary, no 'for free features'
> because somebody else added features to the linux PHY driver etc.  But
> it will make ACPI support simple, this whole discussion goes away, no
> ACPI needed at all.

Open source firmware! :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
