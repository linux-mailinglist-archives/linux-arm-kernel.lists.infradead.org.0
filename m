Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD7416B76E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 02:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jWgr5utlm/FVkIlXs25LkWaj1+zq7Pn/ccTOi5q7f24=; b=qmTusnsbQ0Wu2AHE4E7kcqNXW
	qXybqmN1+18lfy+UXtuRN+aHYgtqkBdXlH54FGiCZTWCRjbpEIHLZAL0SBaSJ01xYRo+KR/g69108
	rOQhYKiy0s+18mAlfuE+x3NMde3VKot+n+JYOd1dzj/e2yC2Cu8e4ySnimNo22EQnuwwv00odYqsr
	JrkfBO9CE3+/MJL1uSxrNET5cuovveQP7KhJtBIx08zervIzSS0oSvZzVr/2oPIB6R2CLZ8zDC5Oi
	ZTsh8wqOpk/3al6kAVrpuWavivDo7mHwSgjvGdyT8bmQaEM69xQXJeyUfc7NtdAGetBQz0AQ3kNRz
	QbxaJtvWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6PRe-00007v-Vm; Tue, 25 Feb 2020 01:55:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6PRW-00007U-FR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 01:55:28 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76B89218AC;
 Tue, 25 Feb 2020 01:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582595725;
 bh=BKoZoiZOzWMUlicGnA5j0dsvAcNX2LUFo3je98EtSm8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ul3Lt4z2Pfx9duRcQtXilwpx2XlsCDGOZQz9V6BzNHT57bmNxhF7vxNRkVKaItL18
 tb20jakqK13mbvKrfUnpgPFdYxvPDPr7yPEfcWk2lSlSjikZyfCuSPjhKIZWQq00rC
 Bc2EQbkfiL05npIpvZgDIGq2pZjyojAhk4iaGeuA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j6PRT-007hzP-PS; Tue, 25 Feb 2020 01:55:23 +0000
MIME-Version: 1.0
Date: Tue, 25 Feb 2020 01:55:23 +0000
From: Marc Zyngier <maz@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
In-Reply-To: <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
Message-ID: <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: tharvey@gateworks.com, linux-arm-kernel@lists.infradead.org,
 will@kernel.org, catalin.marinas@arm.com, sgoutham@marvell.com,
 rrichter@marvell.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_175526_558620_AAF35169 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-25 01:16, Tim Harvey wrote:
> On Mon, Feb 24, 2020 at 4:50 PM Marc Zyngier <maz@kernel.org> wrote:
>> 
>> Tim,
>> 
>> On 2020-02-25 00:35, Tim Harvey wrote:
>> > Greetings,
>> >
>> > I'm trying to understand why enabling CONFIG_ARM64_SW_TTBR0_PAN on an
>> > OcteonTX (CN80XX) SoC would cause the kernel to hang.
>> >
>> > Here's what I'm seeing using arch/arm64/defconfig +
>> > CONFIG_ARM64_SW_TTBR0_PAN=y on a Gateworks Newport board with a
>> > CN8030-1500BG676-SCP-P12-G SoC using the Marvell SDK-10.1.1.0 boot
>> > firmware:
>> >
>> > Starting kernel ...
>> >
>> > [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x430f0a22]
>> > [    0.000000] Linux version 5.5.0-00001-g2028a3b (tharvey@tharvey)
>> > (gcc version 7.3.0 (Marvell Inc. Version: Marvell GCC7 build 238.0))
>> > #2 SMP PREEMPT Mon Feb 24 16:20:24 PST 2020
>> > [    0.000000] Machine model: Gateworks Newport CN80XX GW6404
>> > [    0.000000] efi: Getting EFI parameters from FDT:
>> > [    0.000000] efi: UEFI not found.
>> > [    0.000000] cma: Reserved 64 MiB at 0x000000007c000000
>> > [    0.000000] NUMA: NODE_DATA [mem 0x7bbe5100-0x7bbe6fff]
>> > [    0.000000] Zone ranges:
>> > [    0.000000]   DMA      [mem 0x0000000000500000-0x000000003fffffff]
>> > [    0.000000]   DMA32    [mem 0x0000000040000000-0x000000007fffffff]
>> > [    0.000000]   Normal   empty
>> > [    0.000000] Movable zone start for each node
>> > [    0.000000] Early memory node ranges
>> > [    0.000000]   node   0: [mem 0x0000000000500000-0x000000007fffffff]
>> > [    0.000000] Initmem setup node 0 [mem
>> > 0x0000000000500000-0x000000007fffffff]
>> > [    0.000000] On node 0 totalpages: 523008
>> > [    0.000000]   DMA zone: 4076 pages used for memmap
>> > [    0.000000]   DMA zone: 0 pages reserved
>> > [    0.000000]   DMA zone: 260864 pages, LIFO batch:63
>> > [    0.000000]   DMA32 zone: 4096 pages used for memmap
>> > [    0.000000]   DMA32 zone: 262144 pages, LIFO batch:63
>> > [    0.000000] psci: probing for conduit method from DT.
>> > [    0.000000] psci: PSCIv1.1 detected in firmware.
>> > [    0.000000] psci: Using standard PSCI v0.2 function IDs
>> > [    0.000000] psci: Trusted OS resident on physical CPU 0x0
>> > [    0.000000] psci: SMC Calling Convention v1.1
>> > [    0.000000] percpu: Embedded 22 pages/cpu s53016 r8192 d28904 u90112
>> > [    0.000000] pcpu-alloc: s53016 r8192 d28904 u90112 alloc=22*4096
>> > [    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3
>> > [    0.000000] Detected VIPT I-cache on CPU0
>> > [    0.000000] CPU features: detected: GIC system register CPU
>> > interface
>> > [    0.000000] CPU features: detected: Cavium erratum 30115
>> > [    0.000000] CPU features: detected: Kernel page table isolation
>> > (KPTI)
>> 
>> If this CPU is just another version of TX1, KPTI shouldn't get enabled
>> on
>> this HW, as it definitely breaks (see erratum 27456 and its
>> consequences).
>> Can you please enable CONFIG_CAVIUM_ERRATUM_27456 and report back?
>> 
> 
> Marc,
> 
> This is a CN8030 Pass 1.2 part so erratum 27456 does appear to be
> needed and it is indeed enabled already in the kernel by default.

And yet the kernel doesn't seem to detect an affected silicon.
Can you please apply the following patch and report what happens
(including the full dmesg):

diff --git a/arch/arm64/kernel/cpu_errata.c 
b/arch/arm64/kernel/cpu_errata.c
index 703ad0a84f99..c0890d882e56 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -672,7 +672,7 @@ const struct midr_range cavium_erratum_27456_cpus[] 
= {
  	/* Cavium ThunderX, T88 pass 1.x - 2.1 */
  	MIDR_RANGE(MIDR_THUNDERX, 0, 0, 1, 1),
  	/* Cavium ThunderX, T81 pass 1.0 */
-	MIDR_REV(MIDR_THUNDERX_81XX, 0, 0),
+	MIDR_ALL_VERSIONS(MIDR_THUNDERX_81XX),
  	{},
  };
  #endif

Thanks,

         M.

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
