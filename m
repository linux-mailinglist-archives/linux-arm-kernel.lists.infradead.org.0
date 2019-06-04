Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92104346AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5l5YI+XhDkljvTwM1SJwU3+ZYtzrNTfkYETLbpECUAI=; b=mUjoVvTsr93/26
	OxlOL8cONiaJdNiDWbCGtbh8p9ZiKO9m8QiGb4IKB2cQpyZ6oVqvSXp4nlkCLkQ+ouIzlq52gfjIF
	Xco4AElQenOSm1cAamRa5KVelcOfuSgAoVZx32i72cT3nW9obMdH46MNik/HenV4jra3JLyjcwhCO
	Xrnl/fHrs4/qXXPccyHOtE0t7DIqwf8OUStYuO4qBnEp7u+PxG/f/GFy5zcZG+qiIycJKRhcRBlEl
	6XuBP5rAQweB06PLN1Yeq6Bb2ZWM2RFvJ0CKlXvUl2Y6uXbUDPdyS60/p7oAt6NqbvcuEalOlPtpM
	La5Gswvwofp05eOwjTzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8Ye-0004yr-4v; Tue, 04 Jun 2019 12:28:52 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8YV-0004xy-Vi
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:28:46 +0000
Received: by mail-qt1-x842.google.com with SMTP id z24so6289434qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 05:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=piwrTztXhC39aA20VdmSLRCidVge2JjKgB3c0ijpNGA=;
 b=a6FgIBxgNByE1AswojUTFyEmYC72QqH/LQqqHz7ixlPVsXOPCgYd6mlw3XQTwnM2uh
 oSGphZh6q0/2oLSC/6UR/PVOiDLxeNrPqz3Xwh66LKb+PMN/RXj9Mb0rZNkmDNbLDRnv
 CDWrRylaRnKOork+/GTVzWguM6veviFxYDrHZyjqWmhP2Vq2sYJ9UIswPK1qUkGaukdi
 k6ldM/RmNazR5Btl5NCkOzRIKY7xN77rgF9vRVvC1DB/O3CaVrJjdtoBXxCeg/JcPdxV
 dPdKuKgQLxyqTRqoGtEBLBY4RwLUOzQy0WyfZWfqmqxAPStw46U6hbvqjfP22IPycU4j
 75jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=piwrTztXhC39aA20VdmSLRCidVge2JjKgB3c0ijpNGA=;
 b=cPWqlP8FsSCL+tCsiixN6qS3XOq+JxB2vmIKg/41ChSwbIhaUZe9k8uLgXKLp86gPa
 YRQGMRf6DAoEs1vygOTph2SZ5FCw+4VzHwIQ04FTcpLDi/05EkvqKxl0+4hE6fr8GkDd
 AUtgUu4vreLDq+wldkgcLroorVYjpYGyND+CLCGkGkFtxj/n6kV0YHvMSLr1Xh2a57LZ
 QfEp2KFubg8q0jtab++Yn8PuNJPXgZ7rozr/Cw4pn5PW8p9wGGY0nL2yyiEBYgPhYHE6
 nlJnnvaiVZLIYPll3C6WQ0BRxgTFvAjwgJRtEXASXe7VfmfSlZdaiLX/xKGLVTUrO0O6
 cDwQ==
X-Gm-Message-State: APjAAAWI0Tys1HBudF5UW0l61sNg/mKfmvnE/UYQAwbFRgh5HIZRnhfu
 bVVOgyJKI/S4UvSUkoY5ugjuMQ==
X-Google-Smtp-Source: APXvYqz1oMF9jOCQzUyuq8/gZIjlw5l60lDqJs2tR/Yg0Za5sOTQcYevs45DA2dZqbA4i3Qtsa1ReA==
X-Received: by 2002:ac8:2c7d:: with SMTP id e58mr28082215qta.243.1559651322669; 
 Tue, 04 Jun 2019 05:28:42 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id e133sm13448610qkb.76.2019.06.04.05.28.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 05:28:42 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hY8YT-00042G-HE; Tue, 04 Jun 2019 09:28:41 -0300
Date: Tue, 4 Jun 2019 09:28:41 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v2] uaccess: add noop untagged_addr definition
Message-ID: <20190604122841.GB15385@ziepe.ca>
References: <c8311f9b759e254308a8e57d9f6eb17728a686a7.1559649879.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8311f9b759e254308a8e57d9f6eb17728a686a7.1559649879.git.andreyknvl@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_052845_118939_C5437C24 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Khalid Aziz <khalid.aziz@oracle.com>,
 sparclinux@vger.kernel.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 02:04:47PM +0200, Andrey Konovalov wrote:
> Architectures that support memory tagging have a need to perform untagging
> (stripping the tag) in various parts of the kernel. This patch adds an
> untagged_addr() macro, which is defined as noop for architectures that do
> not support memory tagging. The oncoming patch series will define it at
> least for sparc64 and arm64.
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
>  include/linux/mm.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 0e8834ac32b7..dd0b5f4e1e45 100644
> +++ b/include/linux/mm.h
> @@ -99,6 +99,17 @@ extern int mmap_rnd_compat_bits __read_mostly;
>  #include <asm/pgtable.h>
>  #include <asm/processor.h>
>  
> +/*
> + * Architectures that support memory tagging (assigning tags to memory regions,
> + * embedding these tags into addresses that point to these memory regions, and
> + * checking that the memory and the pointer tags match on memory accesses)
> + * redefine this macro to strip tags from pointers.
> + * It's defined as noop for arcitectures that don't support memory tagging.
> + */
> +#ifndef untagged_addr
> +#define untagged_addr(addr) (addr)

Can you please make this a static inline instead of this macro? Then
we can actually know what the input/output types are supposed to be.

Is it

static inline unsigned long untagged_addr(void __user *ptr) {return ptr;}

?

Which would sort of make sense to me.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
