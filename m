Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEB7B8AA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 07:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+c6puHzKFIdF9IJs8HnRq59DTGD/oZw1OrEfuuFz6p8=; b=pGtse6aRojg5K6
	2xlXDRbc27EcIr+Y16RZzlUVLGMvLM0I2kMPXLHBEIAtjDTyw1DqfQVCCGAnwFrWYq5PyXOrjcXZ9
	ZPdnTmBfIbwe04BSXZ5U3eljS7Pvvoo8wc5lIvRvduzLlt5U4GQe7qc5NgIGGRTs4ojDIPnV4MC6J
	rzHiSNL53N+cjsuISiJtFk32yGIfZKykd7DmoQWB+6r5oa8lCXXVyj2bobubO0cQ+Mr8FrQ6qtVlm
	K4UDuX2eLWrp188yK9QNrTzz1WM+cMhHqqBri6whcHUgHMyyAAwzvhI1opsNjnAcP/cwXJS+nCdFQ
	TdvL3cKzz/TIxiD9B6Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBBpd-0007SB-JH; Fri, 20 Sep 2019 05:51:49 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBBpP-0007RV-W5
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 05:51:37 +0000
Received: by mail-qt1-x843.google.com with SMTP id o12so7378363qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 22:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NlvPOwDHP1C+DxH46ciGbIQ82Gp/fdmy+p/JFJtAVTI=;
 b=NwUzUyXe+el4peKjNQG4O79OvKdtXAG8r0J4SNnG7hpdxb5bj+ErhCHnYWmyZwpfrR
 yYzgALwnMwMJu8WsDBxH4j3WjHqbrCW/fchFpQkTd/gTlkJku2wHf4JyAWd8/MnooPSZ
 qdIovw70JerTxtUcOENkNn1/HzmKUPXpnvjVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NlvPOwDHP1C+DxH46ciGbIQ82Gp/fdmy+p/JFJtAVTI=;
 b=tLWP06wIuGBYgMHirXaStGnJcqe7PNQ7TOELaZm+NfQKkyHMx8TNPxp7rhSr78+rrQ
 3HKQndk+PUvLoqfSreAo6yaJsEEglvgM1q/HHJORpP2BhhkDmA8kOipLjlNCpX8fEZ5r
 CejC4+TC9G6B9a0vmpGjvPztIAEpxS8Cn2dgMuMX2ewknjgvDhROUxq6q3xTK/nwPhvE
 15upOoFEPmcXi+YpG5zn4LFrafN7zCOUShWGAF1hABuY/wYwWgoNklZbxsjTrSeCPiIW
 t2dvoGxUSYA/UgfyDxDrlsqjzC18Mgt7njKrv4T5sXFV7IdDrVZi6vA/FNlmwnfqVGhL
 kvAw==
X-Gm-Message-State: APjAAAWUPk58YNrVE37D2Ax1IL46yLDgtaLevdy91/Fe65GV3qQXe1ZM
 KNpqWU8hCSd1FK4bfz+g+WC55MEDQamf6sWFRco=
X-Google-Smtp-Source: APXvYqw8YKLoRzDRPZmO4NDOIYrRQ0VYcNB8pOGBy4Dn4po2+LJmGgZJC1+QZHzwPn1XmvwamosioDNR5Hr2A+ZYVOY=
X-Received: by 2002:ac8:2e94:: with SMTP id h20mr1491513qta.234.1568958691283; 
 Thu, 19 Sep 2019 22:51:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190919142654.1578823-1-arnd@arndb.de>
In-Reply-To: <20190919142654.1578823-1-arnd@arndb.de>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 20 Sep 2019 05:51:18 +0000
Message-ID: <CACPK8XcsegR5R0nkiZ-UEMgCqNMggCXjAr2N-6J1S6mEhGLrBQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: aspeed: ast2500 is ARMv6K
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_225136_164891_D09C986F 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 at 14:27, Arnd Bergmann <arnd@arndb.de> wrote:
>
> Linux supports both the original ARMv6 level (early ARM1136) and ARMv6K
> (later ARM1136, ARM1176 and ARM11mpcore).
>
> ast2500 falls into the second categoy, being based on arm1176jzf-s.
> This is enabled by default when using ARCH_MULTI_V6, so we should
> not 'select CPU_V6'.
>
> Removing this will lead to more efficient use of atomic instructions.

Wow, nice find.

>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-aspeed/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
> index a293137f5814..163931a03136 100644
> --- a/arch/arm/mach-aspeed/Kconfig
> +++ b/arch/arm/mach-aspeed/Kconfig
> @@ -26,7 +26,6 @@ config MACH_ASPEED_G4
>  config MACH_ASPEED_G5
>         bool "Aspeed SoC 5th Generation"
>         depends on ARCH_MULTI_V6
> -       select CPU_V6
>         select PINCTRL_ASPEED_G5 if !CC_IS_CLANG

I can't find any trees with !CC_IS_CLANG here. Is there a problem
building our pinmux driver with Clang?

I tested with this patch:

--- a/arch/arm/mach-aspeed/Kconfig
+++ b/arch/arm/mach-aspeed/Kconfig
@@ -25,8 +25,8 @@ config MACH_ASPEED_G4

 config MACH_ASPEED_G5
        bool "Aspeed SoC 5th Generation"
+       # This implies ARMv6K which covers the ARM1176
        depends on ARCH_MULTI_V6
-       select CPU_V6
        select PINCTRL_ASPEED_G5
        select FTTMR010_TIMER
        help

If you want to apply that as a fix for 5.4 I would be happy with that.

Fixes: 8c2ed9bcfbeb ("arm: Add Aspeed machine")
Reviewed-by: Joel Stanley <joel@jms.id.au>

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
