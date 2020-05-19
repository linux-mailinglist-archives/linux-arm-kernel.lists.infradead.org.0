Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F209B1DA146
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZLQZ5LnFvnYpmWYlIJp2tC7oXD3vXkPG1cPsYu3WHE=; b=O35EC0lLzoO5RO
	ZUWyEwIIu0uewzHmIpj+6wrKlV6lHvol7pSvJIWYKfXrS2tK6+QNAnkgfdeHfuxN1UdPzh6QTKh55
	/etiQumMtUF4yGOWlKHfiOBhBjfxi64edin5nIzz7J32JN6YLqGHYnIGKSejT9K9nc3aOR8cTqmJ0
	JqSgXnMwQnRD4WKMysudo87ZzQrx20dYIyIAc8XYCcreys4tss0cnI+FNlh697YaCro3Dsn2OeW6h
	pKmqJKI2MDdpbLwtGS6m1UFzMDegpvxTDeRJszXp5kLMeIlMTNkubbVl4/F1U7lt1OA7qRXYQVmEg
	XFNT8lrm3jbxyNMZg57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8Da-0004B6-6X; Tue, 19 May 2020 19:48:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8DP-00049t-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 19:47:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id f15so322444plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 12:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CgyntvvUzH1XXLBzT1ZgjwhZo6axGQJQNJMNpQq/mjY=;
 b=p1lO8gQM6mxvNv1BlHL2svVHbsP69QZ+XlG0COlRjlYM1DGwsqpnqMh/39++m5KE96
 9n9ZehwfzYN68t7s0KmT0fNOdJ850WfDjLWMRxprnwcCwXNUa+oe4f7TLA117mDNkBiY
 Fy4wvZ/eetly/jy2W6QHjqCgRMNox+JXoD7UOl+aDpZPISswLph6t/i6Szubr3feo3H5
 22bmwheyp0Vyy0Jq1xHQ/y9ulpgwj32vBWubfmcAokQg8qPyC16CdKJx8pSM0bZdMn62
 1+avZfYvheGKN0BzDIFCBnObRRrfeeNSFzCkEPoAms2Dj7pbE1prWTkrtEEQ7Kdpf5do
 xfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CgyntvvUzH1XXLBzT1ZgjwhZo6axGQJQNJMNpQq/mjY=;
 b=ts1fMz75UFIDfCPe31xbUuWeCDkyzQ5lW53T6jJA7tePSzMWGNgenL/Zeu+NNSmCs9
 RK1JAeT3QBEHS+GXIvtUIsyCon57MO44qPjYUKnRqzpXE9xHHGJjavTz3X+EZ2Wlb1hc
 yRHv8AT0ICmE+7kL/chV79cjWAe5clCMXS5kcJB3tciGOeZuoeLRW2yYd+Qck8WJLGAX
 btQbQ6fxxxIdfbArh+m8gnDT9GO+OF4xRCGEvOuXDHLl+7GR4BrKJ08eP9pMOAksAgNd
 TSqi4UDKPObnorDSavadFhhgQtEalC66gLkMyroy2OqLA6eFTDhVw7Ez6xyy8Qb7FO1W
 2oPA==
X-Gm-Message-State: AOAM533T8Hp6pABUXyy4i5fNjMgoxOoR+Z0x48D3AO5XAuT1/2OKVMBA
 bqV0roc8ROzXFJCJCZUCffSsenmO
X-Google-Smtp-Source: ABdhPJz81uFcj5ZQa6mkGTcmojKcSVnPbx9vOLpey0COrD8CM1hoAIfQebh1Ek7hG9dQucZqv5U15g==
X-Received: by 2002:a17:902:c281:: with SMTP id
 i1mr1004179pld.177.1589917671065; 
 Tue, 19 May 2020 12:47:51 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u5sm236045pfu.198.2020.05.19.12.47.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 12:47:50 -0700 (PDT)
Subject: Re: [PATCH 00/11] arm/arm64: Turning IPIs into normal interrupts
From: Florian Fainelli <f.fainelli@gmail.com>
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200519161755.209565-1-maz@kernel.org>
 <d1ac7873-0f02-dbe0-dd3c-4fd14a87cf03@gmail.com>
Message-ID: <7b06f351-40f3-74c3-5d16-d7d58ab490b6@gmail.com>
Date: Tue, 19 May 2020 12:47:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <d1ac7873-0f02-dbe0-dd3c-4fd14a87cf03@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_124751_903713_9D1B86FF 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Russell King <linux@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/19/2020 10:50 AM, Florian Fainelli wrote:
> 
> 
> On 5/19/2020 9:17 AM, Marc Zyngier wrote:
>> For as long as SMP ARM has existed, IPIs have been handled as
>> something special. The arch code and the interrupt controller exchange
>> a couple of hooks (one to generate an IPI, another to handle it).
>>
>> Although this is perfectly manageable, it prevents the use of features
>> that we could use if IPIs were Linux IRQs (such as pseudo-NMIs). It
>> also means that each interrupt controller driver has to follow an
>> architecture-specific interface instead of just implementing the base
>> irqchip functionnalities. The arch code also duplicates a number of
>> things that the core irq code already does (such as calling
>> set_irq_regs(), irq_enter()...).
>>
>> This series tries to remedy this on arm/arm64 by offering a new
>> registration interface where the irqchip gives the arch code a range
>> of interrupts to use for IPIs. The arch code requests these as normal
>> interrupts.
>>
>> The bulk of the work is at the interrupt controller level, where all 3
>> irqchips used on arm64 get converted.
>>
>> Finally, the arm64 code drops the legacy registration interface. The
>> same thing could be done on 32bit as well once the two remaining
>> irqchips using that interface get converted.
>>
>> There is probably more that could be done: statistics are still
>> architecture-private code, for example, and no attempt is made to
>> solve that (apart from hidding the IRQs from /proc/interrupt).
>>
>> This has been tested on a bunch of 32 and 64bit guests.
> 
> Does this patch series change your position on this patch series
> 
> https://lore.kernel.org/linux-arm-kernel/20191023000547.7831-3-f.fainelli@gmail.com/T/
> 
> or is this still a no-no?

Our firmware specifies SGI interrupts with the first interrupt cell
specifier set to 2, so changing GIC_IRQ_TYPE_SGI to 2 allows me to use a
nearly unmodified firmware with your changes, sweet! I know this is not
supposed to be used that way, but the temptation was too big.

FWIW, on ARM64:

Tested-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
