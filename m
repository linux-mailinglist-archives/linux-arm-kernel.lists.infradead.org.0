Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CFB948E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l86qKZy4INDex2eeDUy23zkf4N/l36NGRgdmfToOTqg=; b=lRHbSALIldpWI5
	1yvFkWSb9MAeU/cd2o5mQ6q4IOu9H8mR4ezBHIpdIqgSLAG8cV80iI1fhcsTHeI5D2Tfe2akaszSZ
	rHHFmlRw5ikqIwvCBcVNNltZgsnAx9mn3WLQFySER//KWULnHzUNcWXeSe/YeSvVoUGDLZQhJyQU7
	n5KkN5tPg7CTTDwUwwy9cSnGkR7UUswhvwSppwVzXVTKj0WbS5zm3x8yYkiiwAHkt3JTNZsvEQBQm
	2adfaYhKmYgHFeJ0PpvQwhOAcbayC1acCZ91NWwaldbXkv2Gnn7iDQ7V0UITtT8PcLyA+RaccYRzP
	G9F4sG7EMEOXbz2LLocQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjsa-0003fC-Vo; Mon, 19 Aug 2019 15:47:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjsU-0003ek-Ae
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:47:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id w16so1389487pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 08:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GVKhbnPbpjWbhz5xDYatb5Jf0xezOaFTSU5iPuDRTeo=;
 b=hb156RXeMFMq/ZFBxV79hUwsJ33TBPwNChB7tz9IM49HqYq3bFTECBQ0jWs93GlT2G
 SEOQohdK8Qpvg992CDM37AZOCtspic82CV7MxeJ16y4n+GAIARuDtkAqM0Vpcs5ugO59
 3sRkxC82ZNpPiJFiSjHCE8xFRcNyFvlrnKXcUERASk/OU7gh9oUuKntlcF8+9VOgRdQO
 XwzHDLp8GeaF9DmG79eL+xmRZIDuOI163umv7VF+AUJ3CNUJ8QSO3555UzdSqQRzm98/
 M6E4uyzHKgmn+l3ROAiDQuvOoBKPpaBx3AvAN7T4WwNWZXw8eHWQZ7MH/qOuEtyRVpnD
 8p+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GVKhbnPbpjWbhz5xDYatb5Jf0xezOaFTSU5iPuDRTeo=;
 b=d4/4NyehhRgm1hccE1CBpJ4vmT4MWqQ3l2hbVfKSYQPeft5U3DioD7n0NjV9msaDfr
 RHNmDTpaMf2WHrmNR9MiyWi5IMdIJMBdeUz4kmajEwYsENl03aVjXOxMt8imeIF5Hrp0
 XbbqeJ4nGO0c1d/I6AejIakmQz6IQc7N92Md/qr/DQbdiWZQ16sPwZhZfFDQ3Tmy/dE1
 K3wqhlmpJONduNTb6TBhUYxtT6jSbGlQzJ5Kbno9B0TD7MzCuEYmyVhwKfHrGGe2UE6a
 jRxaObHdN4HjBG8gZ2OTY1CELMtRWXzYYPobVdjoV6kzOosMWGeIPGR4RGNh90OoOMqI
 mjHQ==
X-Gm-Message-State: APjAAAWvNRv9M1VM8nR1WEUO8RV1l6S4iRT9D38pWZdEIXtAEBLxbUHt
 PAqtKN8Ab9680093H5aTPOYW4E3P4TAFNjZ2AeeHkA==
X-Google-Smtp-Source: APXvYqxLTHM5LEFPfn7KCCEc2GvHDBYCQbwS1b0CfA10FVE2b1wMY/bojyivxbvU4UFTnmGkD/DFGafc0BRQouvpbVg=
X-Received: by 2002:a17:90a:858c:: with SMTP id
 m12mr21540803pjn.129.1566229645488; 
 Mon, 19 Aug 2019 08:47:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190815154403.16473-1-catalin.marinas@arm.com>
 <20190815154403.16473-4-catalin.marinas@arm.com>
In-Reply-To: <20190815154403.16473-4-catalin.marinas@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 19 Aug 2019 17:47:14 +0200
Message-ID: <CAAeHK+wSw6x8EpPc5-7tBnxEjKfYGfH6mUEh013YjKBCy40AZA@mail.gmail.com>
Subject: Re: [PATCH v8 3/5] arm64: Change the tagged_addr sysctl control
 semantics to only prevent the opt-in
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_084726_390836_025EF8B6 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 5:44 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> First rename the sysctl control to abi.tagged_addr_disabled and make it
> default off (zero). When abi.tagged_addr_disabled == 1, only block the
> enabling of the TBI ABI via prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE).
> Getting the status of the ABI or disabling it is still allowed.
>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Acked-by: Andrey Konovalov <andreyknvl@google.com>

> ---
>  arch/arm64/kernel/process.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 76b7c55026aa..03689c0beb34 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -579,17 +579,22 @@ void arch_setup_new_exec(void)
>  /*
>   * Control the relaxed ABI allowing tagged user addresses into the kernel.
>   */
> -static unsigned int tagged_addr_prctl_allowed = 1;
> +static unsigned int tagged_addr_disabled;
>
>  long set_tagged_addr_ctrl(unsigned long arg)
>  {
> -       if (!tagged_addr_prctl_allowed)
> -               return -EINVAL;
>         if (is_compat_task())
>                 return -EINVAL;
>         if (arg & ~PR_TAGGED_ADDR_ENABLE)
>                 return -EINVAL;
>
> +       /*
> +        * Do not allow the enabling of the tagged address ABI if globally
> +        * disabled via sysctl abi.tagged_addr_disabled.
> +        */
> +       if (arg & PR_TAGGED_ADDR_ENABLE && tagged_addr_disabled)
> +               return -EINVAL;
> +
>         update_thread_flag(TIF_TAGGED_ADDR, arg & PR_TAGGED_ADDR_ENABLE);
>
>         return 0;
> @@ -597,8 +602,6 @@ long set_tagged_addr_ctrl(unsigned long arg)
>
>  long get_tagged_addr_ctrl(void)
>  {
> -       if (!tagged_addr_prctl_allowed)
> -               return -EINVAL;
>         if (is_compat_task())
>                 return -EINVAL;
>
> @@ -618,9 +621,9 @@ static int one = 1;
>
>  static struct ctl_table tagged_addr_sysctl_table[] = {
>         {
> -               .procname       = "tagged_addr",
> +               .procname       = "tagged_addr_disabled",
>                 .mode           = 0644,
> -               .data           = &tagged_addr_prctl_allowed,
> +               .data           = &tagged_addr_disabled,
>                 .maxlen         = sizeof(int),
>                 .proc_handler   = proc_dointvec_minmax,
>                 .extra1         = &zero,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
