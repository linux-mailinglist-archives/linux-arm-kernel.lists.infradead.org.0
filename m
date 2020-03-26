Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA820194B3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:08:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBGD8L/ljZTQlPd/Axpn87ku776g73vZVasH+EoPkPU=; b=Jp1JWmooCEjy29
	A5zhGIq4Ppy02oZxNcYDxkphm2DO/jfMF53m8XGd4rkEi++GpGlcQkGqRKY/+e5zy+fqc9hPZOw/T
	JmRxvwNPTI/lBgu1CTpIQejcJbAR4Y8YOrG1DN5kHbVIHA0F3zbdMUGesSMipcjXg87HvaDvYtnN7
	bH1lWPUZjwbbaUnj68qhkCA4QWVoF8ku6fdDSmfa2FQ7uomtlB4Hs0YbcPlZITjp65drCUkv6bcM0
	Man0Dj5dPXlDcZ2ZungZB/XIkOQifgdFb/0EWzfzEiVgGs05J55nVz55V4mImUnV83HNMRwrYl8ru
	qFb+79hYOFhYAhXelYPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHag1-0006y8-67; Thu, 26 Mar 2020 22:08:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHafr-0006xm-8T
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:08:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so8144164ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 15:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ly14h1fPSIc18wdmBVN+UclWX/j9Sl6vV/Wb+IvGx80=;
 b=FIHPZw1mTIvjgYQY6gy154RINHj0DE1FFPICn0hE0bKAYd5wq/OsXC8Qqgt0rEMcyX
 hWEUK6N0idRBYR5EmV9k3dHnzCMD/lAPneIYTltP3utVQx6XRdTgVzTI2LN/rq3tssUp
 0n/9JNB0pUbl5FUqcSqjvdxPfr1hYHVHYoxjtA+ipmPLOSdrCroaao9Ag6z+B+WWq0ml
 zFSBKhNVHFqtNEPb8KS5Pre/xMLHpEwOxNRHnpuR+WmLzx1XIBtXWX2RLJEY+rt7nRNK
 TtNYM+SxCbrrlhtR0GWg0naI1O2KO79iy4SSjVAIZa2usr6KABFsdePQkdnJKskq2NYM
 lXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ly14h1fPSIc18wdmBVN+UclWX/j9Sl6vV/Wb+IvGx80=;
 b=XHQrY02YmYeooT0LBWeF/BYUkEl4PtvbNkHEgF25M893oaTDN019ZL0+n+sTvSRU9H
 +UYs/7pgOhOjFYuMNSD6o5rik6dj7VWxWwQAWRqGogMP6eTCeGxveRljWKVoFT676nUi
 ANbAPO93ina9gXVPTfxQ5j0R1obLR6Uuzj1ZFwcdcYqM0LemrX70h4ujHicLBXJhfUQW
 ScACCpujvBE9Pv9lM9iJT73xJtKVUxTlml0JQJkJp3nxC17ljWrpaFFJRWgjXk39/dBI
 9zS/ZvCwM3OS3AHFGfojkrjYqWq0eE5uwyMUzgvo2NfX2EH5uOstSPY4P81AHHQiZt8T
 EZ0g==
X-Gm-Message-State: AGi0PuaJ+hmOxA/1HEk8o9PzVY1l9N9ENWXOvTqg6zLbj6MusCe7kayX
 bBv33L6b2z/ODi3sYrHAwG0KGo4b68+sll5MIZArAA==
X-Google-Smtp-Source: APiQypKIO1mdJenDAhW2I1u4tADzYxWaYXov/U1OqZ7NORSc9kAX7K+S7s452ydg+IPZTfsxkA5uQ5OdxiswG/hJXy4=
X-Received: by 2002:a2e:9c48:: with SMTP id t8mr648496ljj.168.1585260504131;
 Thu, 26 Mar 2020 15:08:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200229210225.173084-1-linus.walleij@linaro.org>
 <20200302042205.tonnru7ysr46fht4@vireshk-i7>
 <CAK8P3a3CkAfozaMMNsGk5VDib53veMhm7ExWZT+A2gc+J_GqWA@mail.gmail.com>
In-Reply-To: <CAK8P3a3CkAfozaMMNsGk5VDib53veMhm7ExWZT+A2gc+J_GqWA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Mar 2020 23:08:07 +0100
Message-ID: <CACRpkdaYo0w8Zy4MjxC9Hqhyv7rhOMzSf_t1ZqWnyXW=9Q7iJg@mail.gmail.com>
Subject: Re: [PATCH] ARM: config: multi_v7 Use schedutil cpufreq
To: Arnd Bergmann <arnd@arndb.de>, Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_150827_855063_02F70128 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 5:28 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Mon, Mar 2, 2020 at 5:22 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:

> > FWIW, I have tried something similar for arm64 earlier.
> >
> > https://lore.kernel.org/lkml/af12e002bc165844101830c0eb00e283b536a879.1510813288.git.viresh.kumar@linaro.org/
>
> I've dropped this one and not applied it for now after rereading the old thread.
> If there is a broader agreement on what the default should be, please
> collect more Acks and we can apply whatever you come up with.

I think there is a more compelling argument: if I understand correctly
the energy aware scheduling and HMP on big.LITTLE only works
correctly if schedutil is used as cpufreq governor (correct Vincent, Viresh?)

That would make the default multi_v7 unusable (or misbehaving)
on e.g. Vexpress TC2.

Thus I suspect the Vexpress and other machines using HMP
and big.LITTLE should just select
CPU_FREQ_DEFAULT_GOV_SCHEDUTIL in their Kconfig.

That will of course make it percolate up to multi_v7 by default
as well.

If more magic configs are necessary to select to make a TC2
work properly I'd like to know these as well so we can just select
them all by default also for these targets.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
