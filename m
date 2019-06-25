Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA705208B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 04:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8gGUPOyMJ5slvNbTRY+t0/GdSVric2gJgraV6EEvGs8=; b=Qi14sHHcOE/pbw
	qxaCi9nUBh2nhzGquJxGcal+ykuvPGR3yIyD0xqQgfLuoxQSxvUyBBFkeLMvnkm00TUkiMnjfz/Su
	nkmQP0HHqeNqJa4BuHr9xVM+MWZ18tghePwxXzos1/zL5ul1hRhKBMZPlmGDFi1V+uy6C/9riNaha
	qBcsPtRLCBfHW67IWnKnSeOfsfk1vCT72awJfLEQBcpgaS7SW/f2Z4b4dnPjdVlU9Vz6zgUBvZ5pz
	GnqKHQB//Sm+xDgLd22is/CFjtGwdsFciX4siVkNpcmh4OWCdo0sl5wngGaliHVM3IgR+ItpeY/yC
	7DO2jXBANZrLkg5l5iAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfapn-0000Dz-VH; Tue, 25 Jun 2019 02:05:23 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfapf-00005C-1W
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 02:05:17 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 41E47886BF;
 Tue, 25 Jun 2019 14:05:05 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1561428305;
 bh=+6URSfGtIdmUEn9Jok/S4j5d2CkYStHkZ1g8pNXng0E=;
 h=From:To:CC:Subject:Date:References;
 b=0k0CcKHQFnLwzTLuvJNcizX25qlsvfR4/h0JHu6wP2R8r0WiwGJF1d77CLG9OvbW8
 +q8ppt+u/Pb9+Si21qLowc4HwYnxuTDEIBneMFHuTnU2dR4cLQ69NVEa4erK6Zoi+T
 q5aMND/wS+kVACUSsJpIyboMj1IT0esbC6t+0HUeSI7Qkc7eHykIHs7kwLrZ+NtKmu
 D0ynAAVrBnQcWWAI26AADyrWxOZVh9uD56z9cHYB2ooP0l5uHVS5gcazUAPlwg4Szi
 mEXxdhwB/Azuw+KQvQ5fkGX3kEr0YSsYAw7Eg0ygcJugOmEfRlK0TE5kjArd3yAF1/
 XCa45k36Q5pFA==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d1181510000>; Tue, 25 Jun 2019 14:05:05 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Tue, 25 Jun 2019 14:05:05 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Tue, 25 Jun 2019 14:05:05 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: Kirkwood PCI Express and bridges
Thread-Topic: Kirkwood PCI Express and bridges
Thread-Index: AQHVJ+ZHqWcIqP7kgUutSbOlaor9TQ==
Date: Tue, 25 Jun 2019 02:05:04 +0000
Message-ID: <dc50b20e47d94f2294b3d8889d0468c4@svr-chch-ex1.atlnz.lc>
References: <403548ec3a7543b08ca32e47a1465e70@svr-chch-ex1.atlnz.lc>
 <20190621073318.3bcd940e@windsurf>
 <936d1790c94f4b9c884bc79819b8b777@svr-chch-ex1.atlnz.lc>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.32.1.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_190515_469137_8FFE5D43 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/06/19 4:08 PM, Chris Packham wrote:
> Hi Thomas,
> 
> On 21/06/19 6:17 PM, Thomas Petazzoni wrote:
>> Hello Chris,
>>
>> On Fri, 21 Jun 2019 04:03:27 +0000
>> Chris Packham <Chris.Packham@alliedtelesis.co.nz> wrote:
>>
>>> I'm in the process of updating the kernel version used on our products
>>> from 4.4 -> 5.1.
>>>
>>> We have one product that uses a Kirkwood CPU, IDT PCI bridge and Marvell
>>> Switch ASIC. The Switch ASIC presents as multiple PCI devices.
>>>
>>> The hardware setup looks like this
>>>                                         __________
>>> [ Kirkwood ] --- [ IDT 5T5 ] ---+---  |          |
>>>                                  +---  |  Switch  |
>>>                                  +---  |          |
>>>                                  +---  |__________|
>>>
>>> On the 4.4 based kernel things are fine
>>>
>>> [root@awplus flash]# lspci -t
>>> -[0000:00]---01.0-[01-06]----00.0-[02-06]--+-02.0-[03]----00.0
>>>                                               +-03.0-[04]----00.0
>>>                                               +-04.0-[05]----00.0
>>>                                               \-05.0-[06]----00.0
>>>
>>> But on the 5.1 based kernel things get a little weird
>>>
>>> [root@awplus flash]# lspci -t
>>> -[0000:00]---01.0-[01-06]--+-00.0-[02-06]--
>>>                               +-01.0
>>>                               +-02.0-[02-06]--
>>>                               +-03.0-[02-06]--
>>>                               +-04.0-[02-06]--
>>>                               +-05.0-[02-06]--
>>>                               +-06.0-[02-06]--
>>>                               +-07.0-[02-06]--
>>>                               +-08.0-[02-06]--
>>>                               +-09.0-[02-06]--
>>>                               +-0a.0-[02-06]--
>>>                               +-0b.0-[02-06]--
>>>                               +-0c.0-[02-06]--
>>>                               +-0d.0-[02-06]--
>>>                               +-0e.0-[02-06]--
>>>                               +-0f.0-[02-06]--
>>>                               +-10.0-[02-06]--
>>>                               +-11.0-[02-06]--
>>>                               +-12.0-[02-06]--
>>>                               +-13.0-[02-06]--
>>>                               +-14.0-[02-06]--
>>>                               +-15.0-[02-06]--
>>>                               +-16.0-[02-06]--
>>>                               +-17.0-[02-06]--
>>>                               +-18.0-[02-06]--
>>>                               +-19.0-[02-06]--
>>>                               +-1a.0-[02-06]--
>>>                               +-1b.0-[02-06]--
>>>                               +-1c.0-[02-06]--
>>>                               +-1d.0-[02-06]--
>>>                               +-1e.0-[02-06]--
>>>                               \-1f.0-[02-06]--+-02.0-[03]----00.0
>>>                                               +-03.0-[04]----00.0
>>>                                               +-04.0-[05]----00.0
>>>                                               \-05.0-[06]----00.0
>>>
>>>
>>> I'll start bisecting to see where things started going wrong. I just
>>> wondered if this rings any bells for anyone.
>>
>> I am almost sure that the culprit is
>> 1f08673eef1236f7d02d93fcf596bb8531ef0d12 ("PCI: mvebu: Convert to PCI
>> emulated bridge config space").
> 
> The problem seems to pre-date this commit. I've gone back as far as 4.18
> and the problem still exists (in fact there are more duplicate devices).
> I'll keep going back (unfortunately due to out platform being out of
> tree it's not a simple bisect).
> 
>> I still think it makes sense to share the bridge emulation code between
>> the mvebu and aardvark drivers, but this sharing has required making
>> the code very different, with lots of subtle differences in behavior in
>> how registers are emulated.
> 
> Agreed. Bugs love to hide in duplicated code.
> 
> I will admit to being ignorant about the need for an emulated bridge. I
> know it has something to do with the type of transaction used for the
> downstream devices. I also know that these systems won't work without an
> emulated bridge.
> 
>> Unfortunately, I don't have access to one of these complicated PCI
>> setup with a HW switch on the way, so I couldn't test this kind of
>> setups.
>>
>> Do you mind helping with figuring out what the issues are ? That would
>> be really nice.
> 
> No problem. As I said I'll keep going to find a point where behaviour
> turns bad for me. I suspect we might find other problems along the way.
> 

Some progress. Our defconfig had CONFIG_CMDLINE="pci=pcie_scan_all" in 
it. This dated back to before we were using a devicetree with our 
kirkwood platforms. At some point this started having an effect on the 
emulated bridge.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
