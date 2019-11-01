Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CCBEC9A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 21:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHH9P+0HNZ5AvPV8kiWos2F2xAv5DH6GhKZIRqS58Fw=; b=PDZyvKj+1zkr/V
	PRPwc+EqrcylKvoGv1kINHebOX0mreoZRS+aiBd5TcP9I3L46TKiDlXwA5CpiaZdcLRvafzmPU/nP
	1V7/QIlgrehA6Xghj6F6+Chi7mFXZapgnMANzoYmdUxhMmIM/C+IriuVfAa2exthyWX5fEgTqkS+k
	8rr2LzTtQwYNUhdk+H/P6zFsESWiNKZMSqqVe5I0OcPvCUwJVOCYMblpLsD7XGp6yqRQSw+nW71P3
	BuATAHeu6ctGZ5puQYRX0MlrOHIum9VbuQU8pbw9XPbfSM5rPxx9t8w/y7tEjDPc8ZztVij7TfgGW
	DlRnrpSNaIvcsOg+Tc/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQdbZ-0005jF-3l; Fri, 01 Nov 2019 20:33:09 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdbS-0005iN-N8
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 20:33:04 +0000
Received: by mail-vs1-xe42.google.com with SMTP id k15so7181051vsp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 13:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4dKpzKxgNAxP7uchZEE718nvYJMIp2XAO+c9cDo3MTw=;
 b=llfdsR0mFeyjibNMIjs4xEF9RnIEM/F4fsan8LefCEHgwtIYNAOKIWcaMLXCPUXpJ6
 A9Z8a1hAgX5vph4HYseMN3OqV8I4aKmmq61yuf71G+j+fbM6F/3QgbQISzZRx++xQ6uQ
 rpxg24u1nhhkPdYZ+GFUsMLFT0BeCg+0eevZt88sPMVsXoz6DTHteeXsogaoUL2SzY9v
 ghKr14XCTinh2/ic+0QjTvbuoVjhyxGzJVQN5RBRvaOEv1Ld5FTshxsndE4TaEObzpiZ
 /X2kDb3o7l53lLDAuOgjn1yk+JP4f9YS1pPMkt9P5uzVOg4IpQmpskO8NUzz8gBdCY7Z
 QN9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4dKpzKxgNAxP7uchZEE718nvYJMIp2XAO+c9cDo3MTw=;
 b=bVNfM2LYvVzVoPdHt3oGmf1BwtXglwz/LmVyn7EdMvG6P9zOSpTNrfm1VdyJe2T7aQ
 jAq4Y2Si0zvkCrNH6s1/9m8uA/EKrR3oi7k83jwrMvZB83gUXrVUQ61KJpm1M17S9aAp
 fbK/3w+JOOOYfWt2Vlj0PqqLJy3/VwGaoPcgP40qUpxt1rjPm48CGumCEBz3JTxeOlma
 8GuV5IbJ3P8mzAPG/t5QiFJ1lMtdLyu2Eeo7wKxS5DwPOCnkB8yyqJRmc9Tj/xOh2hSo
 xyHfL8nG1j0K5Urt36CiUslai4pRO5Judi8nqkbSODHBiZBd0Y/R3/THatbiVBC24u9q
 afaQ==
X-Gm-Message-State: APjAAAXDKuGMku2oO5ckoOcVPOUoV8Z+wRBRgs/lyacbDJdBHX5ho0bT
 pUWaMpdyJHZ/IVioMs7N4gBN1sAnlo7Y3Ua50Hb+Bg==
X-Google-Smtp-Source: APXvYqyDyHEaxIBZlzITcLvjh/p5XeQ4QgzocUuUCOwXN0WOuNqq+ARu4A8BUTsto1yGSfnwMlhvbSnvYIziXBMnd3E=
X-Received: by 2002:a67:e88f:: with SMTP id x15mr1725327vsn.5.1572640378099;
 Fri, 01 Nov 2019 13:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-12-samitolvanen@google.com>
 <201910312056.E3315F0F@keescook>
In-Reply-To: <201910312056.E3315F0F@keescook>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 1 Nov 2019 13:32:46 -0700
Message-ID: <CABCJKufrebN0C-9m09bXPMhqfB7tkiaaPvuG8+pJSszMBHYcKQ@mail.gmail.com>
Subject: Re: [PATCH v3 11/17] arm64: disable function graph tracing with SCS
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_133302_780247_0677788C 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 8:58 PM Kees Cook <keescook@chromium.org> wrote:
> IIRC, the argument was to disable these on a per-arch basis instead of
> doing it as a "depends on !SHADOW_CALL_STACK" in the top-level function
> graph tracer Kconfig?

Yes, that's correct.

> (I'm just thinking ahead to doing this again for
> other architectures, though, I guess, there is much more work than just
> that for, say, x86.)

We can always change this later if needed, and possibly figure out how
to make function graph tracing and kretprobes work with SCS.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
