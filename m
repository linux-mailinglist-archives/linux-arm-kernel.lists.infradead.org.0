Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE5311CEAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=THkfiqD9mR9eYlCwNeLvsfcMDY9iEnljuJQuoSctZeQ=; b=qST61+ndA/weOaez5PhwdvtIQ
	jjFL6gUBFmmegPujyHQ4to62z4ycnZv71qG16mKY/xGJ2uk0OrY6KED6vjWUc8AFaB7b8Fs0JEEOk
	H2tpezMZEBYdFine1y3bL38JiTD5HLW7948TMg2NHY7AEckXXF3SsgmXN5sA6govjZBKKLZUstJna
	IRgRkVgfE7U76jbFFaPW1Su31dxK7D5umwCpq2XEeWLr9o9VFANc3DWjrfehNdBMdC8bwvyJgVdoT
	Ct6koe7+NJle+AKzgjW42/KxpvbCjSKYEQo1WQmdmsg3SEvyjRyIVueza2OBAz5Urh9bi0o9WohB6
	4d56bNwVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOmF-0007Af-L0; Thu, 12 Dec 2019 13:45:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOm0-00079L-U5
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 13:44:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D4D530E;
 Thu, 12 Dec 2019 05:44:54 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 17E8B3F718;
 Thu, 12 Dec 2019 05:44:52 -0800 (PST)
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
To: Andre Przywara <andre.przywara@arm.com>, Bjorn Helgaas <helgaas@kernel.org>
References: <20191211201725.GA30513@google.com>
 <9ad40b55-0d31-a7b7-9f99-ea281fd4ad7d@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <46bfdd37-c8a2-f0e2-b0b4-0a40a129d4cb@arm.com>
Date: Thu, 12 Dec 2019 13:44:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9ad40b55-0d31-a7b7-9f99-ea281fd4ad7d@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_054457_062100_21D90990 
X-CRM114-Status: GOOD (  29.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/2019 11:05 am, Andre Przywara wrote:
> On 11/12/2019 20:17, Bjorn Helgaas wrote:
> 
> Hi Bjorn,
> 
>> On Wed, Dec 11, 2019 at 11:00:49AM +0000, Andre Przywara wrote:
>>> On Tue, 10 Dec 2019 08:41:15 -0600
>>> Bjorn Helgaas <helgaas@kernel.org> wrote:
>>>> On Mon, Dec 09, 2019 at 04:06:38PM +0000, Andre Przywara wrote:
>>>>> From: Deepak Pandey <Deepak.Pandey@arm.com>
>>>>>
>>>>> The Arm N1SDP SoC suffers from some PCIe integration issues, most
>>>>> prominently config space accesses to not existing BDFs being answered
>>>>> with a bus abort, resulting in an SError.
>>>>
>>>> Can we tease this apart a little more?  Linux doesn't program all the
>>>> bits that control error signaling, so even on hardware that works
>>>> perfectly, much of this behavior is determined by what firmware did.
>>>> I wonder if Linux could be more careful about this.
>>>>
>>>> "Bus abort" is not a term used in PCIe.
>>>
>>> Yes, sorry, that was my sloppy term, also aiming more at the CPU
>>> side of the bus, between the cores and the RC.
>>>
>>>>   IIUC, a config read to a
>>>> device that doesn't exist should terminate with an Unsupported Request
>>>> completion, e.g., see the implementation note in PCIe r5.0 sec 2.3.1.
>>>
>>> Yes, that's what Lorenzo mentioned as well.
>>>
>>>> The UR should be an uncorrectable non-fatal error (Table 6-5), and
>>>> Figures 6-2 and 6-3 show how it should be handled and when it should
>>>> be signaled as a system error.  In case you don't have a copy of the
>>>> spec, I extracted those two figures and put them at [1].
>>>
>>> Thanks for that.
>>> So in the last few months we tossed several ideas around how to
>>> work-around this without kernel intervention, all of them turned out
>>> to be not working. There are indeed registers in the RC that
>>> influence error reporting to the CPU side, but even if we could
>>> suppress (or catch) the SError, we can't recover and fixup the read
>>> transaction to the CPU. Even Lorenzo gave up on this ;-) As far as I
>>> understood this, there are gates missing which are supposed to
>>> translate this specific UR into a valid "all-1s" response.
>>
>> But the commit log says firmware scanned the bus (catching the
>> SErrors).  Shouldn't Linux be able to catch them the same way?
> 
> Not really. The scanning is done by the SCP management processor, which is a Cortex-M class core on the same bus. So it's a simple, single core running very early after power-on, when the actual AP cores are still off. The SError handler is set to just increase a value, then to return. This value is then checked before and after a config space access for a given
> BDF: https://git.linaro.org/landing-teams/working/arm/n1sdp-pcie-quirk.git/tree/scp
> 
> On the AP cores that run Linux later on this is quite different: The SError is asynchronous, imprecise (inexact) and has no syndrome information. That means we can't attribute this anymore to the faulting instruction, we don't even know if it happened due to this config space access. The CPU might have executed later instructions already, so the state is broken at this point. SError basically means: the system is screwed up.
> Because this is quite common for SErrors, we don't even allow to register SError handlers in arm64 Linux.

Furthermore, on the main application processor, SError might be 
delivered to EL3 firmware well beyond the reach of Linux, so we can make 
zero assumptions about how it's handled and whether we'll ever see it, 
or survive the result (EL3 is at liberty to say "oh, something went 
wrong, I'll reset the system immediately").

Robin.
> So even if we could somehow handle this is in Linux, it would be a much greater and intrusive hack, so I'd rather stick with this version.
>   
>> The "all-1s" response directly from hardware is typical of most
>> platforms, but I don't think it's strictly required by the PCIe spec
>> and I don't think it's absolutely essential even to Linux.  If you can
>> catch the SErrors, isn't there a way for software to fabricate that
>> all-1s data and continue after the read?
> 
> That was an idea we had as well, but due to the points mentioned above this is not possible.
> 
>>>> Even ECAM compliance is not really minor -- if this controller were
>>>> fully compliant with the spec, you would need ZERO Linux changes to
>>>> support it.  Every quirk like this means additional maintenance
>>>> burden, and it's not just a one-time thing.  It means old kernels that
>>>> *should* "just work" on your system will not work unless somebody
>>>> backports the quirk.
>>>
>>> I am well aware of that, and we had quite some discussions
>>> internally, with quite some opposition.  ...
>>
>> The main point is that *future* silicon should be designed to avoid
>> this issue.  I hope at least that part was not controversial.
> 
> Yes, the design goal was to be completely standards (SBSA, ACPI, ECAM) compliant, it was just the usual "things happen" that wasn't spotted in time.
> 
>> If we want to take advantage of the generic PCI code supplied by
>> Linux, we have to expect that the hardware will play by the rules of
>> PCI.
> 
> You don't need to convince me ;-), but I think the lesson has been learned.
> 
> Cheers,
> Andre.
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
