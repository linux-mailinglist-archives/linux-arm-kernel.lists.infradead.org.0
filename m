Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D8315E83F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oo6yCNgBZuoMIOWxXzFUdD7bcjguT1Ugqkte4YaRyLs=; b=kbciHYMmhFEqycftt7aQ0g/I3
	ksnehgr3KUp/G4Sfo0HjJyC6oOIYl6eNh/hqgQ3BK7GGAtzkE03WyC1HbXZUSDydC30tkpQR/ZJsf
	E0jTgAO3d+35M8D8oBQMr9rhnhlwwhqibW7E22yLBYKDsuNduIwPGHB6QlUQzFIT/OR3zoD0ehcIf
	GRTnYbY7rZCDYd89ZWTe9Nm/d2iGQ9O+yG83JZdGl3MlyW019MFqqO9BcoRhCXhuYHOsz5XDvCU39
	VwU8rJrdr6hn83fCI7/R9QFmAGPHOIGoHngxsPMEqB40RRU0BXgIhr/QiKNo1qDRPs3I7Idk2QJn7
	JH7cHiSMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eJJ-00086U-9o; Fri, 14 Feb 2020 16:59:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dqr-0006E9-6y
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:30:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACE4C328;
 Fri, 14 Feb 2020 08:29:55 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 95FC63F68E;
 Fri, 14 Feb 2020 08:29:45 -0800 (PST)
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
To: Pankaj Bansal <pankaj.bansal@nxp.com>, Marc Zyngier <maz@kernel.org>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
 <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7e1ab651-1eb5-b461-1d21-6fd5c8f3ade8@arm.com>
Date: Fri, 14 Feb 2020 16:29:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_083001_463528_1516F217 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>,
 "nleeder@codeaurora.org" <nleeder@codeaurora.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "jon@solid-run.com" <jon@solid-run.com>, Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/02/2020 3:58 pm, Pankaj Bansal wrote:
[...]
>> I don't understand what you mean. Platform MSI using IORT uses the DevID of
>> end-points. How could the ITS could work without specifying a DevID?
>> See for example how the SMMUv3 driver uses platform MSI.
> 
> DevID is input ID for PCIe devices. BUT what would be the input ID for platform device? Are we saying that Platform devices can't specify an Input ID ?

No, from the IORT perspective, the input for the ID mappings belonging 
to a root complex is the PCI requester ID. The (ITS) DevID is the 
ultimate *output* of a root complex mapping.

Whilst you can indeed represent the MC as a black-box Named Component 
with an ID mapping range not using the "single mapping" flag, that means 
your input IDs come from some device-specific domain beyond the scope of 
IORT. That's why you can't easily get away from your special bus 
integration code.

>>> While, IORT spec doesn't specify any such limitation.
>>>
>>> we can easily update iort.c to remove this limitation.
>>> But, I am not sure how the input id would be passed from platform MSI
>>> GIC layer to IORT.
>>> Most obviously, the input id should be supplied by dev itself.
>>
>> Why should the device know about its own ID? That's a bus/interconnect thing.
>> And nothing should be passed *to* IORT. IORT is the source.
> 
> IORT is translation between Input IDs <-> Output IDs. The Input ID is still expected to be passed to parse IORT table.

...except for single mappings, where the input ID is ignored and the 
output ID is the "source", which is exactly what iort_node_get_id() 
deals with for devices represented in IORT. With what you're talking 
about, "the device" is *not* represented in IORT, but is something 
beyond the MC 'bridge'. Now it probably is technically possible to 
handle that somehow, but it's definitely not something that the existing 
code was ever designed to anticipate.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
