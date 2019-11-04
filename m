Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1629EE4F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 17:43:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8O+XknJnx+x+RDGTWFFaaUFZKWGxKS+kp5OFy8nbUQw=; b=eGsGani9ksJblU
	smX0mFVYKHfzJA4EzoXheQRI1FwvbEvuXZUkQLrgaD1SVsRt+O9jD78VQQC+qQnevqZn89Hn6SeBG
	Lh5PMC4i+oIAH+kIoUv/Q8l2p0s0pYOcnuQQbA8oFL16vvzvA0WwhRkh4zAGK6gtx4+CLllG7Xr7R
	GQDAzE6wYI2LFjvNQ2BHEVSKwPrTv0aPAxe4B7vZkveSj6JCZCDGelQ758+IfGVHtbuTx+lns/1aQ
	44sxMv0rWAeWwcLjBtf7X8K0dL/7+cb9fO9OWeNy00YeFSSfhOYjqicdkW3JT7neeX3/tUXWsvwSI
	Rpt4t54mO7x1cNpy6Phg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfRb-0000oi-Le; Mon, 04 Nov 2019 16:43:07 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfRU-0000nE-2b
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 16:43:01 +0000
Received: by mail-vs1-xe43.google.com with SMTP id j85so11387000vsd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 08:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z61Nf+IXfPnYSf/CB16houpRDee1KdZw1ehNvN59rnE=;
 b=PjhxObLSYnDarkuAbAcbN/xcMBh9/RLTTwOBpfJMobbA2sy11V60GhbV1hoQ3TnrVQ
 MIGqkV7apEXKziLYFAgmPcnR7gDQ1QIfFx/fgaFfieqf9BvRpo2jDlght+XCs8RdEaeA
 x8ARi7tdM/WujTuWotF0tyekaX2W6yMiIuW12MuP0uaNGXCLGc9wvXUnbz0dJin1Q31V
 ddXKsHwKyEREN9TPTpjsetiMHoYvt7iPZtSmkRC9qkz3ySM678YNrAr5VbKNNH+CjtlH
 7GUkM+JblIdOMXy6FxStWdstKENAqGAK8jaJpNvnDfUZEztTCL3vbhro+Z+9dJyt/fJF
 aZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z61Nf+IXfPnYSf/CB16houpRDee1KdZw1ehNvN59rnE=;
 b=ioBHZTm/nDqxq2FDOzag4M+BoFiKdG1xWRcJVZ9ENTGLyXCPsllsUnoGO8OxgrmY/h
 Wgbn11ClajXyhsvmiIgnBrZMg8QZs7FfMZrzua2A0WN5bdFYsfgBaq0GqYQRs03sA58i
 BqiLnURBHuxgVjBzcH7LRthFPExJr/GzJd4HzVtgfDMkih4CehOLpEeqHWd8yR/2zkQA
 A7YN5/ga5TYg+k1kiryb5/qSJmF2f56qbT8SoEo3hkPeha4iF4LRS8v/j8gRT003efbk
 xUXh2tOHY/TdtVNnBR/erZXBzu9Codu7ClEy7+gNbPk1d3cD/SdcE3F0K2gB58FqKNzQ
 LvAw==
X-Gm-Message-State: APjAAAXpGULP8UuNG1i0J1zdRZ+myJRZzZXXm11dDfTgDWzjsxnB3Lvy
 vhEY1WehO3rTFLQrpXd1InpQTxIebT0tOCnDJsrVrw==
X-Google-Smtp-Source: APXvYqyDVcfgLDeXQC3A5gJNX8/wN+mjRR+GghpG8/3JWVcJW3k8DuwIYEezXPcXMkAZs+NIu3TLNRNVKUeU+c1tML4=
X-Received: by 2002:a05:6102:36a:: with SMTP id
 f10mr8580793vsa.44.1572885775766; 
 Mon, 04 Nov 2019 08:42:55 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-7-samitolvanen@google.com>
 <791fc70f7bcaf13a89abaee9aae52dfe@www.loen.fr>
In-Reply-To: <791fc70f7bcaf13a89abaee9aae52dfe@www.loen.fr>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 08:42:43 -0800
Message-ID: <CABCJKuegREpQiJCY01B_=nsNJFFCkyxxp63tQOPT=h+yAPifyA@mail.gmail.com>
Subject: Re: [PATCH v4 06/17] scs: add accounting
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_084300_142105_47A11D36 
X-CRM114-Status: UNSURE (   8.74  )
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

On Mon, Nov 4, 2019 at 5:13 AM Marc Zyngier <maz@kernel.org> wrote:
> Is there any reason why you're not consistently using only one of
> "#if IS_ENABLED(...)" or "#ifdef ...", but instead a mix of both?

This is to match the style already used in each file. For example,
fs/proc/meminfo.c uses #ifdef for other configs in the same function,
and include/linux/mmzone.h uses #if IS_ENABLED(...).

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
