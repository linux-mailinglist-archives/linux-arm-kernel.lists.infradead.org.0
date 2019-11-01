Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC54ECB72
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OW+xEOCnk6GLEXu3pZQezG5uL4Mr+P073MDIOMeDYfA=; b=kP81swMxxP65z0
	6bMzkgQOKfGtuoUyrB/jZBXDmaFJGssJm8l42Iu6JZ7HHo3j6YhvTW7+O+DZCnZXE5odT94vttaUU
	KPWIGSatlT4uqkIV06OTWP7a2x7z7ff6Ulf4CVS7YSYWJLzOvwaE+2JUuZKDuKc42axgS4gzDclxE
	En0YJZVN+QMEjjy5rv3Xj8klsTRtUGuTNwgSODt6k//c7ynLkaUs7T6e9iUEZ1WzFFofX/jLnY2h4
	FNJ7k5FEhzRff/dP/dQoy58KPj/akM57bP8FRymiJ2lKje+WgK06Gxo+szdgBAAm8H0DHbfxm6VGJ
	0zthyKNMIYnPfBs/1Dhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfWw-0006BO-2S; Fri, 01 Nov 2019 22:36:30 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQfWo-0006Ac-7F
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:36:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id q2so5166521ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VOVEnixRZLxQkCHgEpMJYKVl9naG8q4Bhsey3a4BJyw=;
 b=Bli3xmuBt9/GwnfhQ+WLZeBpC+LGylrKEihKmG9wDJcaF6w3L/ZQ8vt3GI4YPWXFJQ
 5Om7iCdkbv/lP18+LV92eRVs401olXcWreQAxfwPfepVtiVSDh9+nHAn2/3d+gfz9UVm
 yMWAVezWZJNqsbBLHANyYxJW6QpG5vniX1o53MF1dl5bc0zwLsqDDWKMYaMNZ47JDbyE
 v0XCStgcgsGwANfNW7O2l7MqWzWiGoQksAS9QIjgoVFUAhEy6735xDLs92DbjUK8gYCH
 q+fHcZwm6Ytrc4SrW8PPtsChFVdCSMaGofeTewgiaGn6jHXy73Odpndaqn2pcpxNkMKy
 K1qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VOVEnixRZLxQkCHgEpMJYKVl9naG8q4Bhsey3a4BJyw=;
 b=orXKvQi28MnUMdwrjPPqFQyF/H78XS1EltfMfU75qGS4Kv+2fRdLe1M1xqCRToNfHv
 F5K+m1Ev8jJ+0S3L9iwfS04ROcU12X15mnSDFKsC/yAXCdUa8J6VwhEexhab+cejjR3G
 Nv5Q/TSPrUy9MeC7Qk6fiLMS0v7ZPv68aoNdLK8KZNOih0Qmb4JGbqw/fQva2tjbDcWL
 C/nGkQe8vvSntI49NwdsX93edJBw+Q2eIZkKiAv5nHqodDb/NCWwcrsY2DKcOd9yc+MB
 E6RMHSDEqiR9Y+bm7UGzqbu3vHwBy1oUAQI4PIZA/H5PbE12GhNI4/Qj+BCFipU3i69N
 ffjA==
X-Gm-Message-State: APjAAAV0K5ksij+SiGC3N7ari77XcrKsReDecElitgSqbyE7bl62xgGW
 0wM6dkqAFX7GgLI+qx0A229PCYnxYcqdZqd6zCs=
X-Google-Smtp-Source: APXvYqy3a3LpygwD50Ud81Z6exZF+LaVqLS3Tw+hEBAZP5UzR+Yt5u6jie3UaWjeMgSpzygcRllXXMsmSmfSgwH5eE4=
X-Received: by 2002:a2e:8852:: with SMTP id z18mr9873721ljj.230.1572647776833; 
 Fri, 01 Nov 2019 15:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-6-samitolvanen@google.com>
In-Reply-To: <20191101221150.116536-6-samitolvanen@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 1 Nov 2019 23:36:05 +0100
Message-ID: <CANiq72=Z285XTHguDoL5Eq_7XRcounmBfscquFPRWk3BH5kLvA@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_153622_261634_5FD26FEF 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (miguel.ojeda.sandonis[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 11:12 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This change adds generic support for Clang's Shadow Call Stack,
> which uses a shadow stack to protect return addresses from being
> overwritten by an attacker. Details are available here:
>
>   https://clang.llvm.org/docs/ShadowCallStack.html
>
> Note that security guarantees in the kernel differ from the
> ones documented for user space. The kernel must store addresses
> of shadow stacks used by other tasks and interrupt handlers in
> memory, which means an attacker capable reading and writing
> arbitrary memory may be able to locate them and hijack control
> flow by modifying shadow stacks that are not currently in use.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
