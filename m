Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9D5144075
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPV8pjr1vQHgZLs613BBkOGgI+EDJWUdmsLQRYQAKEQ=; b=RGptrlXv/0ppZH
	21W288zAdn4qYLTSJ+z0dxo0JDA6qhBM0dlKS2XjqDfJOzLWW9Q8s9RUGJ/xKfIIyN7VXB5chyFjI
	y7Z4JUAgsqDNhK+LNPdE6fu0LKruLp7xJ4nrc0dZNdyfmU/sJhsujS8MU3v1s7ejUSSWeLjrCYnw0
	T7faVGB7V7A2kqDqnU4A/Vae6As0cKHxH6HYeq4MJFhG6zbZhTbt8KJNva9acm0tcMbNteSLQN7CX
	iKoijiWz0/FSGej05RryUT+rGL47cxz1A/BHaqeemOOD4hHz6rmD2eldkBQwMVeHQTyPyNVe4juY0
	8fegI4v6gIGrdfeeHsUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvP0-0002xp-Js; Tue, 21 Jan 2020 15:25:14 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvOd-0002x3-3W
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:24:56 +0000
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
 [209.85.222.41]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 00LFOMQl029873
 for <linux-arm-kernel@lists.infradead.org>; Wed, 22 Jan 2020 00:24:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 00LFOMQl029873
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579620263;
 bh=hT4cfrVYUNJPdXLZYNW8nx8XfS2S9IHAEXWJB9a5qQs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=M4yK3QiNsYp2WtgSLE2CSMBYuT65r8bdKaGgNUoH9A3GwxOCqXfrqgvCedtc4cHuW
 U2Ndj5mItH2ouvZh3Xy293mYrqIy+5dlbn4FlmQE6litXXljm91rDXlm6OVnjpVktA
 eXCNb9WLqUxMT2bcO+8z3KlaAjqovFNQGltKW7Mb//jkBNypFcevW2TVu782EaHopk
 0B37JO6L7ImHPZMyFaVpSs47VyQSS3AMrGiIS2A5PQIpaZkSnV9N6ZN/LzHAbs4GJl
 ClV5OZ5HXoI41Jh9jodXw5+eJPU6lHmg6UPJghFgMpSg+TfLTzfV4sooSp4X+/oS6T
 wT5btMazsdpxQ==
X-Nifty-SrcIP: [209.85.222.41]
Received: by mail-ua1-f41.google.com with SMTP id 59so1113634uap.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 07:24:22 -0800 (PST)
X-Gm-Message-State: APjAAAXgpOCxPM0cSaVzP1OWPEmEVoLRbvsUEnqC7xFqjFyJOb50Dp+G
 v6ulcI864a7CDPhWPuiUIU8utV7mACDVmeRjmxg=
X-Google-Smtp-Source: APXvYqyVG2I15i8f1wNhUebZbsH9RXVtwMlz5AWZnFTIjvszireuTZHsziwZJOZYG1kUq0zCfifxuyjcHdP3rerRO7Q=
X-Received: by 2002:ab0:6509:: with SMTP id w9mr3190475uam.121.1579620261607; 
 Tue, 21 Jan 2020 07:24:21 -0800 (PST)
MIME-Version: 1.0
References: <20200121134739.22879-1-erosca@de.adit-jv.com>
In-Reply-To: <20200121134739.22879-1-erosca@de.adit-jv.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Jan 2020 00:23:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNASm=7P3cJ=SB3hmPjqWTii1Lv2pf3p0xc-hx0XNTdaJHw@mail.gmail.com>
Message-ID: <CAK7LNASm=7P3cJ=SB3hmPjqWTii1Lv2pf3p0xc-hx0XNTdaJHw@mail.gmail.com>
Subject: Re: [PATCH] arm64: kbuild: remove compressed images on 'make
 ARCH=arm64 (dist)clean'
To: Eugeniu Rosca <erosca@de.adit-jv.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_072451_378882_E60F3CAD 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
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
Cc: Dirk Behme <dirk.behme@de.bosch.com>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi.

On Tue, Jan 21, 2020 at 10:48 PM Eugeniu Rosca <erosca@de.adit-jv.com> wrote:
>
> From: Dirk Behme <dirk.behme@de.bosch.com>
>
> Since v4.3-rc1 commit 0723c05fb75e44 ("arm64: enable more compressed
> Image formats"), it is possible to build Image.{bz2,lz4,lzma,lzo}
> AArch64 images. However, the commit missed adding support for removing
> those images on 'make ARCH=arm64 (dist)clean'.
>
> Fix this by adding them to the target list.
> Make sure to match the order of the recipes in the makefile.
>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>

Please change Cc with my

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>


Thanks.


> Signed-off-by: Dirk Behme <dirk.behme@de.bosch.com>
> Signed-off-by: Eugeniu Rosca <erosca@de.adit-jv.com>
> ---
>  arch/arm64/boot/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/Makefile b/arch/arm64/boot/Makefile
> index 1f012c506434..cd3414898d10 100644
> --- a/arch/arm64/boot/Makefile
> +++ b/arch/arm64/boot/Makefile
> @@ -16,7 +16,7 @@
>
>  OBJCOPYFLAGS_Image :=-O binary -R .note -R .note.gnu.build-id -R .comment -S
>
> -targets := Image Image.gz
> +targets := Image Image.bz2 Image.gz Image.lz4 Image.lzma Image.lzo
>
>  $(obj)/Image: vmlinux FORCE
>         $(call if_changed,objcopy)
> --
> 2.25.0
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
