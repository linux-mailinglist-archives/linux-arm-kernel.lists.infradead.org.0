Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EDF75C06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 02:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/m8nBXSWBpKiOUQlNt5maQk/qub8UHkFQsX3RdtI68w=; b=MR6gRybOtv9dPp
	kj+IpW4P2f3WneWXNoKsAUXke3jtudzX1UTVd49+x5/aBFNaaeJ4K3gBfxifMcxOxddanziWuloYO
	rp+DWEt5T1/wlrOGeYEJPA6Y75cjV2nrsbW7Pa3Gp7fmxmAYi8MadmaUQu5wT+qpb/Fed4p84CK6j
	nuufh4DAPXiDxUhlzqoCSx/+Qe92dR2AJOKpz6npUCYPBoyKZrap6D2YRRjMIU3LdpDNcFjk+ItOT
	4p3MoIqkL5N5BmUKhN4gKyovXANyzuWtMC4EF2P0WrwbESjfpWsllh/fCTXLB6q4X3ridnvMYfBnE
	JcryiR7tOvVroxawNKsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqnyu-0006ou-GR; Fri, 26 Jul 2019 00:21:08 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqnyg-0006oI-04
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 00:20:55 +0000
Received: by mail-io1-xd43.google.com with SMTP id o9so101240174iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 17:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=wVoyay7NO1Taf0v9T8BEjNVHV5CQV4op2+u8nOtjKhg=;
 b=jToOEjgrbrybRXQICjzzQLCzC6a+oGnvytylhhSA9uxtg6WnH51O9ifLdSV6bfGMfa
 q8niV4muBTTLsVTSbcEIiUpVX+Amr5OSrKkakw3SIsgJ8wNsZyQBOkBDr2dbL5g7FM01
 G/XkE2FByaeoL8V88ESwf2TAB2YZjUSsL0fYgL45Wj4T/V0LKEidele78SCI55EuL/J/
 sYl0p5itnLMSTOYg3+6E06sl9nRstqfUkqQp7Rox6hXNDgUyeGkR886lLScN+95mjm/T
 aOi3Bf5eztl/MGmlss1eZVgOtDl8Lkje5E83dmFr4AAMVpQxweZF/aXyNxTquIa66KkV
 3ymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=wVoyay7NO1Taf0v9T8BEjNVHV5CQV4op2+u8nOtjKhg=;
 b=eK8v6Rksh51D9tmDcrozljggEuT0sp2tQpIY6MyjJsmonnx+CBAj9cZSNbbc/e6u/O
 oQqzLWOPCQ0BcYqv4UwDh2cIGOL9LKQ5YOpxVyebrii9KvBVerCtgd0N23puxTvibJ0z
 8oj9n+nbiaVsxNF8JNXuQ9W0zbiwMNaWl62kXtk1zkSCJ4sI+3sLchFxC09XVn9QVsCn
 ZFyHZi2egtMazZOUf+okHVsqzxJ3HUX3A1oUG4GzsjlDMjF92ujlU9opUCO2rWlRF+0y
 83JBmz2lWsv1CbQDdM5TPQZPemnbVB8s1TiKsKRMSgq5DdeszNDFxNl5PEi5j30Z3tAv
 LSZg==
X-Gm-Message-State: APjAAAUQvk7WKli3n2y0IBaual66f+QohyT/TndE2C9B2vC0ytBe9tDn
 Q4fX9Hy/5jvi6NoQJ4JkSxe2Vw==
X-Google-Smtp-Source: APXvYqwip5nwThbcgJqNtgafvdfTP5pQ2Oo0kmQagV/oOYV3+6lQkCabaIgCA6ODx3NeYEb64i78TA==
X-Received: by 2002:a6b:f80e:: with SMTP id o14mr15217081ioh.1.1564100452408; 
 Thu, 25 Jul 2019 17:20:52 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id 20sm54026778iog.62.2019.07.25.17.20.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 17:20:51 -0700 (PDT)
Date: Thu, 25 Jul 2019 17:20:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH REBASE v4 14/14] riscv: Make mmap allocation top-down by
 default
In-Reply-To: <20190724055850.6232-15-alex@ghiti.fr>
Message-ID: <alpine.DEB.2.21.9999.1907251655310.32766@viisi.sifive.com>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-15-alex@ghiti.fr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_172054_073916_2A0BF961 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Kees Cook <keescook@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Paul Burton <paul.burton@mips.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-riscv@lists.infradead.org,
 Daniel Cashman <dcashman@google.com>, Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

I have a few questions about this patch.  Sorry to be dense here ...

On Wed, 24 Jul 2019, Alexandre Ghiti wrote:

> In order to avoid wasting user address space by using bottom-up mmap
> allocation scheme, prefer top-down scheme when possible.
> 
> Before:
> root@qemuriscv64:~# cat /proc/self/maps
> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> 00018000-00039000 rw-p 00000000 00:00 0          [heap]
> 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> 155556f000-1555570000 rw-p 00000000 00:00 0
> 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> 1555574000-1555576000 rw-p 00000000 00:00 0
> 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> 155567a000-15556a0000 rw-p 00000000 00:00 0
> 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
> 
> After:
> root@qemuriscv64:~# cat /proc/self/maps
> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/riscv/Kconfig | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 59a4727ecd6c..6a63973873fd 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -54,6 +54,17 @@ config RISCV
>  	select EDAC_SUPPORT
>  	select ARCH_HAS_GIGANTIC_PAGE
>  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> +	select HAVE_ARCH_MMAP_RND_BITS
> +
> +config ARCH_MMAP_RND_BITS_MIN
> +	default 18

Could you help me understand the rationale behind this constant?

> +
> +# max bits determined by the following formula:
> +#  VA_BITS - PAGE_SHIFT - 3

I realize that these lines are probably copied from arch/arm64/Kconfig.  
But the rationale behind the "- 3" is not immediately obvious.  This 
apparently originates from commit 8f0d3aa9de57 ("arm64: mm: support 
ARCH_MMAP_RND_BITS"). Can you provide any additional context here?

> +config ARCH_MMAP_RND_BITS_MAX
> +	default 33 if 64BIT # SV48 based

The rationale here is clear for Sv48, per the above formula:

   (48 - 12 - 3) = 33

> +	default 18

However, here it is less clear to me.  For Sv39, shouldn't this be

   (39 - 12 - 3) = 24

?  And what about Sv32?
 

- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
