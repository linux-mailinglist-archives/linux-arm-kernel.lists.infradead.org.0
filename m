Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E90F1D23B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDM1FUw9VblyT4yyO4ZU3Po8jqabVko3mARW4TxDvXQ=; b=BJubO4pOyWf0Ry
	GoESLGx+7qKzQF75FCVrMt5UKAT1LQKXFb1PemgB89k3JSeDFy1jymYIgE3P2uykbBnYSqMYxhYML
	nYMYaq5Cz1ZoW224jEYAGSeW+QsQczgpNkqQCGIdV4X4oM4srnJFmtFnOq6ElYKZJFnH+suNR36ks
	4gf8MOktgkEQwrTnZWQ5O2db6os+F9QZcejpERRHzcIzNfI31mjQgB/xnExjMd62YX/gJ/lBz5PgE
	3qWXchgN3rTXzzhzYrcKypzlYuWL9Djup/aQhq4EajL/xvHSzCaF8EQryiUYJ80Ro4khFk0WxgjZz
	gzctnsQt5LY/p5REsiMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1pv-0005eG-77; Thu, 14 May 2020 00:34:55 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1pk-0005dt-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:34:46 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y13so942297vsk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1F1bz86BhYtSr1k2hqnfmTpTysaJBy4VwQZQPcWyybc=;
 b=bTwAhmLs3rFXc4n5b1BzgwPLaY24LOfPDqOowuTtvpOQq3Y4oIurMMd/WiwI4bE74m
 rDiDiRqykJ6JqDpH4DevmhVdJwF9bkBqDQVXI/6DaJql9SKOpUGr+1G/CjatLRVdDfnT
 FaHL8eZYeb/OJ6pLil5BJhtNXOydcFtYsrTGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1F1bz86BhYtSr1k2hqnfmTpTysaJBy4VwQZQPcWyybc=;
 b=lxOyqNsKT1zEpBxrDkCbN4OgF2noWJubP+FaZ6LhEQ0ktqGCytHlMQ6DXdPugXxWCa
 vl/gDtOJtHdm0wgQOLYPcwr6BvzD6gAT1Fdl13Vhv4hKVrherb/W0DkPNr3oWI3mXLgn
 ZmCRferxbvqqcES0oHpbNNoOvrLkQwzBPxdG7Ifi/7daCD1kF11JpJPX/7XOHANok8r8
 7rhWU75dMjgR7HSdwlL6dvhLQ55brSywF8EzX9AzIo9o8qn4dOjitv2I9G5NtXmUs9AW
 UYwZyS0kpl6Xd4OC/JRZarMoWZAe3zfEXP6gvimDW7HdYFDlxNe0B03fyzDFH9+yr56q
 blYQ==
X-Gm-Message-State: AOAM530AdXoiJH2GHA65Yfte/PHLwzbb7CsYcdD7hc9z1JVECVP8RCxm
 0Kr1gFzLOKmK3kJh0WXjVn4IH79QJ+c=
X-Google-Smtp-Source: ABdhPJw4OwyWXMC98ZBW9v+ErszBs5Jnjw9uCLqJVT4vyhLYxFONyhxnaWIwp5+ornbAFi4J8OfY1w==
X-Received: by 2002:a05:6102:3033:: with SMTP id
 v19mr1379677vsa.217.1589416482520; 
 Wed, 13 May 2020 17:34:42 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com.
 [209.85.217.45])
 by smtp.gmail.com with ESMTPSA id g78sm305098vkf.53.2020.05.13.17.34.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 17:34:40 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id b11so925902vsa.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 17:34:40 -0700 (PDT)
X-Received: by 2002:a67:c40c:: with SMTP id c12mr1585682vsk.106.1589416479714; 
 Wed, 13 May 2020 17:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200509214159.19680-1-liwei391@huawei.com>
In-Reply-To: <20200509214159.19680-1-liwei391@huawei.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 May 2020 17:34:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xv6xgj_M9tYjHzmW4UZD2RdH2c5=dagNybSkdfBabYZw@mail.gmail.com>
Message-ID: <CAD=FV=Xv6xgj_M9tYjHzmW4UZD2RdH2c5=dagNybSkdfBabYZw@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: kgdb/kdb: Fix single-step debugging issues
To: Wei Li <liwei391@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_173444_713353_28773A8C 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Daniel Thompson <daniel.thompson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, liwei1412@163.com,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, May 9, 2020 at 6:49 AM Wei Li <liwei391@huawei.com> wrote:
>
> This patch set is to fix several issues of single-step debugging
> in kgdb/kdb on arm64.
>
> It seems that these issues have been shelved a very long time,
> but i still hope to solve them, as the single-step debugging
> is an useful feature.
>
> Note:
> Based on patch "arm64: cacheflush: Fix KGDB trap detection",
> https://www.spinics.net/lists/arm-kernel/msg803741.html
>
> Wei Li (4):
>   arm64: kgdb: Fix single-step exception handling oops
>   arm64: Extract kprobes_save_local_irqflag() and
>     kprobes_restore_local_irqflag()
>   arm64: kgdb: Fix single-stepping into the irq handler wrongly
>   arm64: kgdb: Set PSTATE.SS to 1 to reenable single-step
>
>  arch/arm64/include/asm/debug-monitors.h |  6 ++++++
>  arch/arm64/kernel/debug-monitors.c      | 28 ++++++++++++++++++++++++-
>  arch/arm64/kernel/kgdb.c                | 16 +++++++++++---
>  arch/arm64/kernel/probes/kprobes.c      | 28 ++-----------------------
>  4 files changed, 48 insertions(+), 30 deletions(-)

Just an overall note that I'm very happy that you posted this patch
series!  It's always been a thorn in my side that stepping and
breakpoints were so broken on arm64 and I'm really excited that you're
fixing them.  Now I'll have to get in the habit of using kgdb for more
than just debugging crashes and maybe I can use it more for exploring
how functions work more.  :-)

I'll also note that with your patch series I'm even seeing the "call"
feature of gdb working now.  That has always been terribly broken for
me.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
