Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A8F11C51E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 06:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOKYL+u7rAOxbU4Tfb93GscWnCvQD+tbC3ukmaW8f6c=; b=ipzkQZccYdtG/7
	zmuiN9hRV5oAf37mRDDej16x2HW3RVEQdLNDwteEWeqbepJoTf3hxhmufMfHs7+Hw/XvyYDvdi2Nd
	dymL6U4z7a+NuEa3SFhs/kLUuioynlWj4URCTYOFXsE5boTJJkOhXwhxvV5NBXaeq9n35/2ZkF9tk
	9j1ORqYSgzy3R5dtmkFxOGVUJHm/2OY8+nP8zCg31OJ0nQYS+PF4Xvh1c3iJ/FSF5eZUto55wTux3
	YLmcX8OEi74+19vOaqR3sUrtRDzty+NYkkeESGdGH/s8ylDq5Vn946kMl0HfBbVbik4nuwmafGjG6
	ckifWHwZnD8kqUKtFYIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifGeR-0000PQ-DA; Thu, 12 Dec 2019 05:04:35 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifGeH-0000Oo-HU
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 05:04:28 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id xBC5407B029187
 for <linux-arm-kernel@lists.infradead.org>; Thu, 12 Dec 2019 14:04:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com xBC5407B029187
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576127041;
 bh=f0mX96dUj+4SSO7tlGuJjbJ2RUgELAxn1iGgSDGDbbA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mZ1JIZHe8zix2l9FjfNAniHgyI9oSvauhAcPoqTxKT2A4OdfQ6LoL/v8zbDHIMxYj
 mhDcjoSh0vEu+LtXS+MtkYAcpX3jOyRNJlre+cXE2vx+SKR622V+/EdoCDiv6L9Czp
 dtHzu1j68lvJTCpkBrcMBvfNBGz2s/SYZeCDlVHU3+Mi3/LVg1RrQyRG37YV2D6gEs
 7MSFfyhR+rJYSoK/A9Tros/69wod/qLfHR/Wy8Lu7G3yKos64Goxe3qgV5XICmBHu5
 BzgUVnck5bQ8tGq7xoCugzdLckDKpcc1wceT248Z9mjHWiNNHBELC/vO2+O8mLC1F/
 GEeLkj0rANPTw==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id b79so672024vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 21:04:01 -0800 (PST)
X-Gm-Message-State: APjAAAWfx8ORmGATTdI44PtxXxTSPcDPRHAqbJymosdS2js4gJvjN2lf
 McHvrYBvYGMWy49cfSrGkdfD8VoCalv8WqFFvTM=
X-Google-Smtp-Source: APXvYqwITbfxXfryxfdFs+wuDBH6lMreA653GFfyRlQshqBOwFIPRjFb2inNIzS8YEl1Z3dRS/b2hoN5oMNCFLezUXA=
X-Received: by 2002:a67:7ac4:: with SMTP id v187mr5603811vsc.181.1576127040046; 
 Wed, 11 Dec 2019 21:04:00 -0800 (PST)
MIME-Version: 1.0
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-3-catalin.marinas@arm.com>
In-Reply-To: <20191211184027.20130-3-catalin.marinas@arm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 12 Dec 2019 14:03:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNARR=DjdnZdu=L+0H8ALr4XJNpVbcRTOz_sVZdZpcM0pdQ@mail.gmail.com>
Message-ID: <CAK7LNARR=DjdnZdu=L+0H8ALr4XJNpVbcRTOz_sVZdZpcM0pdQ@mail.gmail.com>
Subject: Re: [PATCH 02/22] kbuild: Add support for 'as-instr' to be used in
 Kconfig files
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_210425_818112_F55A8BBC 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 3:40 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> Similar to 'cc-option' or 'ld-option', it is occasionally necessary to
> check whether the assembler supports certain ISA extensions. In the
> arm64 code we currently do this in Makefile with an additional define:
>
> lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
>
> Add the 'as-instr' option so that it can be used in Kconfig directly:
>
>         def_bool $(as-instr,.arch_extension lse)
>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: linux-kbuild@vger.kernel.org
> Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---

Please feel fee to apply this to arm64 tree.
Acked-by: Masahiro Yamada <masahiroy@kernel.org>

>  scripts/Kconfig.include | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index d4adfbe42690..9d07e59cbdf7 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -31,6 +31,10 @@ cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c /dev/null -o /de
>  # Return y if the linker supports <flag>, n otherwise
>  ld-option = $(success,$(LD) -v $(1))
>
> +# $(as-instr,<instr>)
> +# Return y if the assembler supports <instr>, n otherwise
> +as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
> +
>  # check if $(CC) and $(LD) exist
>  $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
>  $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
