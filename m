Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1894B78A7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjHJ3zyj760zrdQQcfUbvFjO3mq4EzeE7+mHeA+ORJ0=; b=O8t6jELRcZPo7w
	ThXtXHXLQbt7spLap+20nD54EpjM6Q6RqGT9oPK2iRO5vCyBaiWapCMMLiiETnv6i9lrl6VaSb+GU
	mEA+Uf/RobkzkBxd/i8t9OLOyyFFHMlluXs8i+c4rtiovfJLF4NCfLfXlYfjESPK1VJm5Lotv92rI
	ZXiHOLxgNmahtiHe0NPEl/hq7dSpD/Sqa04RkRr0HbL69QNGxKMGPM2HmvVn+pcXmVlihXDprgcR8
	Av5y2Bh+V3sMD/rDtqR/NgT9hD0i8EHE3wAU+TWQpnBCxSc/36Gjm2KkRJ5uw8NZjw2qw6fBFxnAT
	5WHDiFals3wPQPfVEAHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3oO-0005F2-M5; Mon, 29 Jul 2019 11:27:28 +0000
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3oC-0005AH-AK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:27:17 +0000
Received: by mail-lj1-f172.google.com with SMTP id k18so58190265ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 04:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PhSMztl9vtcPHrtCcvMgqxG7WnfxjbwUrZSM++0kKfk=;
 b=KoMasSFI+H5VDwxH/FlKwoXBibE/BL0F//Mrh/CYQcBs6ntko2vH4NSK3MY/7dXT31
 WKJbsxu3hLsMDKYw+5yTI/vZ/Qinrr9nkgij0JVqWyE0YFxeYWNHVvmINH7NLg+QXGgl
 SnfKYB4lIBKuncMOlXFlXsuhY8fzpUviBdhXm+GUQbYO7aOW5AO0xmj6wNhEhxntINvq
 2GQYDkGXZyLoO7tXQIMwooab2CyL/Q2N9at+etLz8vfnJx6hO8pzwWFf+sFwqxQt7CYP
 vWWnStJvNTSF4Bq/xq5SHEkz2MHH01Qa+7WiTDn/cUzdZFFwPXf5vqOVXcI2+nuPGgnV
 Xq4A==
X-Gm-Message-State: APjAAAWThtnqtG/chal9vP7EJb7eb81wl91mgOMzTU23EvqY9UkBFZjl
 7EkWIQQgz1dSwEoRaGhzyMK46NEpvaLIPS2uvvO5Ww==
X-Google-Smtp-Source: APXvYqwmGzre91C1xV6WEc9bvK8y6PD3NAo1Y9stcZDW0EJEmZA86HhxhvVEUcD8QyRTdmFfYCdQ0561v6Et3EZw+5Y=
X-Received: by 2002:a2e:9643:: with SMTP id z3mr58628311ljh.43.1564399634664; 
 Mon, 29 Jul 2019 04:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
 <20190729095047.k45isr7etq3xkyvr@willie-the-truck>
 <1cfad84e-5a98-99bd-07c2-9db0cf37292b@arm.com>
 <CAGnkfhxXHPfMZVMy4Wjmy39E3Oh2U8FjVU8p8PprCnj5QFLMEg@mail.gmail.com>
 <cc6f9c8f-a4a1-7c71-1f89-72e1e8dd0cc8@arm.com>
 <CAGnkfhx6St+MYQuR_Duguk4Q9ieuL7sLCTL=G76-eqUcCAbpoA@mail.gmail.com>
 <c8581164-168d-a4a0-46de-4bdd7f7dedbf@arm.com>
In-Reply-To: <c8581164-168d-a4a0-46de-4bdd7f7dedbf@arm.com>
From: Matteo Croce <mcroce@redhat.com>
Date: Mon, 29 Jul 2019 13:26:38 +0200
Message-ID: <CAGnkfhyT=2kPsiUy-V=aCA_s-C4BXgD++hAZ9ii1h0p94mMVQA@mail.gmail.com>
Subject: Re: build error
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_042716_362190_BED15760 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 1:18 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
> Last but not least, are you on any irc channel? Might help speeding up the
> debugging if we talk there.
>

Sure, I'm matteo on FreeNode, #armlinux

-- 
Matteo Croce
per aspera ad upstream

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
