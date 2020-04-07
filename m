Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BD61A0D2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rB82YPym6tISvTVf072mO1wdrQpfmPB9YdERcHBzSwY=; b=UCXRLRjl5BMUuZ
	fvYLDt608WkH6NYPASUVPLHfQJJziAY5pq44zeYpn92H6TPJueMjADKQIgWXkEtocwScBgoX/uJYH
	X8BqCMoyESW8934+AwbTF6kPJoL9FOnhRQcjD9NCa9oWqHvISmLtzZNW5mkNGEL7xbAQ5Bx6nldpg
	hxrocSYfF3h9HOsrhSWoHz7YZTyvqX+hFYGmSwc53rWXdZj9v8X7WAM7R7/13O+hHbC9jZ1q+ENo/
	rCMaYH5FJ8x2p8ezgfJMdyIKc46AnAqtyxUhcRJSZM0WvowWH4yZFFY2nA2bK/0wXG6K5Eeq26w20
	8ZkyihL3okCV34a4AIfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmuC-0008Pu-4D; Tue, 07 Apr 2020 12:00:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmu3-0008Ms-3j
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:00:28 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A24832074B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Apr 2020 12:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586260824;
 bh=Uqf4rhYga9NNaBB0Dvwp58Stj1GsGS4Ihxkd+ju3McQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UynEai+Iomxc2OG8KYjK/KRD7a/dOOxnhwEmNPEDHEIlfRtBYPIwNjDmN6OEA/9ly
 cUMpN3ZxirencrZA4IoHgDxg+rqzfXd19T3f45flU3iNT4E+LyD1J4mbP/FVTbsn8V
 MdVqtkiIove/82erkXHXimJH8ISVg2vzZYIJmCS0=
Received: by mail-wr1-f50.google.com with SMTP id k1so3591252wrm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 05:00:24 -0700 (PDT)
X-Gm-Message-State: AGi0PuYo4BxeCzGzgD5SrOvyer+M6hnSMS2km5TXHEOzjQH0c1xGVQsR
 J/1YA5qmXUNW9dGsQ2Go5TdPugiF898t7rcknEZjvw==
X-Google-Smtp-Source: APiQypJI+zUUJefqkI1wPoN1P7O6CrZHHpERpheNKfgg8qCaXTmeul5CgCiQbYpjls0Awj/83RzxNXZ+ny+VOSB9RbA=
X-Received: by 2002:a05:6000:1002:: with SMTP id
 a2mr2399545wrx.151.1586260823114; 
 Tue, 07 Apr 2020 05:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
 <20200406164121.154322-13-samitolvanen@google.com>
In-Reply-To: <20200406164121.154322-13-samitolvanen@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 7 Apr 2020 14:00:12 +0200
X-Gmail-Original-Message-ID: <CAKv+Gu9psVBSdUvcRWNrEvjK4ckyA-vGKmZ33O2NUm-Pt4eJig@mail.gmail.com>
Message-ID: <CAKv+Gu9psVBSdUvcRWNrEvjK4ckyA-vGKmZ33O2NUm-Pt4eJig@mail.gmail.com>
Subject: Re: [PATCH v10 12/12] efi/libstub: disable SCS
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_050027_172516_4B02D5CD 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Apr 2020 at 18:42, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Shadow stacks are not available in the EFI stub, filter out SCS flags.
>
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  drivers/firmware/efi/libstub/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 094eabdecfe6..fa0bb64f93d6 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -32,6 +32,9 @@ KBUILD_CFLAGS                 := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>                                    $(call cc-option,-fno-stack-protector) \
>                                    -D__DISABLE_EXPORTS
>
> +#  remove SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> +
>  GCOV_PROFILE                   := n
>  KASAN_SANITIZE                 := n
>  UBSAN_SANITIZE                 := n
> --
> 2.26.0.292.g33ef6b2f38-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
