Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0B4FB53F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:37:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZNpDvdCPB1QMDtmcOwfkjVt8LyVqLaOMUysjpzSQBE=; b=WYWoEbE2YCPBrx
	WNS7z0twzpda2Xux3s3Zf55d2mlYdPEWzlLT6C3JRF+65Pul2cWx1bZ3a6Ns5Ftm2w06aY7LvqvDy
	7YVRoc5Lf2+Z4Rvfkv/ATuNc1amUCWSQyoYpwTOvXodU2bhl4EEgAM63PHsP0rzprmJfStby+Dsbk
	UVyXUo0UxMqQwbMNFWVCLKHBmqjr6zWIJRLg6xMXCxdSSwRFhk2kTnKle7jv4wfO4rpIvoLn6ndFk
	4+HzFDHKCf1TSTqP5LZ8ZWijZM5AXLhnZeE6n93eTuZ5uPJPR47GIYTWV89O5qE5wzOsS1JviBDSP
	W7H7ROv0FN4mFGOfQzOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvdp-000858-LT; Wed, 13 Nov 2019 16:37:13 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvdd-0007v2-KB
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:37:03 +0000
Received: by mail-lf1-x141.google.com with SMTP id v8so2464228lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 08:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZrrJxUm37MwzOHZARPAtPN97Qeo3bve+3YkG041g53s=;
 b=Mn6BNFnYW1bkG15A7Sor9ynnXRgzP8PN+BRA0Iqrx/Fygjwn/rTGXLTIJm35Sniesy
 cIGkmDclUGM4VNAEt5mOIOTLVdMJHHgip/K0K8i+kNa+1z4OL7zelRz1oW/0HveIQiRT
 cnEhwtm8sDkFtYLDnz1AlwNWC51Y+epmEIytw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZrrJxUm37MwzOHZARPAtPN97Qeo3bve+3YkG041g53s=;
 b=D92CVWTKplRjWrY4tlKIB6aa04TZutsM9t9+GI/84QxJx+HmSmnFnTVO7EgLqfRDmk
 lyy9QdM+GocCkiBI0Nff7KFcrNuzF+kkwYYq2VJAwIHALBeFwducGhBX++Z5Hw0PKQcX
 UMelbSN91eTluh4zYjgLBsx87o8wdqxTlm0IHa4tpXIr6hNsXq3wvJHJHOOis5soegmX
 HmYmKWwSP/ZfKMlrbHoCPd+ltdK6u9LFtnzdpGJ8r9EJ64/dvc5AFpgVS0FcCR6UWY6C
 o0TEennx3AIuaRk2OHWwhwhN6TqoVgIABqETUMPU7UE0crQ2qU8Iweh56ENYdSzyDfJC
 +ngg==
X-Gm-Message-State: APjAAAW8tqzv8MQ9Zp6IbETrSqj8tb7X6p2liMpjOhDAtmSSbgfHyRyD
 KlLdHy2GwV32x1t6KbLR3agJU65kkYA=
X-Google-Smtp-Source: APXvYqyKiMgRfeUi6oC8Ru35bMiJYI9Kfln/YFm4cV3N/G5pfb0HSGqpDiTgJ/k6BXzgFQqpMRTTmA==
X-Received: by 2002:a19:7115:: with SMTP id m21mr127703lfc.27.1573663018221;
 Wed, 13 Nov 2019 08:36:58 -0800 (PST)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com.
 [209.85.208.181])
 by smtp.gmail.com with ESMTPSA id a8sm1077380ljb.11.2019.11.13.08.36.57
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Nov 2019 08:36:57 -0800 (PST)
Received: by mail-lj1-f181.google.com with SMTP id q2so3303681ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 08:36:57 -0800 (PST)
X-Received: by 2002:a2e:22c1:: with SMTP id i184mr3290842lji.1.1573663016714; 
 Wed, 13 Nov 2019 08:36:56 -0800 (PST)
MIME-Version: 1.0
References: <20191112130244.16630-1-vincent.whitchurch@axis.com>
 <20191112160855.GA22025@arrakis.emea.arm.com>
 <20191112180034.GB19889@willie-the-truck>
 <20191112182249.GB22025@arrakis.emea.arm.com>
 <CAHk-=wg4vi27mnMVgZ-rzcEdDAjTXrY1Jyz3+=5STcY0bw4-jQ@mail.gmail.com>
 <20191113102357.GA25875@willie-the-truck>
In-Reply-To: <20191113102357.GA25875@willie-the-truck>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 Nov 2019 08:36:40 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjmyEdYW4vEaNDP4UMB+H7wWneOwLUR3FmPG-Fb6U8dZg@mail.gmail.com>
Message-ID: <CAHk-=wjmyEdYW4vEaNDP4UMB+H7wWneOwLUR3FmPG-Fb6U8dZg@mail.gmail.com>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_083701_719642_6BA3721C 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincent Whitchurch <rabinv@axis.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 2:24 AM Will Deacon <will@kernel.org> wrote:
>
> Ok, I'll stick my neck out here, but if test_bit() is being used to read
> a bitmap that is being concurrently modified (e.g. by set_bit() which boils
> down to atomic_long_or()), then why isn't READ_ONCE() required? Right now,
> test_bit takes a 'const volatile unsigned long *addr' argument, so I don't
> see that you'll get a change in codegen except on alpha and, with this
> erratum, arm32.

You're right. We've moved back to actually having it volatile (or
possibly never got away from it). My bad.

At one point, we tried very hard to make test_bit() perform much
better when you tested multiple bits, and I thought we ended up having
that merged and didn't want to regress. But apparently we never did
that, or it got undone.

test_bit() is a very unfortunate interface, in that we actually use it
in some situations where we _really_ would want to merge reads (not
split them, but merge them). There are several cases where we do
constant test-bits on the same word, and don't care about ordering.
Things like thread flags etc.

It's explicitly not ordered, so *merging* reads would be right and
lovely, it's the "don't read twice" that is bad. But we have no way to
tell the compiler that ;(

Anyway, READ_ONCE() is ok by me when I look at the code, because as
you say, it's already volatile (like my memory ;).

           Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
