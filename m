Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854F3147700
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 03:49:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHO89XOgDgJPfI9kvQWB3O+/yGTCL2S4/7kjVm13P4M=; b=Syw/zVigtJSFX3
	p+oh+zGfoqFRyHnj2/ushhrOrPwwHNQGw//ZzMU8u6aVnxCtbW+Soss3FcOT5YKPRm0wy0tk05vFM
	haHeyh/P8AC1Bh/njXnmGQ0XE2AjLnpNoZZLE0SukFqrndxaSv+kPyZYQ6kNvSqaxY4q9kXXsDHS1
	44UeJTC0mO5V0XZaOF+aFbRDxnN1o+cyyqBuIQZjjvtmC7rnWwnuRU5zGGZ9YibC2xUHQCAgsg01w
	OI5IBsC2zHgr+vhU7s1EI5aCktMOrg9XLPp2QSjn0t4nid4kuzaaL4gfUw0gERHFp8PKzXMF7/lWd
	oXDuLYykPE6zZZ1KRZLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iup2L-0005Qr-FD; Fri, 24 Jan 2020 02:49:33 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iup2B-0005Q7-MP
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 02:49:25 +0000
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com
 [209.85.221.177]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 00O2mu5I029734
 for <linux-arm-kernel@lists.infradead.org>; Fri, 24 Jan 2020 11:48:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 00O2mu5I029734
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579834137;
 bh=fgdYLukdlEYXMD3VBQ4VxMdRlI/yjUSeaDi+4lfkCjE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q+FTstpafcV8F+hlZSNnpLo/bgF9ddwS3JoBuD3Sv5/ebipJjSpb6kw+m/oPjiDlF
 PMzN0bsZ8Uf7Ewdqf1qWffPodbkMGEi2ryCmHQNIazD0mY9VqgwNKkqaCD3WC7HtGq
 U4dWeLEoctRHRCtzbNxh127TaGJUT6Lltgx8ZTsZyh6IJdFYKZSh6N973CRsRTOLhq
 ZAmqOHUEE8Mdcz5ew5czC2rKZk16bypKOlYKnx/nxBDVNOA77epIsoc46I3JXHc+HG
 DZw9sje+7MaHuq5ZeBG0AqeJQOMm4Xpd0ltlBbNS1BvTzZ5XShWLpsUxwq20YmS8tT
 jcbDY+P2c93fQ==
X-Nifty-SrcIP: [209.85.221.177]
Received: by mail-vk1-f177.google.com with SMTP id i4so232845vkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 18:48:56 -0800 (PST)
X-Gm-Message-State: APjAAAW6gK0BnYgHAVv+mE1qWmoGZpnRqsPyQRxKkyQI5uBxNBBBQ1ar
 xRyktaZ5RaE2KtqYoogMNDUSN+o8BWa43yZfQ6g=
X-Google-Smtp-Source: APXvYqw73o8Lg4XxHWHTAaXgs8weOQ1oCX6Ih9rzdMg/Fy/BRjtW98hfNn9vKQrXn/WsIl6YfMwWb377nOPY08AzxK4=
X-Received: by 2002:a1f:72c3:: with SMTP id n186mr763524vkc.12.1579834135531; 
 Thu, 23 Jan 2020 18:48:55 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNASEaiFia8NKZN8++-9RfGXOPKSFuCkdukBk9Jy7+nHecQ@mail.gmail.com>
In-Reply-To: <CAK7LNASEaiFia8NKZN8++-9RfGXOPKSFuCkdukBk9Jy7+nHecQ@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 24 Jan 2020 11:48:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT721bVwVQif--UY1dXMhq8NSRpkPOYTN-=nxyBSBOn2Q@mail.gmail.com>
Message-ID: <CAK7LNAT721bVwVQif--UY1dXMhq8NSRpkPOYTN-=nxyBSBOn2Q@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.6
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_184923_954991_A6FDFC49 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd and Olof,

I know it is already -rc7, but
it would be nice if you could pull this for the next MW.

Thanks

Masahiro

On Sat, Jan 18, 2020 at 1:20 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Hi Arnd, Olof,
>
> Here are UniPhier DT (64bit) updates for the v5.6 merge window.
> Please pull!
>
>
>
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
>
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
> tags/uniphier-dt64-v5.6
>
> for you to fetch changes up to e98d5023fe1f062bb549354a2428d930775fd67e:
>
>   arm64: dts: uniphier: add reset-names to NAND controller node
> (2020-01-18 00:56:18 +0900)
>
> ----------------------------------------------------------------
> UniPhier ARM64 SoC DT updates for v5.6
>
> - Add reset-names to NAND controller node
>
> ----------------------------------------------------------------
> Masahiro Yamada (1):
>       arm64: dts: uniphier: add reset-names to NAND controller node
>
>  arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 3 ++-
>  arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 3 ++-
>  arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 3 ++-
>  3 files changed, 6 insertions(+), 3 deletions(-)
>
>
> --
> Best Regards
> Masahiro Yamada



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
