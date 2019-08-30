Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EE7A3937
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWSSVv4dPnat67hgIIFUqfQfGvftSvdhz8Tzkfq+FcQ=; b=h6oOEF3PBitipl
	tswZDVb7nJMor38sWumVx/nrBhNQr0cfDPyPbWdaLjizETU+2JjK9cN8MjKceMevWdy1jYUCQ0mmB
	xTgCZyOWB3fwMj966G2TRYadlydrJMbrLGxQ1Nd2Z1zX4q08UVWXCZykvw/vGi+oCsvrvPn32/86F
	FTe6q231uOnqhf1Ml699/iDfAI3dMa6q85RQR+JFMJnYFnZzkEeW5XeVY5LK9cegM2cBbURWt+ahv
	a3bEbgWWyEufV71vGg5kXYqjR74elNKKPkhc0vesJDAAs8/oPSQ8vdinGZiEivGcPJWaf4PjNQFHb
	Iw5PG6H2cdGt5V1w7dgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hrr-0008BM-DX; Fri, 30 Aug 2019 14:27:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hrZ-0008AP-Ue
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 14:26:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7556D344;
 Fri, 30 Aug 2019 07:26:53 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 868E83F703; Fri, 30 Aug 2019 07:26:51 -0700 (PDT)
Subject: Re: [PATCH v2 00/20] Initial support for Marvell MMP3 SoC
To: Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <244fdc87-0fe5-be79-d9cd-2395d0ac3f57@kernel.org>
 <424d2881edcaf7cedbfa5cbbf2e73aaff5355df3.camel@v3.sk>
 <08a0e65e-4a80-f611-e36e-8e3f70fa8113@kernel.org>
 <481e832401c148baf222639f10f494b90dcd23c9.camel@v3.sk>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <faf7b7e8-48b0-ba58-51e6-cb6a5ee44dfc@kernel.org>
Date: Fri, 30 Aug 2019 15:26:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <481e832401c148baf222639f10f494b90dcd23c9.camel@v3.sk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_072654_031293_B779DD71 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/08/2019 12:59, Lubomir Rintel wrote:
> On Fri, 2019-08-23 at 10:42 +0100, Marc Zyngier wrote:
>> On 23/08/2019 08:21, Lubomir Rintel wrote:
>>> On Thu, 2019-08-22 at 11:31 +0100, Marc Zyngier wrote:
>>>> On 22/08/2019 10:26, Lubomir Rintel wrote:
>>>>> Hi, 
>>>>>
>>>>> this is a second spin of a patch set that adds support for the Marvell
>>>>> MMP3 processor. MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad
>>>>> FZ-A1 tablet and Dell Wyse 3020 Tx0D thin clients. 
>>>>>
>>>>> Compared to v1, there's a handful of fixes in response to reviews. Patch
>>>>> 02/20 is new. Details in individual patches.
>>>>>  
>>>>> Apart from the adjustments in mach-mmp/, the patch makes necessary 
>>>>> changes to the irqchip driver and adds an USB2 PHY driver. The latter 
>>>>> has a dependency on the mach-mmp/ changes, so it can't be submitted 
>>>>> separately.
>>>>>  
>>>>> The patch set has been tested to work on Wyse Tx0D and not ruin MMP2 
>>>>> support on XO-1.75. 
>>>>
>>>> How do you want this series to be merged? I'm happy to take the irqchip
>>>> related patches as well as the corresponding DT change (once reviewed)
>>>> through my tree.
>>>
>>> I was hoping for the Arm SoC tree, because there are some dependencies
>>> (MMP3 USB PHY depends on MMP3 SoC).
>>>
>>> That said, the irqchip patches are rather independent and the only
>>> downside of them going in via a different tree will be that the other
>>> tree that will lack them won't boot on MMP3 (things will compile
>>> though). I don't know if that's okay. What's typically done in cases
>>> like these?
>>
>> I usually take the irqchip patches that can be built standalone (without
>> dependency on header files, for example). If you want them to go via
>> another tree, stick my
>>
>> 	Acked-by: Marc Zyngier <maz@kernel.org>
>>
>> on patches #6 through #9.
> 
> Actually, please go ahead and pick the irqchip patches into your tree.
> 
> The rest of the patch set may need a couple more spins, and it will be
> nice if it gets shorter.

Applied to irqchip-next.

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
