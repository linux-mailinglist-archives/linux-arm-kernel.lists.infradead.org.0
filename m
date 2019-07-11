Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4602A65079
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sE+f127cH7MBf3k5K3N2zhdftxI6Jlq0bOLrMfg0tv8=; b=UINVmDuCD43b2s
	uRgb2pkjtm+U9Q68e8KzEM9zEXvsDMkhW/V735xNP0BFGmgD0UtvwRRNxlRBOttait4mHCTfD1LIw
	okBVGUMdZMLvDDVoskafuSntPTzX1GO3fPVmuv9cObPXR3js5AWRT8xWfTUOvCW4OMe60HmnLWqti
	MRzA8+i17fdRZZvPnWrkqGVeU813eIJUHF3azVQU/1uROtbxyFNYZo3YlfR31/urjVWKA4MWoBJgT
	BZ6zxFlr7bk9F6/XxTYMZycWzs+ogYuelKdNXPbKxo9S3pKORJPd1eJnl7qwfF1O3EWoEmQ9aiLB5
	DNAF7KCoZcLSO3BCmMoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPW3-0001u8-Vs; Thu, 11 Jul 2019 03:13:04 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPVr-0001tm-9C
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:12:52 +0000
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x6B3COvh022125
 for <linux-arm-kernel@lists.infradead.org>; Thu, 11 Jul 2019 12:12:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x6B3COvh022125
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562814745;
 bh=bYunx1kcIHZGck01o8geflbRxYXWHGYyK1ZznzJtm3M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=McsBnG9zkvnvz6bIAkfQ7sdBJ6uFXW+YzdiRoIXWzsCCUR5Kl3WaPni0Rd0eFO1mJ
 ZC+0Aw+c12ltg0ms5mY2YZROAexakwSITPinhTOgU964B7EhEiWrVQVowJH5po39W7
 Vk8pej9OfTfm4HkjKZxt0ZyaN7CJ2ujtUj1J4YoIhCV3LmJNRCkW6Rmh/oGzX09EBL
 J/x4LsA4gX/L5vnalMoE4C+/ejcM6jxHkuUStBKP/pGCZ6J1ZSgkHlqiIk+g5PqQAL
 u4wC5ev4Sof5T5P/Af76As4yegA8WNnfO343zzB3rd37VIOLA5Wtk24GaMmgNWSnPQ
 tANC2510pB2bQ==
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id j2so1748151uaq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 20:12:25 -0700 (PDT)
X-Gm-Message-State: APjAAAV0xwkPMES/J4dWCU2DXa+gD9Zy1FQtr02PMHxla4CHiqco2wrL
 XiRXDlOQbvH5WDvUx2jqFEPIcmJkXNgJG+eZI+M=
X-Google-Smtp-Source: APXvYqwiLJ4hWuVL8sVPnorgY996BnkP1X/FMoK33NSeF4ex50i5Xh7WDVQXRMt31mL2wW/6aQKJG7l29s2ddfgsDhQ=
X-Received: by 2002:ab0:5ea6:: with SMTP id y38mr840230uag.40.1562814744318;
 Wed, 10 Jul 2019 20:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190711030713.4447-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190711030713.4447-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 11 Jul 2019 12:11:48 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQZ3zyLV_6CfkhOFUDJm1mwUoq+xoOXUWCzu1HL7HK7bA@mail.gmail.com>
Message-ID: <CAK7LNAQZ3zyLV_6CfkhOFUDJm1mwUoq+xoOXUWCzu1HL7HK7bA@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix O= building with CONFIG_FPE_FASTFPE
To: arm-soc <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_201251_547261_615FC24C 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Please ignore this.

I wanted to put this patch into Russell's patch tracker,
but just sent it to a wrong ML.


Masahiro Yamada

On Thu, Jul 11, 2019 at 12:08 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> To use Fastfpe, a user is supposed to enable CONFIG_FPE_FASTFPE
> and put downstream source files into arch/arm/fastfpe/.
>
> It is not working for O= build because $(wildcard arch/arm/fastfpe)
> checks if it exists in $(objtree), not in $(srctree).
>
> Add the $(srctree)/ prefix to fix it.
>
> While I was here, I slightly refactored the code.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>
> KernelVersion: 5.2
>
>  arch/arm/Makefile | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index f863c6935d0e..792f7fa16a24 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -271,14 +271,9 @@ endif
>
>  export TEXT_OFFSET GZFLAGS MMUEXT
>
> -# Do we have FASTFPE?
> -FASTFPE                :=arch/arm/fastfpe
> -ifeq ($(FASTFPE),$(wildcard $(FASTFPE)))
> -FASTFPE_OBJ    :=$(FASTFPE)/
> -endif
> -
>  core-$(CONFIG_FPE_NWFPE)       += arch/arm/nwfpe/
> -core-$(CONFIG_FPE_FASTFPE)     += $(FASTFPE_OBJ)
> +# Put arch/arm/fastfpe/ to use this.
> +core-$(CONFIG_FPE_FASTFPE)     += $(patsubst $(srctree)/%,%,$(wildcard $(srctree)/arch/arm/fastfpe/))
>  core-$(CONFIG_VFP)             += arch/arm/vfp/
>  core-$(CONFIG_XEN)             += arch/arm/xen/
>  core-$(CONFIG_KVM_ARM_HOST)    += arch/arm/kvm/
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
