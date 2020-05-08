Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA461CBAE2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 00:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SdDcXaSM7uaj5q4L4mSPQU4G908Yq0Xy6MtnyoUTr9A=; b=Ha9e/66fvp/qrzzLNj2dvGidg
	MdXGUCFXnx8S5eITy0c1K2xmxiCu0N+fLZakZefu+FMKxgL8WBIcf//zFJlOvsIg2Dfb4w5AVZEK9
	DXlmK9wgG7JwNZ7UzNH1FPtjNTh5sOivOmDVIFde+9jTcvQjT23+pVQBj6XGIdv7m39YN3oD50OVP
	KkLRGRcBhizF5quC1AicHpKMKab88ly4O9G4fCnfQ4Yb2t+fEiSHi5G9BJ09MF/zW2JXFvu7VQYuG
	vVNYq+Hnx1NXB1aD14AAiHjuBEZJcI12s0/6FTnBVqcIqSUvqhE0lUytYW2KLE3VABxJddL+ZxI2N
	xgeB2NaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXBnU-0006GZ-Gq; Fri, 08 May 2020 22:48:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXBnL-0006FR-Jm
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 22:48:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E8601FB;
 Fri,  8 May 2020 15:48:35 -0700 (PDT)
Received: from [192.168.122.166] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1777A3F68F;
 Fri,  8 May 2020 15:48:34 -0700 (PDT)
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
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <97a9e145-bbaa-efb8-6215-dc3109ee7290@arm.com>
Date: Fri, 8 May 2020 17:48:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200508202722.GI298574@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_154839_741325_6C8991C6 
X-CRM114-Status: GOOD (  28.17  )
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

Hi,

On 5/8/20 3:27 PM, Andrew Lunn wrote:
>>> There is a very small number of devices where the vendor messed up,
>>> and did not put valid contents in the ID registers. In such cases, we
>>> can read the IDs from device tree. These are then used in exactly the
>>> same way as if they were read from the device.
>>>
>>
>> Is that the case here?
> 
> Sorry, I don't understand the question?

I was asking in general, does this machine report the ID's correctly. 
More directed at Calvin, but part of it is the board vendor too. So I 
suspect no one can really answer "yes", despite that seeming to be the case.



> 
>> Also, how much of this was caused by uboot being deficient
> 
> None. It is a silicon issue. The PHY chip simply has the wrong or no
> ID value in the registers.
> 
>>> Not exactly true. It is the combination of can the bus master do C45
>>> and can the device do C45. Unfortunately, we have no knowledge of the
>>> bus masters capabilities, if it can do C45. And many MDIO drivers will
>>> do a C22 transaction when asked to perform a C45 transaction. All new
>>> submissions for MDIO drivers i ask for EOPNOTSUPP to be returned if
>>> C45 is not supported. But we cannot rely on that. Too much history >
>>>>
>>>> I tend to agree with you on this. Even for DT, ideal case, IMO should be:
>>>>
>>>> 1) mdiobus_scan scans the mdiobus for c22 devices by reading phy id from
>>>> registers 2 and 3
>>>> 2) if not found scan for c45 devices <= looks like this is missing in Linux
>>>> 3) look for phy_id from compatible string.
>>>
>>> It is somewhat more complex, in that there are a small number of
>>> devices which will respond to both C22 and C45. Generally, you want to
>>> use C45 if supported. So you would want to do the C45 scan first. But
>>> then the earlier problem comes to play, you have no idea if the bus
>>> master actually correctly supports C45.
>>
>> But this shouldn't this be implied by the mdio vendor/model?
> 
> Nope. Many MDIO bus masters don't even appear in DT, because they are
> embedded into the MAC driver. The MAC driver just instantiates an MDIO
> device, maybe passing a pointer where to find the PHY properties in
> DT. If the MDIO bus master is in its own address range, then it
> probably does exist in device tree, and has a compatible string. But
> that just gets the driver loaded, it says nothing about what it is
> capable of, C22 and or C45. And there are cases where the MDIO bus is
> embedded inside an Ethernet switch, which is hanging off another MDIO
> bus, etc.

The embedded single mac:mdio per nic case seems like the normal case, 
and most of the existing ACPI described devices are setup that way. But 
at the same time, that shifts the c22/45 question to the nic driver, 
where use of a DSD property before instantiating/probing MDIO isn't 
really a problem if needed.

In fact this embedded nic/mac/mdio/phy 1:1:1 case, is likely a 
requirement for passthrough into a generic VM, otherwise someone has to 
create a virtual mdio, and pass the phy in for the nic/mac.

AFAIK, NXP's part avoids this despite having a shared MDIO, because the 
phy state never leaves the mgmt side of the picture. It monitors the 
state and then feeds that back into their nic mgmt complex rather than 
using it directly.
> 
>> How much of this can be simplified for ACPI buy ignoring the legacy and
>> putting some guides around the ACPI/platform requirements?
> 
> You can probably ignore the phy-idXXXX.YYYY compatible, since that is
> working around silicon issues, and put in place some guidelines that
> the PHY silicon needs to conform to the basics of C22 and C45 in terms
> of ID registers.
> 
> C45 you are going to need. ACPI tends to be more high end devices,
> which in general have higher speed network interfaces. Multi-Gige PHYs
> tend to be C45. But there is also interest in using ACPI on 1G PHYs
> where the majority is C22.

Oh, I was just trying to see if we can get away with saying things like 
"your phy's must respond as specified by the spec" and leave it at that 
for the time being to simplify the probing sequence. I'm not really sure 
we can represent the more complex switch/etc situations in ACPI either. 
There is a certain amount of "use DT if you machine doesn't conform to 
standards".


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
