Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E237D8CEFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pgOjvXQXh6wd5AI9aLqrSSru3WF51mW1huXvlCDXWE=; b=EDuxSojcF3hbSI
	0ZwjZ3qd7RNbEtmMeYEp9oP910ssjGxXooN489rif+lEbQh3HVzu/3rHVGOCzIq3kaSpLDv4Vfy+5
	Js8twON4d2K9fuRFHZeszupXkAcwS96E8sLEVOXiL+3MOnW8b78huTXpaeWDQMJD8qyLH8BAM/gPQ
	idqDUIYR39Nbsw+iamCqKdY029IRdD3u1vBNkTEnwC5isKTTfgaKfgGcy71gykibK8gaX6tPj7Ba8
	oyBFbfb81ptE+Xv93DS+2WYZlch61dioJRqSv0QnpodmlmctdMCjaY2RfPCY6OPxF6wjMaiMLj2gB
	KdfC8TC5qOCKUgODPLVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpDp-0001H4-1t; Wed, 14 Aug 2019 09:05:33 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpCY-0000yt-Ar
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:04:15 +0000
Received: by mail-lj1-x241.google.com with SMTP id x4so11964935ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 02:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lq2l16RSFjq6wz/ruQesNuUbLI8gmiZmId5G0J+mFQo=;
 b=zQF4AgTB+9jEl7UsscxvQbb3C/iWEfR4hAhEodH95ojTdcbsoROw3XnU60PvQtxDcc
 KLO3c4fng1VTaMMoqMhN+6kfbYEAeC0rmOaIGjwz7EmbTXkN8mv6xUuUXiBKFQY48PTX
 h6SaaxEGRKrAfH25y8SCObSPisDoXFK/JcHqbwgIPzvmvmxSzB5rGjFw/JuTF1WrV8CO
 N4L6K56gDoxrBlvdai1ZTrldNmS0Wo7/JsNqAu+9xhExyoOzfT7lbF/xWCsTz376brts
 AUE7D3rTs96kryUmLSju9r6Wr3jB9RWG7fKXCrvg++wk1U4//1R2pQt8zeD+IjK3ojuz
 QCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lq2l16RSFjq6wz/ruQesNuUbLI8gmiZmId5G0J+mFQo=;
 b=K7zJ1fX1mY/vY1MeESxkZWKEnfbUNf3WEvVPZL+nADwQYvvC8YlE6Z2rtcW8eDlUxR
 Ce4632Scgv7j3QKfBzIlskB4kAbSWAaKkvt+7BzP1HhPZ8hGzVjjHEPlCDF0JLoWo9c+
 o5DrmBTHtNZOvzBF1ooTPg4v7+EYGn37HwfxeiMp7v+H1QKrxmFaNJv+W7Sm0HlCSumH
 cMbazHED7TDP9+zFiDIiItr68ngLjZJov2PIMpl+nByEAlB/FhPYxE2ISr6ee7vUX4P/
 jbJeDbxmDnuXwLJuOicIEaQDvG1odNAXqbnTxc17qZcqHv9enWIAK6Pn5Y3I6YQUU8Ur
 D5Qw==
X-Gm-Message-State: APjAAAVu14UjqQFLgQwok86IBjEUcKIZBU6Ni8lDsH3D5+/AQLkqM3t7
 O0NCPH8SA/h64Pt2V5eDFLeMzvXr8riAxgHIV5RJmg==
X-Google-Smtp-Source: APXvYqzPYWkAeDfuLYjvtXLWvxIxO98UH5s/tMQr2Hk9GOmp+mYngZQOcDzHvZK/OEE9UNRS960d4fKBb6LVSE0+JWE=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr23992742ljc.28.1565773452821; 
 Wed, 14 Aug 2019 02:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <5D514D6F.4090904@hisilicon.com>
In-Reply-To: <5D514D6F.4090904@hisilicon.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Aug 2019 11:04:01 +0200
Message-ID: <CACRpkdbi21mV5quTmur6egb6FJMFrD-Lg1EUKtk+HejyWjzmUA@mail.gmail.com>
Subject: Re: [PATCH] gpio: pl061: Fix the issue failed to register the ACPI
 interruption
To: Wei Xu <xuwei5@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_020414_464825_41A2DD05 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wei,

thanks for your patch!

This doesn't apply for my "devel" branch, can you rebase
on this:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/log/?h=devel

We have moved some ACPI headers around recently.

On Mon, Aug 12, 2019 at 1:28 PM Wei Xu <xuwei5@hisilicon.com> wrote:

> Invoke acpi_gpiochip_request_interrupts after the acpi data has been
> attached to the pl061 acpi node to register interruption.

Makes sense.

> Fixes: 04ce935c6b2a ("gpio: pl061: Pass irqchip when adding gpiochip")

I doubt this is a regression since I haven't seen anyone use this
gpiochip with ACPI before.

Please rename the patch "gpio: pl061: Add ACPI support" unless
you can convince me it worked without changes before.

Please include some ACPI people on review of this. From
MAINTAINERS:
ACPI
M:      "Rafael J. Wysocki" <rjw@rjwysocki.net>
M:      Len Brown <lenb@kernel.org>
L:      linux-acpi@vger.kernel.org

I would also include Andy Shevchenko and Mika Westerberg for
the GPIO aspects.

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
