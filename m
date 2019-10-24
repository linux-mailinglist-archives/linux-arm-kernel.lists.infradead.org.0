Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049E9E3219
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfKEg3DyiwuO31nIhqQkoSv0IYpK19x0Ip104fpYOx4=; b=iM6Gp8VzVR9MVO
	jv+fal9vCpGsLgDd2v1cGxS9DWrsplOEyG6E4xB7XwTik9l/U6+/ArM530vKIRGaVHEZsIMnXl8/M
	Ml9HIOCUKyQzokB7XJ824x76Rn+K8jthlxbxzKfNmSUI4vzEXqdWWX35fHeIDx533ENuuN37gtX5a
	fVsjovjq6UhjbSdPAHb++GfAGGrI31e5xmQNt7cKsHVhgIhJ8ip5oZWiThCUAbQ9ciMxv1bMIHvKQ
	ERmeNiGtKO4jM1GrdMVNpZJjL7GO2G1jLxGhurYf+5+SdGosw1GKeUBTYg28Fk5vZAhZKhEFOT13+
	WlUt1reAluHBjmrDY27Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNc3d-0006Yj-QU; Thu, 24 Oct 2019 12:17:37 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNc3T-0006Y6-OZ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:17:29 +0000
Received: by mail-vs1-xe41.google.com with SMTP id q21so623695vsg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 05:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sNS+0ZH0Gw7jjCkQeuG7rLnQoFmkx0bcU4Vuwapalrc=;
 b=TSznJC2NG3Y5TxoVaRiWfH4Vy4Dn5deWJutBTeFoKFBNaQKrmQRbnNNDFOE8ohWOfF
 O2ZHb7G8BmJZVjDnLUQ3cYhopl2cUmYsZkistSuia0JuY7Iv/OJiM6IGjeiekdEyR0lM
 +ddD8rWPzRWAXc2c9QOO3VbkBTLksRELKVUHcUeBejTxnpqLQJu6RQYb1WBnnGs5vGzD
 LDdWnb04rYzo07aM6eQ2NBMLBBA2sZpnD5FjjzY6LIFHltL28JjVEjIhPMleL2O0c+OM
 41JlAUbbSjCvHJLIuU8Q7PgeLn5qEtGn+0QfHHxVGSMumOLsi0t5hm2w93PJcXxak/V0
 qupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sNS+0ZH0Gw7jjCkQeuG7rLnQoFmkx0bcU4Vuwapalrc=;
 b=IpIN2mPyRjyTmW9Q/WFUgLiNmCblcjj4F9D337yH6MNPOtw/APnMFlW5VhbUBdln/V
 MCvNtBT4Mvkt5NE4hBsrOT4UUua6YK7+x0g5ZvkXWpd67qEJeveChxFx04o1kOOoBAv9
 KHFwvzFhrrQySsiH8UNsKYdxbOaqvbh5v9JlhlIwMmFeRVJlRVTCPSgJ7liG8KPeAz45
 TIBdYuG/r4OpyVOcFJnE8/sqROfqnWchhlX0PCjbEwoX5KjS2Yw/uF1cNna9JzMpeCjO
 fLc9XyWY8dOp7636bVIVTV0crUDA8Vne2ir3621U5ARbRT6RnfvrZZ0ve51CyptW4G/Q
 bI8g==
X-Gm-Message-State: APjAAAWDjIZzVrQMWfMBVGx2lndP9HzUNTB/yOR6Lb9P933OudpTuAt0
 4JzFDudNRlpjDmuW22yCf7whEopAQwJ0OzY58RNVPQ==
X-Google-Smtp-Source: APXvYqzqhpzcbYKla28yt8jpWxsX9rgQQYneKtDnu48YuaT+mxSVPuYskQJvGL1uqhsNTLZAmD7gOiwKMheJBTm/+6w=
X-Received: by 2002:a05:6102:2436:: with SMTP id
 l22mr3492203vsi.93.1571919446500; 
 Thu, 24 Oct 2019 05:17:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
 <20191017114906.30302-4-linux@rasmusvillemoes.dk>
In-Reply-To: <20191017114906.30302-4-linux@rasmusvillemoes.dk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 24 Oct 2019 14:17:15 +0200
Message-ID: <CACRpkdYpnX0JMT9tG8AYhRQiXo90GJoF_J8c6f+KoWKvZmyj-g@mail.gmail.com>
Subject: Re: [RFC PATCH 3/3] decompress/keepalive.h: add config option for
 toggling a set of bits
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_051727_811792_BB9F8A1C 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 1:49 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:

> +config DECOMPRESS_KEEPALIVE_TOGGLE_REG
> +       hex "Address of register to modify while decompressing"
> +       help
> +         Set this to a physical address of a 32-bit memory word to
> +         modify while decompressing.
> +
> +config DECOMPRESS_KEEPALIVE_TOGGLE_MASK
> +       hex "Bit mask to toggle while decompressing"
> +       help
> +         The register selected above will periodically be xor'ed with
> +         this value during decompression.

I would not allow users to store these vital hex values in their
defconfig and other unsafe places. Instead follow the pattern from
arch/arm/Kconfig.debug for storing the DEBUG_UART_PHYS:

config DEBUG_UART_PHYS
        hex "Physical base address of debug UART"
        default 0x01c20000 if DEBUG_DAVINCI_DMx_UART0
        default 0x01c28000 if DEBUG_SUNXI_UART0
        default 0x01c28400 if DEBUG_SUNXI_UART1
....
i.e. make sure to provide the right default values. We probably
need at least one example for others to follow.

Maybe this is your plan, I don't know, wanted to point it out
anyways.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
