Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187E9165814
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 07:58:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7Ab6ASkzZUuIkmJzICxETFJYynCySVH9Y1YKwNKSRQ=; b=gbF+dRvzp9bTjv
	FeFkctK40LkULMCryhRQWV/ptKaVHYDujDNdZuCc1KSsRkwyZWtJYGPvedFqcyO9Yq9uMEhRtSISP
	LU483NCisQ25whRYWLzMYd+X+hDxpfZwsHBpPWCQu75CEwW2Aci8fNEtJ6SUzqZCLUe0pLYdW9OcO
	1wFnn4cPbAJgogLY5MiHVBMqzKmnuWTBLGzvIPZjazFb/7rTIPzoWEqYs++Ef4pjsk+zwZcXU9XMT
	c5zFuLYq4MYZ2kqsazhXE2u92Y+yA4iietsnAVRZ5bZOyRVKadcHhKt2VH9+F3aritjmNvEGTiq+F
	S5cgWuD2kOb+VjAVz9Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4fmn-0008VQ-RI; Thu, 20 Feb 2020 06:58:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fmf-0008Ux-9e
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 06:58:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id 84so1436082pfy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 22:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qjx6aSF/rYbAiv0EvUOF/ZsAzxN0pfEVgpw7b59ljRE=;
 b=H62U5hBEbjiE4TCDoMRdK1Jd86R01mh7rJVbO8yWo1j8QYD/F0egNJdaQLiP9Y68O5
 J/NusiLUwR1RZUPv/eH48umnaBo3GiMrY2T0F2hqxf7/FPBwgnWh9uliywhNTtlQ9pFl
 OoDa0qXB5F1ze2QjirWfLhJsuDuYbP/eA6fYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qjx6aSF/rYbAiv0EvUOF/ZsAzxN0pfEVgpw7b59ljRE=;
 b=WOeZT3YwSi4rSIg01caQC2AUfrFgVZZugEE//Vh5mQY9yUqQusixHe+gb9ZpAod7zQ
 c3ooPTaPlkuwTdDJbGxt9P9w/igW1J9mu3ZBD4CJc/yCwSg4Oc7Wh21eI9NLJfzwRle1
 F6znFqy93jIAGbaZGhmKcAlxtqO1bP6HqVz9bGTjmkEeCMJoHCqMKsmy8QJoJ3KTT7L8
 kaBnkrjcL5Xd7xEW65uSe5sKQLqgxPSqYhdaaaMp5J7WKKeSeNUW4zg3InyasRlIbxTp
 6S08l7tf+PtODEvXy6EcBIrxL1kace0XtgtmHST0/t0+t+jU5n0diOV3ieCQzz5hagKC
 +koQ==
X-Gm-Message-State: APjAAAXymbmjGl/GFoRwjy/M/2UjJ1kZzsLmn0g90FM/OFbi1Y5RqtA9
 LxBVas0JfRaB4ESweSAXtmRhk1/PXAM=
X-Google-Smtp-Source: APXvYqw0yyckf/yx/vit0J0Eo+IClh3/7SPu6eUgwXGrsoINJGajPOT5N+UsrWKnOShPFcCwTaLOdQ==
X-Received: by 2002:a62:e713:: with SMTP id s19mr7519270pfh.22.1582181883742; 
 Wed, 19 Feb 2020 22:58:03 -0800 (PST)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com.
 [209.85.214.181])
 by smtp.gmail.com with ESMTPSA id t11sm2002615pgi.15.2020.02.19.22.58.03
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 22:58:03 -0800 (PST)
Received: by mail-pl1-f181.google.com with SMTP id b22so1155142pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 22:58:03 -0800 (PST)
X-Received: by 2002:a67:fdd3:: with SMTP id l19mr15726222vsq.42.1582181429665; 
 Wed, 19 Feb 2020 22:50:29 -0800 (PST)
MIME-Version: 1.0
References: <20200214062637.216209-1-evanbenn@chromium.org>
 <20200214172512.2.I7c8247c29891a538f258cb47828d58acf22c95a2@changeid>
 <804d3cc5-688d-7025-cb87-10b9616f4d9b@roeck-us.net>
In-Reply-To: <804d3cc5-688d-7025-cb87-10b9616f4d9b@roeck-us.net>
From: Evan Benn <evanbenn@chromium.org>
Date: Thu, 20 Feb 2020 17:50:03 +1100
X-Gmail-Original-Message-ID: <CAKz_xw0fHgVBLdEoEoQ7OSAgBcvYBAowV0obWLsDUGNPotP55Q@mail.gmail.com>
Message-ID: <CAKz_xw0fHgVBLdEoEoQ7OSAgBcvYBAowV0obWLsDUGNPotP55Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_225805_361878_DF9D2881 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-watchdog@vger.kernel.org, Anson Huang <Anson.Huang@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Julius Werner <jwerner@chromium.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > +     if ((int)res->a0 == PSCI_RET_NOT_SUPPORTED)
> > +             return -ENOTSUPP;
>
> -ENODEV would be better here.
>
> > +     if ((int)res->a0 == PSCI_RET_INVALID_PARAMS)
> > +             return -EINVAL;
> > +     if ((int)res->a0 < 0)
> > +             return -EIO;

In fixing this I found drivers/firmware/psci/psci.c:145
Which also translates psci codes to errno codes, but uses EOPNOTSUPP:

    switch (errno) {
    case PSCI_RET_SUCCESS:
        return 0;
    case PSCI_RET_NOT_SUPPORTED:
        return -EOPNOTSUPP;
    case PSCI_RET_INVALID_PARAMS:
    case PSCI_RET_INVALID_ADDRESS:
        return -EINVAL;
    case PSCI_RET_DENIED:
        return -EPERM;
    };

    return -EINVAL;

Are these more appropriate?

Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
