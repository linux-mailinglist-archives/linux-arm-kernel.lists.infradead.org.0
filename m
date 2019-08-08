Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910A0866D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qTKzPFU9U6mgf/vhvrj5DC2EwTBbEzJ95mK8tT7WjGw=; b=QPCTAN8g/0A6JYnFxP4QXxiQG
	4cnNSMlP7FwjgRZgweaGsjfIvV2AmJY5ezIVKXnm6POnG8culp83gRLnywTved+YERPSpyBdlYaIS
	c1MdiQFHxGD8uf1aNAQZynOAxf2q5hXYN86Lymyhth1AGPVIRgYHCPCsa/FniS0joqXwO6df2r2uZ
	/JZrEesDpesZ0neWWHgPHjHML4rNAPmdff+cJ/V8UMKuikbNmwdu0daG9TLqFeLA3exQDoEjFOd3+
	XnE0tixyOEjUI8WF0aaQKMz2uem9mAt4+EYOgN7HRrlJ/bn7w3pk0F+AlpywY4po783Le0vIYJKTu
	oomab+kjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvl8W-0007G4-36; Thu, 08 Aug 2019 16:19:32 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvl8L-0007Fh-RT
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:19:23 +0000
Received: by mail-ot1-x344.google.com with SMTP id n5so120939446otk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 09:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FU8XUzyaQh7MQfiScoIWAAgSwVcZ3yJJ6Z740yI2P/w=;
 b=Fg0lq8lhCYMlqVqDVtdTZBoB/BBwkniEBH3I5RdlhwDD0X7d2CFbs20ErBX9EC7+kA
 3zw1sDaQQb7OtTRfuys8mqnVqjgg4d0MFZrTZIRI6dUpQTwrN6ALi1O3VtLEzIEUZUjA
 hEYPQ4FkjTLAxTZ48RK/f6whP3ZTp4njqU1nCQsJhE2GgO0vHYUBsCwJYqQ6jBv4Qxby
 Cg9xbe2UOKz4ycZiYoYc/CjneZXZ58RMDr6bihuzx6V25IoqFGcoNTH14f8zeXfjvWSf
 AZzAf0ExppiMqPclTEStTBEjOHPrGTnrPPBJ9xPST8BqDJpzPg8MkHDAXr8sUfkC+ubA
 otMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FU8XUzyaQh7MQfiScoIWAAgSwVcZ3yJJ6Z740yI2P/w=;
 b=r7pLsXTEBrIEpabKYYwTk2FKZLGvShNj3fsFd4yfsEdyTyvUPB9XNl6xCRoB0Sw/pv
 7LxkV6y9/4oFVKDYZ9lhAWEpuq/63QdhgTUPmgxMwvxZ3XF5uhMVBmLA/M0r4A1aB6j0
 Eb3IXs15ht+qWU8YMdCOOAfY+jxTfD6lCaF/FS3eM3U7SoAY0Je/8XRtEj4nxWekZGxu
 YIdcS1CroUu7Hh07peANlKsw9gHljYoD5qVxZ/vsDd2hBIMpMLiOJZRsQNHSPbUiYHch
 1sBR067//3ckWnUSxjsIz4vX64H0W8Iz5jjl6KWfRHELmsJYiLUC7U6Vyyoq0aUJB07+
 vzkw==
X-Gm-Message-State: APjAAAU3i7gb551k0h6uFDsAIyTOn0eupZGOH/PGxv2GMwQv09cDnllP
 WoR+lCuTGViTnrm8xouLFuFKycb8
X-Google-Smtp-Source: APXvYqxKi/YFHGhJplCw3nqcS6tme56OdjatDbFvv7hq+8xng2X8A9WALQugLeJitUJMMJWPVm3Gyg==
X-Received: by 2002:aca:886:: with SMTP id 128mr3287213oii.73.1565281160014;
 Thu, 08 Aug 2019 09:19:20 -0700 (PDT)
Received: from [10.15.211.16] ([74.51.240.241])
 by smtp.gmail.com with ESMTPSA id h11sm31281859otj.76.2019.08.08.09.19.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 09:19:19 -0700 (PDT)
Subject: Re: [PATCH] ARM: defconfig: lpc32xx: enable lpc32xx GPIO driver
To: Arnd Bergmann <arnd@arndb.de>
References: <1565186675-1856-1-git-send-email-slemieux.tyco@gmail.com>
 <CAK8P3a0BiOoCg4y-buu=vpPGp56w7HKUVu8gA2jyeOph11U-Kg@mail.gmail.com>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Message-ID: <6913a446-9500-c1cd-a8d6-70eb143fdda0@gmail.com>
Date: Thu, 8 Aug 2019 12:19:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0BiOoCg4y-buu=vpPGp56w7HKUVu8gA2jyeOph11U-Kg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_091921_913047_5D5FC82A 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [74.51.240.241 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sylvain Lemieux <slemieux@tycoint.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Vladimir Zapolskiy <vz@mleia.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/8/19 11:06 AM, Arnd Bergmann wrote:
> On Wed, Aug 7, 2019 at 4:06 PM Sylvain Lemieux <slemieux.tyco@gmail.com> wrote:
>>
>> From: Sylvain Lemieux <slemieux@tycoint.com>
>>
>> The change that allow the multiplatform build for the lpc32xx
>> platform add a new kernel config for the LPC32XX GPIO driver.
>>
>> Cc: Arnd Bergmann <arnd@arndb.de>
>> Signed-off-by: Sylvain Lemieux <slemieux@tycoint.com>
>> ---
>> Note:
>> * This patch depend on the following patchset:
>>    ARM: move lpc32xx and dove to multiplatform
>>    https://www.spinics.net/lists/linux-usb/msg183095.html
> 
> I did not think this was needed, as I added
> 
> config GPIO_LPC32XX
>          tristate "NXP LPC32XX GPIO support"
>          default ARCH_LPC32XX
>          depends on OF_GPIO && (ARCH_LPC32XX || COMPILE_TEST)
> 
> so when running 'make lpc32xx_defconfig', I expected the
> driver to already be enabled. Did I miss something?
> 
The GPIO driver is enable. This change is optional.

I added this new config to the default LPC32xx defconfig
to keep in sync with what is done for the other LPC32xx drivers.

All the LPC32xx drivers config option are listed in the defconfig.

>           Arnd
> 

Sylvain

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
