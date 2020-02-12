Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A712B15AEBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 18:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmSeHSc5b8ad0JnCRwftVXbItN2wXRLcuysG8tE4mZI=; b=RNPqOl+Z+TleQ9
	+lxIwzqL0eSzVRo8+Z5Ek5/REcK84kIB/NfBDtzRYB49qp2Wn6EP6gWEsjQU7Bj8vVl2wH1xJP+nW
	h5sg9Nnm3bjGoYKXsU8zAjzG5nd0zjTcgkDAg37NoyQtZSec++TX/K/YlwXJE0NuueQU6QYMgjdHN
	HbfRaLHP+bHHlMXYgDa19lmm7zxwr0SvF6+2+AA3Kx0R5jMKSiK0i8G1fmVfOxitoIpXSKTOmvr7T
	Ak3kkKWdc8N2NIDdKWOaqpyo/83O48YaBYQOWjUbUtIupUv1EgaCDcmmlREQ0sZcftpONAbIwar+6
	fuLJwz0f9SzvagAtW//g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vqy-0003NA-8e; Wed, 12 Feb 2020 17:31:12 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vqq-0003MH-MO
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 17:31:05 +0000
Received: by mail-vs1-xe41.google.com with SMTP id b79so1677164vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 09:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XgpctoHh6dg1wxvj3BzSThVl8kpcEhXa3sNGXPcFbT4=;
 b=BtezE3UKOP32S7Hgi6uAZOCn9BCk1YLzZTI/31neMRdDIAastd/PkKexEg5uWIeSlq
 /hFI/msrF2GQcVhisW/RaJNrJGmFkKA4SeD0lHwdM4ey9ghkS/K+yx90I62OEmTesdwF
 xzMU/2Mq+v9/Okdl/2mUjBYKqE6P9vJw2KVomx5TFhjbaK/lu0Q6tw2rFDTRVzvD2KxL
 boPGPbPxe+RpyEehZt6ohw9y9NodMcdQmgyDLVMfAAlCQ41OBvoUAldOafMsvbSOhhvM
 Ujf9+E+XNGlSxbjxgY5T1BHWqvckIdfOYnsyRjOxsWx6G6V+xqkaOcye9xpAB/GIw4Zn
 EW+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XgpctoHh6dg1wxvj3BzSThVl8kpcEhXa3sNGXPcFbT4=;
 b=WeK+Ai67TrRRzoiapnQNK5WSdmTXOVcTaE/LzU6mVaa9s8APAeOGjTdwUPCCvOpihs
 9iZZbx8YjD8j+Y33T8cbXEjEzSyGkF+Olo+E4VFSsElUKBoRWq0yGtzAG8EChHcb4mkp
 +6idNjTTl3Z4VXmNRJE7JB48pYdDIqmD/jh0mGvoPQCyTYAw519gtHYP6r9iVDMwKMut
 7atX8JmsXCMSodV+i//EzhtcIMGIGCD7EzneFnF6lHAKQ278Xo91IHUwIMnchZVjbtly
 0sSgQ4+ughaULjICk9kwoJk1agPtx8rZquEEPe423k/Q+3bKhSmFOsXzq6Hgve92SZru
 Qa0w==
X-Gm-Message-State: APjAAAUD8cc5vCW5AJxt6bRFL0yuS7JE9D1Hs51HFbgr58TIVrG30RrM
 DgIeLgCq7Bw2ft5mWsjDgWjTYhQW3djQxkqBCKH5uA==
X-Google-Smtp-Source: APXvYqyjKo/YFw4KoPFfCCWJOIKf5+SsU5ZWgCMmPdEkaicagM609YliueP7WkCTKw6TDAOHNRXlU3z7/h7iIoQqHFg=
X-Received: by 2002:a67:f4d2:: with SMTP id s18mr12516774vsn.15.1581528660711; 
 Wed, 12 Feb 2020 09:31:00 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
 <20200210182431.GC20840@lakrids.cambridge.arm.com>
 <20200211095401.GA8560@willie-the-truck>
In-Reply-To: <20200211095401.GA8560@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 12 Feb 2020 09:30:49 -0800
Message-ID: <CABCJKucpq=zu7ikf+Q-f-v+6T-cbQCEb1setiZfFvHa8iw3erg@mail.gmail.com>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_093104_757474_3D287F36 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 1:54 AM Will Deacon <will@kernel.org> wrote:
> Thanks, I missed that. It's annoying that we'll end up needing /both/
> -ffixed-x18 *and* the save/restore around guest transitions, but if we
> actually want to use SCS for the VHE code then I see that it will be
> required.
>
> Sami -- can you restore -ffixed-x18 and then try the function attribute
> as suggested by James, please?

Sure. Adding __noscs to __hyp_text and not filtering out any of the
flags in the Makefile appears to work. I'll update this in the next
version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
