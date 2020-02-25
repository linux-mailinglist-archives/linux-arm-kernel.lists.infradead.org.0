Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1795616EB0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bSWssCw5C5hFil2K8Ae2qGkiP816d4X6/GWZ9slFTc=; b=VkGVn205a+c0Tj
	qv9/pCm4ktiz7tqbfxsa4FTvghsCCmcXistTDiJUaQ/5vK0uLuQrOouSJjWYmL6Yk9S3AF34HP2cK
	RGAckaL6RUD/SixuHDlEWJzleb0NkStnEIZB+kVD8kUouwHr5NZBEkdFLNhrmo+zH0bJP0qdaeNGE
	5ObDA6oTx65NoeXYSdBtjpPeNvxMjOTLAsixH5ozY/2BEdly9kiTVAe+Z4YpAMhNUriJQj9jkfhWk
	x1OibbJlIGPGWWxo5P4LFhu8YuFllnT0Ix96Di+AM/yawGgOahguSqLAqQblBY3zsbszzdI1TCtRc
	P6dvx/3vZ3r+u0d2mm7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cqV-00073U-SC; Tue, 25 Feb 2020 16:14:07 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cq5-0006pX-OQ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:13:43 +0000
Received: by mail-oi1-x244.google.com with SMTP id a22so13038123oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 08:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iQt9JBS/u9pOLBPYOY44sDYRhlFn8qi+zgnYZqyr4R0=;
 b=VMvReRU/T+6mlVQboISuapv0XwjYvISEk03AMjO9fSrs8d2B7Q/yX+/GqeUZ78AQ3y
 P3DpHTh1WAVSCo99wJg89kD4B+pgQ2mYYyJgV34uxpluowHr0UHgZ4FF9+WrSUjjRUhn
 ce4LkeMEt1+jhBJf+jxLB6Khaib0KZ3dtFLsNLDmOqNcr9ebu0A6t0kubgpCCHbhrqFH
 UvowE34kxTY7p4kUjBQLnl3yus33MnvXP8VH7yAYNyPjc4Dj8w3u8koUrkSlzmZAxic8
 1awomjqLwqLTSajFpTGXwEUdCAGGgA7Ld81S0zBmEmijlIynzYV02SEqvH9/vQEuDF9l
 J70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iQt9JBS/u9pOLBPYOY44sDYRhlFn8qi+zgnYZqyr4R0=;
 b=S0QFgi4zAr193AU3/chGP6tA+H12Nq40UxYjbIn5+5w59ZMNLh6hmMj8D8gzrXX990
 liZi9q6MIWt5T/jnPBtzb8tOqdy+diuGtTxchyslYSoVXCp31pVKhGaks3XhPWSCKEtJ
 mTS+GLVTiS8GgtoT+LPNbyrlQPI+kzMpdeKSaw3qEKtO++0l/V4Q+rPGpmLyzKnckDPd
 OjRcngOPO2Ahk3c2zhh0rb//0ZVvGSohqLfiUt6/PMjvceqHs3p93REpNzuvaQdkScR0
 nsmZBWr+BQ0nGHIHaaiGzb7qfyGZ6VrZvte6g1OwUs02OXxueANPl8Bk3EF9JuWKvl8W
 o6Eg==
X-Gm-Message-State: APjAAAViG93aZneOzTR6be5sqsiAAQsUWxwUaPRi2HkS9lnIgfU2ASnz
 nLu9YlRR85ECetwDXfJREboqMpflYzKelvt8IaQfBg==
X-Google-Smtp-Source: APXvYqwookLmrv7B1GsJIw4kYqDgUIcNYvvO8a27Pcuixv1Q+cBTZIcTE3I60xNKf6LTZa/9b4PH8PQsD8FN9UCFdZY=
X-Received: by 2002:aca:4e02:: with SMTP id c2mr4274327oib.142.1582647219253; 
 Tue, 25 Feb 2020 08:13:39 -0800 (PST)
MIME-Version: 1.0
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
 <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
In-Reply-To: <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 25 Feb 2020 08:13:27 -0800
Message-ID: <CAJ+vNU3XVNkdHXbq-KJaRecSxpPxboVW5Cx7zVEv64Gm1dt+Vg@mail.gmail.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081341_932901_8EBADC9C 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 5:55 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-02-25 01:16, Tim Harvey wrote:
> > On Mon, Feb 24, 2020 at 4:50 PM Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> Tim,
> >>
> >> On 2020-02-25 00:35, Tim Harvey wrote:
> >> > Greetings,
> >> >
> >> > I'm trying to understand why enabling CONFIG_ARM64_SW_TTBR0_PAN on an
> >> > OcteonTX (CN80XX) SoC would cause the kernel to hang.
> >> >
> >> > Here's what I'm seeing using arch/arm64/defconfig +
> >> > CONFIG_ARM64_SW_TTBR0_PAN=y on a Gateworks Newport board with a
> >> > CN8030-1500BG676-SCP-P12-G SoC using the Marvell SDK-10.1.1.0 boot
> >> > firmware:
> >> >
> >> > Starting kernel ...
> >> >
> >> > [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x430f0a22]
> >> > [    0.000000] Linux version 5.5.0-00001-g2028a3b (tharvey@tharvey)
> >> > (gcc version 7.3.0 (Marvell Inc. Version: Marvell GCC7 build 238.0))
> >> > #2 SMP PREEMPT Mon Feb 24 16:20:24 PST 2020
> >> > [    0.000000] Machine model: Gateworks Newport CN80XX GW6404
> >> > [    0.000000] efi: Getting EFI parameters from FDT:
> >> > [    0.000000] efi: UEFI not found.
> >> > [    0.000000] cma: Reserved 64 MiB at 0x000000007c000000
> >> > [    0.000000] NUMA: NODE_DATA [mem 0x7bbe5100-0x7bbe6fff]
> >> > [    0.000000] Zone ranges:
> >> > [    0.000000]   DMA      [mem 0x0000000000500000-0x000000003fffffff]
> >> > [    0.000000]   DMA32    [mem 0x0000000040000000-0x000000007fffffff]
> >> > [    0.000000]   Normal   empty
> >> > [    0.000000] Movable zone start for each node
> >> > [    0.000000] Early memory node ranges
> >> > [    0.000000]   node   0: [mem 0x0000000000500000-0x000000007fffffff]
> >> > [    0.000000] Initmem setup node 0 [mem
> >> > 0x0000000000500000-0x000000007fffffff]
> >> > [    0.000000] On node 0 totalpages: 523008
> >> > [    0.000000]   DMA zone: 4076 pages used for memmap
> >> > [    0.000000]   DMA zone: 0 pages reserved
> >> > [    0.000000]   DMA zone: 260864 pages, LIFO batch:63
> >> > [    0.000000]   DMA32 zone: 4096 pages used for memmap
> >> > [    0.000000]   DMA32 zone: 262144 pages, LIFO batch:63
> >> > [    0.000000] psci: probing for conduit method from DT.
> >> > [    0.000000] psci: PSCIv1.1 detected in firmware.
> >> > [    0.000000] psci: Using standard PSCI v0.2 function IDs
> >> > [    0.000000] psci: Trusted OS resident on physical CPU 0x0
> >> > [    0.000000] psci: SMC Calling Convention v1.1
> >> > [    0.000000] percpu: Embedded 22 pages/cpu s53016 r8192 d28904 u90112
> >> > [    0.000000] pcpu-alloc: s53016 r8192 d28904 u90112 alloc=22*4096
> >> > [    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3
> >> > [    0.000000] Detected VIPT I-cache on CPU0
> >> > [    0.000000] CPU features: detected: GIC system register CPU
> >> > interface
> >> > [    0.000000] CPU features: detected: Cavium erratum 30115
> >> > [    0.000000] CPU features: detected: Kernel page table isolation
> >> > (KPTI)
> >>
> >> If this CPU is just another version of TX1, KPTI shouldn't get enabled
> >> on
> >> this HW, as it definitely breaks (see erratum 27456 and its
> >> consequences).
> >> Can you please enable CONFIG_CAVIUM_ERRATUM_27456 and report back?
> >>
> >
> > Marc,
> >
> > This is a CN8030 Pass 1.2 part so erratum 27456 does appear to be
> > needed and it is indeed enabled already in the kernel by default.
>
> And yet the kernel doesn't seem to detect an affected silicon.
> Can you please apply the following patch and report what happens
> (including the full dmesg):
>
> diff --git a/arch/arm64/kernel/cpu_errata.c
> b/arch/arm64/kernel/cpu_errata.c
> index 703ad0a84f99..c0890d882e56 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -672,7 +672,7 @@ const struct midr_range cavium_erratum_27456_cpus[]
> = {
>         /* Cavium ThunderX, T88 pass 1.x - 2.1 */
>         MIDR_RANGE(MIDR_THUNDERX, 0, 0, 1, 1),
>         /* Cavium ThunderX, T81 pass 1.0 */
> -       MIDR_REV(MIDR_THUNDERX_81XX, 0, 0),
> +       MIDR_ALL_VERSIONS(MIDR_THUNDERX_81XX),
>         {},
>   };
>   #endif
>

Marc,

That does enable the erratum, disable KPTI and boot properly but I
misread the erratum and it shouldn't be needed for T81 pass 1.2... the
erratum is documented only needed for pass 1.0.

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
