Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651C22A0CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 23:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jr6Im0DXrlTbT5ZKPLMqRIaUnzHsbJpdIPXd6Oanl9I=; b=XrXFjp+nJTEC+q
	+rY4NMcxYooQ6cKzi8Jlnin13ddHO9xGPNUJ9xUA6IvKUHjuHJtjC5c8cB/JPjY6rxDYKT5EGhAUc
	H2Wl2FZrjm2erzsejW0rlrvi8DJGapyfvhXPVA8rfODqA89q4iKg75G4lE8yhs+NXcqHnLKivpT6i
	TjhqNNKEhtpA9l+YORVWGp4t4PtGW2RSbkrDbHhqytHGtu7laXvYdqZaol9giYAlymS5VInJkvLlM
	hnYs9++rsyQRO3ehU1B5FfWi9M7SVUVa5y5uHIBXgpoBPbSk9SLuEYPo/vSGf7wo0dE8aQZMbYHAC
	28AWvYECAjgL+YGcOBAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIDL-0004fT-6c; Fri, 24 May 2019 21:58:59 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUID3-0004Xr-0c
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 21:58:42 +0000
Received: by mail-oi1-f194.google.com with SMTP id t187so8096527oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 14:58:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FX0nAAQKdK8gCwAelke8YNA0bB3X71pjYoDs2aHxEiE=;
 b=CHRYLRC6WfVUteYYm30KCEQ3+w5iggJD7oICxH6Bdpk/o9NkX2W81Q7NLP5jiGDO3O
 xjqjbICJo+4IUbb747ckXtgtxrEEOn59IU/S09pJpDM9HZBzznn0T+af9h9FRliXyAmI
 l0AILqDA/BwEUaJR89aHCEgpW9FqBL1P6Jmn2R7ExNEfa4Toe5OyNfK1HrZDK+J/RTrW
 LGwcf5CHaZOLR9GG07gsP9HwAUUwliYY3vLxT19C2BPF2+szp87YQCaV/PU3GmFJ0q30
 MeLJNPpyqN/6oMUIMqgVgiXVdevn+K/dwcQI7TOBmq4nnZumu44QV4KnMbIR4zFlKx3r
 Oayg==
X-Gm-Message-State: APjAAAWg05x3fjUBwTj1hIhwIoY0wHkbI/zAbB6mxrLHsXZknWZbc56S
 bc7J7WLUFfosL4+5Jl30BQ==
X-Google-Smtp-Source: APXvYqytH+9RhKlZb9pctda4btXYaKYVWztG+4GxfJz4UGzSbQyRu3Kkka4gSAaGipt9f8+8R7wEFg==
X-Received: by 2002:aca:4bd2:: with SMTP id y201mr7159994oia.12.1558735119348; 
 Fri, 24 May 2019 14:58:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x72sm1442794oif.50.2019.05.24.14.58.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 14:58:38 -0700 (PDT)
Date: Fri, 24 May 2019 16:58:38 -0500
From: Rob Herring <robh@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v4 1/3] amr64: map FDT as RW for early_init_dt_scan()
Message-ID: <20190524215838.GA16271@bogus>
References: <20190519160446.320-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519160446.320-1-hsinyi@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_145841_098574_9741FF71 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 12:04:44AM +0800, Hsin-Yi Wang wrote:
> Currently in arm64, FDT is mapped to RO before it's passed to
> early_init_dt_scan(). However, there might be some code that needs
> to modify FDT during init. Map FDT to RW until unflatten DT.

typo in the subject.

Otherwise, this one seems fine to me.

> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log v2->v4:
> * v3 abandoned
> * add an arg pgprot_t to fixmap_remap_fdt()
> ---
>  arch/arm64/include/asm/mmu.h | 2 +-
>  arch/arm64/kernel/setup.c    | 5 ++++-
>  arch/arm64/mm/mmu.c          | 4 ++--
>  3 files changed, 7 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
