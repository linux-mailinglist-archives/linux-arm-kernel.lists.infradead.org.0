Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53FA1FEA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 07:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kc+qIJ/UaXobprvrknDrKFt025Zsn0cvi1XH41oVTd0=; b=mOCxC/Yuko77lN
	EN4+lRJgiuNHI5b4JOTEL/4x7wg2y+IfHT2Oe2NdZqQvNI+HUb0o+Sdk7b/YCIsAx+pXzWRUb8ruk
	w1m6WH9eBc2oTtmJLi+bs+ajIU9IzHH6AsBxkw2ydRKHX6ur/fs8y7c/dXkELRs51abrm+c7RCCOu
	UYRcxXS+qUmifKZ4Y3R/TMw775JO9NAcT1bNkfBjYuZ3cVyFqUE28hhWj9asNIJQoR9okhYtI83VG
	BFGISH7N3Ml3aj1AxNeuVkdA9l/7rAaKA8jFd+vRbQlq3MFQUGn8AOVmkaTXqkzVEDiB3cr8hQUcb
	80HLXm9euCJm+JLiUwMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR8Uv-0003IJ-RR; Thu, 16 May 2019 05:00:05 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR8Uj-0003Hb-AP
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 04:59:55 +0000
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x4G4xWhx002730
 for <linux-arm-kernel@lists.infradead.org>; Thu, 16 May 2019 13:59:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x4G4xWhx002730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1557982773;
 bh=9Ph0k+grbv6JWNUv54NWUGkLMtwGfMJBcFTvjqQFPk0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=O9UDoCeeGS9Q8UGhX2a1LFreuputm3gZZRI4zDrwBkqGm4URrl6A0cfy5dariKJLf
 OcpMR2p+o13xSQoNX9D2eXZ9l0zepTXxs8KkSqweT3DvNxcJemxPD5Vbl2LbI6bVjG
 6nz1877AVC2WEdRhRU8c+Pxhz/ABe/0EPKwRW9GzhBjAU652H1vEiXsopme8SJFlSA
 J4juxwqhZt0PezcmtFi8utb86FiEtO8Rx4na+xjdO35PaMuj0ZyV57hPQfkVNLcjV3
 q+D4skKCIElOcf0BoQGTfvmzW5wnhhAAfgVY2kXYgMJIX1vzrziaqahW8Z9RR5WA3Q
 OnI85dG8aFX1w==
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id u4so775719uau.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 21:59:33 -0700 (PDT)
X-Gm-Message-State: APjAAAVCh8OqFa8efGPumIvadjJ5zNEN35uz6AB2e2Xcqqpoa90HR/xk
 7PZ7oceWIXay+OLsC4/1bLPOAf4+lLw9aUPNz1c=
X-Google-Smtp-Source: APXvYqwExr/4di8INLQkJrRDaQheWIP5t5xUKnGAEoIV0Jcz144JQr/bNNxhYM9Biw317JwRRcspl7XRbcwfoXMGDrw=
X-Received: by 2002:ab0:3058:: with SMTP id x24mr19663232ual.95.1557982772314; 
 Wed, 15 May 2019 21:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190515194824.5641-1-labbott@redhat.com>
In-Reply-To: <20190515194824.5641-1-labbott@redhat.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 16 May 2019 13:58:56 +0900
X-Gmail-Original-Message-ID: <CAK7LNASZnRrSsZSrnw41kintGfmpyj3iz-Vjduk7w3k9iSih-w@mail.gmail.com>
Message-ID: <CAK7LNASZnRrSsZSrnw41kintGfmpyj3iz-Vjduk7w3k9iSih-w@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso: Explicitly add build-id option
To: Laura Abbott <labbott@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_215953_694247_4D3FCB12 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 4:51 AM Laura Abbott <labbott@redhat.com> wrote:
>
> Commit 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to
> link VDSO") switched to using LD explicitly. The --build-id option
> needs to be passed explicitly, similar to x86. Add this option.
>
> Fixes: 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
> Signed-off-by: Laura Abbott <labbott@redhat.com>
> ---
>  arch/arm64/kernel/vdso/Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index 744b9dbaba03..ca209103cd06 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -13,6 +13,7 @@ targets := $(obj-vdso) vdso.so vdso.so.dbg
>  obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
>
>  ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 \
> +               $(call ld-option, --build-id) \
>                 $(call ld-option, --hash-style=sysv) -n -T
>
>  # Disable gcov profiling for VDSO code


I missed that. Sorry.

You can add  --build-id without $(call ld-option,...)
because it is supported by our minimal version of toolchain.

See commit log of 1e0221374e for example.


Otherwise, looks good to me.

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>


--
Best Regards

Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
