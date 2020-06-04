Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A152F1EE751
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5MaM4ZpBQEpKpydxoWVlYrUzv4Sjc/lX/BneyehYV8=; b=Dq9WGXkyL3ASyc
	4VPgqK45h68xzTLtATFIDS12Ud9yeA5qjZggxypXAqb9fSnAQdGy8cGRX3kiH4dwvhnpve+odBYMk
	fiUo50abH2E1hKZWg9i9oP7sg70Ce6xz9Cfyg/mTA3w3L/TcYmVtvYthzdO1Ytmu6HS4HWMx0U7qG
	6wYlRCpJsa+5VtL5vDXabEIRrzQRTmJFEq+U6M770ZlsoEX/N4lHhg3i4gDABrcYvTlP6R39HXwWs
	N6V7nME67kHtNu+6zjFT2jvj/SoYLlRHQ2cwt2bWvcAoaZ+w1knMegqhNGZW3zdSB088Lg+FUpf9I
	wdrP/AIcui9UsEkx3Weg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrRY-0007ev-4I; Thu, 04 Jun 2020 15:06:08 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrRQ-0007dl-Bk
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:06:01 +0000
Received: by mail-lj1-x242.google.com with SMTP id c17so7694857lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 08:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R+rSrnYLVqsdod0ox2SKtnqs+7zx/Hz4GLO8xy+04nE=;
 b=tiAiD1BqLUtW8rAX1B3Txst9ck1bpANIDb6532CrOzxa8+SYqcQVzMWUIrIqHwfkFH
 PHnApukstTsgqnDgvZmZZF7f0AkvM5cutsl0XcGi2Pbymm48rAjoDeqUP0rQJufNbjNV
 U1DTwg8QQcTfmMvRFRaIc/PUvQCShSldTL5qsURtgnTw2mS3pb1YcCtRkFDi9qkdBmbs
 +w3hI2IMbAuFHS2rWaC6Am5XmtU2osSFlJTcvkeFDjXW3t+Mc804R2xEZJmK3Bg3lazk
 j1hTv/fbOlKG+IG25Puo8o29RBHnfgg8yktHPNROZW7UkPsslMdeaXUYMod2IAvkYUMH
 NIhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R+rSrnYLVqsdod0ox2SKtnqs+7zx/Hz4GLO8xy+04nE=;
 b=aHC1kBYABWDUdN6x6kDs1p9soHUmyI1FEPBUBGUcZv1dG1cH+s5B5eYPoF8hNe2yxs
 ngvxWui6Aiis4ZPJjGXMn5tHZ3WZ1ZJ3Yt5N0ogyD1uF3OAJE0nFPxB4wxmui1NuHxvq
 RI30B1gY8HXf1vNTOd4XOfV0/LI5fQ6pAqbxug1mmoJ1VwPHaYh4ru4F5jt3DaMEEvhw
 87Us73gjkd3augaTdOAz9PIrRWNK+RMCtwRe9XB+w/GucGjhmMq5GO1eZQi1VYHokPCC
 Qbvr1JpQgmlVJQDJLJ4Jc8GdNkPzswwyhTKOrmMAcgzN8JybGuRtGEP9d0wOPora7NjR
 Azuw==
X-Gm-Message-State: AOAM531xmdGJsbw0U+KWBtNgPutjgqcrywCx7v+rICp8qrB+V46HHbMD
 Szc0mYZUYRIVhYTwWlzWRQa9M8iXrRyA6c+mQhA=
X-Google-Smtp-Source: ABdhPJym59bLbz+stiI4tSpXC23vh9zz45NG9ccDG3uOprvfDj3mzLXeDS2rNjrYy3cjr00XLkkVPcKs0ltgUoq5nkI=
X-Received: by 2002:a05:651c:11c7:: with SMTP id
 z7mr2534360ljo.29.1591283157446; 
 Thu, 04 Jun 2020 08:05:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-3-alex.popov@linux.com>
In-Reply-To: <20200604134957.505389-3-alex.popov@linux.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Jun 2020 17:05:46 +0200
Message-ID: <CANiq72nfByD5sO0a2G2hKCPtHgOhdYfFaXcK7pHnxXRGRUUjDQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] gcc-plugins/stackleak: Use asm instrumentation to
 avoid useless register saving
To: Alexander Popov <alex.popov@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_080600_403615_A02F3C49 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [miguel.ojeda.sandonis[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Sven Schnelle <svens@stackframe.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>, Kees Cook <keescook@chromium.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Alexander Monakov <amonakov@ispras.ru>, Michal Marek <michal.lkml@markovi.net>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexander,

On Thu, Jun 4, 2020 at 3:50 PM Alexander Popov <alex.popov@linux.com> wrote:
>
> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> index cdf016596659..522d57ae8532 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -41,6 +41,7 @@
>  # define __GCC4_has_attribute___nonstring__           0
>  # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
>  # define __GCC4_has_attribute___fallthrough__         0
> +# define __GCC4_has_attribute___no_caller_saved_registers__ 0
>  #endif

Nit: if you do another version, please move it before `noclone` to
keep the order (`fallthrough` was added in the wrong place).

Otherwise don't worry, I will sort it together with `fallthrough` when
I send a patch.

> +/*
> + * Optional: only supported since gcc >= 7
> + *
> + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/x86-Function-Attributes.html#index-no_005fcaller_005fsaved_005fregisters-function-attribute_002c-x86
> + * clang: https://clang.llvm.org/docs/AttributeReference.html#no-caller-saved-registers
> + */
> +#if __has_attribute(__no_caller_saved_registers__)
> +# define __no_caller_saved_registers   __attribute__((__no_caller_saved_registers__))
> +#else
> +# define __no_caller_saved_registers
> +#endif

Ditto.

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
