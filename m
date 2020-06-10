Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A201F5798
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAV3nRXCYKpLU5ZtqBh3+A2kLC21sDFp3+KhVZzEx8A=; b=pZxvM+QyVaq2qg
	jzp2Wrr3WNnjrxllrooNms4AraEsBB2AYWJWNCNF8SaE64dVQw1rbyQK7e9/MxB1K1qsmudOtOyIu
	2v2LuP0aLklrA8hAPss68HkfsqrBRunVXo3r0hIyDb9vbK1QjoLXnsFa5xdk2VtLmTBjOI69DZu39
	z6XJlydZCJrODdUr/tXj5t2Ki+vliTuhMl0myYhkDLExFRyXNF9CSuW7rgxHgZDio+SRsnJ6RXKhe
	E57p+bhGa/0jB5zd5tQxHpQ/zwUEAjnRAPDXCdkJq9GU5xggDJ70v9OxkmVdbklL4edUr1Yu7UVdP
	kZ7Wjkd/ubfbW/llb7Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj2Vb-0004kR-As; Wed, 10 Jun 2020 15:19:19 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj2VS-0004jQ-Ey
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 15:19:11 +0000
Received: by mail-lj1-f196.google.com with SMTP id e4so2984565ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 08:19:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=xlB9zSIbCB49nQpORVwnN87PaGtPgyhKMGLcmEDPueA=;
 b=KEFTEPoTuOgWgPun4sJpUgRO/nstKqj+4H2XzLujqURmakU31ottzyvvZhQi0mR9EP
 CDKurvAQA6fg9RA2efYcOHOYmXI8D/nIqVlbyybdubAgmBxQqO79R4vwq4pV7BiJfzZw
 wyhoaPU/FJFestuDlXG6ah6FUQLEyYR7E2DWkK8RAbY76MN6vPzviipJt94tTzlllWWS
 VVKFmko39AlBiCVBmMAqtRYs1kRPQrjqI3sSgGfHOvxLbAAtTIRXZNUGBHiSTaNFFfr7
 qU+rWYTNXB0fzyNfdpSisoixAyk+txEdiDTZYmp37AjyeILVJSzyUxn+S8M1+W9GlIMw
 5M+A==
X-Gm-Message-State: AOAM533WtCGxCT2ZzGbotJD3L8zhuYHG49shpy8DUQxdkW0s1qX/1oMP
 +2uLH/Sp4VirgJPpCQmHkvQ=
X-Google-Smtp-Source: ABdhPJwXhM2EMDMfligFHYdXLDaxqiDxr/8LNq7wNRKFqIFZzpPrAjqctudTfyvI29HV6rsLzO0x3Q==
X-Received: by 2002:a2e:a0cc:: with SMTP id f12mr1956505ljm.250.1591802340594; 
 Wed, 10 Jun 2020 08:19:00 -0700 (PDT)
Received: from [192.168.42.234] ([213.87.161.124])
 by smtp.gmail.com with ESMTPSA id q17sm5900670lfa.28.2020.06.10.08.18.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 08:18:57 -0700 (PDT)
Subject: Re: [PATCH 5/5] gcc-plugins/stackleak: Don't instrument
 vgettimeofday.c in arm64 VDSO
To: Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-6-alex.popov@linux.com>
 <20200604135806.GA3170@willie-the-truck> <202006091149.6C78419@keescook>
 <20200610073046.GA15939@willie-the-truck>
From: Alexander Popov <alex.popov@linux.com>
Autocrypt: addr=alex.popov@linux.com; prefer-encrypt=mutual; keydata=
 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
 j3lCqPk=
Message-ID: <bceea4f8-4b8e-f9ab-f275-572e448e3ec1@linux.com>
Date: Wed, 10 Jun 2020 18:18:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200610073046.GA15939@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_081910_501140_6144123E 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [a13xp0p0v88[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [a13xp0p0v88[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Reply-To: alex.popov@linux.com
Cc: kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sven Schnelle <svens@stackframe.org>, Naohiro Aota <naohiro.aota@wdc.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>, linux-kbuild@vger.kernel.org,
 Alexander Monakov <amonakov@ispras.ru>, Michal Marek <michal.lkml@markovi.net>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10.06.2020 10:30, Will Deacon wrote:
> On Tue, Jun 09, 2020 at 12:09:27PM -0700, Kees Cook wrote:
>> On Thu, Jun 04, 2020 at 02:58:06PM +0100, Will Deacon wrote:
>>> On Thu, Jun 04, 2020 at 04:49:57PM +0300, Alexander Popov wrote:
>>>> Don't try instrumenting functions in arch/arm64/kernel/vdso/vgettimeofday.c.
>>>> Otherwise that can cause issues if the cleanup pass of stackleak gcc plugin
>>>> is disabled.
>>>>
>>>> Signed-off-by: Alexander Popov <alex.popov@linux.com>
>>>> ---
>>>>  arch/arm64/kernel/vdso/Makefile | 3 ++-
>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
>>>> index 3862cad2410c..9b84cafbd2da 100644
>>>> --- a/arch/arm64/kernel/vdso/Makefile
>>>> +++ b/arch/arm64/kernel/vdso/Makefile
>>>> @@ -32,7 +32,8 @@ UBSAN_SANITIZE			:= n
>>>>  OBJECT_FILES_NON_STANDARD	:= y
>>>>  KCOV_INSTRUMENT			:= n
>>>>  
>>>> -CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables
>>>> +CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables \
>>>> +		$(DISABLE_STACKLEAK_PLUGIN)
>>>
>>> I can pick this one up via arm64, thanks. Are there any other plugins we
>>> should be wary of? It looks like x86 filters out $(GCC_PLUGINS_CFLAGS)
>>> when building the vDSO.
>>
>> I didn't realize/remember that arm64 retained the kernel build flags for
>> vDSO builds. (I'm used to x86 throwing all its flags away for its vDSO.)
>>
>> How does 32-bit ARM do its vDSO?
>>
>> My quick run-through on plugins:
>>
>> arm_ssp_per_task_plugin.c
>> 	32-bit ARM only (but likely needs disabling for 32-bit ARM vDSO?)
> 
> On arm64, the 32-bit toolchain is picked up via CC_COMPAT -- does that still
> get the plugins?
> 
>> cyc_complexity_plugin.c
>> 	compile-time reporting only
>>
>> latent_entropy_plugin.c
>> 	this shouldn't get triggered for the vDSO (no __latent_entropy
>> 	nor __init attributes in vDSO), but perhaps explicitly disabling
>> 	it would be a sensible thing to do, just for robustness?
>>
>> randomize_layout_plugin.c
>> 	this shouldn't get triggered (again, lacking attributes), but
>> 	should likely be disabled too.
>>
>> sancov_plugin.c
>> 	This should be tracking the KCOV directly (see
>> 	scripts/Makefile.kcov), which is already disabled here.
>>
>> structleak_plugin.c
>> 	This should be fine in the vDSO, but there's not security
>> 	boundary here, so it wouldn't be important to KEEP it enabled.
> 
> Thanks for going through these. In general though, it seems like an
> opt-in strategy would make more sense, as it doesn't make an awful lot
> of sense to me for the plugins to be used to build the vDSO.
> 
> So I would prefer that this patch filters out $(GCC_PLUGINS_CFLAGS).

Ok, I will do that in the v2 of the patch series.

Best regards,
Alexander

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
