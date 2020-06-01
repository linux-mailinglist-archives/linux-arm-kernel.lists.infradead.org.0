Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 518831E9C48
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 06:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVhZ0T5ihlzlj7zdhV58HIp65tRxJEGc3qI4TeLZriA=; b=Y1KLCHBYe92tFa
	iyCVTN8/8V4KmriM0z2YK69PGix/UUmyfmV2BqCd4zHd8zujazn/XC9b42jTeKmQdZ2gKJiJ/7l98
	FFWr17EFITkhEfiw211Y2E+QQKyQ8IvTGkwby6OUVb7vUDjhxlPHD/iZZjje1HLx1cAwPZ/pYoKX7
	eYc3hERQKMY6XUStSG3Es94qdMR7RlDwwo0AD2pbYxn7DM0qvX1p44VLAvYIZhVstoYuqt0iGP9FF
	bGZgKT2q4GW1X4Kdn6IxaN6AseluEFYytQh2pvUJBNgRseyr1ua9EkKRylI4wNT56M2RDRNfN9r+6
	ME06GG+ERDxc3wKU+MfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbch-0005lr-H3; Mon, 01 Jun 2020 04:00:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbcV-0005kn-M1
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 04:00:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id j198so11149555wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 21:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=i0iFRUKIhMIn73b620xicHjGoW+z77B/xZwAWrbWKks=;
 b=XIsgxwNtx8vkGzYsgAp6FtVr27+1TVCIG4CzEU+9fqyI8eUqlQg1uf0yKxakkhRdG0
 LISvfnCKImmoKCsa/eZdySxR+FykrrFrGruGc8dfiuKqaNj/EDLmSaGgr+AND7c8OZh9
 mkxSHyLXA8Zw0P9N1bh+5A1qyz8dY6OZdcPfHbzpSw+Jkbm8121OuL6wXdpceWFFH/iH
 aZekmZpfVf++40S+laocP/7I5OuPzzpNg2TK5vWx8KJ6khEJHtoRLimQKtu+yxUDwuG0
 9tR1SJmidqXAB7R53D4/bJVv6tl8PnYzAjz1lM0ohPEeZXEvHaqAPvIOPnrvz1JaNePR
 w7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=i0iFRUKIhMIn73b620xicHjGoW+z77B/xZwAWrbWKks=;
 b=jKxkCez2k5JlIvEVVjlBTL8eVLtYU1ERthVs3QUGx+WzVZU+hXWUuQcwFxGpvbYvkm
 OY/8Znp3Ko2denLbmzMzn8eqFuxNnrg6VtBUloB2P2WS5w8FKwT20MGyNHXQuXGuy0m7
 C1kDYgwCQ6qyhXXrezOXwqntB8lICpPLekYTFJ4h6s/cboLGok2ZEo1QuQESbu+ihdTQ
 BDJFjkN94H89e2moNnrx4pW5YuyJQ4nysq+/KlhNG1nZD5p8Rd/mKa08KGp0C76a61/J
 1/4phuTDdejzjx8qJN3fwfQ+ETN47VYJh/ZSlaHO0uxQt0V2zxyygFss14CAtMbnSNEx
 Kt8g==
X-Gm-Message-State: AOAM5314hXvdE/rxRTf20AlxJR+iJK2rbcjc9E0rDkofXT+HVUSIl5m7
 xkt6XtHsuVclb9BTk1xiAzizUS3O
X-Google-Smtp-Source: ABdhPJwJNkNuJzxB72WtCVoph6PAL2vKZr7NDqkt6+sv4vj6xFStNvqxVokYBUkclWoXrlQydCmSNA==
X-Received: by 2002:a1c:44c3:: with SMTP id r186mr19345350wma.67.1590984012573; 
 Sun, 31 May 2020 21:00:12 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 q128sm9529402wma.38.2020.05.31.21.00.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 31 May 2020 21:00:11 -0700 (PDT)
Subject: Re: [PATCH 0/5 v2] KASan for ARM
To: Linus Walleij <linus.walleij@linaro.org>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
References: <20200412002407.396790-1-linus.walleij@linaro.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <107be5e0-3acd-1bf5-d1dd-e27f796e87d9@gmail.com>
Date: Sun, 31 May 2020 21:00:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200412002407.396790-1-linus.walleij@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_210015_738033_A894A550 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On 4/11/2020 5:24 PM, Linus Walleij wrote:
> I am trying to pick up this series.
> 
> I rebased it on what is soon v5.7-rc1 and fixed some bug
> or two (see individual ChangeLog on the patches).
> 
> The main thing I need to fix here is the usage of TTBR0
> in patch 4. This isn't working for machines without
> TTBR0 obviously. I need help with the right approach
> here.
> 
> I want to support all ARM CPUs that we support with the
> kernel and it is not far off: I tried it in Faraday's
> FA526 and it mostly works until we reach userspace
> and my guess is that that is because of the TTBR0
> shortcut it is taking.
> 
> What is interesting is that if I compile in the KASan
> test module into the kernel, it performs most of the
> tests correctly even on this old platform, so we only
> have a few things to fix.

Since this patch series has had many people trying to push it forward,
how about we try to get it merged as-is (minus bugs, see below) with the
caveat that TTRB0-less CPUs are not going to be supported for now and
later on, this gets lifted if we find a champion who can get that working?

I tested this on an ARMv8 system (Brahma-B53 CPU) and an ARMv7-A system
(Brahma-B15 CPU) with and without ARM_LPAE enabled and neither were able
to boot unless KASAN was turned off (outline instrumentation), I don't
even get to the point where earlyprintk is giving me anything which is
odd. Have not looked at the differences between this version and the one
I had sent before and have not hooked a debugger to find out where we
are hung.

If you have a Raspberry Pi 4 you could use it as a test system for ARM_LPAE.

Thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
