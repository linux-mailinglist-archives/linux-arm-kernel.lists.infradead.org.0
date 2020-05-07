Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C591C9B3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 21:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OWe5nUebpGc1iPMKTMlJzrk1t/WtmkrsX7sdZm8ARU=; b=VYuJ9AHagLUFmp
	OSP3ZKmnF/BuZSlP0ru4kE2i/WN9r4Bgh+MNElSBTDPJh67PzoiAdSrVRb91ZG+PG4s0hZsNNX4E9
	/LfEAMYwI2w+8Gd2qLaF9kGxEAtIxz4rgQBKyK9Ffk/0UD1G4y78lUHe4ICKOco4M2nC6D3twp6lx
	fysw1n8f/eEhZnEMjyXJchc6M8DNAwg20qgdGIFj98/phxPc1souetUhsRJpKMQX5ypaTbvRYqtSf
	ajrgVEW7zgdtYH014MOAFNYM2e7D6ezaKTGIx6pEr+vq2zwM+JKskJQU1RJB4+nCj0EmYnF9XEjKG
	v/TrEj1S2Jr/4a7fCEbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmMA-0005Gm-A2; Thu, 07 May 2020 19:38:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmM2-0005GJ-IH
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 19:38:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so7825745wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 12:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tCa2iyU090PRG7nqaEHUGgigRMwS3+A15dirQJhZy6Y=;
 b=M1Ov5LG90uDXiEFR7+kdov+y8ucPMSJlLbU+UM83E2N0nYX14nG7Fa0xadeWBUZPEN
 Jvuz0D8GuFZJzbXo3N+juSp6KLDUco6b8Y9RslnerkP9Mpx8z28yGoljLSZbfRk0BDuc
 o3kkkC6wBVtLG4SsNznmXDSLmU1Nabymiz2Zhpa85kjVtn8FHOl0gSGlHk0QhUNFgUvi
 42/quw1mFapaRbfrDAZJwhJ7XQ9K56NFUaSlc0u2okZzGvGnWhhRReObrFMUfrVDTBcq
 iBqS0R87Me7oRAC1YEHfKZdJfaNSCirHo6swHyyzyOSDlSFn18GeG5kxbKHmZ4BNbBvc
 4h7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tCa2iyU090PRG7nqaEHUGgigRMwS3+A15dirQJhZy6Y=;
 b=qvejE8rOdVhawZeFLI4/89lVRls9vCnDOwH+xYVOSS11xKiWF6h45rtyu0TlGFxoKX
 t8aiWiS8QqGwwkeYSaKvOdikdN4rWR+YKSrBp428IdMhY6Op8evNio0aQkvSuBsv82eC
 QIvkjVlChIHLeP55bc3SKGJz9d5Au7VeljltYe9SU3noY7j0kxsDE34UNb+etIdkZ7N+
 /yUHQK2usGLTnOOvyd5RrECxcYpcNKO3X1KND5pjqBA8Jzu9n8SmZ/h7YPRa6yc6xf1t
 RdYBPxTsPuG7NIkVeLoorIMJsJrGw+6VOnzMQ/VZBo3o/aLYLHzSC9VW99rDDtZT4tYQ
 neHA==
X-Gm-Message-State: AGi0PuZCuGkbWH5MfZHTqp0LK4BeW8g5k0f4jbYOiefLo7csuku0Rfiw
 zkTHZ67aFWtyRY+AZyR2QgM=
X-Google-Smtp-Source: APiQypK3F7nQSO8oFUrOf7WBax7sb90ccvLSFYO1wQFWkv8HQ6iyxvHCPghmafAGLwxuHQ9Q2XxTwA==
X-Received: by 2002:adf:ed82:: with SMTP id c2mr18485730wro.255.1588880323603; 
 Thu, 07 May 2020 12:38:43 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n6sm7671942wrt.58.2020.05.07.12.38.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 12:38:42 -0700 (PDT)
Subject: Re: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
 <20200507103039.GR1551@shell.armlinux.org.uk>
 <3e7ee3ba-fae9-0ec3-fe1f-c076fc28aba9@gmail.com>
 <20200507185030.GT1551@shell.armlinux.org.uk>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <f252f8db-3047-ef5e-9cde-222e4282ca9d@gmail.com>
Date: Thu, 7 May 2020 12:38:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507185030.GT1551@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_123846_602150_CBAE76DF 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/7/2020 11:50 AM, Russell King - ARM Linux admin wrote:
> On Thu, May 07, 2020 at 10:25:16AM -0700, Florian Fainelli wrote:
>>
>>
>> On 5/7/2020 3:30 AM, Russell King - ARM Linux admin wrote:
>>> On Wed, May 06, 2020 at 04:50:08PM -0700, Florian Fainelli wrote:
>>>> From: Kevin Cernekee <cernekee@gmail.com>
>>>>
>>>> If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
>>>> then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
>>>> choice.  This is true for all of the existing ARM users of
>>>> ARCH_SPARSEMEM_ENABLE.
>>>>
>>>> Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
>>>> us from ever defaulting to FLATMEM, so we should remove this setting.
>>>
>>> No explanation why that is desirable.
>>
>> This was explained in the original submission out of which only the
>> first patch landed upstream:
>>
>> https://lkml.org/lkml/2015/6/4/756
> 
> Sorry, I don't see where.  The message you link to is for patch 1.
> I'd say that the reason only the first patch landed is because that's
> all I was happy with.

I misunderstood you as to why the whole patch series, but now understand
you meant specifically this patch, let me try to dig up some of the
history of this and see if I can provide a justification, else, it
should be dropped.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
