Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232F8EB650
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:42:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkF750C7xGSxd+vLZYsYXjpDM3vAYKItH0UI6KDMy5o=; b=NgIYOeAl/p3ue4
	GJDU7ZdCxYdpU7GGzgNDbrQ513cgoFlfTQC0IcNdmA/sNLj7ui9ONj0QJ+ylg33Q4E5Pd+aejDqMX
	kxKKNLf8srgGmfLIOzdK2RWvO4jEfNyBtv8xbOocKDeE3rK5kpgj7uZixOZ+6zoG0Ui3vFTIWPupr
	S0LkTIxIUI8iegWu6yYd0XKLcENr8GDY8xViht9jyozqUAqrs4We1/y0bNiu8NKS4w5LtCXSZWBif
	nQOJSXlsXT+zEIikr7IDXWhpz7qM1kVSESHhL7HKH642yRY4WO3sN3KXzHLvy5X46JnhVzkwHD8Ar
	GDPka5rUSwVdNb9LeFiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQET1-00027y-1l; Thu, 31 Oct 2019 17:42:39 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQESs-00027d-M8
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:42:31 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g7so1786481vsm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SpMt9swBFV/X7pJxY11yJxvoU/jl5TYZqkYEwxVo1zk=;
 b=vyAZGLuQJaP6UmPU/5OivZeIeCWgYHlNvqLsuh7U3yYJqNwBg3VduUAZbxG7Wh6UWt
 vR9hiusZOPdTKmpPzcbCdthcVtfAuVWCA/M8pStelbzfHpRETEdtgYoVIO74pLVcS5Aj
 PDux1c/zr+9UcdqYc/u8vkoVsM0YeYHd9+PtmsdPd6I9nLItOy76IJT1irNZ7ZvnLPOp
 Awz0G6XV3jDbzYKy0ICsWxla4idyK6XrPywrZoHibV+ewA3guRirwYmw7BYI3lR697k/
 6y0spqBrB465HxukOz7+BvekqO5c7tmGdGe9sOFhPb3/TuqkcTuslnkiueSXTjL7kZ2a
 Exew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SpMt9swBFV/X7pJxY11yJxvoU/jl5TYZqkYEwxVo1zk=;
 b=YSSJiKbNeDWkwui4r3Pqo58HEySlJuUShKoJET8KiMZmAp6AqXVvLeuJMrwX2l6iMM
 Vt200YFlepsbfuWJprlquMqiLfApZlIU0N3+b3fIb+YO6mvWcMDhZXGTY89I+0etT+V3
 cSWef1RsndgN/zlaGW/63wGWVVse7wKBMqSil4Z0ku6PO03SfolCkWlQcRsec2TycVJ6
 /Fa+avt0Jvv20JvgZ328XXaOX4LejAGSqzlygG6xN1AHWJhHP5uxJvUWiU5IZEAkw/b2
 jMrDIzHall0UJHl7QYr1a/o2iEU5kiA6Hk+saR+4/DmFM+G35J/VFlaaR2kPSSiH/h1A
 6sSA==
X-Gm-Message-State: APjAAAVhs/JHUVWRMrXbRQ3KoOwYuG40K6WaM2kggFqwpJd9iz93LRex
 SwuJsX+QuAQhcfd37BBz4S9rLedKkXUVJUAAMBmOVw==
X-Google-Smtp-Source: APXvYqw74Dsa5tbwvZVY6ubm3mq6Ol0GpZBf3HyKWvRWHEbC8fAxc8l0X7gBK5dChGcDSWL/yjwxE6D5ZDxmwT29ntI=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr3309159vsp.104.1572543748924; 
 Thu, 31 Oct 2019 10:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-14-samitolvanen@google.com>
 <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
 <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
 <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
In-Reply-To: <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 31 Oct 2019 10:42:17 -0700
Message-ID: <CABCJKueVVJNV2MibRkQGPbmpenK_b007kkHOoxfBHf1Wen2ENw@mail.gmail.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_104230_749268_586AF1D5 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 10:35 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Oct 31, 2019 at 10:27 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Thu, Oct 31, 2019 at 10:18 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > > +       ldr     x18, [x0, #96]
> > > > +       str     xzr, [x0, #96]
> > >
> > > How come we zero out x0+#96, but not for other offsets? Is this str necessary?
> >
> > It clears the shadow stack pointer from the sleep state buffer, which
> > is not strictly speaking necessary, but leaves one fewer place to find
> > it.
>
> That sounds like a good idea.  Consider adding comments or to the
> commit message so that the str doesn't get removed accidentally in the
> future.

Sure, I'll add a comment in the next version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
