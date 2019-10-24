Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB8CE3498
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Fyy1/cWrGcMX+Qp6sacO0DkFKnEsnhN7SokEq5In4Y=; b=tLEwAEMkkRCh1Q
	DZf6Oz24tIYSJwa25gkp93vG+NDW+BDhnnuZ04UcVijGi7TyPP7YErhlQ296zrlzQtcgtnqNVTmcF
	WAFGl/PBPv6OddvEXJZo2iN1K4H8XCS2IWBPdPnDqWcNXax+Xx+nXj2ZSIMzae0fE+2HCBon8234U
	iaqOGNf/ZU6Zt4Eu5qCcPs5K3BYHPdy077EpUpOjQuUCRUmoDRtg23dNULFgtz1mwNaD9/8zmLB82
	KlRsSnYH4fTHukjvWdusnUmbQc74MDSScG6WnF2JWfizt0kGmFFh8wwsTEZF8/GEFtZPRKg6R15KN
	9lnuWKGVvpW02gVHQbWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdQs-0001Iz-Dr; Thu, 24 Oct 2019 13:45:42 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNdQa-0001Ht-DO
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:45:25 +0000
Received: by mail-lj1-x244.google.com with SMTP id a22so25105536ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/fWYhCmJ93NQhT0I63wTXutn+dxi511+rgvXvN58Juw=;
 b=COChlb5Mp2PZWd2gN4YbVP4ENvRu9Tw+0i1E65YlR/n6dbdc00DDRL9BlVyRNiMzYo
 6Yi2HjsraB7heDkJ5SbI744uW2oJLsgjAAcCh0u5XHnKl7UmZWz07cVo9m2hjofK+R8K
 Xat1zC5Pb9+DssUbOVRAaNt8qxC53pcGyoGTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/fWYhCmJ93NQhT0I63wTXutn+dxi511+rgvXvN58Juw=;
 b=q5xzyb0geduBDmRk8N6oLx00UWRkbHvU/+7u2HccFLRSw58zoUFgY69j9PTMNvYLBa
 BcybVoU7TR7HGKAYhe0R4Krv3i9GceOpFhIGs9MeVCXL1HGty9Nyo8EL6MtKNuJjfxJL
 ZIuV+DZKADw6nHbL6KdIPBXUUCEIGfLfZtHB9TWBHOhx2pinFpf2AK4TYv2FGfdabkbk
 MIwSS17xjAkk2JcymLXnD6SZtdV48zpUrnUASZEh8pPzYp4HXhThcq9tY5SxMtA7zc+k
 bQ3tvNSGW1hxC0EfM6U74zZqigDOMTuoja6ZYwHwZFT3DeHooV5wCPvKeJ4epzbgW8P1
 BJ2Q==
X-Gm-Message-State: APjAAAVoy3+XC4L0NztCH7zaPUsNzfMlZSRARCL38QSzAU/A/7LvCw0/
 eM1HSKla3f/0ly3J7Te+NbaTWjhUC1/DDmsY
X-Google-Smtp-Source: APXvYqy2DBWkOtEXsuzhsqwJjpCTQz3sNvep3L9L8lQliUGX0tAat3ID5dEFH7aEnbHO+0vQecjBwA==
X-Received: by 2002:a2e:b4e8:: with SMTP id s8mr7270549ljm.73.1571924722093;
 Thu, 24 Oct 2019 06:45:22 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o196sm10069411lff.59.2019.10.24.06.45.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Oct 2019 06:45:21 -0700 (PDT)
Subject: Re: [RFC PATCH 3/3] decompress/keepalive.h: add config option for
 toggling a set of bits
To: Linus Walleij <linus.walleij@linaro.org>
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
 <20191017114906.30302-4-linux@rasmusvillemoes.dk>
 <CACRpkdYpnX0JMT9tG8AYhRQiXo90GJoF_J8c6f+KoWKvZmyj-g@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <23b46dec-30f5-29a1-7bca-99d3af10c98e@rasmusvillemoes.dk>
Date: Thu, 24 Oct 2019 15:45:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdYpnX0JMT9tG8AYhRQiXo90GJoF_J8c6f+KoWKvZmyj-g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_064524_454414_01D002DE 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

On 24/10/2019 14.17, Linus Walleij wrote:
> On Thu, Oct 17, 2019 at 1:49 PM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
> 
>> +config DECOMPRESS_KEEPALIVE_TOGGLE_REG
>> +       hex "Address of register to modify while decompressing"
>> +       help
>> +         Set this to a physical address of a 32-bit memory word to
>> +         modify while decompressing.
>> +
>> +config DECOMPRESS_KEEPALIVE_TOGGLE_MASK
>> +       hex "Bit mask to toggle while decompressing"
>> +       help
>> +         The register selected above will periodically be xor'ed with
>> +         this value during decompression.
> 
> I would not allow users to store these vital hex values in their
> defconfig and other unsafe places. Instead follow the pattern from
> arch/arm/Kconfig.debug for storing the DEBUG_UART_PHYS:
> 
> config DEBUG_UART_PHYS
>         hex "Physical base address of debug UART"
>         default 0x01c20000 if DEBUG_DAVINCI_DMx_UART0
>         default 0x01c28000 if DEBUG_SUNXI_UART0
>         default 0x01c28400 if DEBUG_SUNXI_UART1
> ....
> i.e. make sure to provide the right default values. We probably
> need at least one example for others to follow.
>
> Maybe this is your plan, I don't know, wanted to point it out
> anyways.

The thing is, there is no proper default value for the use cases I have
in mind: Custom hardware based on some SOC, where the designer has wired
on an external gpio-triggered watchdog. That could be gpio 25 of gpio
bank 0, or gpio 2 of gpio bank 3, or ... so I don't see how there could
possibly be any sane default value - the kernel certainly shouldn't grow
a config option for every single custom board out there.

That's why this is different from the previously existing
arch_decomp_wdog - that was (AFAICT) about feeding the SOC's builtin
watchdog.

I realize this is rather specific, and the current implementation for
example won't work if the gpio value cannot be toggled in such a simple
way (perhaps there are separate "set" and "clear" registers or whatnot)
- but as I said, it is sufficient for the many different cases I've seen
so far (and something like my patches have been used for years on those
boards).

An alternative is to simply provide a complete implementation of
decompress_keepalive() (or arch_decomp_wdog if we want to keep that
name) in an external .o/.c/.S file, and do something like

OBJS += $(CONFIG_DECOMP_WDOG:"%"=%)

in arch/foo/boot/compressed/Makefile. Then the physical address etc. do
not get written in Kconfig, and it should work for all cases, including
the ones that need to write 0x55, 0xaa, 0x12 in order to some
SOC-specific register.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
