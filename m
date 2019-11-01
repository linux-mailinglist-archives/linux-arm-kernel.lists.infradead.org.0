Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280C0EBCA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:59:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2f15GLLHuObE6G9PP9zUd3wPebDCT+lp01RJV1OgDE=; b=Bj0zrELNHbiwCW
	tnBb6i3orD3Iz8cPOp3S9+Q6K5f18kGR0pTyWvuBY4Lb1lEAcrrnal4v26Qu8uR3/hu3jzEwn3hK4
	ANZzQeXueTerBRZNnTTXHo/bMhEM9poEmqe4wfcU8p8TYHQRZWP4Dtbu9ZNzHP/S+VrFo49Nbfa/8
	uwRsETrdyFnQyhX4eak9sxOxX1eCm5g+eSJ6ldcd1GLubwrMhW7YpsFbD3LqTyHxqLGmo0ddsWpvW
	dbNCRiSqchmKNnZt4SacA3ZP+zOq7IsFuRpBJ8uLKWh813FmhVlYbEmWlYJZ/n10iktqqx20fmrR0
	bufQn0rWiVKtpjpz9LIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO6D-0002OP-IK; Fri, 01 Nov 2019 03:59:45 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO61-0002Nw-AE
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:59:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so5595020pgh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jWbfirm5A7lClilm5TrxMUwFVETsZ0QZ3dgXNGgwJk0=;
 b=LILcQjVb+J77OLR0Wqh8wnQrNbg/1wbjTbvcWvcASlmFUoRhF+FiABYaQL4F6fbQbF
 uxzeSY91YoL9miij3Kit1NzjdfNC1KqoUlTChwS9qCXgWIlOVwAzcIYT52gA3K2PVO/8
 zI4nwynvLe0KA4Pq1Usu8zAit0zL/9zkfYAew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jWbfirm5A7lClilm5TrxMUwFVETsZ0QZ3dgXNGgwJk0=;
 b=nSdp9T8bic/j5cLXrBZoOLzVfw/PuLSl6O+b3FbIzqEpQBqXsejVqeD1Mkls/C7cA4
 QwQOLWcLd2GTmxVgcRw4jlYxRxp5C4iyEqzaq+hq6WfBzevsfYEqPi2B+yz+ZIOvIb5/
 94sRwZMdItoOorJ7kjQS/evKznL0ISFTzVx0oSuu03vJCXsyM9XSZAx6nDsTWjLd/wbU
 BAJJ6qhGz+cGSMjuPDR5fu40gzITytkXLnH+IP/J88poBvRmC1jJ85D9EoXAvwnhZWXr
 PMj9E2eL/cO34dV/tLBZJeSKLS3MJqeWIhwgszrfwbSBCTvxSqiLWidkIBhpKqlC48IZ
 w7cw==
X-Gm-Message-State: APjAAAWlBdWnZLyqyG9BA3cj2ah+1N25B2tYwPq5uwiCnePMRjpqPLt0
 ZgNFlFzQpZEQpQiqh7p9qJwuUw==
X-Google-Smtp-Source: APXvYqy5NPe898RXSU+w1c0UaOFby31e22ngkYRTC9hJdLIA+7oZafTpdC/J3+7KdM9QjpM8htFvPw==
X-Received: by 2002:a63:ee48:: with SMTP id n8mr11288858pgk.374.1572580772699; 
 Thu, 31 Oct 2019 20:59:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c184sm5427852pfc.159.2019.10.31.20.59.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:59:31 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:59:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
Message-ID: <201910312059.59F983B@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-14-samitolvanen@google.com>
 <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
 <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
 <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_205933_355385_517C68F2 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 10:34:53AM -0700, Nick Desaulniers wrote:
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
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Yeah, with the comment added:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
