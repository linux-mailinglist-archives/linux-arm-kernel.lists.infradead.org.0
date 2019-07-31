Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8937D140
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMkNbu25E5XG5AyiAAYzuJ3VlIsI5VyDIdKM7Imvu1E=; b=DW6dLfbINdZqwL
	0wxqG9jcrFIInAyCJwIhU3jdcU35+LnxHrxuKtvO8tcGa13hKKc7YN0V/I4boCT/0s7q1Tv6Dh9Ve
	zgJLEkiLVAgyqoFFO4PYWcqwVS527LrUtRMdmCS4oSipXQI+pTFmu5yZuZPvBMTX8D3aqYTcQgMSd
	2Nm5N5p/1BvnwSRCTromx+0/RQrLxYLwf/9MhXEFOWXmDHN06iU221z3QNuCEOLaOhDCaBbiU+5gk
	AKp3QtN2tom7ZNGONsHVm+E6bh6ZKQHjCLxw/Bcf9+cY7pcN84cdsECe9ZLtvnXxlh5LmKXyKW2Gv
	8g9nUh6c5kJ0HNlInfrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxH5-00039S-NX; Wed, 31 Jul 2019 22:40:47 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxGv-00036R-ST
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:40:39 +0000
Received: by mail-io1-xd44.google.com with SMTP id e20so7017886iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 15:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=egRpxJBa9oK7OchDbNGXXbbAvoOMUOmZrCvbt5gO8zI=;
 b=QvM5gURgmBtYYb5ewAA6jGZY4ljdEgJDQkLHHqVikVD66zPlOj6SuWDfLaZFvi4LUF
 FQdJPeaP2xBSfu5VhEpovno9nnLQOcyhglyYB0pRP4JDwGr0eAqZbpbagc3uUt7s9USv
 Mpj2IzZzl+bJl5mUIlw221ntI2T0Gd3i5626L0lZpF3NQf2YbT9pIlRRSe+aFdedyfsu
 M2J7DASUn+cy4TT7B8G64SBFNLwKRalGaUFXLhzgYJLwUMSwiCHsd5R54xYkxPti/wZi
 C3bY3XL25Z5iZQrpq93tCxIGxwS4lBIYfZ/mctkv1io4wB2KYJZz7fo2JWv6xUDgj8Db
 lqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=egRpxJBa9oK7OchDbNGXXbbAvoOMUOmZrCvbt5gO8zI=;
 b=YePecXpWURr9uyNj/ncOruwOSjsdsZpJPDhSfXYBNgnJA6J1yR5d5NnMfApjSvYSWW
 nkOa57QXV7ZxyimhYJm0/1r/tSZVttN+YWZRt9X3Pmg04N8GE2T3Z2w6/UTvpyrMxzZg
 62xa/9R87p2wG10nUv58amWtKMZ+lUoS6BPK5flwgnhZeH8aXdN+CJYg6aO2RlD+I5MA
 OZ8/VKMPDTyFnyQLVApEDaan4B5ww+1HGqp18tzzYZjhZ49C4DH6g7MOfKsM88otmeqS
 mTDnCoH+Y4wi8PPkNhsuH/FgHXa7Yg/bPWyyrcE67tU4b60DtToQh1aojHLjfJmlDDXN
 0MIA==
X-Gm-Message-State: APjAAAWn4QDAhqgpq1CLmxW0+azy8u/fY1z2SC/zjIiKG0O0nR8NnPkv
 rPLMJUT3bR+t9r8rYW5qPCq4Kw==
X-Google-Smtp-Source: APXvYqwrG00LBhTpDLsR7IvSvLbPRzUfGNUjyuov0y6Pr5JYCZwHs6hWm99dQiGbrjWMUvsaR2nw9Q==
X-Received: by 2002:a6b:f406:: with SMTP id i6mr44093290iog.110.1564612836637; 
 Wed, 31 Jul 2019 15:40:36 -0700 (PDT)
Received: from localhost ([170.10.65.222])
 by smtp.gmail.com with ESMTPSA id a7sm56245658iok.19.2019.07.31.15.40.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 15:40:35 -0700 (PDT)
Date: Wed, 31 Jul 2019 15:40:35 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v5 14/14] riscv: Make mmap allocation top-down by default
In-Reply-To: <20190730055113.23635-15-alex@ghiti.fr>
Message-ID: <alpine.DEB.2.21.9999.1907311538460.22372@viisi.sifive.com>
References: <20190730055113.23635-1-alex@ghiti.fr>
 <20190730055113.23635-15-alex@ghiti.fr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_154037_953301_BA2AD70C 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Luis Chamberlain <mcgrof@kernel.org>,
 Paul Burton <paul.burton@mips.com>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019, Alexandre Ghiti wrote:

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
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv

As Alex notes, this patch depends on "[PATCH] riscv: kbuild: add virtual 
memory system selection":

https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1907301218560.3486@viisi.sifive.com/T/#t

which will likely go up during v5.3-rc.


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
