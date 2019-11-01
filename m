Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F59EC5CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:45:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA4zrM0fbftSgBniQMvGiIKOsr5iTnUIqVhrhqeYmmQ=; b=VowZEVvLAGrtZT
	PAQK7cIv0i4C0MiICLDvrk5n+SrkXZLHPx9mAAJnwuZQjfqF7R3+FR9qe4XkI2ZWxKTG/Ahm50QUX
	GRukyp7SLUaouflfA+g0EcUIrZcsUqJNZ+tNXu2l7fQ7jhwx+7XeZGxfq9pIwsyW5X/R5n3la/E2d
	IfbUu+lmQBm0coF8B9cmB9eyXQDJV/8L4lGoH4QVZhQ/PKLjKO9V/inlq2Bg0AshrJ1wvees4h8nE
	IvMoDycs0j7m6Szve43YvsKxUC+An/DmmntcIk2DNVjzFIDkhd7awn5PBx3iVrn/9JOazWWKvPSsW
	8TKr/inlz1ARIFWG/7kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZ6f-0000rM-Ry; Fri, 01 Nov 2019 15:44:57 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZ6Y-0000qW-CA
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:44:51 +0000
Received: by mail-vs1-xe43.google.com with SMTP id l5so6603186vsh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 08:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EryZRTfyuksqxAOsiXgBnBsO6Q4g8OGONpcbT/2UUtU=;
 b=g4gJ23AXi6bRyNKKbF6kjh2Pk/SIgEmk0fMp7yU2OpLF1/ZSxEbdKQ2jcL1t/s7J/0
 r0bV9COqOeg4Cq5X18jTt+9/QOwnZtzmoXU43GWevEdIG1WGMtRc2pCbbksNon998ATC
 RYHfnk/oc6w0lpn4KlG1RD+XtSSxaBWmYd1V9RlWndHbQ5tvHLVM2OtZ6ek4cI2xWRNt
 R3iakDWD0UnL0SsREP4Ka3pRfim+0rka4bOI/E6Y1rBKqdoZulqYrnLmldF6BQw22qOB
 hqW6VUonfcohOf+Nawcc27KX/td24YYGGrBLxrNdceLzOMTOw2m0wiX1Fd48dG5wZunR
 2c0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EryZRTfyuksqxAOsiXgBnBsO6Q4g8OGONpcbT/2UUtU=;
 b=Z+w9nhJJ8/2O28BJ75lhw7sgzhMpL73AbLavFEyDxNqGdxXtli2aJCxJMoAwnegmHg
 Mrudv5GzvgxPloGRTzOfYamwg25ua58rgASrGdpLsTj3+V1u4kdL5BEE5IMiJ196s8ah
 ktxPHqb7TLf3nBTjNnuBG/SQ2Ctu7hho3Dd7vn0lj3KHzLKFSdjdnzCv/meRs3KzAH4e
 UqvHBw8QesTpuCYmYX2BXMd5pTXmHSSmW43UXW7Kq3T9JL6oc/rwWrSNgU/trngSPhVZ
 8uBSRp3CwW7/++TG6l7cnUXA52ocdMMW9XXrBG4JvEqNA6rlC8+Vdxo9TpmUq2WFHcpZ
 f0dA==
X-Gm-Message-State: APjAAAXI6AidjpyuniXmyKNC+HS/ouPfZpz3gc/VrApE3Kaf59RqbQ4w
 7VWWcQPoZnT05+m4qFRRXm+rjVT0WC+k3hGsHgb77A==
X-Google-Smtp-Source: APXvYqyH1Rx5ASstI+WbI3lXJTQCoOfcyvqAY38q2Tn/ntuwQF2PZaPqzpHPsoiSZYGDDuhXsCRPVJfLzeJkdoFRyBg=
X-Received: by 2002:a67:e951:: with SMTP id p17mr3253133vso.112.1572623088869; 
 Fri, 01 Nov 2019 08:44:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-18-samitolvanen@google.com>
 <201910312042.5AF689AAC@keescook>
In-Reply-To: <201910312042.5AF689AAC@keescook>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 1 Nov 2019 08:44:37 -0700
Message-ID: <CABCJKudW0tFrWryKj3-xW_eLWPSpCkaT9a14c9PH4a6-TT_=iw@mail.gmail.com>
Subject: Re: [PATCH v3 17/17] arm64: implement Shadow Call Stack
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_084450_439678_00E91751 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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

On Thu, Oct 31, 2019 at 8:45 PM Kees Cook <keescook@chromium.org> wrote:
> The only suggestion would be calling attention the clearing step (both in
> comments below and in the commit log), just to record the earlier
> discussion about it.

Sure, makes sense. I'll add comments about this in v4.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
