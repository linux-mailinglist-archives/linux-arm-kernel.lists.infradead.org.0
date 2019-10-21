Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5014DF6F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 22:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzszSSRWla5hzBCpzyOlqxJkjB8FhLk2TcHuJDVGDFw=; b=sD4Pjk//SG9wSx
	tAaqCZpTd2qD9PZUkW5WZVKDSbomDcAWTgO47WvtC8cFt43028aSV4G86YsJ0bHaK3f/JCaaRgGxC
	4jTk1w4uA8E9L89OBR9B7CXA7UC+7uJdbfRIil0Vt3KY09+FKw4R/9Z7fUpEmRiixh3PB8I/u9H6f
	9VtMkriAnHEVsb/DFpjaFAIKFkV9dpTzz9cN9dqPPRnBmPvI86kAOjCi9jJo1zeYQh5MpOaVMEZyb
	rGOdSTURA6dLtkf6y6tKIpJw85OnM7eG15B87DJsCUYrkR8jA4xU2Hju/0CHYLLNTmtOZunlb8RMB
	Vjf3tTt5Jh719lyoHp6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeWf-0001A7-Fy; Mon, 21 Oct 2019 20:43:37 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeWV-00019J-5p
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 20:43:28 +0000
Received: by mail-ua1-x943.google.com with SMTP id i13so4229763uaq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 13:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/J47pHWT2X7Av3FRgY9sGp9A1Q4EsZtxdv8QeJCfN3I=;
 b=KSDqpUymn0gcUp8dFXPeZ/HiSZgbKxXfCtrzL6BZnLONWdSEVg6/Ke0KbCXr4Am7Ft
 PQ7LNFK0xrC/Rzs1NmPkslJtnnvIL1/aotOz8artc1tXedz3v4PQs1sCHzV7cj0E+0g8
 lBFOzuOMbrJ2UVV/FyJ/HXSxexJ2AOV1mW43p1ysYnPcCPjtOCz+n59DOMk3Y+RZbbmR
 ZVsEOEEmGtG+pvfHspdeVdID46tqH/wz/BTkQZiZIwOy4d1tPZAHvm89PAZtpWJzYBzt
 y+pBeWqeVU+tUEqfAuYYA2dOE2vlX3md/TnWCt9fr7Tobunt15FALPHuUxRBRVwCBo/H
 zfrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/J47pHWT2X7Av3FRgY9sGp9A1Q4EsZtxdv8QeJCfN3I=;
 b=VCpLVWQLf9ncVnbKrxtumTUdJqehDaoXXS7ocVtRdV9hBIyK4ueNcVIodvWVk/woOk
 xpWd3YPWfyQUTOlMx7pj7ooKe1VIPqM/D0xW5nlfUpcnZ/70F64NtDBtkr2/P6x7ZI/D
 hRqyDV9/H+7qi5hwy4WAXjH2ll+AEbfhH8a4R/+LU797vjc7hvWE5+hkL2sZf2b3gxup
 NbgW2gUsL0Mk/39aXATjH/enAoOR9pVpc7ZOPpIXDZWzUa/wuha5Gym7D7D50tZlDWss
 JwTt3b0gMrHS/32r+xEdaaRv8YQEnK6EaYu/HZd0iNmF7CR/rvrid8iGr5YbyTElTk6J
 G6eA==
X-Gm-Message-State: APjAAAV+STODXmaA9HihPAgEcUtMpfH1qs3PzNzFO7rbpJR5EK0T7Y0g
 7P93Ksa8ETFs5w4R54xe4us3JI+7vfhx7/sOrq2mJg==
X-Google-Smtp-Source: APXvYqz4ZEHugfx1iLTVr5oh8wcvQsZnhgiG/2ZE182Aies/iiC08Q8WJN0chuD/KhyaBz5bbSu/RP+GuEhOKFYCX9U=
X-Received: by 2002:ab0:5981:: with SMTP id g1mr64566uad.98.1571690602892;
 Mon, 21 Oct 2019 13:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-6-samitolvanen@google.com>
 <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
 <CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv+f7vZg@mail.gmail.com>
 <CAKv+Gu92eR81+W1iXOXZHWgub-fNPcKaa+NCpGS_Yy4K4=7t+Q@mail.gmail.com>
In-Reply-To: <CAKv+Gu92eR81+W1iXOXZHWgub-fNPcKaa+NCpGS_Yy4K4=7t+Q@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 21 Oct 2019 13:43:11 -0700
Message-ID: <CABCJKufZX7McCUoeH8=VR90gdQPCjUSNaPgjPRzo6-vV-y6oHw@mail.gmail.com>
Subject: Re: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general
 allocation by the compiler
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_134327_244646_887020C2 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 20, 2019 at 11:12 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
> Also, please combine this patch with the one that reserves it
> conditionally, no point in having both in the same series.

Sure, I'll just drop this patch from v2 then and only reserve it with SCS.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
