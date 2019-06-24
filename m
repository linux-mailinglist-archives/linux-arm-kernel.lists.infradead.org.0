Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B9C50076
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 06:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7iGdbHbEFurWBySdFWUYLQUmu1Ev98nQiZcrZZ1KfG8=; b=pD/bvTlkdHMoU1
	x3cV8ylbo1waWuFKANVaSXB/wtPFNsM4KKVlNNPZ1EMmAknSII7UlVq+e13mNS5WY3ZeDc8hSEziL
	Fileei2cAR7rLImQAWEO2cpdWmB9qbys/vSVfoCawH2Rc0e5i6iyVfTH8FPHWIAkmbbVWQwE8o44b
	+ZyrC2ICJasThMcAzfrRT7ob/1wOOSWsLKa7E7S01piAU4ziszGbnY4T5zwHHHfA/TvwmmcsdVsCG
	f8Hs3zktWVbl7BuU/qD82ICyBq8xGX8aubXJCGHfbSTWNWZXeCM3+ZMTjT+rROZTh5K4Yct+lFl/K
	tk9H5gPH1E5ZVl/vohog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfGHk-0002Q6-IW; Mon, 24 Jun 2019 04:08:52 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfGHX-0002Op-SF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 04:08:42 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id CDBA98365D;
 Mon, 24 Jun 2019 16:08:21 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1561349301;
 bh=zla6gqgu/QGAoBJC/d/BI1oq50bbnGBXXybMEGpiuGU=;
 h=From:To:CC:Subject:Date:References;
 b=VbJ3z4Q878gfLfSdUG0sV5ZcJQY9sb5FBes4tO2HhG66RVIYoCnXRQHMxwrB3ZsLA
 Nnlqyd4/yI2uFvMjuMQzg0zFnr8hNgby1HDiL6GbERlMLsve6fA7GuTVKsR/FytSEY
 0rEoRnG0sf/+boIjNUVBAPnhQYrkh/6DUGA0Yn/RdSFlNwLNtUe4GL5Y+D2MmTmGcF
 IpAhd+KeeLLwGffTw1DtD+plNTZc13hDILU7RtvEWDyYvWOqPNiPAFY9JyFkSpMzh+
 1SrpW3L3kJK/WkssF4h9FE3y/GxkDcGUR2trJsNxDVnbaIXGjtstbWIuw0YDD26XbI
 hWhCGkP30OGVQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d104cb50000>; Mon, 24 Jun 2019 16:08:22 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Mon, 24 Jun 2019 16:08:20 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Mon, 24 Jun 2019 16:08:20 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: Kirkwood PCI Express and bridges
Thread-Topic: Kirkwood PCI Express and bridges
Thread-Index: AQHVJ+ZHqWcIqP7kgUutSbOlaor9TQ==
Date: Mon, 24 Jun 2019 04:08:20 +0000
Message-ID: <936d1790c94f4b9c884bc79819b8b777@svr-chch-ex1.atlnz.lc>
References: <403548ec3a7543b08ca32e47a1465e70@svr-chch-ex1.atlnz.lc>
 <20190621073318.3bcd940e@windsurf>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_210840_293584_01A2529F 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Thomas,

On 21/06/19 6:17 PM, Thomas Petazzoni wrote:
> Hello Chris,
> 
> On Fri, 21 Jun 2019 04:03:27 +0000
> Chris Packham <Chris.Packham@alliedtelesis.co.nz> wrote:
> 
>> I'm in the process of updating the kernel version used on our products
>> from 4.4 -> 5.1.
>>
>> We have one product that uses a Kirkwood CPU, IDT PCI bridge and Marvell
>> Switch ASIC. The Switch ASIC presents as multiple PCI devices.
>>
>> The hardware setup looks like this
>>                                        __________
>> [ Kirkwood ] --- [ IDT 5T5 ] ---+---  |          |
>>                                 +---  |  Switch  |
>>                                 +---  |          |
>>                                 +---  |__________|
>>
>> On the 4.4 based kernel things are fine
>>
>> [root@awplus flash]# lspci -t
>> -[0000:00]---01.0-[01-06]----00.0-[02-06]--+-02.0-[03]----00.0
>>                                              +-03.0-[04]----00.0
>>                                              +-04.0-[05]----00.0
>>                                              \-05.0-[06]----00.0
>>
>> But on the 5.1 based kernel things get a little weird
>>
>> [root@awplus flash]# lspci -t
>> -[0000:00]---01.0-[01-06]--+-00.0-[02-06]--
>>                              +-01.0
>>                              +-02.0-[02-06]--
>>                              +-03.0-[02-06]--
>>                              +-04.0-[02-06]--
>>                              +-05.0-[02-06]--
>>                              +-06.0-[02-06]--
>>                              +-07.0-[02-06]--
>>                              +-08.0-[02-06]--
>>                              +-09.0-[02-06]--
>>                              +-0a.0-[02-06]--
>>                              +-0b.0-[02-06]--
>>                              +-0c.0-[02-06]--
>>                              +-0d.0-[02-06]--
>>                              +-0e.0-[02-06]--
>>                              +-0f.0-[02-06]--
>>                              +-10.0-[02-06]--
>>                              +-11.0-[02-06]--
>>                              +-12.0-[02-06]--
>>                              +-13.0-[02-06]--
>>                              +-14.0-[02-06]--
>>                              +-15.0-[02-06]--
>>                              +-16.0-[02-06]--
>>                              +-17.0-[02-06]--
>>                              +-18.0-[02-06]--
>>                              +-19.0-[02-06]--
>>                              +-1a.0-[02-06]--
>>                              +-1b.0-[02-06]--
>>                              +-1c.0-[02-06]--
>>                              +-1d.0-[02-06]--
>>                              +-1e.0-[02-06]--
>>                              \-1f.0-[02-06]--+-02.0-[03]----00.0
>>                                              +-03.0-[04]----00.0
>>                                              +-04.0-[05]----00.0
>>                                              \-05.0-[06]----00.0
>>
>>
>> I'll start bisecting to see where things started going wrong. I just
>> wondered if this rings any bells for anyone.
> 
> I am almost sure that the culprit is
> 1f08673eef1236f7d02d93fcf596bb8531ef0d12 ("PCI: mvebu: Convert to PCI
> emulated bridge config space").

The problem seems to pre-date this commit. I've gone back as far as 4.18 
and the problem still exists (in fact there are more duplicate devices). 
I'll keep going back (unfortunately due to out platform being out of 
tree it's not a simple bisect).

> I still think it makes sense to share the bridge emulation code between
> the mvebu and aardvark drivers, but this sharing has required making
> the code very different, with lots of subtle differences in behavior in
> how registers are emulated.

Agreed. Bugs love to hide in duplicated code.

I will admit to being ignorant about the need for an emulated bridge. I 
know it has something to do with the type of transaction used for the 
downstream devices. I also know that these systems won't work without an 
emulated bridge.

> Unfortunately, I don't have access to one of these complicated PCI
> setup with a HW switch on the way, so I couldn't test this kind of
> setups.
> 
> Do you mind helping with figuring out what the issues are ? That would
> be really nice.

No problem. As I said I'll keep going to find a point where behaviour 
turns bad for me. I suspect we might find other problems along the way.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
