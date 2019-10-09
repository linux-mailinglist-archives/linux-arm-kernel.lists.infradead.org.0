Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AD5D0B10
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV+Iht0GC7Eiwmf+HIyKVzUunpJBivKWiyWBzRKvPOw=; b=EusmmkydShXz1d
	hSQGJA3ZSLv6+LOqOCmUm8IucqgjSbVEQ+YrvYCJ/sDOlmi2k9tVEM/3qaWMwr+m7JtPwXIzGThGB
	zSxdQdomvDfMEPu4z8yan0QhygtXyLLeZ1JZRw45iYEZ8lO6sHiLXPzX9GM7T8soYYLLOlYj0o6WI
	Jgwzjkissg2iITzYosFHR2Z2Q4VX7CqOfTRcBNAmAIECxOpx45G7esj056b8FQTPetIH/qbEtqPiw
	9pD9jNQ0hb1BJEdFVVYFjSz7HonKbhFu2ebgPPG+dD5aEAuVIoSUNaW5XTzFgD81q5EkGsMQRLm1C
	b/xtBjxxPr/vhh1wO/Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8Ef-0000Fx-Ma; Wed, 09 Oct 2019 09:26:21 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8EX-0000Eh-8l
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:26:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id 72so1098988lfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 02:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SD+HI02CKBBsUnBjBS8AONRJ3UqoWuFlv1/fGBB0L+4=;
 b=Yp/ezDTokXabk02kHZS4Q9Zcrip4udpQ7qThrEB8fA+oF5/YBaD2Q+THIO35uJ3kfM
 ijAdu971Sc0u1iXVcq8FmBzJx92WFKIL13rYfNLHAFEcAcABM/XNEWuxdcFUR630+oKt
 EhOBtNE8brRBt6vUfGQkuPeYH0wO5CD9zsgK8XTxtLlluYKde8xrN7DJnQGKvtMGqrQb
 301v9yPx51H2ueQoUMiDBqmPbWS6qbm39fIrpFjEigHHHzEF4FAtjiFlUyKtyHYy4pFZ
 eyTC9foJ37+QThE5FPa4048amnHh8m0WuErFx7J6r28IzNf5kcGpC7qLDNVSqenrhhXu
 UeXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SD+HI02CKBBsUnBjBS8AONRJ3UqoWuFlv1/fGBB0L+4=;
 b=Pf/CxIXQla9BkuTeXI/EEWEb3IwSjbKG6y0hZd/ubonoiHCjrXXjoUgxvCWeNW1iIv
 FCpQM7i33UFiI9VmgDFC427GNv6ABEoy5ExIncBxGdSJrLvlnpFWovfwyTj1svr0eXBE
 WG6BwcClRAqL+KZE8M8X3jiZ3eJFK9K4wUXSKPkklS4K0S5Mb2mBVaaAL7bMENfv6YRX
 y1xabk0p01t9Wmyw5SGgPeEkBqMiOV5i2r0Ob42ffgfN9Qe9NpzihbkfOJ/unMv1RDnV
 rPeoUOccmbxf9vISXMRbLfcUJcb9xCostgj6jscSEwMs7lzvL90y7NfWY4jZRGEcvgXR
 uxMQ==
X-Gm-Message-State: APjAAAVRHwy3f5p2Vsu0oeI6bJefGElSrraXhWsH1zS56qS+IO5ZZepD
 2BYn+rFofuqH7n0FP0xjyco993dnV71XcacfQrQl1tFkQ8Y=
X-Google-Smtp-Source: APXvYqzFG7lDdH9uA0MTciR+6xdQMm6jmgxkQ3KIBmF6lJi9ASjDpky3Ev/tMd6UZRmclpoRgOMzubjoi2Xc5yZYX5w=
X-Received: by 2002:a19:c505:: with SMTP id w5mr1439629lfe.115.1570613170790; 
 Wed, 09 Oct 2019 02:26:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
 <be63fa49f036b9168f223152648307a63056f4ee.1570299719.git.vilhelm.gray@gmail.com>
In-Reply-To: <be63fa49f036b9168f223152648307a63056f4ee.1570299719.git.vilhelm.gray@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2019 11:25:59 +0200
Message-ID: <CACRpkdbEszHr3zzVBTinVFQXU+sjOu9YbWC-554+7PYgupYJBA@mail.gmail.com>
Subject: Re: [PATCH v15 01/14] bitops: Introduce the for_each_set_clump8 macro
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_022613_309757_A17B5997 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Phil Reid <preid@electromag.com.au>,
 Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 morten.tiljeset@prevas.dk, Sean Nyekjaer <sean.nyekjaer@prevas.dk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Lukas Wunner <lukas@wunner.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 5, 2019 at 8:37 PM William Breathitt Gray
<vilhelm.gray@gmail.com> wrote:

> This macro iterates for each 8-bit group of bits (clump) with set bits,
> within a bitmap memory region. For each iteration, "start" is set to the
> bit offset of the found clump, while the respective clump value is
> stored to the location pointed by "clump". Additionally, the
> bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> respectively get and set an 8-bit value in a bitmap memory region.
>
> Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Suggested-by: Lukas Wunner <lukas@wunner.de>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>

As usual I am happy to merge all this but I would need
Andrew Morton's ACK, as I don't feel like a maintainer for
the bitops.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
