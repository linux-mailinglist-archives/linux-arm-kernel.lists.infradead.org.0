Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D1E17BC18
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x66sxn/Ld6cI9h6oI2UhgF7PiIbK8m8yQAoavm2l7Fs=; b=VIsnVAyyJXYrL6
	jTqvmq8dXoVJ7eky6DM44DtQwdOm3G3cuUrUb2DN0SuqOHFBlLXnuUWgOtCcX4bdlBCher5ibqbyp
	IugFX8pWQlXpbnvG1XcpunETuaNesIMyzFryv4BZPwGI5B6xy94r/hs98U94UU/3MTmYFzo5KF7jM
	MSrjyvXes6e/M1ow/AzcRbpHyG1yzMlbqRGhgqo5XEPhcWRePVbmMxtal4b9uWz87LkO6iZav07Ar
	ypwQfrvqng09+IBFTEFxyj1xlv+iyX7rhoIyieVdAfHUPwxj6RNck+TDc3QGRx7rTjaZ1zPD5EWOA
	ZB5bQSQsiAh49JsBMU0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABTH-00085m-Nm; Fri, 06 Mar 2020 11:48:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABTA-00085E-NL
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:48:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E67B131B;
 Fri,  6 Mar 2020 03:48:43 -0800 (PST)
Received: from [10.37.12.171] (unknown [10.37.12.171])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6294B3F6C4;
 Fri,  6 Mar 2020 03:48:41 -0800 (PST)
Subject: Re: [PATCH v6 16/18] kconfig: Add support for 'as-option'
To: Masahiro Yamada <masahiroy@kernel.org>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-17-git-send-email-amit.kachhap@arm.com>
 <CAK7LNAS63ed8zfoKukgHHmqVNEptXPh8XJTv-Zkh0ba=fLN+XQ@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <8a332026-9c28-f7d5-95d4-3c44275fcf72@arm.com>
Date: Fri, 6 Mar 2020 11:49:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNAS63ed8zfoKukgHHmqVNEptXPh8XJTv-Zkh0ba=fLN+XQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_034844_806043_892E3128 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Masahiro,

On 3/6/20 11:37 AM, Masahiro Yamada wrote:
> On Fri, Mar 6, 2020 at 3:36 PM Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>>
>> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
>>
>> Currently kconfig does not have a feature that allows to detect if the
>> used assembler supports a specific compilation option.
>>
>> Introduce 'as-option' to serve this purpose in the context of Kconfig:
>>
>>         config X
>>                 def_bool $(as-option,...)
>>
>> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
>> Cc: linux-kbuild@vger.kernel.org
>> Acked-by: Masahiro Yamada <masahiroy@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>> Changes since v5:
>>  * More descriptions for using /dev/zero.
> 
> 
> FYI:
> 
> This has been fixed:
> 
> https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=3c968de5c7d1719b2f9b538f2f7f5f5922e5f311
> 
> 
> So, this will not be a problem for the
> future release of binutils.
> 
> Anyway, we need to take care of the released ones,
> so I am fine with /dev/zero.
> 

Thank you for letting us know.

I did not realize it was a compiler issue otherwise I would have reported it. I
thought it was a mechanism to prevent people from trashing their code, but
thinking at it more carefully, for devices does not make sense hence it is good
that there is a fix already.

[...]

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
