Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28B2B35ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 09:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pfxPVVLizaRcZ9khplfzWGA6IBYj/vS2Imbi2PzAjs=; b=BBOx0URxuzDWvm
	SAOb/e/TLsplrH3JmXosbo7O9omH0q0stP/iKoSXjjHBxE+HYaK8G9neihVvNW6i2QWXyARLR13t5
	vzOyW0psFvxa23yaI2FQbM0OYuFL1XkU5kZgpwtkNNQ1G3ZjeoBVyv1QBmPR0WViUNa7Tsif8/5f5
	mnyCZG4YVJBPGxQ3YDjvaIUigPUE9ribVbi5qhjfuuZnqKgAe1uJJIQIc0gl4bi9+LRjfENaUWhyW
	LzjEkUt9eVt+ZpchBhiWR/V6QeBYuxhbb8HSgCEaNFvbEHEOeduTDtqVaFZlPSiGATyDCEKzNasII
	2AX5etlC0gBgaeFcyHPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9llk-00074D-M3; Mon, 16 Sep 2019 07:49:56 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9llT-00073O-CA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 07:49:40 +0000
Received: by mail-qt1-f194.google.com with SMTP id j31so15327578qta.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 00:49:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EnB6rF+kEoB0y/dLzKOFheHfeoq2PLYWg3/5pMHIOV0=;
 b=lRSoHaAtYv6yty3pbdIQ/6KO3P59RK61UyXOJx0ebUuEGvqpOqZcq9OMjOf0VGlv5F
 iYtkIyCyoJEqcHHUNUEI5rhoWKjys5y3F3O922OOIt1GKMwUqCOVDLGNPsOPrAZUNIbg
 JxI3hhNI/ND0GBf2G54N7DQhvRqbINzevC70z4PDceAygNS9fniNVRsrBZ++6IbnEFRH
 cuN4eda3tYcqn/8+1e0rZFxWkJVq3qA/xfejlr2pyC7LX88gAWuzP21Q59A3PK0OGZxC
 Mj5XzVgIMhlYULnKp7RChg3yclZEc5EIh0EZ0FK9sghqNtmTISxS3ccrH1bBAysRxSy6
 6haQ==
X-Gm-Message-State: APjAAAUO/mtF5vVtjrqEC0FQ4re7R1FMpZNqqvo5XEzr+3GmwV5IiPhY
 wb5e0okHYsjUO5Z42DyrIpNOBCIbqZoTymzaeTE=
X-Google-Smtp-Source: APXvYqyFZmHtVbkxl2VEYD0MBTCF/ulUgA/q2GShF0UOR6niQO7seRSw8CkjzspNUsZqPiPSFmIl13/oSJogmzO6JII=
X-Received: by 2002:ac8:1a2e:: with SMTP id v43mr6882713qtj.204.1568620177658; 
 Mon, 16 Sep 2019 00:49:37 -0700 (PDT)
MIME-Version: 1.0
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
In-Reply-To: <20190914152544.GA17499@roeck-us.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Sep 2019 09:49:21 +0200
Message-ID: <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_004939_411996_D954A904 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Thierry Reding <thierry.reding@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 14, 2019 at 5:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
> On Mon, Jan 30, 2017 at 12:05:06PM +0100, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >
> > Hi everyone,
> >
> > This small series is preparatory work for a series that I'm working on
> > which attempts to establish a formal framework for system restart and
> > power off.
> >
> > Guenter has done a lot of good work in this area, but it never got
> > merged. I think this set is a valuable addition to the kernel because
> > it converts all odd providers to the established mechanism for restart.
> >
> > Since this is stretched across both 32-bit and 64-bit ARM, as well as
> > PSCI, and given the SoC/board level of functionality, I think it might
> > make sense to take this through the ARM SoC tree in order to simplify
> > the interdependencies. But it should also be possible to take patches
> > 1-4 via their respective trees this cycle and patches 5-6 through the
> > ARM and arm64 trees for the next cycle, if that's preferred.
> >
>
> We tried this twice now, and it seems to go nowhere. What does it take
> to get it applied ?

Can you send a pull request to soc@kernel.org after the merge window,
with everyone else on Cc? If nobody objects, I'll merge it through
the soc tree.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
