Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027C51B05ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhS0XZyEFpCWANi75dQ8SVuTTTr/I0DeGJtazpkcf5g=; b=TLf/MZhseiZyqP
	hk/xFfNhjSs0jAvFB7+ZVKGnfPD9UYVS7RvVVONctjJ9xK3jknDeOhSwqPCs+CmR1bbpT6QV+jiz7
	dxbgH/e2tfGPII+AJF3A49bP1umt6lo2ZjhxsImzlDiFpCuCrxBYYsmKa7Iz0CTFIF0HuY4yUJp4w
	uYGEP6jA5dCtwvzZHcWu8H4LIzxS5D9bcezBnQnwOpvpxDgZa2Su4yxOUF58gHDQ5ubrjuEA90qW4
	a0JLONJEwKRu3ksQ0DIPpqm19h+n+ihAw9IXR6ULdCd1d9JV7HIlJzJZ7cAPgltK9KgyL6rQCiAEM
	tr4r5ZcMFTb7TJSVfciA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQT2V-0003UR-Dr; Mon, 20 Apr 2020 09:48:31 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQT2A-0003NF-6x
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:48:12 +0000
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 03K9lol7023094
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Apr 2020 18:47:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 03K9lol7023094
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587376071;
 bh=p4M0FKlElEke9g2/lH3FWV1ZEwJtNoPoq5WjmFbDZp0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kkgwIYTKTXidZGERiymvt2K89ISg2wyy6MhC8haT/dUr0sW7pfnDO/1HZ+JbCg5fw
 v1WLFZpnxX+Rknzv2dH9lz8uRD+QHS372B1ZUP5O2ZHbBzmZf8YslWLd7hnbQBkK4o
 7QiS2cfy06ooBP67lfc5sWou5wkuYMuYdWphBWn8AKzOWOg/LE+7wlG1sqW1+zH6zG
 7k0atIi8lmy+ysjlohu52n/fyTr003qw4cKmLwMylxR4BlZohCvRwlOTm54ujsjfYN
 Y3kXDp8K/JkkyFp/LLYp5ZjQp2XLLIfC6IjEa1RzUx3BYUUw5Q6ETwYoNf1nedexWL
 fCbYQPNa3wQ5w==
X-Nifty-SrcIP: [209.85.222.48]
Received: by mail-ua1-f48.google.com with SMTP id s5so3366036uad.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 02:47:50 -0700 (PDT)
X-Gm-Message-State: AGi0PuaKiTLHykSiPl1zLwog+3Yzuc8e/SellHzaVwqOlF6MEb0W44S+
 2zd5sAqb4YbWaOxkyPwBZbDhVSi+9xCiDgKZ6XI=
X-Google-Smtp-Source: APiQypKEhal/a/9eJAs0/8FDulI2MY+mw7utQLOuwpGhH3WGV7NecxhG1VQRXw93N1IRfx9v8652Pi/DqPdM9+vqa8A=
X-Received: by 2002:ab0:cd:: with SMTP id 71mr5571242uaj.109.1587376069703;
 Mon, 20 Apr 2020 02:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <158735030084.17831.6159788305648251972.stgit@localhost>
 <20200420121403.aff9fb209ee0da7f20ed3ae2@linaro.org>
 <CAK7LNAT9y2A-dX2Z-2pAsbRvKReoypmoP0hdbWiCGR0G8CuK0w@mail.gmail.com>
 <CAA93ih3X46k7F0Mzv=-H0RRAVMemXmHFDc+trAKn2c1tLOQNHA@mail.gmail.com>
In-Reply-To: <CAA93ih3X46k7F0Mzv=-H0RRAVMemXmHFDc+trAKn2c1tLOQNHA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 20 Apr 2020 18:47:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNATYy_tpGT5+veqVwsa9x0e4sYZPmzba5vYvvLRtNYpamA@mail.gmail.com>
Message-ID: <CAK7LNATYy_tpGT5+veqVwsa9x0e4sYZPmzba5vYvvLRtNYpamA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Akebi96 board support
To: Masami Hiramatsu <masami.hiramatsu@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_024810_501276_5A544CC0 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.90 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: DTML <devicetree@vger.kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hiramatsu-san

On Mon, Apr 20, 2020 at 6:31 PM Masami Hiramatsu
> > Your patch submission is still strange.
> >
> > https://patchwork.kernel.org/patch/11498025/
> >
> > This patch is broken.
> >
> > Please make sure it can apply to the mainline code.
>
> Ah, since it is based on the linux-nex.
> OK, I'll update it to the mainline kernel.


Oh, I did not notice the invasive reformating.

Another way to merge this cleanly is to ask this to Rob Herring.
Either is OK to me.




--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
