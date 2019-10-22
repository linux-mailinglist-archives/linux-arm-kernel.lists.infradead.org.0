Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147D9E0549
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GjGCNKWyTqOpQwKdCMP9dFgssIjkE8fKHdFT6v/xg6U=; b=dH70gUs2aWjv46bbR9tb5LjIr
	lQYwFOiRFx4p3TxbKnb05Socaq+JKomwHGm/a1szbdX459NpZGRfGXyN8S43rg4Jw5onqRnvgJ9kq
	BdxdiLuTi94CMdmjazebouVZUXgfy496zOMhJ0oDQkSKvVMlhJjksO9txIdLLRPhO6Y9CzZrCMrx0
	ai37D0Bjpv61VeAwM94Qcbh6e+6xnOl95jR8hWTJX7UGCLE5ZGXqq/BzbrzvfBoj8FLOgGgWg1VZV
	YZYi2GOZqU1mro4a4klxYdnf7D7GH3CXVFPJ0cCH73ZXJrd5WFBbmGUqQbrlm7+aUGFxGx30A7fCR
	9PpmwqLng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuNY-0003if-Bn; Tue, 22 Oct 2019 13:39:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuNI-0003i6-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:39:02 +0000
Received: by mail-pl1-x644.google.com with SMTP id d22so8388694pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 06:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gpoW/8Yw0CDfvnTYDUEt7wnlvPB+LdjenekF+dbtjls=;
 b=r3lN2fcNiqbiD+lTtxMThvS7h5kEpehwJT2wWH9MYxpdx0zW6ZvPe5+oJTGHBdo3UJ
 +1snUlb5BmZKfZgCMc5oHa9QCVpM51bJtLcoi0n8l6jvNxfYgPFgQ3xMC4wejMQvvNYf
 FLjLePAA2nsc9FCaZLwszr/yv2z8Vo+c37bA8ZqlWGieYmxcCBCFDjIlAayEvRnKlNTe
 rqo/FUiZITczTRPc6fHUG/C01orY7LXqFnZKXsZ7XIBhPyrITrbCxMUTxVQfktXKt10E
 YtnLrgW/UV4XeUX78ycvlYJllBR+2c+GHpwybsbZFCsZd91dCUD8z8jlNuKghFtR7G86
 EPSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gpoW/8Yw0CDfvnTYDUEt7wnlvPB+LdjenekF+dbtjls=;
 b=nPEa9vmQfZ4/6zSkp7YAebbS4JD3ycPnA5YsCRh8lUdvhqLzaBVg99Vbx67Rj9Byw2
 CqbMpvEiGOT1soAE/Ns9pVQmjYz5IKYY4vUDwP81dy+RdMOdaHvSa0ZWxS2hvD+lvSVr
 XxFODnCFE4gWcyYaKb3DyiFgNjaLndR1ooSGxMkeUSfJ4cCscBy6yVAeQJJ2LDtIatRV
 Ef87LP68fZFKrbwfOW3hphMMRrQEPe5m4g6bFzszz7fCr9HaZmZ9+jCSHT3DR2xgoE0P
 FTZfqa0wxx8O9MAk6Jn7AHFVBkgvmDXmtujk9FRlHmqyMdLdR/AnrDgIxkjFRZW8Gg7v
 a4Og==
X-Gm-Message-State: APjAAAXLlZ71YpRmohCfm2o26nO/vr+Am+/ypv5Q7Qnz/Opte22Gym6Z
 sOa95Pfsl15RWH0wnrM5yBrae3i9
X-Google-Smtp-Source: APXvYqxnblBiUF+4VE72i3RD2Q7pDJaYooI6GNAv8EneUhqFZsEv0k6WdGtSCJU5/e/gq6M4YVlHIA==
X-Received: by 2002:a17:902:d90f:: with SMTP id
 c15mr3753482plz.157.1571751540152; 
 Tue, 22 Oct 2019 06:39:00 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 f188sm22206087pfa.170.2019.10.22.06.38.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 06:38:59 -0700 (PDT)
Subject: Re: [PATCH 09/46] watchdog: sa1100: use platform device registration
To: Arnd Bergmann <arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-9-arnd@arndb.de>
 <bb4713a0-60bd-8d27-874f-e7e3a5adaec8@roeck-us.net>
 <CAK8P3a0GPVs+PqUwsL2H8VJqLh=MJnMTwPu9nhX+Nq-xiMS1yQ@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <21d72661-a4f1-d51f-ddf0-f8cebb984029@roeck-us.net>
Date: Tue, 22 Oct 2019 06:38:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0GPVs+PqUwsL2H8VJqLh=MJnMTwPu9nhX+Nq-xiMS1yQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_063901_030275_B09D7E62 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/22/19 2:44 AM, Arnd Bergmann wrote:
> On Sat, Oct 19, 2019 at 4:07 PM Guenter Roeck <linux@roeck-us.net> wrote:
> 
>>> @@ -319,10 +316,13 @@ static struct platform_device *sa11x0_devices[] __initdata = {
>>>
>>>    static int __init sa1100_init(void)
>>>    {
>>> +     struct resource wdt_res = DEFINE_RES_MEM(0x90000000, 0x20);
>>>        pm_power_off = sa1100_power_off;
>>>
>>>        regulator_has_full_constraints();
>>>
>>> +     platform_device_register_simple("sa1100_wdt", -1, &wdt_res, 1);
>>> +
>>>        return platform_add_devices(sa11x0_devices, ARRAY_SIZE(sa11x0_devices));
>>
>> Wouldn't it be better to add the watchdog device to sa11x0_devices ?
> 
> Generally speaking, platform_device_register_simple() is better than
> platform_add_devices(), it does the same thing with fewer source lines
> and smaller object code, and it doesn't have the problem of lifetime rules
> for statically allocated reference-counted devices.
> 
> One day we may want to replace all static platform_device instances with
> platform_device_info instead, but right now there are too many of those.
> 
> I can change this one to a platform_device for consistency though if you
> think it's worth it.
> 

No, I was just wondering. Thanks for the explanation.

Guenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
