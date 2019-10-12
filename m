Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41D6D5048
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 16:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCvDXA3Es2NyTspH2vbt6YD83qSgUp3w9WnDdEJeoPM=; b=kHG9mpbyC4Yc2F
	UV7CkM7mS5TJBEXvbMwmqkCGqjt6BENsxi/ruKrTkq6dsnoXv0SpvScCz8yW/uRFggYsRi3sRO85T
	v93CZ6WinvZmokeXrfpahmrfr28PvFzYucxTOWI/0tRW24nH8OdMjBGZpkzgO5RpGCafL2x/f2zUp
	rQzDU9N4o2IwULri9vhjLoTJPc7yZbdhjrsbGDd3yMP8loTUmGs8zYtBByN2f7IOrEwVEJh8NdeJf
	qmLKPEbUs2dl0V4PluvdLbpTuuUqyIpV7DP1Jd4QPbDbQa5QAaaA1MjHsd1UlGfsQw7VQIxwtFwAP
	OqLygDX9pkZocl3MFrDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJI2O-000703-Gz; Sat, 12 Oct 2019 14:06:28 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJI2F-0006zR-Ds
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 14:06:21 +0000
Received: by mail-lf1-f65.google.com with SMTP id w6so8938260lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 07:06:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=24ZirRRGg0v732pLKiSe7vKc4Up3RxG069bpntU0vog=;
 b=B0zB5rfPjPSRibiPrfEiRhwJwLZ2O7G58H93VAuqxp7bXWK9DfvTtsmej1elHJ+DkQ
 nBBegDtgsCK3TArjgx4xMf5tT3xgU/ZdM8bZv9QfgweFjF+QDXR4ZnW5nSzD7FQ9oyMd
 L3/RWeHhw0MtB+8g1GWPe9zcq3XodFlDBwPPOjjz6akB4y7u8EiRt6QXhz1+u5kEYV2T
 F4A887yGiBl+9/EloIRPqviUpCEnE2SuJ+3B7hNRM/0DwrCJtSuGCQQS3u2LOuWlWjmb
 FnKUBo2Pa9jj9/sLqfiFN7GH71B5rsTkpcJl5Gjr0CMi5z9ywDBTLB3Gv7lqSVXq0r4p
 oLRg==
X-Gm-Message-State: APjAAAUqboGuCGVhsvgmPUI4pvBlGs98dB5lvnrdmwALqJ0Se5ApsAE0
 dZyJOf0JSPx6WJt98YDSjXxrW1jJd12vgWMbpJI=
X-Google-Smtp-Source: APXvYqz/N44lTDZ3C6FqrxhAQd7CKTW7oprYc+Z10ugHoqrtiYGVXVVSW59S9Syz+o6xNYXpTYTOjsFJe1huv5MMCWw=
X-Received: by 2002:a19:4b8f:: with SMTP id y137mr11923942lfa.19.1570889174048; 
 Sat, 12 Oct 2019 07:06:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
 <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
 <20191011102747.lpbaur2e4nqyf7sw@willie-the-truck>
 <73701e9f-bee1-7ae8-2277-7a3576171cd4@huawei.com>
In-Reply-To: <73701e9f-bee1-7ae8-2277-7a3576171cd4@huawei.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 12 Oct 2019 16:05:57 +0200
Message-ID: <CAK8P3a1C8cFB6DS9eVXTEiTQu1kPzy65JvL=BxqEe5MTkds8sQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
To: Hanjun Guo <guohanjun@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_070619_465768_A530CA01 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 9:33 AM Hanjun Guo <guohanjun@huawei.com> wrote:
>
> On 2019/10/11 18:27, Will Deacon wrote:
> [...]
> >
> > Does anybody use BIG_ENDIAN? If we're not even building it then maybe we
> > should get rid of it altogether on arm64. I don't know of any supported
> > userspace that supports it or any CPUs that are unable to run little-endian
> > binaries.
>
> FWIW, massive telecommunication products (based on ARM64) form Huawei are using
> BIG_ENDIAN, and will use BIG_ENDIAN in the near future as well.

Ok, thanks for the information -- that definitely makes it clear that
it cannot go
away anytime soon (though it doesn't stop us from change the
allmodconfig default
if we decide that's a good idea).

Do you know if there are currently any patches against mainline to
make big-endian
work in products, or is everything working out of the box?

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
