Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E85CE8E88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9d0+sR6DeAl5bo0XgA5SnuSKd5Um1ALz+PpUumgeSYQ=; b=CnjEW95TerU0rr
	2j9n0gNdfIGVb/hed6dHHaFU97VQSbCUl2D9uSOoL7sdcRDEy03Hh5CiqpBQsT1szbo05At612Psp
	01QAB7KmUxcOG+tIBrdkr62xRsBvRLwgwe5TS1Gk/B4bFTdkEwjebQr5g2fNvVLrZxFQMvEmXog86
	Dn8phMvPgBq4DGKhQvq2SOFATP63ocEM3dSnwJzbtgfHkBwyDSJxlrFfRLftM94WeK3GyV6ZRLd6t
	UMCQWoN9KUvRmG8hcxjOVa7HYqSsZH5nuFQAEvxxe67whiHswjn4ezCLKPBemiTYPelAi7gKwmSFK
	WeRYTzC6C0avBkdPotRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVZC-0007Ee-5h; Tue, 29 Oct 2019 17:46:02 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVYo-00077Q-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:45:40 +0000
Received: by mail-vk1-xa44.google.com with SMTP id r4so3071995vkf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=65YP9F0KitFD9legdxyLM59RAjKBzdRGrjI3L/m7ObE=;
 b=rPGbbUqAwVHq7Cm0rGfrw8aZKG5VrL44JQ4WF1AX8zOdwQI8rkKHDe3Opfeq0pYbYi
 ZvPBEVky5mJq0A1utYxoVfchIrzcrJxh4cYKqeEyKqh3F5ZpGjwR7FuS+45Wd+YvZTAR
 FCYHhGld6MAkj8PSSTu0jSSloZk6eBz34o6f90VAXFRXs/86osn7qCWlcHM8wNytg3QS
 uJNMarnDvny6K3ClI88qEsq5+XwNmoTiSipJzzK0eD0W9Nwi+d6vcizeA7IRNM1KW01T
 8D5hlGzbW/5Mpci+BoZWh8xm7HIZT8sr5w3L36adlm6C6pBdnby12ApWTEuM8rl7eyke
 UlVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=65YP9F0KitFD9legdxyLM59RAjKBzdRGrjI3L/m7ObE=;
 b=QfD6XoPtaV4fB3UiOwuaO0ychqSLNMeBC/1WXW5nwhbfBwYEBaXOoA2YVP9wVs0i2A
 T7AnsVtEDVtFkl154BVVQzNfpoWj+Hxu04wNFoLHVyy14pW4OeKXaHakgqOsRVK4y/6z
 l0KuHyeg1LgG5AiLh5yErIIeSF4Mdx0Gpaj9CYFEwHpF6TPTGJ9RI3wIgD1K62eHAwnN
 TLABhkYBAd4f+80q3p3Y5wPOAfrE61C2Z9FInDHETX0lNwLtCa472mforQENNDlfdi2k
 AEF8NiCVwYrarksaAI9PFcSYlgaUCqZ1MCey5wKhhsx+lZK3LDt+TmWA0s7EumLRxONb
 MzCg==
X-Gm-Message-State: APjAAAXHmK6ni0EIy7U9H4BWsVDgHMc84ZNleUxBNY9r2/1FscX9fN9o
 PQbk9wsSzrrRIBdRvvx4B4FjTB9ENkZSJ+9ypqK5ng==
X-Google-Smtp-Source: APXvYqyofjlHaKbwoCfizqOngvFU3/FN2jdIJr9xQCjuFQ8iVqA3V1NcHewQYwziFUY5XcE5H3ggNp7mqR1GIqnLUe8=
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr12501967vkc.71.1572371133208; 
 Tue, 29 Oct 2019 10:45:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-10-samitolvanen@google.com>
 <20191025110313.GE40270@lakrids.cambridge.arm.com>
In-Reply-To: <20191025110313.GE40270@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 29 Oct 2019 10:45:22 -0700
Message-ID: <CABCJKud1xYEx_GVgfBHUuwNGKMxX+uVaE5TR6DEqo7CoSJJnNA@mail.gmail.com>
Subject: Re: [PATCH v2 09/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_104538_632247_3C8280ED 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 4:03 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I'm guessing it's difficult to always figure out the SCS slot for an
> instrumented callsite unless we pass this explicitly from the ftrace
> entry code, so we'd probably have to change some common infrastructure
> for that.
>
> We have a similar issue with pointer authentication, and we're solving
> that with -fpatchable-function-entry, which allows us to hook the
> callsite before it does anything with the return address. IIUC we could
> use the same mechanism here (and avoid introducing a third).
>
> Are there plans to implement -fpatchable-function-entry on the clang
> side?

I'm not sure if there are plans at the moment, but if this feature is
needed for PAC, adding it to clang shouldn't be a problem. Nick, did
you have any thoughts on this?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
