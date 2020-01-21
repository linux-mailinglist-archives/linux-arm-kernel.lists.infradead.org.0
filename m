Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7811440C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:44:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytEznp3sx5TOHwz71l2kPQDRXByT2gZuwM5mQsEZav0=; b=BR6wBaWMiO/r9k
	ZW7OJvTC4loe/2TEo2JSNZfuQwlGFTF6kG420GRVlv479sRcKaZvSu/iLUIsK0i/uSj6CCfQIJ/Ek
	OddJywFwR18rHbZ30kniDovFPn5KH8aS+tf3ZIzMaSv3PRne3sZ7ytwETObtFyr9TqIHV1LDSuB92
	QdlJsk+Jx/T40MJ71No5Vtg5bf/KNs2QS/+0FWxTpZnVtCfjs3e4uRx23Fnoy0Mj6/x6qmXvWs6kP
	/sLi5Joz1de1X4mtYCTVReUeochhL7DvvrtkGQqGjql0OPdNCQG3a6P/Ylfb61eXpsOAc13WtUXez
	azBiOeL3o4JoVogAJkUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvhp-00033I-DN; Tue, 21 Jan 2020 15:44:41 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvhY-00032L-0e; Tue, 21 Jan 2020 15:44:28 +0000
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 00LFi5x9012397;
 Wed, 22 Jan 2020 00:44:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 00LFi5x9012397
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579621446;
 bh=ZtcJE4J/VnghOLG5BqGNTkLhqnSDrYqFSMA9B/PJv3k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=22uMx27sxZ4iLBL3b5a2GCT1vzgo36uJ/LkCdpC+Q7rUalnLH5X93rBvfJ6r+Pom6
 0o/uI4mds34zlVe9kLrre0jf42OJ0h6Gzs6WuXnE3PqgqJiehf0iyvPKh61HIb9reM
 BK6m+Iaq+nXKGZa35YP1Knxk4wopevX6IhVA76h5v+ep8FbEuU2JO402pv2ViHJIt9
 7Iud1SK2G/mcT+9GzKuU/rxMhwmetJtvRMMv3bXSnuBWDiS8fgTXfAPaC8RNTslYjI
 ucrY32VBEYpSntsGXkqvTxzJ+9NFzMU9NSQRABiXCmgOsiY6dsEFA/WyMc11os2pwG
 p7Az2qT9YUBVA==
X-Nifty-SrcIP: [209.85.222.53]
Received: by mail-ua1-f53.google.com with SMTP id c7so1156710uaf.5;
 Tue, 21 Jan 2020 07:44:05 -0800 (PST)
X-Gm-Message-State: APjAAAUSC4T32xp8f6++uxdhTwhTERMbbYNbRNmLM5fpJf98eTns0CFV
 /vdCMJiDkvpfRdnmWjQyV4gfAk09a2akVdZ/HiA=
X-Google-Smtp-Source: APXvYqxKN7+aDx4+rhRRBTGSg5TMBpRLbtTObTQdzxulxrRZeJxHYNHdH9TfFK4spH3h0GZVhCOVCIk1jgp5oP8+2Vg=
X-Received: by 2002:ab0:7049:: with SMTP id v9mr3149137ual.95.1579621444684;
 Tue, 21 Jan 2020 07:44:04 -0800 (PST)
MIME-Version: 1.0
References: <cover.1579248206.git.michal.simek@xilinx.com>
 <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
In-Reply-To: <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Jan 2020 00:43:28 +0900
X-Gmail-Original-Message-ID: <CAK7LNARdiTxajZcXH0g7t6nEis-1ebv7Ta6wBdgGgS6O29O7+A@mail.gmail.com>
Message-ID: <CAK7LNARdiTxajZcXH0g7t6nEis-1ebv7Ta6wBdgGgS6O29O7+A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] asm-generic: Make dma-contiguous.h a mandatory
 include/asm header
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_074424_286339_D451E744 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.80 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Deepa Dinamani <deepa.kernel@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>,
 "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Paul Burton <paulburton@kernel.org>, X86 ML <x86@kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Wesley Terpstra <wesley@sifive.com>, James Hogan <jhogan@kernel.org>,
 Waiman Long <longman@redhat.com>, linux-xtensa@linux-xtensa.org,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Borislav Petkov <bp@alien8.de>, git@xilinx.com,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi.

On Fri, Jan 17, 2020 at 5:03 PM Michal Simek <michal.simek@xilinx.com> wrote:
>
> dma-continuguous.h is generic for all architectures except arm32 which has
> its own version.



Currently, <asm/dma-contiguous.h> is present
for only architectures that select HAVE_DMA_CONTIGUOUS.

After this commit, the other architectures will end
up with generating the unused header.

That would not be a big deal, but
it could be mentioned in the commit message?



> Similar change was done for msi.h by commit a1b39bae16a6
> ("asm-generic: Make msi.h a mandatory include/asm header")
>
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
> Changes in v2:
> - New patch suggested by Christoph
>
>  arch/arm64/include/asm/Kbuild  | 1 -
>  arch/csky/include/asm/Kbuild   | 1 -
>  arch/mips/include/asm/Kbuild   | 1 -
>  arch/riscv/include/asm/Kbuild  | 1 -
>  arch/s390/include/asm/Kbuild   | 1 -
>  arch/x86/include/asm/Kbuild    | 1 -
>  arch/xtensa/include/asm/Kbuild | 1 -
>
>  include/asm-generic/Kbuild     | 1 +
>  8 files changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/arch/arm64/include/asm/Kbuild b/arch/arm64/include/asm/Kbuild
> index bd23f87d6c55..d3077c991962 100644
> --- a/arch/arm64/include/asm/Kbuild
> +++ b/arch/arm64/include/asm/Kbuild
> @@ -3,7 +3,6 @@ generic-y += bugs.h
>  generic-y += delay.h
>  generic-y += div64.h
>  generic-y += dma.h
> -generic-y += dma-contiguous.h
>  generic-y += dma-mapping.h
>  generic-y += early_ioremap.h
>  generic-y += emergency-restart.h
> diff --git a/arch/csky/include/asm/Kbuild b/arch/csky/include/asm/Kbuild
> index 4d4754e6bf89..bc15a26c782f 100644
> --- a/arch/csky/include/asm/Kbuild
> +++ b/arch/csky/include/asm/Kbuild
> @@ -7,7 +7,6 @@ generic-y += delay.h
>  generic-y += device.h
>  generic-y += div64.h
>  generic-y += dma.h
> -generic-y += dma-contiguous.h
>  generic-y += dma-mapping.h
>  generic-y += emergency-restart.h
>  generic-y += exec.h
> diff --git a/arch/mips/include/asm/Kbuild b/arch/mips/include/asm/Kbuild
> index 61b0fc2026e6..179403ae5837 100644
> --- a/arch/mips/include/asm/Kbuild
> +++ b/arch/mips/include/asm/Kbuild
> @@ -6,7 +6,6 @@ generated-y += syscall_table_64_n64.h
>  generated-y += syscall_table_64_o32.h
>  generic-y += current.h
>  generic-y += device.h
> -generic-y += dma-contiguous.h
>  generic-y += emergency-restart.h
>  generic-y += export.h
>  generic-y += irq_work.h
> diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
> index 1efaeddf1e4b..ec0ca8c6ab64 100644
> --- a/arch/riscv/include/asm/Kbuild
> +++ b/arch/riscv/include/asm/Kbuild
> @@ -7,7 +7,6 @@ generic-y += div64.h
>  generic-y += extable.h
>  generic-y += flat.h
>  generic-y += dma.h
> -generic-y += dma-contiguous.h
>  generic-y += dma-mapping.h
>  generic-y += emergency-restart.h
>  generic-y += exec.h
> diff --git a/arch/s390/include/asm/Kbuild b/arch/s390/include/asm/Kbuild
> index 2531f673f099..1832ae6442ef 100644
> --- a/arch/s390/include/asm/Kbuild
> +++ b/arch/s390/include/asm/Kbuild
> @@ -7,7 +7,6 @@ generated-y += unistd_nr.h
>  generic-y += asm-offsets.h
>  generic-y += cacheflush.h
>  generic-y += device.h
> -generic-y += dma-contiguous.h
>  generic-y += dma-mapping.h
>  generic-y += div64.h
>  generic-y += emergency-restart.h
> diff --git a/arch/x86/include/asm/Kbuild b/arch/x86/include/asm/Kbuild
> index 8b52bc5ddf69..ea34464d6221 100644
> --- a/arch/x86/include/asm/Kbuild
> +++ b/arch/x86/include/asm/Kbuild
> @@ -7,7 +7,6 @@ generated-y += unistd_32_ia32.h
>  generated-y += unistd_64_x32.h
>  generated-y += xen-hypercalls.h
>
> -generic-y += dma-contiguous.h
>  generic-y += early_ioremap.h
>  generic-y += export.h
>  generic-y += mcs_spinlock.h
> diff --git a/arch/xtensa/include/asm/Kbuild b/arch/xtensa/include/asm/Kbuild
> index 3acc31e55e02..271917c24b7f 100644
> --- a/arch/xtensa/include/asm/Kbuild
> +++ b/arch/xtensa/include/asm/Kbuild
> @@ -4,7 +4,6 @@ generic-y += bug.h
>  generic-y += compat.h
>  generic-y += device.h
>  generic-y += div64.h
> -generic-y += dma-contiguous.h
>  generic-y += dma-mapping.h
>  generic-y += emergency-restart.h
>  generic-y += exec.h
> diff --git a/include/asm-generic/Kbuild b/include/asm-generic/Kbuild
> index ddfee1bd9dc1..cd17d50697cc 100644
> --- a/include/asm-generic/Kbuild
> +++ b/include/asm-generic/Kbuild
> @@ -4,5 +4,6 @@
>  # (This file is not included when SRCARCH=um since UML borrows several
>  # asm headers from the host architecutre.)
>
> +mandatory-y += dma-contiguous.h
>  mandatory-y += msi.h
>  mandatory-y += simd.h
> --
> 2.25.0
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
