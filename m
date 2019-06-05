Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8CC363B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68WsFcNaX2VwQAjCnrF2cjvLX3DLYXJ7LIp2L2dZ8us=; b=Os9jP5LmOTN355
	PKJVvx+dqDIjOIjmeUUM3wRPEn9MZEryxACSmYyphJtd3AYPDq27ABtTcHWMGrru2JzRgMlMUtoGS
	qftp1vzY4PzElEJp4lf+VxzKgDmb4qocS9QGGyJrC+RZ1ULJeTpg812A5ueKPhsazjxqy+yZdK4Fn
	GRiHBx+acudfReH3TR8rHEeWmIVARGbU+OaTCI8uer2/lbzRsZ/UqGOuy3YXBwpxr4FUgpABatbH6
	amjXn5hiOtlNWEX93zbVpmaHOsNupdb5a5PF48Qw45CPQiYIYucZgxptpNtLWOl5zqA2R/pJBNojF
	aPHni9YipDKj5KD7fwNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbEJ-0004aH-2u; Wed, 05 Jun 2019 19:05:47 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbEB-0004ZV-St
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 19:05:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so8295004pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 12:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iS6BQh1C6vCLCfActHRCjVYV0hGtWo3NiXD5P8bj2wg=;
 b=GDQBRzOXmregmP/eonPzjTe9knm+yNX+cys1+MeVuz/61vUmh1oWXMwA+r21TqBi1P
 X7tGm8Xq6andxEBOFf6WUpol6Hjc5+IJeVA5FpQsflWBskgxgDIAL0S5AFlIrT+oyv5D
 5p9L+Eu//s13GkK4x2NIviI+2PT9LeOk/vJi8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=iS6BQh1C6vCLCfActHRCjVYV0hGtWo3NiXD5P8bj2wg=;
 b=J0ECfcgVHZDO0xT5L2VqcNILURIYMTStYFcxVVWLcYMND9Ui8+5hOqOXaqSJgKkGbR
 Y9BM5ZDRC6jKln1qZqXjmItnRRXIGyt+ABNAlMlrWq86Y4GcLyzk3x7b7tmJ/LaV0oxT
 iWlXY6+AQuAgwMgHyPfvGaGVtWgOIuLN2nbvuVI2cdRHf+Kfz6AwV2z3w6AVyEa8Mb9/
 qAtPilbmzuTpzoQRpC5ys8j+SL6I12vpxmcFFHqyCC+zDpP0H37oLnHd6ozERijDPrVE
 mqtrzjtmZOEFefnadKtidvPwS6+J5V6GNumpeS1GqZvLlTDaqFOae89eftQ8XsKuvbIO
 UZdw==
X-Gm-Message-State: APjAAAXc//8kDqLfPmwFhLeRhJbP4nf8jA/SNP5xYc2NB4OuDEu5yrAk
 JsOSrBMBLBET1De5GasZggdyLQ==
X-Google-Smtp-Source: APXvYqyxh6Sy/dh/uh0PdYOiT611tPfPb8XrWlNhzmqLlD5pfKUlETsTReuXly5uvSnayQvH8yBbdQ==
X-Received: by 2002:a17:902:2847:: with SMTP id
 e65mr43108666plb.319.1559761537974; 
 Wed, 05 Jun 2019 12:05:37 -0700 (PDT)
Received: from [10.67.49.123] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j20sm18062211pff.183.2019.06.05.12.05.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 12:05:36 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] ARM: use arch_extension directive instead of arch
 argument
To: Stefan Agner <stefan@agner.ch>, arm@kernel.org, olof@lixom.net
References: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
From: Florian Fainelli <florian.fainelli@broadcom.com>
Openpgp: preference=signencrypt
Autocrypt: addr=florian.fainelli@broadcom.com; prefer-encrypt=mutual; keydata=
 mQENBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAG0MEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPokB
 xAQQAQgArgUCXJvPrRcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFrZXktdXNh
 Z2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2RpbmdAcGdw
 LmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29tLmNvbQUb
 AwAAAAMWAgEFHgEAAAAEFQgJCgAKCRCBMbXEKbxmoE4DB/9JySDRt/ArjeOHOwGA2sLR1DV6
 Mv6RuStiefNvJ14BRfMkt9EV/dBp9CsI+slwj9/ZlBotQXlAoGr4uivZvcnQ9dWDjTExXsRJ
 WcBwUlSUPYJc/kPWFnTxF8JFBNMIQSZSR2dBrDqRP0UWYJ5XaiTbVRpd8nka9BQu4QB8d/Bx
 VcEJEth3JF42LSF9DPZlyKUTHOj4l1iZ/Gy3AiP9jxN50qol9OT37adOJXGEbix8zxoCAn2W
 +grt1ickvUo95hYDxE6TSj4b8+b0N/XT5j3ds1wDd/B5ZzL9fgBjNCRzp8McBLM5tXIeTYu9
 mJ1F5OW89WvDTwUXtT19P1r+qRqKuQENBFPAG8EBCACsa+9aKnvtPjGAnO1mn1hHKUBxVML2
 C3HQaDp5iT8Q8A0ab1OS4akj75P8iXYfZOMVA0Lt65taiFtiPT7pOZ/yc/5WbKhsPE9dwysr
 vHjHL2gP4q5vZV/RJduwzx8v9KrMZsVZlKbvcvUvgZmjG9gjPSLssTFhJfa7lhUtowFof0fA
 q3Zy+vsy5OtEe1xs5kiahdPb2DZSegXW7DFg15GFlj+VG9WSRjSUOKk+4PCDdKl8cy0LJs+r
 W4CzBB2ARsfNGwRfAJHU4Xeki4a3gje1ISEf+TVxqqLQGWqNsZQ6SS7jjELaB/VlTbrsUEGR
 1XfIn/sqeskSeQwJiFLeQgj3ABEBAAGJAkEEGAECASsFAlPAG8IFGwwAAADAXSAEGQEIAAYF
 AlPAG8EACgkQk2AGqJgvD1UNFQgAlpN5/qGxQARKeUYOkL7KYvZFl3MAnH2VeNTiGFoVzKHO
 e7LIwmp3eZ6GYvGyoNG8cOKrIPvXDYGdzzfwxVnDSnAE92dv+H05yanSUv/2HBIZa/LhrPmV
 hXKgD27XhQjOHRg0a7qOvSKx38skBsderAnBZazfLw9OukSnrxXqW/5pe3mBHTeUkQC8hHUD
 Cngkn95nnLXaBAhKnRfzFqX1iGENYRH3Zgtis7ZvodzZLfWUC6nN8LDyWZmw/U9HPUaYX8qY
 MP0n039vwh6GFZCqsFCMyOfYrZeS83vkecAwcoVh8dlHdke0rnZk/VytXtMe1u2uc9dUOr68
 7hA+Z0L5IQAKCRCBMbXEKbxmoLoHCACXeRGHuijOmOkbyOk7x6fkIG1OXcb46kokr2ptDLN0
 Ky4nQrWp7XBk9ls/9j5W2apKCcTEHONK2312uMUEryWI9BlqWnawyVL1LtyxLLpwwsXVq5m5
 sBkSqma2ldqBu2BHXZg6jntF5vzcXkqG3DCJZ2hOldFPH+czRwe2OOsiY42E/w7NUyaN6b8H
 rw1j77+q3QXldOw/bON361EusWHdbhcRwu3WWFiY2ZslH+Xr69VtYAoMC1xtDxIvZ96ps9ZX
 pUPJUqHJr8QSrTG1/zioQH7j/4iMJ07MMPeQNkmj4kGQOdTcsFfDhYLDdCE5dj5WeE6fYRxE
 Q3up0ArDSP1L
Message-ID: <7d054879-ea11-d3e4-de5c-f35504039104@broadcom.com>
Date: Wed, 5 Jun 2019 12:05:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_120539_933782_8DB230D9 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: andrew@lunn.ch, mans@mansr.com, tony@atomide.com, robh@kernel.org,
 f.fainelli@gmail.com, gregory.clement@bootlin.com, linux@armlinux.org.uk,
 krzk@kernel.org, kgene@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 sebastian.hesselbarth@gmail.com, jason@lakedaemon.net, arnd@arndb.de,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com, nico@fluxnic.net,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/27/19 3:40 PM, Stefan Agner wrote:
> The LLVM Target parser currently does not allow to specify the security
> extension as part of -march (see also LLVM Bug 40186 [0]). When trying
> to use Clang with LLVM's integrated assembler, this leads to build
> errors such as this:
>   clang-8: error: the clang compiler does not support '-Wa,-march=armv7-a+sec'
> 
> Use ".arch_extension sec" to enable the security extension in a more
> portable fasion. Also make sure to use ".arch armv7-a" in case a v6/v7
> multi-platform kernel is being built.
> 
> Note that this is technically not exactly the same as the old code
> checked for availabilty of the security extension by calling as-instr.
> However, there are already other sites which use ".arch_extension sec"
> unconditionally, hence de-facto we need an assembler capable of
> ".arch_extension sec" already today (arch/arm/mm/proc-v7.S). The
> arch extension "sec" is available since binutils 2.21 according to
> its documentation [1].
> 
> [0] https://bugs.llvm.org/show_bug.cgi?id=40186
> [1] https://sourceware.org/binutils/docs-2.21/as/ARM-Options.html
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> Acked-by: Mans Rullgard <mans@mansr.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
> Changes since v1:
> - Explicitly specify assembler architecture as armv7-a to avoid
>   build issues when bulding v6/v7 multi arch kernel.
> 
> Changes since v2:
> - Add armv7-a also in mach-tango
> - Move .arch armv7-a outside of ifdef'ed area in sleep44xx.S
>   to make the kernel compile also without CONFIG_SMP/PM.
> 
> Changes since v3:
> - Rebase on top of v5.2-rc2
> 
>  arch/arm/mach-bcm/Makefile         | 3 ---

For mach-bcm:

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
