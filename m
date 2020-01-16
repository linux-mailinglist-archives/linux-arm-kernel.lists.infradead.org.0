Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A2913D3CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 06:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PScc/BJ2XSKIQFbZF9wT3V9g+50DdidG9q3QZxekbYc=; b=mOI0dwC113Z/i9
	z0xPBq4XJRt4SpSS2u4hZ2JSxFPf88nzztXmvMy/UoSwAdHclyMXMyohtdJge3RCeJkGYa2dNRu8s
	Wx0QJ1A4xvHgen2KrWZ/FsOxMbvLtQ6N0WK2d/LnOanjOMYJA2zouhUq6ZlKtUqF7yzXwXz8SW4LA
	lTB49iN4qMT8cFGU+jQXTOhPNHEwYAFvIdhWvZtGv/RTE3dPhmGGHKik3X5YunYb+Sde2i62fO+2D
	X5JRCrqCe6q8aNXtn9QAcmBDutCF3G5oSseb6L4+f23iTvZaov77lNXP2LZZsC2E8FZXFsUgSerok
	1T0WWzGgrVdqdYELaG6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irxne-0004JX-UH; Thu, 16 Jan 2020 05:34:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irxnX-0004J4-HU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 05:34:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id s64so9303638pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 21:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=OjhLrwSUixWKfHPYVjag4pJ4Twky6Gk6dHImQohRolQ=;
 b=ZgcbuRsf2JHWAKem4b8L9QCIstpEILQ+LtgpSvVyEIFmuJkHkq4wV3UhW+NB3I/p7L
 g8PhhD9MkXc8GNcgMLwPiGkXbVvTxOXXqfpvUxWGjbrkeerRAqqt7CgHVi3clSMsX94r
 2eu6s/C0/gJJDbr9MjhIhO6KsPExdslbKPn1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=OjhLrwSUixWKfHPYVjag4pJ4Twky6Gk6dHImQohRolQ=;
 b=KfTnpa/vT/T8GHtw9bCyKqlRye05tzxq7bMbC3YFwJamPECMMjvzf6AD5yPBGiviRi
 wz2DIyNt7/Dij/3p/wwYHwvI4bOQTPgP6cspNrbbpqZfZCo8YKORIGvRlTMffaXgQS8T
 yV1OiGV8ZB9mxU4Tjb2fHsecI7am4xJcPXZ0wVsM0lTX8K0Knt/yG6/8OfoNdQTF7GUe
 afsrDtv/ZFtsaUwJ3kVE0vZkGQCy0PdFcjozo9pXoZRA2N6KliEcmAFxuYBedy/SE+cc
 OrzsTO8eyuXfy+R8JThfg8nfQAujVrMUnj7aGokwYTRWyyq4nQQUWkg9/I5X+Fl4+VYx
 548Q==
X-Gm-Message-State: APjAAAUB0rTJfGMpEeG/VBINZzHelDCOFsGIjYUsGFb0lhRZBWJm/np0
 0/ftWNHJyxOLaFCzbFRvjrzLCQ==
X-Google-Smtp-Source: APXvYqxrN0+qBEVUpua94Qb8xZteFhv2nkLn9S7EhrqzK/2c5Vhq+y51pzR4+MJYtOWvoNtguucHYw==
X-Received: by 2002:aa7:98d0:: with SMTP id e16mr34318946pfm.77.1579152866617; 
 Wed, 15 Jan 2020 21:34:26 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-097c-7eed-afd4-cd15.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:97c:7eed:afd4:cd15])
 by smtp.gmail.com with ESMTPSA id p16sm24333466pfq.184.2020.01.15.21.34.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 21:34:25 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: Dmitry Vyukov <dvyukov@google.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH 1/2] kasan: stop tests being eliminated as dead code with
 FORTIFY_SOURCE
In-Reply-To: <CACT4Y+Y-qPLzn2sur5QnS2h4=Qb2B_5rFxwMKuzhe-hwsReGqg@mail.gmail.com>
References: <20200115063710.15796-1-dja@axtens.net>
 <20200115063710.15796-2-dja@axtens.net>
 <CACT4Y+bAuaeHOcTHqp-=ckOb58fRajpGYk4khNzpS7_OyBDQYQ@mail.gmail.com>
 <917cc571-a25c-3d3e-547c-c537149834d6@c-s.fr>
 <CACT4Y+Y-qPLzn2sur5QnS2h4=Qb2B_5rFxwMKuzhe-hwsReGqg@mail.gmail.com>
Date: Thu, 16 Jan 2020 16:34:23 +1100
Message-ID: <87zheoj76o.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_213427_583242_5DC82C84 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, linux-xtensa@linux-xtensa.org,
 the arch/x86 maintainers <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Daniel Micay <danielmicay@gmail.com>, Alexander Potapenko <glider@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> >> +/*
>> >> + * We assign some test results to these globals to make sure the tests
>> >> + * are not eliminated as dead code.
>> >> + */
>> >> +
>> >> +int int_result;
>> >> +void *ptr_result;
>> >
>> > These are globals, but are not static and don't have kasan_ prefix.
>> > But I guess this does not matter for modules?
>> > Otherwise:
>> >
>> > Reviewed-by: Dmitry Vyukov <dvyukov@google.com>
>> >
>>
>> I think if you make them static, GCC will see they aren't used and will
>> eliminate everything still ?
>
> static volatile? :)

Yeah so these are module globals. They'd be accessible from any other
files you linked into the module (currently there are no such
files). They're not visible outside the module because they're not
EXPORTed.

Making them static does lead to them getting eliminated, and 'static
volatile' seems both gross and like something checkpatch would complain
about. I'll leave them as they are but stick a kasan_ prefix on them
just for the additional tidiness.

Regards,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
