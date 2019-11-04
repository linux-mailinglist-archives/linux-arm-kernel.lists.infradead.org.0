Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3DDEEB47
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVw/YkDOzzQcfshCFn5NwyVvqpyhuFDNHQggkXgg74o=; b=pDGLaHlHUXBC/V
	7W3EgUbmAW8V3Z7AX8PCzCz5JGK8MeOGA6yfEQ4io6fIsbRX5yoP8a3wo3escMX1Bd6pMRBfIHaZz
	THhaKRBiViSCulHv/mXeambVVoExPcCKFeUjIZbj1waYnUQVx8+tDf0TWSMiePhM9noIWwbtT853w
	GQ9eMOlyhSKnlmTJ4FivT0CP74xXf5TdzdmK5Lc8A7GzIbtWnLLgiZwQ0CTTrRNXpIVwgT5L0hH1v
	Lv3Woq93LfPX8LmoanUbUHhnECNmy9SJFtiS/aICgWdkPCt6iRvmH+2x/AzLDA6nM4MoBcobTUouu
	VEFpgnzeiO4hOWUaAbRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRk3m-0007fX-0I; Mon, 04 Nov 2019 21:38:50 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRk3f-0007ex-OH
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:38:44 +0000
Received: by mail-vk1-xa41.google.com with SMTP id o82so2270122vka.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 13:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=erA0+CgO32nkALAW/U97P1GwaRL1ou+VA5YnrGmuWIY=;
 b=AMgSst2hoIv0GZSG/6Hv3sj7G4QTMHoXZaK+uecCN92VkYk2ZpXGLlGKNE7LaQkMOV
 GALbiSTH4QXZuxCs4vXVQ+PvBEvuBmB7k5aqf+G9gnmvHWB5/Y+uNebLr8WkNd+bS+Ov
 /XXES1wI9li/uMeZkpl2e89se5snh4JkYGrWHWMFeboxhZVboLE1Ab4qQKsBrgjgaJ0Z
 TPALZl6SFGfHwCWeRXmzVYpIwJ+aRCFQbHaYCGtjIRAIEY7ObGDK19pVPN3DP2bzseFq
 kO3Sq+THrsVH8U3L8DmX49sKk84SksyJMDaTiPQHmYPUwA9Od1QsJS2NmYqwVYjSpzCB
 i+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=erA0+CgO32nkALAW/U97P1GwaRL1ou+VA5YnrGmuWIY=;
 b=R4QynmidqzoeAznz4QdU8kF32AMxICuySOozetsrv1MbvOtCma5Xu026r6DTgEQn0K
 y9ZqwlICZ7s43shkEMrlZYRyoaHPqZkG3ivwhu4dmKmKW1l6B8p/e+bOiTITkE6xEiJD
 Xt6HSTSGxZ0UemrCHL7Zx6Ph0RO1zcM5itkIXty7CskPqXSVVGnW5GdJi6fK4WMDgE7p
 qfPYodBJByJgi8DO0YiOtdB1AYLgqxqhGuj59UaWw0JyshcGBdZ3CBRZUVGacBcSjnnd
 N7hYVzj8Tm/slOjP76M9yiEw8mLlKcIZ2NPMSN2T9V4+bcshc8YgqiGtdEiqPEoC4RcD
 w9mw==
X-Gm-Message-State: APjAAAW5N/ANmClBrcmukNJ2/s1UmkAIL02JAKBmQSGfrRT4KsIUOpwi
 Udsajp9McqThqoKmwY2OiXd61nqCCFwHAkPLSf+ZyA==
X-Google-Smtp-Source: APXvYqwHIA8tjMB/idsGTHUTWfDb2R4/Q6AYLqiE/ovPTmnmanOsh2FI1AtdGkwKNIfH3EsSyXxnypTSqw/H2MHfj8Y=
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr12696794vkc.71.1572903521740; 
 Mon, 04 Nov 2019 13:38:41 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-14-samitolvanen@google.com>
 <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
In-Reply-To: <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 13:38:30 -0800
Message-ID: <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_133843_814443_D2DDF181 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <dave.martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 5:20 AM Marc Zyngier <maz@kernel.org> wrote:
> >  ENTRY(cpu_do_suspend)
> >       mrs     x2, tpidr_el0
> > @@ -73,6 +75,9 @@ alternative_endif
> >       stp     x8, x9, [x0, #48]
> >       stp     x10, x11, [x0, #64]
> >       stp     x12, x13, [x0, #80]
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +     str     x18, [x0, #96]
> > +#endif
>
> Do we need the #ifdefery here? We didn't add that to the KVM path,
> and I'd feel better having a single behaviour, specially when
> NR_CTX_REGS is unconditionally sized to hold 13 regs.

I'm fine with dropping the ifdefs here in v5 unless someone objects to this.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
