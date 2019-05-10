Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 039BF19849
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 08:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDFSa8wlmvOfVulyLK7WN+nOiHlD6781UQpHUVTeqHY=; b=ffTtPv2OtzdkV2
	npB/UUDGrHZdAGZvEgyE26LIzWYdgXnRMVX03tYlr5H2ZIQ1pKaBz2E5RB1KlB2287jAT6Ci78wHi
	swuOejHGqagTKpxYUTHotMU7EoYF+3z5NQEbbj+Ddb2Nd2cYxMbXezXlruK4oKu5dOyvdeeBCUJS5
	I6wyhPerJAmz8WJSIl9EEjkn7UF7m5n7XAo9kYnXY2ne5e4Yi1Z4HIhCIw5uaE9ief4qxLHNQYjDP
	PshOP8KsfiFxXbplKUmd7PRGfkFX/ULnX3jo5pWst2ovjys3eVFGz8RSFuddZ68m6Pum7gz7snHk3
	aTDb8P54jXT8WGe6izCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOynQ-0005T8-Ci; Fri, 10 May 2019 06:14:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOynJ-0005SE-0Z
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 06:14:10 +0000
Received: by mail-lf1-x141.google.com with SMTP id j20so3288777lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 23:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wcoCn9aET8ENDUMb5kZFQY4rPTMs5oVxV7wArQjOIBo=;
 b=OBoy5jFwq7rwO6rQvfRJjzjUxv5hh15DMppI5VJRgrtBPPvNHy3xN3DS9UhKYbdjg2
 x4th2Lp7uXVK/Q+3WelH6KnB3Xzx5iDF0au91UTqihiFLCAIk9+ctrLUnNOF6paggLUR
 iehK957Lt3Jw4wMEOGI1tIRKyCMykJlJy6Hug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wcoCn9aET8ENDUMb5kZFQY4rPTMs5oVxV7wArQjOIBo=;
 b=Rt3ZOOuSSeZ0jZon9m2KY18uxbzLrzKEZsA8wZiUdOFC+AMwzs3kSm7fKiZG1t6r4L
 xziFzT37INiLLeRGVgwALDbYDuTuen6rhsPx6n707g8hPvBluCiY+9ela3+quiQUZfyR
 LN+EJY0onKehkdRLeLy9mOqtXqBl7/IyYqdFG7/1NjSuOKI0YCGzrAqBaTmfYJaPvdva
 0q9pmWH72IgOI6ul3Hh7DfUPONPW5aj2R2g55/mPpboeSjhPEkIVzN2jrTEhpA2s2qAS
 5Ph4L9RJdHovoRKJwXbNXb66grF+g/pWFh9KgXjr3q0hDFm3/OUCmm6FMh96GEgDRN4Z
 XesA==
X-Gm-Message-State: APjAAAXhd2+rBKI/Wo3wTBOOjUVZnRXMYRGhTlgnmQwrVITa8XUksG6D
 +N7j36MGpx/B+xbp1ksGJCHMyQ==
X-Google-Smtp-Source: APXvYqxjq3SwLXsYD1FL12FSPs1z8AbTUxVH50KLsWdg3JeNkzbWs8UtasTLQvTkgAAB7vhwEhVrpA==
X-Received: by 2002:ac2:43cf:: with SMTP id u15mr4755854lfl.67.1557468843494; 
 Thu, 09 May 2019 23:14:03 -0700 (PDT)
Received: from [172.16.11.26] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id f4sm1025869ljm.80.2019.05.09.23.14.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 23:14:02 -0700 (PDT)
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>, Rob Herring <robh+dt@kernel.org>
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
 <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
 <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
 <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <36fab640-b98e-9781-f96f-0ed988a71077@rasmusvillemoes.dk>
Date: Fri, 10 May 2019 08:14:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_231409_057578_7DF93DD5 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/05/2019 10.00, Hsin-Yi Wang wrote:
>>>> Why do you need to clear it? That wasn't necessary for kaslr-seed.
>>> I think it's for security purpose. If we know the random seed, it's
>>> more likely we can predict randomness.
>>> Currently on arm64, kaslr-seed will be wiped out (in
>>> arch/arm64/kernel/kaslr.c#get_kaslr_seed(), it's set to 0) so we can't
>>> read from sysfs (eg. /sys/firmware/devicetree/.../kaslr-seed)
>>> I'm not sure on other arch if it will be wiped out.
>>
>> The difference is if I have the kaslr seed, I can calculate the kernel
>> base address.
>>
>> In your case, you are feeding an RNG which continually has entropy
>> added to it. I can't see that knowing one piece of the entropy data is
>> a security hole. It looks more like you've just copied what what done
>> for kaslr-seed.
> +Kees who can probably explain this better.
> 
> This early added entropy is also going to be used for stack canary. At
> the time it's created there's not be much entropy (before
> boot_init_stack_canary(), there's only add_latent_entropy() and
> command_line).

So, why not just have the bootloader add whatever entropy it has via the
commandline, which already gets mixed in? That requires no kernel
changes, and works for all architectures.

If anything, perhaps instead of just adding gobbledygook=abc123, make an
official command line parameter (there was talk about this at some
point), and have the kernel overwrite the value with xxx so it's not
visible in /proc/cmdline.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
