Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862731C1CB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 20:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8zqk2PqytjePMR/JEfSwFFhq0A/i7SIT3nWDTzQbl4=; b=oc8EH7EGUVta5e
	BVD53g/YCyV7z5ayg9DjhlqW1IeW+jENiXjvq4JB0Hbxk6HgZnQmwTbjSPae0ApUUq3qnEJRsaSVT
	wxHFltSZDaj9F87sWnK/b4rkciavGN+USZOp27IeVPoSmObK67EkcpI5LSoY/eogN8K1U7n5fRnn+
	tBI/0C2VRd1f8Q/TdnicMHQpyHzGysjtnuoOVW8bvmPVJl2/uOkJdM0SyF9zRmy1XZTse44ToFEz6
	36OCU9Q5T6wgswKO5coNyPkQDxe1mvEvippnmX6ys6iPJSp0JZKBY4Jn0uW1U50LuxYbRnCgNI5kb
	B1cw9gG+j+BmHd6+c7dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUaCb-0003y9-0e; Fri, 01 May 2020 18:15:57 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUaCU-0003ud-60
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 18:15:51 +0000
Received: by mail-ua1-x942.google.com with SMTP id a7so4048652uak.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 11:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jQmYU3E4gYOODd95gkjzTcf5jbM8W800pOSwBE+R0wA=;
 b=oaC0AEEo2NvhOsI+1htozQVv14ZztEttOuywn9a8klUXRc5SUM2IDsg94nxs5EsrKe
 SBeXoZmhWdtBBTpV2fC5XtFyDrbFXDGWf8BuXn8eIBYw3W3S0QYdFU3xlfQfYC6YRXKb
 kC50qTkxWFaj/9fexujt3n9HeaLcXZSicokEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jQmYU3E4gYOODd95gkjzTcf5jbM8W800pOSwBE+R0wA=;
 b=W2AnOkTj8dwF0tx1BHeRWK9jNvSrN7gzSityhMcTsYEadBAh2TbqBM4+9cYYWREU1K
 hYH4l+oXFifZLJVhR8Z/3FKfyKcHSUnym7dHHabUED2ZU9mJHRvJALbnqBlgqvAWAo/V
 uDF7A0UcR7J078XecvDkLUjcRXEdlM2c+xkLLFCpzDHakUYOspiZmUD3EisQUGucjswg
 9hqV7Vw2f6kzmIZZaest/vk0LyP6QPDyxuT2mtz1Y0cA+HYR2EMdy14MyuLqWydQoO9f
 wCMlvjTTpD3sikQeV5tc2Qx2WGE7ts0pLRR+owrwmjyVUt5GciewSqKbhr5m5Y5bgTPZ
 1cHw==
X-Gm-Message-State: AGi0PuYi7utilbTZ5OOD+CWHoDihnWQfrbFEMvhZIHLlLbqpDIRNh+5d
 IgRAuPwTdqiIRLNGGJq/nXtPHkzYuqM=
X-Google-Smtp-Source: APiQypJBvo4AbmBSav8cJtCDhTUxL4d47OQBPwciq1ZSxRS/T7AXDqK8ciow+FxAcAt0W4yCWQvhTg==
X-Received: by 2002:ab0:72cb:: with SMTP id g11mr3954862uap.65.1588356946292; 
 Fri, 01 May 2020 11:15:46 -0700 (PDT)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com.
 [209.85.221.174])
 by smtp.gmail.com with ESMTPSA id k184sm973450vke.42.2020.05.01.11.15.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 11:15:45 -0700 (PDT)
Received: by mail-vk1-f174.google.com with SMTP id w188so2909124vkf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 11:15:45 -0700 (PDT)
X-Received: by 2002:a1f:5fc3:: with SMTP id t186mr3772515vkb.92.1588356945201; 
 Fri, 01 May 2020 11:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200501161938.2949443-1-daniel.thompson@linaro.org>
In-Reply-To: <20200501161938.2949443-1-daniel.thompson@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 1 May 2020 11:15:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WrdKRfM5ExJnhJBCn1ZBTAviuOSq+judda8YSiwbkREw@mail.gmail.com>
Message-ID: <CAD=FV=WrdKRfM5ExJnhJBCn1ZBTAviuOSq+judda8YSiwbkREw@mail.gmail.com>
Subject: Re: [PATCH] arm64: cacheflush: Fix KGDB trap detection
To: Daniel Thompson <daniel.thompson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_111550_249975_A6FE633A 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Patch Tracking <patches@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, May 1, 2020 at 9:20 AM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> flush_icache_range() contains a bodge to avoid issuing IPIs when the kgdb
> trap handler is running because issuing IPIs is unsafe (and unnecessary)
> in this exection context. However the current test is flawed: it both

s/exection/execution/

> over-matches (could skip the IPI when the kgdb trap is not running) and
> under-matches (does not skip the IPI for all kgdb cache operations).

Maybe explain why?  I believe this is because "kgdb_connected"
signifies that a host "gdb" is connected.

* If we're sitting at the kdb prompt "kgdb_connected" won't be set but
we might still try to do something with a breakpoint with interrupts
off.

* If we are currently _not_ stopped in the debugger but the host "gdb"
is connected then "kgdb_connected" will continue to be set.  In this
context we will exit early if any other callers happen to try to cache
flush with interrupts disabled.


> Fix by replacing the ad-hoc check with the proper kgdb macro. This also
> allows us to drop the #ifdef wrapper.
>
> Fixes: 3b8c9f1cdfc5 ("arm64: IPI each CPU after invalidating the I-cache for kernel mappings")
> Signed-off-by: Daniel Thompson <daniel.thompson@linaro.org>
> ---
>  arch/arm64/include/asm/cacheflush.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Other than the suggestions to the commit message:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
