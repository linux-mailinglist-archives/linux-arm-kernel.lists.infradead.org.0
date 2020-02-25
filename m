Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DAB16B714
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 02:16:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guNDnEfCwlkAzrLnWy5pelJxr6bskXkPhT4KLu5Shwg=; b=jpocykobsb1E71
	UkPY7+SQ47Ob96Ziv1ZRFT/d8rSSPCFTUAyEDUC+GmNMa+1xu8UpJV6NRkMOpoULILGp3gQpzpjg/
	IvOJoeFzBUqnJ5cNQHyyN/Xza0n+5AFkFdo6RgpSibLtfhr7A8JOzk7CLEOIsv1XC2CV9o+JdIK8D
	uDHlr8H8rZxERyNBGp1TFweNo4O1Id3K4PJJK4vd0ClXPAB1ZEDH/9L8N/UZnmYyaUg0oh2ZRMGBN
	DadLpg/8a3vAHEzA0L0HenGvK86l2T/SJJnosyhSx0g78VFtf3dJbWHAUg20S/E54sHXSKG4f4Upn
	KTqSOLUI20EgDwFIY5ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Oq6-0001ou-09; Tue, 25 Feb 2020 01:16:46 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Opw-0001oW-Sq
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 01:16:38 +0000
Received: by mail-ot1-x343.google.com with SMTP id r27so10568561otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 17:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ECeTyygDs0fIkAG5fcVbh9hoB1GdxCbpwL7VM3ixV/w=;
 b=mGu7H46YsUylsFwC3dIsXDb5SApNSjIDUZNXf/dif0H6mVF5p+ewnET+LLD7iPGwWr
 36sRRz86GojG2MWJLj73O0+azeOQ3m/jnnvW460rYs5chtehVwywFUdpAsUs9Jx1ydXP
 kjE+yfr3+Vyk6pBTLBhvLdBJGbwdn2TCjuVJiMFZ6FIV5A9bydoBz6VYaPFdXUBJL8F8
 7JA8MVQKJQJTxsurHYEcG1/bCzIn0GU+dwqk9aNzCAikAJfpXX4fnAq+82+HoBqSO0vZ
 ruMzihR0qTh6Sovus9gS1tRFk9HHkhueZGx44RK30y/jO/5nzkJg0kppksTOroiE6UUq
 zJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ECeTyygDs0fIkAG5fcVbh9hoB1GdxCbpwL7VM3ixV/w=;
 b=ugvgbG6ftm7wwmNtl09Y+qeZsrNu3lb9ehVuN+5pqeJOsqFdxntOqIzbWgZmSGHyyV
 vX1RDMtiXMWyXCuoneh7g4+MtkvezdxyCXCv5wSizf7qgO2yCzxxNmDBW8mpxr2m7kLm
 Ix3Ac+WYlJ6BGHESavCjlyimT0Z9qnQqvJC59BFGqS4lgoWJeClVKdoxshijtdwR7qpK
 MbVcGULDmem+2YhfgHSBR8TeGvU4QEF6Hur8/aev4AYFGO6RiyxMkn9InBbfqzy5lCRC
 Puq7MTgvP2/ZH52PxVm2zOQWMd2pXdvjCv4cAQH8d5ufc7SPKF6GVHsUgG4kVuN7r5sL
 lBLg==
X-Gm-Message-State: APjAAAVtWiPYaJBWxkbWHux37qfutRggKNpsia7V3xBeEuRUqzzHZmVc
 WH4dM1FTjGUP+og60eyxmydlXuD4/qYLDKdFcsk44A==
X-Google-Smtp-Source: APXvYqzNOs8upE0Ufi4KsKOMiwU9ptPvoz3zURxjclU19pKmxDa1M1CjICYRX9ezFTXUlth1wCw5jWejZctQCgxzMHU=
X-Received: by 2002:a9d:7842:: with SMTP id c2mr39738210otm.252.1582593395817; 
 Mon, 24 Feb 2020 17:16:35 -0800 (PST)
MIME-Version: 1.0
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
In-Reply-To: <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 24 Feb 2020 17:16:25 -0800
Message-ID: <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_171636_932383_DED047D6 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

On Mon, Feb 24, 2020 at 4:50 PM Marc Zyngier <maz@kernel.org> wrote:
>
> Tim,
>
> On 2020-02-25 00:35, Tim Harvey wrote:
> > Greetings,
> >
> > I'm trying to understand why enabling CONFIG_ARM64_SW_TTBR0_PAN on an
> > OcteonTX (CN80XX) SoC would cause the kernel to hang.
> >
> > Here's what I'm seeing using arch/arm64/defconfig +
> > CONFIG_ARM64_SW_TTBR0_PAN=y on a Gateworks Newport board with a
> > CN8030-1500BG676-SCP-P12-G SoC using the Marvell SDK-10.1.1.0 boot
> > firmware:
> >
> > Starting kernel ...
> >
> > [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x430f0a22]
> > [    0.000000] Linux version 5.5.0-00001-g2028a3b (tharvey@tharvey)
> > (gcc version 7.3.0 (Marvell Inc. Version: Marvell GCC7 build 238.0))
> > #2 SMP PREEMPT Mon Feb 24 16:20:24 PST 2020
> > [    0.000000] Machine model: Gateworks Newport CN80XX GW6404
> > [    0.000000] efi: Getting EFI parameters from FDT:
> > [    0.000000] efi: UEFI not found.
> > [    0.000000] cma: Reserved 64 MiB at 0x000000007c000000
> > [    0.000000] NUMA: NODE_DATA [mem 0x7bbe5100-0x7bbe6fff]
> > [    0.000000] Zone ranges:
> > [    0.000000]   DMA      [mem 0x0000000000500000-0x000000003fffffff]
> > [    0.000000]   DMA32    [mem 0x0000000040000000-0x000000007fffffff]
> > [    0.000000]   Normal   empty
> > [    0.000000] Movable zone start for each node
> > [    0.000000] Early memory node ranges
> > [    0.000000]   node   0: [mem 0x0000000000500000-0x000000007fffffff]
> > [    0.000000] Initmem setup node 0 [mem
> > 0x0000000000500000-0x000000007fffffff]
> > [    0.000000] On node 0 totalpages: 523008
> > [    0.000000]   DMA zone: 4076 pages used for memmap
> > [    0.000000]   DMA zone: 0 pages reserved
> > [    0.000000]   DMA zone: 260864 pages, LIFO batch:63
> > [    0.000000]   DMA32 zone: 4096 pages used for memmap
> > [    0.000000]   DMA32 zone: 262144 pages, LIFO batch:63
> > [    0.000000] psci: probing for conduit method from DT.
> > [    0.000000] psci: PSCIv1.1 detected in firmware.
> > [    0.000000] psci: Using standard PSCI v0.2 function IDs
> > [    0.000000] psci: Trusted OS resident on physical CPU 0x0
> > [    0.000000] psci: SMC Calling Convention v1.1
> > [    0.000000] percpu: Embedded 22 pages/cpu s53016 r8192 d28904 u90112
> > [    0.000000] pcpu-alloc: s53016 r8192 d28904 u90112 alloc=22*4096
> > [    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3
> > [    0.000000] Detected VIPT I-cache on CPU0
> > [    0.000000] CPU features: detected: GIC system register CPU
> > interface
> > [    0.000000] CPU features: detected: Cavium erratum 30115
> > [    0.000000] CPU features: detected: Kernel page table isolation
> > (KPTI)
>
> If this CPU is just another version of TX1, KPTI shouldn't get enabled
> on
> this HW, as it definitely breaks (see erratum 27456 and its
> consequences).
> Can you please enable CONFIG_CAVIUM_ERRATUM_27456 and report back?
>

Marc,

This is a CN8030 Pass 1.2 part so erratum 27456 does appear to be
needed and it is indeed enabled already in the kernel by default.

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
