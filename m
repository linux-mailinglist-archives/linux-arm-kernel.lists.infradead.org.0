Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACD1DCA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXaNheuF/lqRV71uO5gtF2gF/eLSX4/138ORtUymrvA=; b=FgbvDiBgqrnAdp
	0Qwwc3KVdTUv6DU9BGQNU1LZFPovkWU09rN9TrCweYssaetXgW+ZIjQ8FEtr9RoOMIz7PnHvaJEYb
	Cyryz8NcNzGzel6krVU/KRO5xLS+CAIDGvKjH11kw8pfNIsTO3UlvZQZVFMyDOVquik/5bL7J9zy3
	idHJLD5p8Sb8SPIwROd4e4FgGyqrMFCjYZoKUaWAYtYJvFnPRV9r5XXZW+gvFI+wjt1CAWkpbh6un
	qyWFIKPSKz1NW6QaqMm1OTFSNWcbRzbLRfHBji/qFw1rjlPeol6/2A152ZQbSAprt9R+IjVyzsTbc
	InPr9S//ZH9dvRpKs4qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0SG-00006B-GR; Mon, 29 Apr 2019 07:12:00 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0S8-00005e-7h
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:11:53 +0000
Received: by mail-io1-xd41.google.com with SMTP id y6so8063044ior.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 00:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dZtHuV4JUivTfwBqqXIvSzfQ5NYcx2yRMMOn4vVLdck=;
 b=zMq5h3LXI6dFcJu2i6XOStKa+tM16fFtWD7+tgYSvW+9c2o4N+upRwaKX3gJJ5vQr0
 lpJ1V3qgGa5UmrW7e3Etm5SVFEVrBLPpP4Y/UswM0QsARC9k8CrZPpSAGgHEd5ietLH+
 5JozCLefPjHuV9AskOy3Qup+cASN5AX1nhTDtx9IiJ2Bcfbr1uYEgsReF6jA5pTdOwxx
 RyxGEkCaySvJsij91WfNnrXR1Z0MPs432l1DTEOcsa/plnOkuK0mWfYrM2beOh0cmJQC
 AvOV6v/RTgja9IziLqxzgqGUjae063EeaBFsfV36gi6kg6zlpU2BmyJRaS0h7KfxhJc8
 KMAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dZtHuV4JUivTfwBqqXIvSzfQ5NYcx2yRMMOn4vVLdck=;
 b=Yg8ceO9vQ7SsnHDbro2LpdL3QhRwk63gD1D+/SIJqH+X7y32loCRPKbmaE/KQKn7Sm
 KHwbMtkdkwc2iNguoDGzK2QVIz+kduejv9I16h/JrzhrnsncFU9zZap2/dyeljJtk3lw
 14G5a2/kg9CtP8HEhmj/X7hCmuLzGsDnEEJshaZL9Dimiw8Y7jK505VNgyBC9aqCm4Cn
 IidWrZG5Qv8U5D13Gm5R5H8CGfN0WrMr/yJsMwECfq7Fx4BTOJmuOwCTub49ajbbe4nq
 6vkAqiA8gwdmcBT9P8O3l3BMEgRSGlOEvaChl66MPSwaef3xNiO8S7ruBi5vPyUwUaBt
 toig==
X-Gm-Message-State: APjAAAVvh0oG+mwUnkPvHkS3WxuobCY30xpMJXWPXSj4StBA5tX9mpOh
 wLO/ExNjdbeAmvao7bpW14zNA7HQI+WCJ6nna+2hAyKiQ8civA==
X-Google-Smtp-Source: APXvYqy2NI0iAuUdXJt55fsNTPkhEPdO1qf8e3D8P12eYuAI66Rx7WjCDUuoAw8iwuybwsvy9TFZxSF/ySRELQ71P4Q=
X-Received: by 2002:a6b:fe0f:: with SMTP id x15mr19992622ioh.78.1556521909778; 
 Mon, 29 Apr 2019 00:11:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190414154805.10188-1-krzk@kernel.org>
 <20190414154805.10188-3-krzk@kernel.org>
 <CAJKOXPfzV0wn0a-4xvy1B0fR=X4VvpqNmtqwRGFhFdCMH3OpHA@mail.gmail.com>
In-Reply-To: <CAJKOXPfzV0wn0a-4xvy1B0fR=X4VvpqNmtqwRGFhFdCMH3OpHA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 29 Apr 2019 00:11:38 -0700
Message-ID: <CAOesGMh1JA=RxrnohosW1SiwZrwDy_1mHNMBq2zrYXEFcCuEzQ@mail.gmail.com>
Subject: Re: [GIT PULL 3/3] ARM: samsung: Changes for v5.2
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_001152_278573_EC7103AC 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 11:53 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Sun, 14 Apr 2019 at 17:48, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> >
> > The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> >
> >   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.2
> >
> > for you to fetch changes up to 7676e667c841375b41d9438b559756141aa93d0e:
> >
> >   ARM: s3c64xx: Tidy up handling of regulator GPIO lookups (2019-04-14 12:53:03 +0200)
> >
> > ----------------------------------------------------------------
> > Samsung mach/soc changes for v5.2
> >
> > 1. Cleanup in mach code.
> > 2. Add necessary fixes for Suspend to RAM on Exynos5422 boards (tested
> >    with Odroid XU3/XU4/HC1 family).  Finally this brings a working S2R
> >    on these Odroid boards (still other drivers might have some issues
> >    but mach code seems to be finished).
> > 3. Require MCPM for Exynos542x boards because otherwise not all of cores
> >    will come online.
> > 4. GPIO regulator cleanup on S3C6410 Craig.
>
> Hi Olof and Arnd,
>
> I see you pulled in DTS and DTS64 pull request. I think this one here
> is still pending.

Yeah, I don't always do them in order. It's easier to sweep all pull
requests of a certain type (i.e. DT, drivers, etc). I also ran out of
time and had to step away for a few hours.

Same thing now -- I'm done for the night but there's quite a few
remaining pull requests in the queue. I'll continue tomorrow.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
