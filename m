Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44EB476BD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZEURLemsU29Xugpcy4JLUtazB3JGUecBH2UnONj9gk=; b=SE9UArEwEN2i4R
	w5cy6HViiMXR4UjY7kN8PclEsZqoODBrVOE0t2wXbIo33zdC3FZNX5eUyuIm+3Jsz619BxW7h9qDh
	m2GE+wWCW5qagKuWPna+fm2LzLJZErFm9MQxFfHGD2JaQs/Dn0D8mThLKo7mt1t6nYGreH28TpH2m
	9Se3au2Yc2ujRkR3lRdASNjsWFa/WPl1GyW4Hf770qhXXnFzL0e5f3dd5IdQMvSRHF4a0NCkEdh3d
	cwBp8YKyV6wnD4pV61GdlBsj7hZUwV69iMdtyUoEU/C8yWhpX/ZT70jPkGLo1hOEOf2pcnAxCUxNA
	5xvFcaVxaObwniyVHBoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcbn5-0006rP-4O; Sun, 16 Jun 2019 20:30:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcbmj-0006qs-O3
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:29:55 +0000
Received: by mail-io1-xd41.google.com with SMTP id m24so16958988ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=upaXJCnr3TZ+JthmphQpCne7NGc1pr0hTHsejqtCAXg=;
 b=liBED9n6Hr8fqMaXOIP6C4W3pImtuqln/YS+pvosulm9+XMeny6PfVfLelLBXrWOax
 8TD1yG7Mz+fnfLIoML5SZRoF6hzDHWn+PJzflbVCnyk1TrhUn4Fs6B1WOkuG5Yr3mvzC
 OUr7u8q/spINzuE1UyD/JPaCXahch+Ct23jtlNvqoUROm9mDWPxObZtYF05Mq90z4tyH
 /FJPhfosZszYZY/tSsjDHWpa6jYaB+uHijWM6vs+C64melwDGscwyvEFW0pF85WQJmTe
 c0U/KZHxIrsUElpa5iGUYQQottnWeOHyPsv3Ifrv2m8Zbs3Z2bBRh5OQemsWxkO0zlCM
 zmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=upaXJCnr3TZ+JthmphQpCne7NGc1pr0hTHsejqtCAXg=;
 b=MR5JYFxz9il85hdlfcWwN/By1ttd0cib/1/HSijRiUYgsVyKKQc1Vjf8JFEaxoE1nM
 Auf2lW2+ezX2gCVOluIoW6WrBv8szF6rClc8bYYxNt0C1DxJRLKOOkn3p+bQM0/4nQbY
 9GJN2eRkpn92baqEsjHBVHGDVJpFasy46Aba6bhwH0wuOmlqBwkTnsG13347drR7zgXc
 RAnQCB1LFTXTqmBuA/Q5JSnn9qV7cDihWrmTPvGlK2pHHNzfmovsjidjdXxEArEef/9T
 dBW1cnxDw2FEuea80NhzvMdXmU5DFW5wrjEpJc56Y4dgS4X3BUAy1YlJd+nYLzXJgzSE
 nQdw==
X-Gm-Message-State: APjAAAWrVF8sjH1gc9w5T0vP2pbMLUaK7B4ZA6ncpUQW2HDePKD75cRh
 ejh80w4oi7Q/yT2brXPkZuXVXfAgtJRPal3RnCMc4Q==
X-Google-Smtp-Source: APXvYqxh/XYofxbbeUrydHCs1n/DpxKYdASJTYL6Umk7aE6Mufkt9n8Pn8zwrrDA9cHJSk9xJ0wdJhokjxBkP6nal0c=
X-Received: by 2002:a6b:9257:: with SMTP id u84mr13656151iod.278.1560716993072; 
 Sun, 16 Jun 2019 13:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190520182648.1063-1-f.fainelli@gmail.com>
 <f03eaba2-f661-f675-ec3f-0a89ac92bb11@gmail.com>
 <8f8d24f5-57b9-9cf5-3b0c-16c4fbc48921@gmail.com>
In-Reply-To: <8f8d24f5-57b9-9cf5-3b0c-16c4fbc48921@gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:29:42 -0700
Message-ID: <CAOesGMhpkY3e2bCH95BcPsf19AEMJ9rAC0qBcTmTyBAQ_vbvqw@mail.gmail.com>
Subject: Re: [GIT PULL 1/3] Broadcom devicetree fixes for 5.2
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_132953_783597_A3003915 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: ARM-SoC Maintainers <arm@kernel.org>,
 Broadcom Kernel Feedback List <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 12:03 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 5/28/2019 3:34 PM, Florian Fainelli wrote:
> > On 5/20/19 11:26 AM, Florian Fainelli wrote:
> >> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >>
> >>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >>
> >> are available in the Git repository at:
> >>
> >>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.2/devicetree-fixes
> >>
> >> for you to fetch changes up to e8bd76dccd792b371a934336c3e7d8c389755d9f:
> >>
> >>   ARM: dts: bcm: Add missing device_type = "memory" property (2019-05-20 09:29:47 -0700)
> >>
> >> ----------------------------------------------------------------
> >> This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
> >> 5.2-rc1, please pull the following:
> >>
> >> - Florian fixes the remaining Broadcom DTS files to have a valid
> >> device_type = "memory" property which was missed during the removal of
> >> skeleton.dtsi
> >>
> >> ----------------------------------------------------------------
> >> Florian Fainelli (1):
> >>       ARM: dts: bcm: Add missing device_type = "memory" property
> >
> > Arnd, Olof, Kevinm can this be picked up? I have changes for 5.3 that
> > depend on those. Thank you!
>
> Ping?
>

As discussed over IRC, basing your branches on these fixes is fine --
and I've merged it now too.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
