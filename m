Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5ED63BC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 21:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FR+jxO1aQkW5G2+LGybORrtmVAepHgzQm32J+MWMjZs=; b=H1IIuIXM+Ir6yhuh9tXqrStl6
	zt7rbWT2iBv1L46DQbQjHOX/S4nOfPzEFsrWQJmx63vg9bewfsTRLw/YMUcxMTpk+ROWHbqpjw7Mp
	AdkQ6R6tCxsV9S1ReufISgO1hMFNNJZdbKO4TwItbiqdDnV0uywgEsXPJt/cZ7y59VyiYsYNq90KE
	64d5vwJWol6tWOTIpEvN1UfZ5c3z7xztWChi5D5NtyfqaCAnHsUu5fVv/dapL+6DyyDKt4+8oE65J
	mupBhvHhAeT8Ae/Xz3bolENn6dzVqcoPpkcJBlcMQdpOp2AFY8jWjyKA4d+yeT+vnZsVC19N2IJ0e
	svM1K93xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkvZw-0003Y3-FO; Tue, 09 Jul 2019 19:15:05 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkvZQ-0003Xk-Qk
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 19:14:34 +0000
Received: by mail-qt1-f196.google.com with SMTP id j19so22738335qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 12:14:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5BEQLx/j9iUYUUOthHrxVyxhb7oPlthNbHALl7L1pMQ=;
 b=cdanCRm0xj8e8ka2B736PQn334PO5ub7Ra0z11vacK7fUFuKWFH7YMXxz8AtVcSzpQ
 x7WDrWSyN5oZgbSTrnoXs1sFhislglKQC3aLoJ40t4b/Q9/xSf4ylMkKpQonY202l+IH
 FDvaQFyAI2+3RLX8jvJMIypiaAxVGAB2r+DXFooPZ5tO+5XyYkdVV3AZzFmWGbw5YbTV
 2vxs3fttEysOR0NRbtg3u1v6nVAkjtlPNKzLaF2NCW0CfbAb5wjPF4oZW3LiDrftS3ZN
 mVnsaP5wdoDhSZnWXsUaoV6o8h/bO7GDV0H2O1V0vthIoKzHWGoowNtgzExgnx/35Sqx
 v3wQ==
X-Gm-Message-State: APjAAAXhNZYyXzwrkpLvF/elGLR56eZKS8ktXcsT37vSEIcIhICTmzFu
 WYE9sJDUuk35HkRaoxD+A4x4gaqyVOw=
X-Google-Smtp-Source: APXvYqwNn/o8ArAnGAByvJh0ou5Guy+O49yI3g7QKjHuYiSmHDeAPIPt47grBQnEP3jq1ND1AtAHzw==
X-Received: by 2002:a0c:8a43:: with SMTP id 3mr21585759qvu.138.1562699210756; 
 Tue, 09 Jul 2019 12:06:50 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id m10sm6759642qka.43.2019.07.09.12.06.49
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 12:06:50 -0700 (PDT)
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
To: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
 <20190617161330.GD30800@fuggles.cambridge.arm.com>
 <CAKv+Gu9Fh3anh6-TeDWZ+pL7rs7EBWZqvLXASRNjicGu7k+WKw@mail.gmail.com>
 <20190617164553.GI30800@fuggles.cambridge.arm.com>
 <20190618120259.GA31041@fuggles.cambridge.arm.com>
 <CAK8P3a2NQSm3sPcJq=6=Espa5da_L+2RNtyS=jkkzD3tx-4ehA@mail.gmail.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <95d721d1-2ccc-321c-f688-15e5bb53c30b@redhat.com>
Date: Tue, 9 Jul 2019 15:06:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2NQSm3sPcJq=6=Espa5da_L+2RNtyS=jkkzD3tx-4ehA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_121432_872898_7F929045 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Peter Maydell <peter.maydell@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?Q?Alex_Benn=c3=a9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/18/19 10:15 AM, Arnd Bergmann wrote:
> On Tue, Jun 18, 2019 at 2:03 PM Will Deacon <will.deacon@arm.com> wrote:
>>
>>  From 6e004b8824d4eb6a4e61cd794fbc3a761b50135b Mon Sep 17 00:00:00 2001
>> From: Will Deacon <will.deacon@arm.com>
>> Date: Tue, 18 Jun 2019 12:56:49 +0100
>> Subject: [PATCH] genksyms: Teach parse about __uint128_t built-in type
>>
>> __uint128_t crops up in a few files that export symbols to modules, so
>> teach genksyms about it so that we don't end up skipping the CRC
>> generation for some symbols due to the parser failing to spot them:
>>
>>    | WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version
>>    |          generation failed, symbol will not be versioned.
>>    | ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against
>>    |     `__crc_kernel_neon_begin' can not be used when making a shared
>>    |     object
>>    | ld: arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation:
>>    |     unsupported relocation
>>
>> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> Reported-by: Arnd Bergmann <arnd@arndb.de>
>> Signed-off-by: Will Deacon <will.deacon@arm.com>
> 
> Looks good to me,
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> 
> I've added this to my randconfig build setup, replacing my earlier
> patch, and will let you know if any problems with it remain.
> 
>           Arnd
> 

I just hit this on 5ad18b2e60b75c7297a998dea702451d33a052ed on Linus'
branch. The fix works for me (feel free to add Tested-by). Is this
already queued up for Linus?

Thanks,
Laura

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
