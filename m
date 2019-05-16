Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E888220814
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIMap+6F58VqeXjk/utRiZgEbnh1mRGv7DWtualJsp8=; b=E1uAamodZ7Lp3/
	IbeG1j6fmyGU1w2L2idd1fh1LqvkqUoJkQf6vusEkVjmgkLuDG4+hl+kUI68TnSt9HvHKKpnwRclM
	LE6EVfp2eQxh3Xv9sDoMT3bGcwhuVaJfjQpd1TjUTy/lGfvVwecsI2SmOEIqE3av323yPKdbbURC0
	o5aWYl32FQF2F2DJF+kTiQq4cDb9guU3jFt4tjXqiGyWSTFUeD8sOtNazDfs8T2SNCAudxPCtEX5e
	U6NduOXS5OgcRWRM+1kKG74kE0+kUSpWr+aqVXTM3SEoRQS8HkgJUCGpRZeE5KyscDWlsTsjcwvQg
	P4crqvxZo2ABJbMxI47Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGOq-0002MA-7d; Thu, 16 May 2019 13:26:20 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGOL-0002CF-JA
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:25:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id z1so3103712ljb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YBQglN9y1UCEoiDsyDKmavv3pTw2avVwHy9wGSr4d+c=;
 b=GQmbJ3aVkAkxYq4ebWu1xQr82AleFWY5CEch/sBznZ0n1N0TCZv7wWXuBmc5XP4gK9
 0kz8teIQJnMwKDt4K3j18W4obgX85WUOBdEyFawJHemHKe/k3RiymhPVyQ15zn3EOflo
 68z0GFwwNB0yuxgeOj4koQP5hlddq3mITwbdTJl1YABN4VIEGYhAAVYgj0LaHQ/e2/3f
 igDW+NXWmbxv28jV6e2QnJqq+R+z1fq+bQEsXVh4pRMoJVxLNnB2ISHUhoqATTsEUlzq
 MhKsuF+/P24J230PUDWXeuNC2ijNAiqOyXuNACqs8iMiQsma6XyJtItfunwihjMfiT5s
 4i5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YBQglN9y1UCEoiDsyDKmavv3pTw2avVwHy9wGSr4d+c=;
 b=OAHn+LGWDoh3H/QOMpo1KDlZ4SEVxZzfzI9vJjetrN2K0LzJWSuNojsc0lGIZb/n/t
 wpNhWhjbqvju9G65wr0OGk1ks8b+vS0lW93D8LXcBgsDrO+AGpXD/mc93fNnnrPvhT+j
 62VV/34gPAk++yLMux37pqcBumCg3mcEKrNSFr0SWN6gJ0VP0LreLy7N7VBaAsht1MCa
 X1WK9K1X5/zSpCwQutK1gGPjCHDkP811e6IwEstYznOtVr2eO0KtnI8qdF/PD6hPD2Fk
 nJv+8UvTu45AW8m7/n0dRhzKruH3jEhPuACOMOTB69ipsJ1957uglNqv+7u7tV1344KJ
 EniA==
X-Gm-Message-State: APjAAAU9HmvLj6ij8Z20MotHpHvfEwLIj1MNXcQwKO8r9/E2sfgpSYKe
 eHyA8PYQW3RzZG32jfPPt3EKFS7WKJjGI57+2EmP6A==
X-Google-Smtp-Source: APXvYqxyM8uKxGHNJAN6reja+yN/0m8IqjdmaVrInAyROSmFRr/vSpkDGQKVYugaZ4aLVYVtQpPVddOrXFdHM695bek=
X-Received: by 2002:a2e:60a:: with SMTP id 10mr3406462ljg.126.1558013147786;
 Thu, 16 May 2019 06:25:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190509205955.27842-1-f.fainelli@gmail.com>
 <20190509205955.27842-3-f.fainelli@gmail.com>
In-Reply-To: <20190509205955.27842-3-f.fainelli@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 15:25:36 +0200
Message-ID: <CACRpkdYXp3LMXrSQrndUWWNq0eYb=P22FC9V0__j2AZPGCq0Jw@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: bcm: Allow PINCTRL_BCM2835 for ARCH_BRCMSTB
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062549_846175_8A103715 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Doug Berger <opendmb@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matheus Castello <matheus@castello.eng.br>, Ray Jui <rjui@broadcom.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Al Cooper <alcooperx@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Lukas Wunner <lukas@wunner.de>, Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 11:01 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> From: Doug Berger <opendmb@gmail.com>
>
> ARCH_BRCMSTB needs to use the BCM2835 pin controller for chips
> like BCM7211 which adopted that pin controller for GPIO. This
> commit makes the option menu configurable with default enabled
> for ARCH_BRCMSTB and ARCH_BCM2835.
>
> Signed-off-by: Doug Berger <opendmb@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Patch applied for v5.3 with the ACKs.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
