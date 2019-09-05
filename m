Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35475A978E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 02:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+G9b9xu96ctwciIe0Q7iODG4PU7XMlKjMENLb1M7CNw=; b=YbDkryTKWO2r2w
	IP+NqGEnBiGyl080olkMb4o50oLRu2Vb4w8UfpQEUOeTxH5Y1kyh2+PAFgTFkUAreRgjMnJ3HPjV2
	K+nLNxNy+mH1kqmZ0wYilJA0kwnBMj23AM0muU13uoBwW4G2MffuBwhX6Gwd3675tszKUgKvjVgHO
	spE6yazhgpmZGPR62xpXUsIOHQDnqsenC44nmCWYa4eRFN5R/T7kbacRkXoqH4R5oFOrAzW5iXxDH
	fcmNXuJf3+JZF1W55u9HJfpbKElYXZvYjbTqitlQueh2IludNQgGpYhlzfge2a6BKZ7EmZFBLaCys
	ydE6TBnpdWObNe3/m/hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5fRU-0001vX-GC; Thu, 05 Sep 2019 00:16:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5fRM-0001us-3P
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 00:15:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id w22so481441pfi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 17:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=0sdERW+9btcTv17qIe1HdaGWWdbQFJiSQuJmOBszJNA=;
 b=OkMkAAduhzh9MJC9e/VHgsZ657t9iOZypCWBXN9bZPDO6RDrsQ6IrhwHq8q3bDtun1
 Gi3B/wMmrAxWAeuVAXheei70yQqgmuilXjKz3Ndobk/uuXzWGFwzQlDMPnM/FPLIJCf2
 zonLEgeHKalH3qWuEYkT3FTvrH92Kytr2NYvhSxNNVB2b4IdQT0VMbdigHKbHwGskdBY
 0kNPDIRnKC4kdasaz/jZUp7KkMH9CpWGZt8KCUKsplDTyejm9A9TlsbFlJk2DAR5xwjO
 LVM3S0PVr7Dcwo+EksQ7KD51QsawqQfmWjN+eQS7kT4055ZddNoCxi8taRTVQrP+o6XG
 2nMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=0sdERW+9btcTv17qIe1HdaGWWdbQFJiSQuJmOBszJNA=;
 b=JZUi8sfVpw7TcSnzG21PqLVUDTWmyOLBfTZkA2CXNSvzPir5y4UVMv431RAPI6T7ra
 MyMlEuNRgJuKYWL1vO0yKWgReAJ50ax0jARXwORHKk3x/Z2DAu1GcscrbvAPyrLwMFt7
 bCHYy0uEiULq1zXCeymTOwNsBuKTHVUb8lWiEuQjJMw3MfdAtoDhEJCqOWHCCTVsSztl
 QEvpCqUrWBUny5gDQmJrrEuHKgZChJ55o+JS7axd92gsgkueQHpXOEdZaSnFk/9kzK2r
 tgZbMWUJ6fK/Oiy71usGs0fRNIXz6ow1fvEUy92vcWq90w+sa0gnrwJ+hh1K1YWXryzj
 Eg2g==
X-Gm-Message-State: APjAAAXgj0UP0Jl+GtrubR0Ram3ylTcdTFV4HvQR1SHQ52IllehGhyjO
 3bZG+ej8qu3xKUKhu1XngxZQNg==
X-Google-Smtp-Source: APXvYqznmhpTJ9YSNASir7owQkE0B359jh2yWtccIzJUUwlTmxB5mxz1AaAtQk1adusfOaYFSZM2rw==
X-Received: by 2002:a63:9249:: with SMTP id s9mr652776pgn.356.1567642555065;
 Wed, 04 Sep 2019 17:15:55 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id g20sm214657pfh.184.2019.09.04.17.15.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 17:15:53 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Steven Liu <steven.liu@mediatek.com>
Subject: Re: next/master boot: 310 boots: 11 failed, 292 passed with 6 offline,
 1 untried/unknown (next-20190904)
In-Reply-To: <20190904192725.GI4348@sirena.co.uk>
References: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
 <20190904192725.GI4348@sirena.co.uk>
Date: Wed, 04 Sep 2019 17:15:53 -0700
Message-ID: <7hzhjjsime.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_171556_149436_E862C3F3 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: , Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ + Steven Liu who donated this board to my kernelCI lab ]

Mark Brown <broonie@kernel.org> writes:

> On Wed, Sep 04, 2019 at 12:05:57PM -0700, kernelci.org bot wrote:
>
> Since 30th August -next fails to boot with no kernel output on
> mt7622-rfb1:
>
>> arm64:
>>     defconfig:
>>         gcc-8:
>>             mt7622-rfb1: 1 failed lab
>> 
>>     defconfig+CONFIG_RANDOMIZE_BASE=y:
>>         gcc-8:
>>             mt7622-rfb1: 1 failed lab
>
> There's logging from ATF so it looks like we try to boot the kernel:
>
> Starting kernel ...
>
> [ATF][    36.199793]save kernel info
> [ATF][    36.202824]Kernel_EL2
> [ATF][    36.205580]Kernel is 64Bit
> [ATF][    36.208768]pc=0x40080000, r0=0x5cf48000, r1=0x0
> INFO:    BL3-1: Preparing for EL3 exit to normal world, Kernel
> INFO:    BL3-1: Next image address = 0x40080000
> INFO:    BL3-1: Next image spsr = 0x3c9
> [ATF][    36.227037]el3_exit
>
> but no output.  More details including full logs at:
>
> 	https://kernelci.org/boot/id/5d6fe70059b514164ef1224d/
> 	https://kernelci.org/boot/id/5d6fe6e259b514164ef12243/

Bisected down to this commit[1], full bisect log here[2].  It didn't
revert cleanly on top of next-20190904, so I didn't get any further.

Kevin

[1]
419e2f1838819e954071dfa1d1f820ab3386ada1 is the first bad commit
commit 419e2f1838819e954071dfa1d1f820ab3386ada1
Author: Christoph Hellwig <hch@lst.de>
Date:   Mon Aug 26 09:03:44 2019 +0200

    dma-mapping: remove arch_dma_mmap_pgprot
    
    arch_dma_mmap_pgprot is used for two things:
    
     1) to override the "normal" uncached page attributes for mapping
        memory coherent to devices that can't snoop the CPU caches
     2) to provide the special DMA_ATTR_WRITE_COMBINE semantics on older
        arm systems and some mips platforms
    
    Replace one with the pgprot_dmacoherent macro that is already provided
    by arm and much simpler to use, and lift the DMA_ATTR_WRITE_COMBINE
    handling to common code with an explicit arch opt-in.
    
    Signed-off-by: Christoph Hellwig <hch@lst.de>
    Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>     # m68k
    Acked-by: Paul Burton <paul.burton@mips.com>            # mips

 arch/arm/Kconfig                   |  2 +-
 arch/arm/mm/dma-mapping.c          |  6 ------
 arch/arm64/Kconfig                 |  1 -
 arch/arm64/include/asm/pgtable.h   |  4 ++++
 arch/arm64/mm/dma-mapping.c        |  6 ------
 arch/m68k/Kconfig                  |  1 -
 arch/m68k/include/asm/pgtable_mm.h |  3 +++
 arch/m68k/kernel/dma.c             |  3 +--
 arch/mips/Kconfig                  |  2 +-
 arch/mips/mm/dma-noncoherent.c     |  8 --------
 include/linux/dma-noncoherent.h    | 13 +++++++++++--
 kernel/dma/Kconfig                 | 12 +++++++++---
 kernel/dma/mapping.c               |  8 +++++---
 13 files changed, 35 insertions(+), 34 deletions(-)
bisect run success

[2]
$ git bisect log
git bisect start
# bad: [35394d031b710e832849fca60d0f53b513f0c390] Add linux-next specific files for 20190904
git bisect bad 35394d031b710e832849fca60d0f53b513f0c390
# good: [089cf7f6ecb266b6a4164919a2e69bd2f938374a] Linux 5.3-rc7
git bisect good 089cf7f6ecb266b6a4164919a2e69bd2f938374a
# bad: [493424779be81b03fb4aca89cc05ba95e9fc0c31] Merge remote-tracking branch 'crypto/master'
git bisect bad 493424779be81b03fb4aca89cc05ba95e9fc0c31
# bad: [58a02f90fddfdc9e4dfbd6579ff788ffdc22afe4] Merge remote-tracking branch 'hid/for-next'
git bisect bad 58a02f90fddfdc9e4dfbd6579ff788ffdc22afe4
# bad: [27c3f6e1d84b47def9060fd481be92838d819a9b] Merge remote-tracking branch 'csky/linux-next'
git bisect bad 27c3f6e1d84b47def9060fd481be92838d819a9b
# good: [f119c164735d85f2a41d14503cb9933d219c539e] arm-soc: document merges
git bisect good f119c164735d85f2a41d14503cb9933d219c539e
# bad: [e87b432d6c45697defc03eb69261661060c85245] Merge remote-tracking branch 'actions/for-next'
git bisect bad e87b432d6c45697defc03eb69261661060c85245
# good: [1ab97157f64dadb44d029096c6a92305d6631ab2] Merge remote-tracking branch 'kbuild/for-next'
git bisect good 1ab97157f64dadb44d029096c6a92305d6631ab2
# good: [ac12cf85d682a2c1948210c65f7fb21ef01dd9f6] Merge branches 'for-next/52-bit-kva', 'for-next/cpu-topology', 'for-next/error-injection', 'for-next/perf', 'for-next/psci-cpuidle', 'for-next/rng', 'for-next/smpboot', 'for-next/tbi' and 'for-next/tlbi' into for-next/core
git bisect good ac12cf85d682a2c1948210c65f7fb21ef01dd9f6
# bad: [4934d349f6e5afc9345a44acb0daa3066594088a] Merge remote-tracking branch 'asm-generic/master'
git bisect bad 4934d349f6e5afc9345a44acb0daa3066594088a
# good: [5251a1c90f7f4e458dc3154920e09624311f54b6] Merge remote-tracking branch 'compiler-attributes/compiler-attributes'
git bisect good 5251a1c90f7f4e458dc3154920e09624311f54b6
# skip: [38c38cb73223218f6eedf485280917af1f8a0af2] mmc: queue: use bigger segments if DMA MAP layer can merge the segments
git bisect skip 38c38cb73223218f6eedf485280917af1f8a0af2
# bad: [419e2f1838819e954071dfa1d1f820ab3386ada1] dma-mapping: remove arch_dma_mmap_pgprot
git bisect bad 419e2f1838819e954071dfa1d1f820ab3386ada1
# good: [5518ea1ad2c0c7f38d067f621d9349e6a11c8879] unicore32: remove the unused pgprot_dmacoherent define
git bisect good 5518ea1ad2c0c7f38d067f621d9349e6a11c8879
# good: [b898e50f9f49f7d90f3bca94ac046145072034a2] arm-nommu: remove the unused pgprot_dmacoherent define
git bisect good b898e50f9f49f7d90f3bca94ac046145072034a2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
