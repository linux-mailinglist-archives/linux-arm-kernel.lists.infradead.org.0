Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7EB3202B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 19:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfPFw4n/HbbFveXWm0XrSo+kGdugtPgUfoAM0oDZfQc=; b=aB07YRaAJq/jeH
	egIs31YSivgIbneGzICcpqroBbBSp9eBPNGRifCG3dEXoRoQ13x48UwSVkTtkWpwUb/xMhPzCTKSf
	V4K2KouZKuIpxajYU7MWv14pxrzyRnCxI15QK2z3U4VWHniIsAd/38wEJWNMRI2ZC8eRxCBwJy9Ho
	cYG6XLkXEOwqLYVVhwyUtqpmF+QccreQK2Iwhvk33lgKXqsOJ0luLVsKIu8rc1vCqYvIJfA3VRRnb
	vhQPDfXwfzfyln7mTSvqfsB8AFU6uZo7SnG3PuOY9nwb5ibmixFWm4hHaWSnxuS4qxxAzAZA7efqE
	/VijstBdRqP9MIublG3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX7um-0003bu-Ht; Sat, 01 Jun 2019 17:35:32 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX7uf-0003bL-Av
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 17:35:26 +0000
Received: by mail-lj1-x243.google.com with SMTP id s21so1900487lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 10:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=owmhC4nkQ++0XWcQKeCbAiLKodtwVwoOL0lLVZVcgyE=;
 b=WerUmUvFuVb1ad6IAGBDRNrocbnRRe/ludsVjfZCo7EVt4en/Ja8o70U0DMLbhvG20
 sk9Ry7wH0dKBjHUAuIMonGzsi/O5gR0QAf34QQl+i4YRH5jyZUcXmHYnsUGS6KHDbHM9
 DJjELC2evjoStf0LYeAFVEfWL0dnLm88pVHlmUiLBTUk0U8JLPkxjpxzujDTTKXI2AIp
 nEj5ui2QIbFv5tqVv/BrJi5wzVULfQ8NIpuDZhRNJkWG57ZMXOwo37eDsa2K3tlQzGo9
 6EEmeBbimUfiJ+R/kstgGxrxMYMv7Xo9vBZRhNAe63uDyH0exAXY2I7sEBevheD9mKAZ
 N/Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=owmhC4nkQ++0XWcQKeCbAiLKodtwVwoOL0lLVZVcgyE=;
 b=V3u7lLltvGKbqSAzhhwNteSllb5HMEAqM1SAJjy1qOjuJWVnLTfeYGT1TSGQcfsEN7
 1Myy7UfmsiksAVJjmgWdj9CiBh8jmhJqp6zaFp8eveYkcY5uLXQ9aepIJVLwBR1xEDiR
 8pl+4wlUHDzbOg9AyVU9KumK6pVGh0e9EFnCVXQaCcM80Ug5sCzZ+mQB7JaPz/PxvVkf
 KPIRHrKRGHa8QQwsNHGIIRAW2TPmKDR9d7sUB2ZmEJPvwLQGxoW1/u4UPWpmfnkbe2Ev
 uA3UyfWPBCHp3J0xxhIE9hW3QAh7CbFoiSgn5R7VC5I4CX/dtDNPCtBBKlor4zQUz1fR
 Smfw==
X-Gm-Message-State: APjAAAW9VD1Mjpc8lhmAjN3Cz8Ibk/ObbHH4XoezjH7bydeLBm6bXCz4
 zoia8mmRhd1c+f4zZ7WpBkwtLg47k/rW/U1VeSdp3A==
X-Google-Smtp-Source: APXvYqzq9gTWZsAaPSchU/CdBc50ntEnexEA2Elo8kyp/1cSgd9LzQr3i7TrIBqh5qaIoJg1bUhCfWWkTV+Bw7CC2tY=
X-Received: by 2002:a2e:5bdd:: with SMTP id m90mr289291lje.46.1559410521088;
 Sat, 01 Jun 2019 10:35:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190520144108.3787-1-narmstrong@baylibre.com>
In-Reply-To: <20190520144108.3787-1-narmstrong@baylibre.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 1 Jun 2019 19:35:09 +0200
Message-ID: <CACRpkdZ6PBMPDie4RyuPfzfhs3W5XunZMqa6cG4bg7+kEhUegg@mail.gmail.com>
Subject: Re: [PATCH 0/5] pinctrl: meson: gpio: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_103525_383166_79E80514 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:41 PM Neil Armstrong <narmstrong@baylibre.com> wrote:

> Update the SPDX Licence identifier for the Amlogic Pinctrl drivers and
> the corresponding GPIO dt-bindings headers.
>
> Neil Armstrong (5):

All 5 patches applied, I took a quick look in mainline and it appears those
files were not hit by the large scripted conversions to SPDX that tglx did
recently.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
