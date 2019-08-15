Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E17C8ED16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/Q74liq9ID/lUJASR13f5gSEcAYYVpounL+r4oJs9A=; b=frBgwBQOYz5ANw
	GWuve9gjOdlndX8QRwafW/uYv286FdFoANpKCBs2OCk9TSQs/o7qVmiNe4vYqHtuGWnaz/UXNlKVW
	OUBzIFiS0YAYCL5q0KzQ9sNd7m3FAT8ljEjdPxGXsMgsYsU8JyxmMXyGI3LPQIPvv/dPdOD3uRqO5
	XITISw3Xev63kx5yTlbNK3wkFpt+do1NWxRvWQaDIZ4Kro2nciAuFd4Qn7LdaH7zmuhjaGGsGl6JP
	vqv/Iq/N7be5V1lYhpGWI7kdgUedPJ72UKjlltLH+u1V7Y87px4WgsWvmJhtFQ006ifXPgCzrkmt0
	q7f4IlYyG6wLbzojA/zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFye-0000TQ-Gc; Thu, 15 Aug 2019 13:39:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFyL-0000SL-WD
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:39:28 +0000
Received: by mail-lj1-x241.google.com with SMTP id e24so2231729ljg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 06:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/SOlumz6vk2Alm/CYh7S2Oejxh0Xe/C95oR58raMHnQ=;
 b=Bqv5iBRPvFl2b9VdsUGma7yaA5FL4jWGwfAzscFHwHgVn2LkIz6NuqRaS3ifedqu7t
 Zl7nkg7Uvq2YawfNEJDqo0IYmfIhnGM6j1EU/ZuUjmua4FPdl6LRWb6bSeIV+U0Sy44Q
 sROgcq6zOpSCERywNRarUg2G+rFt2vOyPf9FWZmSyerZuCp8sAqpkmh3gJONeWc4aH47
 JwsXgTRJArkMPd/jBm9NQ9aNekx8d+hIw0V02KXdw6uP/wWAr+bkxjv5FWgCcCPAzN5b
 +79RHCgxN2dvNUlunVHE72i3dFzwn0IA3O/C+Qz/QpA1t4b0CAGIa20oHiT1OEqgIcR1
 ulLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/SOlumz6vk2Alm/CYh7S2Oejxh0Xe/C95oR58raMHnQ=;
 b=GPUx0tSMLQqSIEr3NHswmlNUOHLZhhpSGNQqI6R1B4Oql9+7kMdvfRS1LXOTzQx9lc
 cvqFsuPI1VtWRtCJG3FPG2DEKAiy4/f9NU0mO1e9tWrUGHzwuDkxUn1V3tSik6nT+gEL
 L5pfRVpuJsb9kTSpWUV1u4zZmbxeeQ7tvXhEjRnc2I57Uj12VucnYeUxIpQfx+tPST7V
 eI2hCdA2ma6ZZwSBJ+hrUuRFIWdt8hGLIDmBpvAIIqa9pS8JyCEbe+dlABZ1UPeyD8rN
 nwFNhgGZwHXsOelNSMVPeLamxW3Zc4BiuZ8nuhRgPYCGliH/AtYW0kXqU4Rj51uhV3IS
 nI9g==
X-Gm-Message-State: APjAAAVHIXUdHxIqPem/mTm4RP8/2koj+zEuOxR+lY5kvAhiRKEWrOES
 sQ558AKEvENDlJEHks8V4A+CIexxl5asQ82D4yQPkw==
X-Google-Smtp-Source: APXvYqwFALZTskPXo6e7NXJ/utTQfhrRgdFbqggPbykgoqXnV4m7nNI5t8VLZQOj3hti8lr1yIIaXwLEq2Y74hb9jMA=
X-Received: by 2002:a2e:3a0e:: with SMTP id h14mr2771959lja.180.1565876359961; 
 Thu, 15 Aug 2019 06:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <5D514D6F.4090904@hisilicon.com>
 <CAHp75VcKNZeq80hw5qjKKuh8Qg=WUrXPSpcy6yx5h-_7RHah+g@mail.gmail.com>
In-Reply-To: <CAHp75VcKNZeq80hw5qjKKuh8Qg=WUrXPSpcy6yx5h-_7RHah+g@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 15:39:07 +0200
Message-ID: <CACRpkdbJS-b4E84qU7Knt7ND9WHwKh_d1MdawrFf4Ht_MHt2xw@mail.gmail.com>
Subject: Re: [PATCH] gpio: pl061: Fix the issue failed to register the ACPI
 interruption
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_063922_051336_EE2D05A8 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 3:10 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Mon, Aug 12, 2019 at 2:30 PM Wei Xu <xuwei5@hisilicon.com> wrote:

> Linus, I'm wondering if we can do this for all inside the GPIO library.
> Thoughts?

If it's supposed to happen exactly the same way on all ACPI-enabled
gpiochips, I think it is more or less mandatory :D

We need to be sure we're not gonna have to quirks for misc variants
of GPIO controllers down in the gpiolib-acpi.c as a result because
some ACPI-thing is "standard not quite standard" though.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
