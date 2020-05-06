Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 501351C6EB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCGgAkAR5MzXDFf7TkFR5rYJ9c90sRSeHTIrJ7O7wfI=; b=p2peu0MddSiFpA
	uKwtFfovKYcaPBV1a5pM2SXHNpC3SftCp3baIQ6IlEC/+1Cz8qqzwc3ZVBxh0t5qlpFLncrVzNMoL
	gsbGVf+1b2tAmn/qTr/3GZ5kIMHQ960TcCy1YoH89peVVNXF/K+APGvQ/gX/w6r7/DqhY0ze7wbmw
	aMChWn//4ncW7H/iwteoGe6Ft6Pricq5ngXu4+Gi3SlixI6YGr+v0DGW/RAEyr3neKs9dqY5yuce9
	UgYqXAmnVZA8f39jJaBOo+6kwyhf30cNpwLaCtgyUymwo+645TMvEedHC+1ysOVOrui9Joybbtsd9
	iVcUSEyA6PEFNnh+4sqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHbE-0007gZ-VY; Wed, 06 May 2020 10:48:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHaU-00077E-Q3
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:47:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so1608899wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 03:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YMCXD5LGztBg7JfOelcWwNhCDu7FuBBcxRsV60XtEAo=;
 b=Y8WXmokd2pErbDdcDf7F3cP6PmYX/GsgXwL3h9RazlUnQtnY7Tlsy4Yjn2lsNJcFp2
 rC4fLZAokmrD9jnz4Vamu/M6qB1P+nX8X+VrDA0cq6+wS8Lzb3EAf8ggXJtEytELHf3y
 r/WdWRUdpK9AddGoj+2jbiQc7IhQ4fJ3oRC1Rtrke5jiboKh6vHfqm/D7zZasfdl+Nz4
 hKZojbQzSZUo74WTECEDGBYET5BIwbRZRUM5T1lqWw34fxQNKTkVK2A9etDbE2azb2kS
 lkn0PZ+QmGUAkiAarzXu2wIdqVPu1a1+BZ0SQolXuQn0f/l7cOfdGVwnyknKXW9K3NEp
 t4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YMCXD5LGztBg7JfOelcWwNhCDu7FuBBcxRsV60XtEAo=;
 b=GK6euJXpQ/GEh+uVJSSGXRGgGGSZLiwVCawELcnCKpTOZEdlNw8Bm0rKahSNa0b8HV
 TvGqpWkPIFVdvd8DKdr043WpRcIqMc8iUiumCqfbVcdzQrf2TAYAgRGBB2Kk0Ab7Mm5O
 BhGBnaQzCMS9fyH1+5PkUN2gs2UKqSJUT1j+TbCMYlbBxcagCXWJsx2imzPYt3zkxN47
 YBbJuAshANX8niw4A88ZPzF1wbm6hRgzMMl8dGC4QmYISzVWqmxaRsGWZWuZnwcx5Q+f
 uA2ObvlT9u7au8EkwgPSZIJBrCr92Z6w7glbMyb+xqiRglZQAbe2jJUqvIFz6n1hZGjS
 1qSA==
X-Gm-Message-State: AGi0PuaH+eO8XcMQpcQCxRF1s+SiBWBm5UBm5ZQkt93aoEBlBgpctJVa
 DJdx1M/oCtJwNax9cdCPfGFDbpNa
X-Google-Smtp-Source: APiQypKnrRvA12nCVu7Igad+mH9LiQdBaizE/qeWhqt8uv7hWDVm7SfWfcy1W4zqCKbhI6SrQaSPUQ==
X-Received: by 2002:a5d:6504:: with SMTP id x4mr9778390wru.340.1588762054390; 
 Wed, 06 May 2020 03:47:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id s24sm2488066wmj.28.2020.05.06.03.47.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 03:47:33 -0700 (PDT)
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Will Deacon <will@kernel.org>
References: <20200504153214.GH30377@arm.com>
 <20200505104454.GC19710@willie-the-truck>
 <20200505124351.GF1551@shell.armlinux.org.uk>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a86c4f3e-b50e-0541-074f-1bfcb4a93b5d@gmail.com>
Date: Wed, 6 May 2020 12:47:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505124351.GF1551@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_034738_870987_A7D224E1 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/5/20 2:43 PM, Russell King - ARM Linux admin wrote:
> On Tue, May 05, 2020 at 11:44:55AM +0100, Will Deacon wrote:
>> Michael has been nagging me on and off about that for, what, 10 years now?
>> I would therefore be very much in favour of having our ptrace extensions
>> documented!
>>
>> We could even put this stuff under Documentation/arm64/man/ if it's deemed
>> too CPU-specific for the man-pages project, but my preference would still
>> be for it to be hosted there alongside all the other man pages.
> 
> Stuffing random things into the kernel tree is painful for some people.

Yes, and too often not easily noticeable for user-space programmers.
> 
> For example, if you cross-build your kernel, then the stuff in the
> tools/ subdirectory is totally useless (I think everything except
> perf) because you can't build it.
> 
> Let's stop making the mistake of constantly shoving stuff into the
> kernel source tree.

Agrred.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
