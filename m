Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F4917A07A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 08:22:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2XrW08jOlUFBWWw1GTkx72eY/ggqIFA88+X8jSejIU=; b=jNXr5r31XjMDuo
	TUYDUqBo1n96ISqhy1W8tcNX0aZ9cQbcI2Z2glqeqnsX1+iB3IOAVSo6VT50arU/2zxrpjtlvLUfx
	r/hBT/cq8220hOZb80wKIrlx5ZnmkhRsXUXbtUQstEVjZ8kLNoSeXx59sGq2kQ8C1e2SIVsf8Gt5g
	EX3PABw9GoLjZsBOjiusIXYzGBeikRZecYFzSgpWId5sTKdlq+tGo/kNMnIXePGaQydZ/dGmmL8h5
	hZHbGfPdDYD2diWj/+vMhBV90W+46PzAwk8imjSbpnERf74IvgT40j0SRdugVJ9+4m04/uCPkVyHd
	8rVBxDCmFQYy4qQbLogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9kpP-0001No-Ak; Thu, 05 Mar 2020 07:21:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9kpG-0001M7-OG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 07:21:48 +0000
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E38121775
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Mar 2020 07:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583392901;
 bh=HUqhpqkPwtD1SgCGWyg8TkWqxocPUgCFtxNvGFcrLM0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BvS5CeEWR8hg+rvFq7sVoiQ+4W2bzp+ApQxpB+D+XJDapWIZBnfTPRPMKPsCpLTbS
 GxfEb8eTojWcyrGTfeV53N0Hxt7VqE9mtayKV/D7BEOVdNu+rRE/Whlc91QD0kkgOn
 z4ZM31HzHRtwOqxQHOaQO0vMQg9MsZnbu2chv/Kc=
Received: by mail-wr1-f52.google.com with SMTP id v4so5653064wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 23:21:41 -0800 (PST)
X-Gm-Message-State: ANhLgQ1NBjuFSEwegUckw878cls0hKnRDrAmXPHgpDHrz8T/dhLcX+eD
 DpiClqoNQr435EKSjeoIuX1lnU9ERkMak8EBrldQ5w==
X-Google-Smtp-Source: ADFU+vvfuLeudqOLwTXeiLBbDJRZOudsOWwevSZk8iXl6R9OxpneeAisQmD0eVAGnlo8q20zeBM/k9dCM4ppbTGBGn8=
X-Received: by 2002:a5d:6051:: with SMTP id j17mr8472350wrt.151.1583392899556; 
 Wed, 04 Mar 2020 23:21:39 -0800 (PST)
MIME-Version: 1.0
References: <20200305052052.30757-1-masahiroy@kernel.org>
In-Reply-To: <20200305052052.30757-1-masahiroy@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 5 Mar 2020 08:21:29 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu9XSfA5BWBkecb4zjXMxk2rK+rE4Q3Z75v21o7X6_AKEw@mail.gmail.com>
Message-ID: <CAKv+Gu9XSfA5BWBkecb4zjXMxk2rK+rE4Q3Z75v21o7X6_AKEw@mail.gmail.com>
Subject: Re: [PATCH] arm64: efi: add efi-entry.o to targets instead of
 extra-$(CONFIG_EFI)
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_232146_812310_2F0C7C55 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Torsten Duwe <duwe@lst.de>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Mar 2020 at 06:21, Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> efi-entry.o is built on demand for efi-entry.stub.o, so you do not have
> to repeat $(CONFIG_EFI) here. Adding it to 'targets' is enough.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>
>  arch/arm64/kernel/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
> index fc6488660f64..4e5b8ee31442 100644
> --- a/arch/arm64/kernel/Makefile
> +++ b/arch/arm64/kernel/Makefile
> @@ -21,7 +21,7 @@ obj-y                 := debug-monitors.o entry.o irq.o fpsimd.o              \
>                            smp.o smp_spin_table.o topology.o smccc-call.o       \
>                            syscall.o
>
> -extra-$(CONFIG_EFI)                    := efi-entry.o
> +targets                        += efi-entry.o
>
>  OBJCOPYFLAGS := --prefix-symbols=__efistub_
>  $(obj)/%.stub.o: $(obj)/%.o FORCE
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
