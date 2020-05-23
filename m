Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC17D1DF3D1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 03:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/e97k0Q3eVDeBrpSxfomBWjQorZvgROTmEhyHSiiRYk=; b=GEsnFKZJfb0L3L
	g4Q+QGwxY9i6QxLfw+gRICPHzU18a92lt5Ykc5lSxCagQGcAN0s9c1Hqu8eiQFYUUC8tnPGXJQ4cR
	Cjcj+YSBISe+wdz+lHUHQA/SwTK8zet6f3zkvPpx6hhyVO9OM7TAeHo9W1VPNbPkhM8o+2KR0m5qf
	yPZe6e21tqathNqOJ85ZuagYNx/TFZ2LjxsSpoVXnCTRhnwDU8LgHKgD06bIt4QxGNPmZNkDJsBhD
	M3q6PPNlNa1RMpLw2N1oqazUtkQL9tg1fs1FfA+VF6BOvp/wn0MX6CzerNiNtV4qSqysdnNhnAMPa
	tl97ilCF255rusddeuRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcIu1-0004xz-GK; Sat, 23 May 2020 01:24:41 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcItt-0004xT-6H
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 01:24:35 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04N1ONZY122215;
 Fri, 22 May 2020 20:24:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590197063;
 bh=pc8GIbCeCGbGW+dH6N5QrFkDMQ4GvXVFsG0XIqTPplo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SbAjIaifncOFx0ks4RCylrSqylUM8uq5BtAEVysnNa8NfHN5GiBNQJorE0g1OGQ3p
 pmaMHRW9HJCbTSl4SmMy9Ki20mrlSActRpo4rGLeAH3w9bQ+5nDX5+8Lc80msM6hP8
 r3cU/dryBNsrwcNdMMMKBwWzFOn6xUlo1werTWXY=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04N1ON1l064608
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 22 May 2020 20:24:23 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 May 2020 20:24:22 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 May 2020 20:24:22 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04N1OJgZ108060;
 Fri, 22 May 2020 20:24:20 -0500
Subject: Re: [PATCH v4 07/14] PCI: cadence: Add new *ops* for CPU addr fixup
To: Rob Herring <robh@kernel.org>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-8-kishon@ti.com> <20200520213434.GA583923@bogus>
 <3f9cf6e5-94f8-4c54-aaee-c181b0e79f1f@ti.com>
 <CAL_Jsq+qcgKvauJ-GjsnmmpmRusyEJ6pRDpBOQKOadig4XfsxQ@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <44690fec-0b65-0192-75f7-e4fa086c4c0b@ti.com>
Date: Sat, 23 May 2020 06:54:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+qcgKvauJ-GjsnmmpmRusyEJ6pRDpBOQKOadig4XfsxQ@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_182433_358098_63A27976 
X-CRM114-Status: GOOD (  24.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, PCI <linux-pci@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 5/22/2020 10:15 PM, Rob Herring wrote:
> On Thu, May 21, 2020 at 5:35 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> Hi Rob,
>>
>> On 5/21/2020 3:04 AM, Rob Herring wrote:
>>> On Wed, May 06, 2020 at 08:44:22PM +0530, Kishon Vijay Abraham I wrote:
>>>> Cadence driver uses "mem" memory resource to obtain the offset of
>>>> configuration space address region, memory space address region and
>>>> message space address region. The obtained offset is used to program
>>>> the Address Translation Unit (ATU). However certain platforms like TI's
>>>> J721E SoC require the absolute address to be programmed in the ATU and not
>>>> just the offset.
>>>
>>> Once again, Cadence host binding is broken (or at least the example is).
>>> The 'mem' region shouldn't even exist. It is overlapping the config
>>> space and 'ranges':
>>>
>>>             reg = <0x0 0xfb000000  0x0 0x01000000>,
>>>                   <0x0 0x41000000  0x0 0x00001000>,
>>>                   <0x0 0x40000000  0x0 0x04000000>;
>>>             reg-names = "reg", "cfg", "mem";
>>>
>>>             ranges = <0x02000000 0x0 0x42000000  0x0 0x42000000  0x0 0x1000000>,
>>>                      <0x01000000 0x0 0x43000000  0x0 0x43000000  0x0 0x0010000>;
>>>
>>>
>>> 16M of registers looks a bit odd. I guess it doesn't matter
>>> unless you have a 32-bit platform and care about your virtual
>>> space. Probably should have been 3 regions for LM, RP, and AT looking
>>> at the driver.
>>
>> The "mem" region in never ioremapped. However $patch removes requiring to add
>> "mem" memory resource.
> 
> I was referring to ioremapping 'reg' region.
> 
>>>
>>> Whatever outbound address translation you need should be based on
>>> 'ranges'.
>>
>> You mean we don't need to add "new *ops* for CPU addr fixup"?. The issue is
>> ranges provides CPU address and PCI address. The CPU will access whatever is
>> populated in ranges to access the PCI bus. However while programming the ATU,
>> we cannot use the CPU address provided in ranges directly (in some platforms)
>> because the controller does not see the full address and only the lower 28bits.
> 
> Okay, that is clearer as to what the difference is. I think this
> should be 2 patches. One dropping 'mem' usage and using a mask and the
> 2nd making the mask per platform.

hmm okay.
> 
> Really, the parent node of the PCI controller should probably have
> 'ranges' and you could extract a mask from that. Looks like that is
> what you had for DRA7... I'm not sure if ABI stability is important
> for the Cadence platform. I'd assume that's just some IP eval system
> and probably not?

Right TI's J721E should be the first HW platform to use Cadence in mainline.
> 
> Why do you need an ops here? All you need is a mask value.

So how do we get platform specific mask? Use a different binding to specify the
mask value?
> 
>> This similar restriction was there with Designware (mostly an integration
>> issue) and we used *ops* to fixup the address that has to be programmed in ATU.
>> The Designware initially used a wrapper so that ranges property can be directly
>> used [1]. However this approach was later removed in [2]
>>
>> [1] -> https://lore.kernel.org/patchwork/patch/468523/
>> [2] -> https://lkml.org/lkml/2015/10/16/232
> 
> So while you had the data for a mask in DT, the driver now hardcodes it?

Yes, that's correct. Which approach should we use for Cadence?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
