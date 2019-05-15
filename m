Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93311EAAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKDAYyy/wg4xLLpTBSttPtLVlLyTBReUpcG+z9OIM1w=; b=uxMiT3mnTG1WC3
	IOWGVzWq8zbah7ZVN43XRQTn7ny+2lyZM5z39COlIfpF+wmQ18jp1vza6jPQQCf0jsZkGEI33YTd3
	ubYQVb7R/f9+fPHtfHcz2op4mHOgsK/Hw2N65bUyL1AyG9XAM/EolehFiWwzjXwZKR1N3tHtnKCCa
	wfT2BKGXRBsz7AyZ0UpsEJl8dbTGy6v5mkBD9eDoY81nEv+GuO+emKBNwxfDvCUsUMfEtKh1pkz8q
	X5HPWWCLHvByeqXe4Ldy8H/+Xy8MJAs46LtmmrZkSXSNyw49saZ8eWwvA7nDE9CXFgN5RzDgMervC
	HDHhF+xTWxaEXmVhrF4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQptJ-00033A-IV; Wed, 15 May 2019 09:08:01 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQptB-00032P-LZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:07:54 +0000
Received: by mail-qt1-x844.google.com with SMTP id a39so540097qtk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 02:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sbQtz0/a90pIaMSCWP84iVzFuP3XKcJmSksz/GcBaK0=;
 b=M4RbnVlDKOEx9SpprG/yztIqOThSh+PXtYU/A1m2flZulmsPxxYArIr39yKexfC4pA
 cmwOmpGLegz8F6VpHrz8MeJNeKVNWm3vsNwQztlv6YrT93c6ZMUgkUxH77A1JR0sIt2d
 49XheDHbU3/+MqkMrzDMV0cYtgGt8H2hAimUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sbQtz0/a90pIaMSCWP84iVzFuP3XKcJmSksz/GcBaK0=;
 b=oS9gDJaM9gG5IrCCD7BFlf5FSru0e92fdoN+t4I23LBEcKLGRPavSAaTYyz+/8pd8p
 4Cm0bXM2IZMfl+gzDQCvz/ywa5IZHbr/JvwHhJ/AA6Rh0uMkH95BjDaJdS31dHo/mDRm
 IBjJV3A0OASYgYyt7RvQKVjRIqEut2jh8IUfYQ+bZ9ylTxN2mZkeUZaY0rrlpwf8oZaJ
 vsz9+FpAU3cBNkK2JtzF14xTf38ndmH10NQ2rLAtR4nODxwsV8rqupJX6W+l5EqI3LfA
 DZMUJDrfhnFgiQtiozLZAqfkvign4yqx0BxmFdSMrPTOBhSlu9fz8oTE9iAC6z7MPys4
 x5/A==
X-Gm-Message-State: APjAAAUxjXZiFaELIUuIYgWWi3GZ07PYP5favzE6vPOaAXU5eXoSA92z
 CxwLw0ivGOt6Vfi97cA5lhV9Icf1nqHxuY/ca1lrHQ==
X-Google-Smtp-Source: APXvYqyXl9+Efyxlf2al2/kO4uZaNzAovVvLGkNka+wUbkkqJvcl3CuDnIvDXQ6VyY6lb4I0Ezw26J8OV7wIwh0ZW1o=
X-Received: by 2002:aed:24ae:: with SMTP id t43mr34214820qtc.187.1557911272310; 
 Wed, 15 May 2019 02:07:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190513003819.356-1-hsinyi@chromium.org>
 <CAL_Jsq+Z5+M7fYCrkRKqN1yKTu6uyMKRKh-R4b-cj46y18hXOw@mail.gmail.com>
In-Reply-To: <CAL_Jsq+Z5+M7fYCrkRKqN1yKTu6uyMKRKh-R4b-cj46y18hXOw@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 15 May 2019 17:07:26 +0800
Message-ID: <CAJMQK-jei0j5R6sgn4GfxnqK127J5dtzcuiw8XP6hzLf_9vRAw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] fdt: add support for rng-seed
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_020753_735036_88CD51D7 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 9:14 PM Rob Herring <robh+dt@kernel.org> wrote:

> > +        fdt_nop_property(initial_boot_params, node, "rng-seed");
>
> I'd just delete the property.
>
> Also, what about kexec? Don't you need to add a new seed?
>
Will update in v3. Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
