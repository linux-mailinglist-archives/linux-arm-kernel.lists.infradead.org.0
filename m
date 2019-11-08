Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACB1F4EBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LltIv7//aPJBKjmknMFgwxSiGP7nNnYD4gSLI4IbfHI=; b=nOjEp3daxV/7DK
	LaLixBTT+Ls75yJobR6OOa6iS8fmESqZ5+8lcK+X8xnvuL3nggkKNp68ihUWZrNfEZ1nv5EFnF41z
	sYZXmkydrlvWYme0a+j9CO9RtiV/GyxkF2euUB5XW2Q4EvkyeJIIxdjw8GpeL9qGGtI18H+y9RQQ0
	5zV+9l0eAyzMVdwNTdXi/n3i84kFeA81jOCEwINliNWDAAWl4Ohjx0sJUzgGRHjcIDTtIXu35QmRD
	zZukd/iZEzv/i7jtUV1gh488Vl2y5WPsp5HGqGVZKDxCKypsbz7s8YjFFCL+MgujKEBW3InsdOk3X
	X9Of1zj3CBsIshgpzYTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5cd-0007gh-Ss; Fri, 08 Nov 2019 14:52:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5cW-0007g8-6F
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:52:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id i12so453313wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 06:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O/XoMdhOItgVnyyt8ofQFcj3sIlx0dJO7eZJBuH4Uhw=;
 b=WwRmG8HCyTM+mEiIH3a63WrobNFUO82SWDXoWZbTYioFkLL1kbuFz50ozP6z5KW7Ev
 5p8Kb/eUzUUMKFwo4xk6D+uz5zHeGYrdoN+E4i5ROYcBsBy2zQHo+R0kMOC+VBRc8ID/
 BpFKo/V8oQi4rogs5EEpytjAJ9O/7ttU6KnCqG9+wR1/cqQU/BAMfpJM6muTxn2YTgHZ
 qlrpYRl4nbymlnHjP6SxnBI6XsUNTVZiOI9Sezzfh0l2EiVJ1rNtKDejnV0NXMXlZXjp
 KdEyffgjGMTdHSF03Z7ZuYuewxVRNyXU6gAQjTM5E+jMSWL4/kzgEmbd3UNnEM3fOwRI
 tOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O/XoMdhOItgVnyyt8ofQFcj3sIlx0dJO7eZJBuH4Uhw=;
 b=KHyQ4Um6ovJ61tMteh3s1AhFWm2QLuyNgepqi5tNeJEPffGkigOzrwog1VYWb40cuo
 A1OBsQrSsVp/j2UmmpSW/mP7l4sXUmE67JV4NKaihVSIHFrxP4r20kuj8kHwcocrGAfM
 /jGR6zbM1N4YQ0HkAEok+sdlfZ94Cb4rFkqCFkUaj0g52fPbKEXrdfrwk5QPXOvhk07M
 oesnEBFwD3Fdibqn2R+9ncMVGmhYLzjZmPUxurxZRzi3VKQihq9SwSqQXD/KjIIn+H3h
 qaYYGPYmmFEKU20Ktw4vx168QJDhJRV/TifuBXtIcyzsIApNBB45dlv9v4Fx7rykawT/
 JmGA==
X-Gm-Message-State: APjAAAWAAAM3tXlfN6lFm0qOxgxMA0Dk3B8iXUjADczVzRaNQwOhYW81
 4MZDuyUrXy0mGQIdpXSx/A7jrw==
X-Google-Smtp-Source: APXvYqxEJJlfAZyIrLv+Gak73UfUDc/IrqE5JANGHlFn1oaBBJ2ARtf2sOtSdlf4jtNQflg1AJ4wGA==
X-Received: by 2002:a5d:49cf:: with SMTP id t15mr8777982wrs.63.1573224734633; 
 Fri, 08 Nov 2019 06:52:14 -0800 (PST)
Received: from [192.168.8.102] (212.red-213-99-162.dynamicip.rima-tde.net.
 [213.99.162.212])
 by smtp.gmail.com with ESMTPSA id a7sm6636928wrr.89.2019.11.08.06.52.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 Nov 2019 06:52:14 -0800 (PST)
Subject: Re: [PATCH v4 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>
References: <20191106141954.30657-1-rth@twiddle.net>
 <20191106141954.30657-2-rth@twiddle.net>
 <CAKv+Gu8pb5pBFBg0wGoORmaS6yzmoX7L45LLnhuZhqw4JX7d+w@mail.gmail.com>
 <23ce309b-1561-ed95-7ce7-463a991bd19b@linaro.org>
 <CAKv+Gu-03HLED79e+V2D5BtSjRwHH7=rnUWyqZ7dBBD-s7RowQ@mail.gmail.com>
 <CAKv+Gu8y4zwpesytU7vffSCuq8YAjWcHwFHwa_LhTW_cLiSfQw@mail.gmail.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <f8c9b7e6-a0f6-211b-0003-a093d2c94e0e@linaro.org>
Date: Fri, 8 Nov 2019 15:52:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu8y4zwpesytU7vffSCuq8YAjWcHwFHwa_LhTW_cLiSfQw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_065216_235256_6F808FD4 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/8/19 3:24 PM, Ard Biesheuvel wrote:
>>> To add_interrupt_randomness(), invoked by handle_irq_event_percpu().
>>> Better if I reword the above to include the function name?
>>>
>>
>> This is one of the several places where arch_random_get_seed_long() is
>> called, so if you are going to single it out like that, it does make
>> sense to clarify that.
>>
> 
> Looking more carefully at that code, it seems we call
> arch_get_random_seed_long() NR_CPUS times per second, and assuming
> that our RNDRRS sysreg will be reseeded from a resource that is shared
> between all the cores, I am now wondering if this is such a good fit
> after all, especially in the context of virtualization and
> accessibility of both sysregs all the way down to EL0.
> 
> I propose we go with RNDR instead, at least for the time being, and
> once actual hardware appears, we can try to figure out how these
> pieces best fit together.

This is what I started with, based on the powerpc implementation.
I can certainly revert to that easily.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
