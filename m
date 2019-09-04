Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6D9A860B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKatc7vuHlL1KswIrbngiVp4WOSSz5W0Rr6Zcrd1IFk=; b=mTrhhPNdzk3znD
	3fs/2HFgVJ4hDW53Ll4Rs4sBS+HtHeg0zHoYC+6SHnvTan4oD+CngwIuYMkE1fWhtiuRsxi/42WCm
	iIZTpbkK8FGpn8lTfwm5sD+vtPoMsTc7vztDe4w65I4z4D04vHVJM2ARTDXmQ4zMsY5z91f/Mh2cQ
	qxaaAxENvRyqE/CCzt6ASmjth5KT+CZbPckxfff/og/6rZ3rZpjThHLKY3Ti980iIvmF8ok3+eUZ8
	A0MTog/fAudlYLzCW7RJNYfxN9uUGdJk2psfmtuV/dvgCleO4uKJ7ZqIHaYf7+GDvGMKiBoGWFGn3
	Y24iQW7S4HCGpYB9V9pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XCE-0007Qf-Ay; Wed, 04 Sep 2019 15:27:46 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XC0-0007Pb-J6
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:27:33 +0000
Received: by mail-qt1-f194.google.com with SMTP id r5so19597757qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vcv2kx9szvF+nS0Klj5vVjUOMGNPX4cQA7OvUE3mRZ0=;
 b=pNfSKyz/PlOwGeqoAEFgpwUgcreMj5fke1ZJeW6kIPMqMeglbrJ2RfYRtyyZ8KMqWN
 mXSafZR1B0mlH4KanYCI6+zJ9vzyXsQLu6MoTn8PtuWyU9zKlNpFCaUfeGrjhAzlAFU1
 IHsNnMFyibi38OISBrh15yLStX9DS08LSi76R9bVmH2YyNp2VzN911hk0ZE8nowayr18
 AeF958gmBW3SoVFIlTvEl9nksp0fppmihzUJWhSkg0j+4B0Lv7yA8SqpCA82tkngTQ3H
 KmP+FOKVYtdHRV/LDJwLJszdjkWH6Dzu9sU9Oul1Hpa76+9QQhbNKf1vtDZ9C3QsHtUp
 XVDw==
X-Gm-Message-State: APjAAAUvFWFi2J4YgM5tvn7Jq8vFb4Zy1jqOl3kLy1D9nRKkZceUOaE9
 3y+JzIdRYHTv72W8adPW7T/TDXj4vr/qJkWAOvY=
X-Google-Smtp-Source: APXvYqzydUUKuJ5DVQS4diifJxc8cj8YCum9qVe0SiQwumrEIlNAdmZQK21a8Qit1myHZqfxCqbDTkb40XKK8Ir0ELQ=
X-Received: by 2002:aed:2842:: with SMTP id r60mr30298236qtd.142.1567610851770; 
 Wed, 04 Sep 2019 08:27:31 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1567016893-318461@atomide.com>
 <pull-1567016893-318461@atomide.com-3>
In-Reply-To: <pull-1567016893-318461@atomide.com-3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:27:15 +0200
Message-ID: <CAK8P3a1C_OEPwrf-vdEmns5f87GN6dtsoda_WVmZAxEvLfFiDw@mail.gmail.com>
Subject: Re: [GIT PULL 3/4] drop more legacy pdata for omaps for v5.4
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_082732_655440_AC8A8CF7 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 8:35 PM Tony Lindgren <tony@atomide.com> wrote:
> Drop legacy platform data omap variants for v5.4
>
> We can now drop more platform data in favor of dts data for most
> devices like cpsw, gpio, i2c, mmc, uart and watchdog.
>
> In general we can do this by dropping legacy "ti,hwmods" custom dts
> property, and the platform data assuming the related dts data is correct.
> This is best done as single patch as otherwise we'd have to revert two
> patches in case of any unexpected issues, and we're just removing data.
>
> Fro cpsw, before we can do this, we need to configure the cpsw mdio clocks
> properly in dts though in the first patch. For omap4 i2c, we've already
> dropped the platform data earlier, but have been still allocting it
> dynamically based on the dts data based on the "ti,hwmods" property, but
> that is no longer needed. For d2d, we are missing the dts data, so we
> first add it and then drop the platform data.
>
> For dra7, we drop platform data and "ti,hwmods" for mcasp and mcspi.
> We've already dropped platform data earlier for gpio, i2c, mmc, and
> uart so we just need to drop "ti,hwmods" property for those.
>
> Note that this branch is based on earlier ti-sysc-fixes branch.

Pulled into arm/late, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
