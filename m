Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904D4815A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jc0RYdmtmyMG9WSsnr+MjB/loJ5+Rjejy8NUma35eO0=; b=R4+4KvObKsG4T7
	yoTI9TyUFYjfJ2eTzFKWq3Q1YX+6u3FXJG7d5DRINj4CrWY1wRRod0rxWBucnspAtm9dGV3ZWInld
	SX+tIrA2olb6MCiHgsCRlQiRYu49AcwB8DzKOqDwFl0pFOfUK5YAN5E+wurdl3VqvWzO8I7stUGMs
	kJ7MyydOgSsQ0bfUV5+5WN2jkeEbFYZtmYD+IVcmE3nYRoVoWfcIkn9MpjiVztGRfanbrqJHCe3zl
	NKv0wX6bJ/49EejOKRyBUcJdJz3ryWtbRaQUl5KHB+sjHzie5TlP+G9LvOIkVN0pkwKdnTs+haZEC
	ugE4X0T39S2E/ID9TFUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZSX-000318-Ij; Mon, 05 Aug 2019 09:39:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZSK-00030C-O8
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:39:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id t28so78719777lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4OPoeAcP1A5mqwy6qFd8vLmNAKWAe1p53hw6o+WqWT4=;
 b=OV1qyXMiWvVc/Vac6X0UmU3u8pprzj0rSq71hMjBU8xtb05Rtzxm4DWYynedYvPo7J
 4miDsvZc2iXNvnNzPkj979CaCqoNBgjybVRpWaUjnqcf4rDpH4j6h8XJqPODq4v4KEke
 hLL0elo/qlCz4TbNLtrZS26VAruHlPS0uAXMg2pG3DniVVjKfdkdVDSR0X417dJOaPnD
 PVr1+tSoCjAJzs5CIkykoN8PnZ+CryZEfTdAQc9KAifXH29eXDMH/nyF/jOxqUFqN35c
 FPVopu9gZhPADM5b67fqzwrcvD5u/kCplB6hNQ04kCnyzsguwvJ/q5J7h6+coMWLrqed
 2d4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4OPoeAcP1A5mqwy6qFd8vLmNAKWAe1p53hw6o+WqWT4=;
 b=d7e+BxdlAgq1c7wjcjgp7eFpm2VLOw2xR+Q0Zgh6OhdZTDg6BvSFn3C4SRF96yMh1Y
 ozLQ3yTEb6DQFGPbJRB6DElymQuqFHBTlqltFMn2NjuGDvJIvUhotXy88m+Hxnw5KgcO
 V7JOYgOoG1oRqQqY/dV3K8ZGzvaWhW2GnXyR9o2j/NJJKWqN+n/rqRMQStlggJ7zLhpY
 3HVN1Vpwd220adRt5Edk39qoNzxY1wWeXm/ntOFk6rBVLwrX5KskLoah/DZIod4k2whu
 6KMwdReA2NxfdM9KZX8EXL4dFZetQOg678rseP/SQ/90mDBLL0rNxF3ObGwDLU++cvvC
 NkUw==
X-Gm-Message-State: APjAAAUZG1QJde+gjfpVRGIIiZyjtoDiwoBmwk+RjkYM0OJes2FquRjh
 6m89j3kvtOrvJb/3UFGBVelXzQJs3m912rMpNfQMZA==
X-Google-Smtp-Source: APXvYqxLKF9i6t/614MmaviWtNy0DDQNZAvHLaTkOyZ635eFHTQY+3LCGLOTkAmzB9cPvRTg/nqwrQ2WBwcpMBU06F0=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16346425ljs.54.1564997942805; 
 Mon, 05 Aug 2019 02:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
 <1563776607-8368-3-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563776607-8368-3-git-send-email-wahrenst@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 11:38:51 +0200
Message-ID: <CACRpkdabfiDbGmAQciAUSThY-KfTsVq3tHz0bBszs2j_ej18Nw@mail.gmail.com>
Subject: Re: [PATCH 12/18] pinctrl: bcm2835: Add support for BCM2711 pull-up
 functionality
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_023904_789593_EB58B413 
X-CRM114-Status: GOOD (  18.92  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 8:24 AM Stefan Wahren <wahrenst@gmx.net> wrote:

> The BCM2711 has a new way of selecting the pull-up/pull-down setting
> for a GPIO pin. The registers used for the BCM2835, GP_PUD and
> GP_PUDCLKn0, are no longer connected. A new set of registers,
> GP_GPIO_PUP_PDN_CNTRL_REGx must be used. This commit will add
> a new compatible string "brcm,bcm2711-gpio" and the kernel
> driver will use it to select which method is used to select
> pull-up/pull-down.
>
> This patch based on a patch by Al Cooper which was intended for the
> BCM7211. This is a bugfixed and improved version.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Patch applied.

I think I complained about some other version of this patch, this one
looks entirely acceptable.

Can we get rid of custom pull settings etc from the upstream device
trees so we don't set bad examples? I have a strong urge to
throw in a pr_warn() about any use of it.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
