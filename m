Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92133EF159
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 00:45:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUUTbSZzCRNg7sklzX2dQK0m2sUydlCA4JnAS5Og1V4=; b=URobjOCyg7ZNjS
	j5ikPTDCDGOOEP59QKg/Nz794j2sMtO9R7ThNXf2Lq8FdAs0tgrH0pTRp10qnyHAFbD/Nynp9sMcz
	Zx8MddUDompPe6VUg8Y259vt+eZXSQiCpQYkFk2IhSc6kGcmckCDwRK5YIHuCainQPVT/e7SfGGvF
	/GGUQu7YeSR6JGRu3fOdKJAsQmuc7gI7xwX0s55FTufKmKBhQMhpe3Fq870xQfHUXH8UVyE9wrFil
	PbFCOEwhAqwJnEstiaYEGBIHXQGlGPTA/Tjclo4duBNzFDx18TejKU89yCjeWDTggnJpmHeVE+LNK
	pj78yVQEUalKoinCeokQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRm1s-0000Od-1r; Mon, 04 Nov 2019 23:45:00 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRm1k-0000Nn-EE
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 23:44:53 +0000
Received: by mail-ua1-x943.google.com with SMTP id z9so1805277uan.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 15:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SpNwJfSJO9MidRCrn2p9uupIwuhjvEPSgYuh9TBYZuw=;
 b=XWr7kryZXstmsXgYE4dBJ4NrnDur3s/AC0seExuiGF6z4UGQCwWfIPFNeY7JeVwPM3
 wnP1G5A/K76IWU2DyV/IUlCtYDCgPO0n/bDVtTP4pu+zHCoH+fei6dyO2OcLB2gsC6W7
 yHM2c0/FUmsEcEYZY0y9ta70pnWbez+C+rMSFS+aiM6DHbB5OA98h3MrtmOeV6q9EDtK
 bw1zfaHUujqN+zHGVRnnbiam+tcW3d2rc3/Pvust522b4CCrQ9v9kAdVmg3Axk3wD37y
 xqCPcphfjtbZ+wkJQy35r/dA4lS8knkpiqdmkjVq1MbYxp8Jbw1P5SRRjv/N4BJhioPs
 zRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SpNwJfSJO9MidRCrn2p9uupIwuhjvEPSgYuh9TBYZuw=;
 b=nemoOrjuqmts+chzdp0hfyOqmYOMLnWKxLVcExiImslnyxxyIcmEMpKdw9s3vDm3Uv
 SzgvY7kn/l9CeED3Qvr+mQ/qnwwqFYSyV9DZW+1iPADMEEbOSFkEvj+fEtWzwMqsPT2L
 5AEOziSlq01ay9gjzqdFICUZSG4V8lu4ooxrfYdqtRPO3+mSkvvxGUmjbt1yQMbVbZRA
 eYmokh8+xltWNuqog6iUbV1oDawA2DePcqN0txASR4rSfmwrFNjBOPwgzvU5+lzYPIqb
 oGux/BeHzL0xVqDym9OE8Ba9ZbAYit7DkCkZj20YBzPPWZF589dwqnW1jw9ZoS7QWBX2
 h0sg==
X-Gm-Message-State: APjAAAX2EOcHq6uT0pcxnpiikUXnCIF0Y/RjbuUMJJBl+x7GmJJr9OqM
 NwK9OMd8VDflzE3aiwwUP+YskPBEV5++W94YFt24og==
X-Google-Smtp-Source: APXvYqwMrHXnmCbhr/Nl5pMJrYHuxKP6Lu2UQKV7ItSK55vLCW1x6A4Use4SMcLe4G85I9Dvt99c2soxGNjz4r8rNRQ=
X-Received: by 2002:ab0:4587:: with SMTP id u7mr3850575uau.67.1572911090684;
 Mon, 04 Nov 2019 15:44:50 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-12-samitolvanen@google.com>
 <20191104171132.GB2024@lakrids.cambridge.arm.com>
In-Reply-To: <20191104171132.GB2024@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 15:44:39 -0800
Message-ID: <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_154452_504258_587B0092 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 9:11 AM Mark Rutland <mark.rutland@arm.com> wrote:
> Can you please elaborate on _how_ this is incompatible in the commit
> message?
>
> For example, it's not clear to me if you mean that's functionally
> incompatible, or if you're trying to remove return-altering gadgets.
>
> If there's a functional incompatibility, please spell that out a bit
> more clearly. Likewise if this is about minimizing the set of places
> that can mess with control-flow outside of usual function conventions.

Sure, I'll add a better description in v5. In this case, the return
address is modified in the kernel stack, which means the changes are
ignored with SCS.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
