Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DECCCD52
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 01:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OQL4p46URJFlQ4z+TEwfAlbyvVveslb46ujABzg5g7Y=; b=K2gXbmkkU+/DzhD/vrDg7q1Hi
	qSkYDpOYRB0AAjpfgW6pzUJ6EPnrb+PiWHjAdXGJTo1m6FNdYXV2+NmQ22Uy2XvrMh+rVUnJS0KCk
	bhgF8bT/pLyeO+rtxXb7AWmoLvge1T2YJ2EmuE+ld1aArJQuiOHg9Ch0VJ4LFYYXX7CaYjN/rRkUW
	V/PiHLeH3W9zJx8CSjBMenY1oSxCfG0c1t8qRcoPKhxUoVbe4sv5FGas2Bk/vv0iRRipbMEBFYsdT
	/lAfIqsdxgDEl8wtiU+mJmJRfxjG+wC1BIITRPxz9znURYNdtxyVVGF7XCG9IpuZX+QTBM1b4504X
	15p0W8Ugw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGtk8-0002EE-L0; Sat, 05 Oct 2019 23:45:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGtjz-0002Dj-CE; Sat, 05 Oct 2019 23:45:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF50615AB;
 Sat,  5 Oct 2019 16:45:30 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3849F3F68E;
 Sat,  5 Oct 2019 16:45:29 -0700 (PDT)
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
 <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
 <CA+Vb7hpXfavS0k47Z0o=SkswO_jMmv3HN7RsUMdx=AHjvrD7LA@mail.gmail.com>
 <20190819100713.GA6117@arrakis.emea.arm.com>
 <20190819104313.fekk5cxxznoctvz5@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <006d3ee0-2711-1b4e-d8cf-6a226fcad0e4@arm.com>
Date: Sun, 6 Oct 2019 00:45:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20190819104313.fekk5cxxznoctvz5@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_164535_516506_45B41896 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: heiko@sntech.de, andre.przywara@arm.com, vicencb@gmail.com,
 linux-rockchip@lists.infradead.org,
 Philipp Richter <richterphilipp.pops@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-19 11:43 am, Will Deacon wrote:
> On Mon, Aug 19, 2019 at 11:07:14AM +0100, Catalin Marinas wrote:
>> On Sat, Aug 17, 2019 at 03:12:41PM +0200, Philipp Richter wrote:
>>> I added "memtest=4" to the kernel cmdline and I'm getting very quicky
>>> a "Internal error: synchronous external abort" panic.
>> [...]
>>> [    0.000000] early_memtest: # of tests: 4
>>> [    0.000000]   0x0000000000200000 - 0x0000000002080000 pattern aaaaaaaaaaaaaaaa
>>> [    0.000000]   0x0000000003a95000 - 0x00000000f8400000 pattern aaaaaaaaaaaaaaaa
>>> [    0.000000] Internal error: synchronous external abort: 96000210 [#1] SMP
>>
>> At least it's a synchronous error ;).
>>
>>> [    0.000000] pc : early_memtest+0x16c/0x23c
>> [...]
>>> [    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400080)
>>
>> decodecode says:
>>
>>     0:   d2800002        mov     x2, #0x0                        // #0
>>     4:   d2800001        mov     x1, #0x0                        // #0
>>     8:   eb0400bf        cmp     x5, x4
>>     c:   54000309        b.ls    0x6c  // b.plast
>>    10:*  f9400080        ldr     x0, [x4]                <-- trapping instruction
>>
>> I guess that's the read of *p in memtest(). Writing *p probably
>> generates asynchronous errors it you haven't seen it yet.
>>
>>> Is my board completely broken ? :(
>>
>> One possibility is that you don't have any memory where you think there
>> is, so the mapping just doesn't translate to any valid physical
>> location.
>>
>> Can you add some printk(addr) in do_sea() to see if it always faults on
>> the same address?
> 
> Alternatively, just run it a few more times and see if the register dump
> changes. Currently we've got:
> 
> [    0.000000] x5 : ffff8000f8400000 x4 : ffff800008400000
> [    0.000000] x3 : 0000000008400000 x2 : 0000000000000000
> [    0.000000] x1 : 0000000000000000 x0 : aaaaaaaaaaaaaaaa
> 
> so I'd guess that x3 is the faulting pa. The faulting (linear) VAs in the
> originl report were 0xffff800009c74aa8 and 0xffff800009c08390, which is
> still a way way off from this one :/
> 
> Looking at the TRM for the rk3328, there's 4gb of ram starting at pa 0x0,
> so maybe some of it has been configured as secure or the memory controller
> hasn't been properly initialised?

FWIW I've noticed my RK3399 board doing this too, now that I've started 
using it in anger. I'm using a hacky firmware comprising upstream U-Boot 
munged with the Rockchip miniloader and downstream Trusted Firmware 
binaries, and it looks like that mismatch is the root of this problem. 
Booting a different image based on the BSP U-boot shows that that's 
passing a memory node with the range 0x8400000-0x9600000 entirely carved 
out, so this is presumably claimed by the secure firmware/TEE and set to 
abort Non-Secure accesses.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
