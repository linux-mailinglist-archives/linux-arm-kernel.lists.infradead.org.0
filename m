Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28032CD200
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 15:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAXiIM7QlR/08Har0YBXHZuHMB3VbIq0/zbmqNzDh48=; b=L3mJ/TDw4ULcnl
	7JaBJJ6tWf+4t5j0SOTfCL8Xs79D1/xSOF/48BlKTXyMlBvHfpDkwgxHstcTDQudovNKsPHdOZ2+T
	WnpbyPIDLs3f6OhFBc12UKiA4MhKaGWzqPXdoenC/HDO3nTZLA5TT2bB1lktcpEiq9jMj3ZEHmgoz
	SYrU7FGOVEMdq2iTXeGVpHwRca+mANTOxRgpCudW48COUbyB1Sc+NJbxbk5f3JFP7D8gyWODLyAl5
	oFKhe/MGUuZM+ON+vFh6e3LHPmYHVV+T4nuGG0Qc4KJWZA2GDQJc2/fz7p3E5PICqXFQPPU16qWWn
	VZLY0WaqFWrMTnhHIZRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH6Lq-0005jS-FX; Sun, 06 Oct 2019 13:13:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH6Lc-0005ia-Ty; Sun, 06 Oct 2019 13:13:19 +0000
Received: from p57b777a5.dip0.t-ipconnect.de ([87.183.119.165]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iH6LV-0006Fv-DD; Sun, 06 Oct 2019 15:13:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Date: Sun, 06 Oct 2019 15:13:08 +0200
Message-ID: <1596764.niU1GBd6P2@phil>
In-Reply-To: <006d3ee0-2711-1b4e-d8cf-6a226fcad0e4@arm.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190819104313.fekk5cxxznoctvz5@willie-the-truck>
 <006d3ee0-2711-1b4e-d8cf-6a226fcad0e4@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_061317_116316_22C35701 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, vicencb@gmail.com,
 linux-rockchip@lists.infradead.org, andre.przywara@arm.com,
 Philipp Richter <richterphilipp.pops@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 6. Oktober 2019, 01:45:23 CEST schrieb Robin Murphy:
> On 2019-08-19 11:43 am, Will Deacon wrote:
> > On Mon, Aug 19, 2019 at 11:07:14AM +0100, Catalin Marinas wrote:
> >> On Sat, Aug 17, 2019 at 03:12:41PM +0200, Philipp Richter wrote:
> >>> I added "memtest=4" to the kernel cmdline and I'm getting very quicky
> >>> a "Internal error: synchronous external abort" panic.
> >> [...]
> >>> [    0.000000] early_memtest: # of tests: 4
> >>> [    0.000000]   0x0000000000200000 - 0x0000000002080000 pattern aaaaaaaaaaaaaaaa
> >>> [    0.000000]   0x0000000003a95000 - 0x00000000f8400000 pattern aaaaaaaaaaaaaaaa
> >>> [    0.000000] Internal error: synchronous external abort: 96000210 [#1] SMP
> >>
> >> At least it's a synchronous error ;).
> >>
> >>> [    0.000000] pc : early_memtest+0x16c/0x23c
> >> [...]
> >>> [    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400080)
> >>
> >> decodecode says:
> >>
> >>     0:   d2800002        mov     x2, #0x0                        // #0
> >>     4:   d2800001        mov     x1, #0x0                        // #0
> >>     8:   eb0400bf        cmp     x5, x4
> >>     c:   54000309        b.ls    0x6c  // b.plast
> >>    10:*  f9400080        ldr     x0, [x4]                <-- trapping instruction
> >>
> >> I guess that's the read of *p in memtest(). Writing *p probably
> >> generates asynchronous errors it you haven't seen it yet.
> >>
> >>> Is my board completely broken ? :(
> >>
> >> One possibility is that you don't have any memory where you think there
> >> is, so the mapping just doesn't translate to any valid physical
> >> location.
> >>
> >> Can you add some printk(addr) in do_sea() to see if it always faults on
> >> the same address?
> > 
> > Alternatively, just run it a few more times and see if the register dump
> > changes. Currently we've got:
> > 
> > [    0.000000] x5 : ffff8000f8400000 x4 : ffff800008400000
> > [    0.000000] x3 : 0000000008400000 x2 : 0000000000000000
> > [    0.000000] x1 : 0000000000000000 x0 : aaaaaaaaaaaaaaaa
> > 
> > so I'd guess that x3 is the faulting pa. The faulting (linear) VAs in the
> > originl report were 0xffff800009c74aa8 and 0xffff800009c08390, which is
> > still a way way off from this one :/
> > 
> > Looking at the TRM for the rk3328, there's 4gb of ram starting at pa 0x0,
> > so maybe some of it has been configured as secure or the memory controller
> > hasn't been properly initialised?
> 
> FWIW I've noticed my RK3399 board doing this too, now that I've started 
> using it in anger. I'm using a hacky firmware comprising upstream U-Boot 
> munged with the Rockchip miniloader and downstream Trusted Firmware 
> binaries,

any reason for that combination? For example the rockpro64 got ddr4 support
in upstream uboot recently.

> and it looks like that mismatch is the root of this problem. 
> Booting a different image based on the BSP U-boot shows that that's 
> passing a memory node with the range 0x8400000-0x9600000 entirely carved 
> out, so this is presumably claimed by the secure firmware/TEE and set to 
> abort Non-Secure accesses.

As TEE on PX30 is also one of my current projects, I've stumbled over that
memory issue. At least OP-TEE can get passed a location for a dtb during
startup which it then would modify to add a reserved section for its memory.

But that dtb generally is not the one, the kernel will actually use, but
instead only the one used by uboot. extlinux, tftp or whatever will normally
load and use a new dtb for the kernel which will likely not get that memory
reservation automatically?

I'm not yet sure how this is supposed to work in an all-upstream
configuration - I'm running upstream u-boot + upstream TF-A + upstream
OP-Tee in my project environment right now.

Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
