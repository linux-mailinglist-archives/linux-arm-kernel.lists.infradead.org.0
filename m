Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819C7115E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKZDevAOFtRDvcW0e4nb68sg7fH6G2MeVoZ6Aq1GwF0=; b=Ya2BKojNlgUvBR
	xQmTx0fd05h7GZ0nW56wNBOmZmTeGNFPG5HNhbKoSKRendZChOP6LIeBCkKkwfSWw4/YCP+jpp+vM
	jZlcHGmeVHajbIDf7YG/WGzsfdI9FHg8gzAVes+Kw7Keuma3v867WxiEgt1nG6TzDi2oJYnDUQxIV
	bGWdo6IjHjt3g4ERDm7Irj75t1yNFKyYkO/1ZVNwoecHJuIll2PVKxo7IBWtyl4wfgZR756gwIFSn
	nqBNe5HRK4pgJV6PcAJKOYNeywIJjyHrnfm+9PpXyU9AJgyfC20COfKPbOCUP85WbCNdXjGP0NR5w
	NKOnLNIZ+WJEroOm0FWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7X6-0003tz-IY; Thu, 02 May 2019 08:57:36 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7Wy-0003tI-Lk
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:57:31 +0000
Received: by mail-lf1-x142.google.com with SMTP id d8so1276170lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 01:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AcJGzEJKvjgTm5krN5D7sGxdgNjNgaxocAX/9P/bdOw=;
 b=b8T1p9YazMcCX++tQtbU7XUF6HHYDl8X5UpxdNuLa3Osr2bjH8bpdc1xWcY8lQ0Klh
 oAyl7StdIrtl/o/sFVYI0MgEafxlvwNPk+u8n2PMlLwgZUBwj5ReHS9q+mybO1Mp7lJB
 XdOnPTQjfBRH1qyudmcauJI0lSUh//ms9ieOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AcJGzEJKvjgTm5krN5D7sGxdgNjNgaxocAX/9P/bdOw=;
 b=D+Nxw5Z58e8Mx0xvoCrdHXeZLo7kDTSz+Q2T0uo5pWaPUaGXx0O3Hi/1hE7KCiZjiO
 HQfTtyN1N9Kp7gs8xd9WoqrWH9Ivs+zKbFVazHXB7u5mrCX/ZNtt1m8yxoUTgdDQO9K5
 MpDcDf6UspzsBqm3IJeG4njzNYS5+bsRSPNbnLlZxFW5pj1PhYx+UF1sDB4DcmlEJ/WE
 wDQvMLpNP+RLUGBT31Sl1nUtGVJzcboo5MwBYBSGXb7qPIB/ZP2A9hGdnfN4m5WbOsyC
 GFAvkS1/Cf0BV3oCCM1vyhQdWXLVRaQUmujaoKl4R+IXlt10PP0PGrte5zcuOEHBGlcb
 Nw0Q==
X-Gm-Message-State: APjAAAUJnjSUa3IXTzgKZEGXkqYUDBcbZ5G4p/qf3Ep25JI0c7BxojQ3
 m1jEPg15v3uVe/y3a2qOoUc/nA==
X-Google-Smtp-Source: APXvYqw7FZBjd6a3kkQOF5flv5TSYRYTplkliXQYoiTwQ/XqZE/8EmKNd0UNu6GKae4dE6rxkrhAtQ==
X-Received: by 2002:ac2:554a:: with SMTP id l10mr1211456lfk.45.1556787445842; 
 Thu, 02 May 2019 01:57:25 -0700 (PDT)
Received: from [192.168.1.149] (ip-5-186-118-63.cgn.fibianet.dk.
 [5.186.118.63])
 by smtp.gmail.com with ESMTPSA id r5sm3645295ljh.27.2019.05.02.01.57.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 01:57:24 -0700 (PDT)
Subject: Re: [PATCH 11/10] arm64: unbreak DYNAMIC_DEBUG=y build with clang
To: Nick Desaulniers <ndesaulniers@google.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20190426130015.GA12483@archlinux-i9>
 <20190426190603.5982-1-linux@rasmusvillemoes.dk>
 <CAKwvOd=Qzs8gAenS6-GkiSmrwxwJA7wChJ6FUE5+=LPAj4XSfQ@mail.gmail.com>
 <CAKwvOdkg=Xo_C_hQrnHt-t-RfcDrBYsrBZUwsKjfXSPhkynOHQ@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <dec53053-fa42-7b9d-14c1-61357e1ecc66@rasmusvillemoes.dk>
Date: Thu, 2 May 2019 10:57:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkg=Xo_C_hQrnHt-t-RfcDrBYsrBZUwsKjfXSPhkynOHQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_015728_863042_D77429CF 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dan Rue <dan.rue@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Jason Baron <jbaron@akamai.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2019 20.22, Nick Desaulniers wrote:
> On Mon, Apr 29, 2019 at 10:32 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>>
>> On Fri, Apr 26, 2019 at 12:06 PM Rasmus Villemoes
>> <linux@rasmusvillemoes.dk> wrote:
>>>
>>> Current versions of clang does not like the %c modifier in inline
>>> assembly for targets other than x86, so any DYNAMIC_DEBUG=y build
>>> fails on arm64. A fix is likely to land in 9.0 (see
>>> https://github.com/ClangBuiltLinux/linux/issues/456), but unbreak the
>>> build for older versions.
>>>
>>> Fixes: arm64: select DYNAMIC_DEBUG_RELATIVE_POINTERS
>>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>>> Reported-by: Arnd Bergmann <arnd@arndb.de>
>>> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
>>> ---
>>> Andrew, please apply and/or fold into 9/10.

Andrew, friendly ping.

>>>  arch/arm64/Kconfig | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>>> index d0871d523d5d..315992e33b17 100644
>>> --- a/arch/arm64/Kconfig
>>> +++ b/arch/arm64/Kconfig
>>> @@ -83,7 +83,7 @@ config ARM64
>>>         select CRC32
>>>         select DCACHE_WORD_ACCESS
>>>         select DMA_DIRECT_REMAP
>>> -       select DYNAMIC_DEBUG_RELATIVE_POINTERS
>>> +       select DYNAMIC_DEBUG_RELATIVE_POINTERS if CC_IS_GCC || CLANG_VERSION >= 90000
>>
>> I just landed the fix for this in Clang, I think around the time you
>> sent the patch.  Should ship in Clang 9.  Thanks for unbreaking our
>> build.

Sorry for breaking it in the first place :-/

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
