Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4103A340EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHvLTOSLafcEtsVhHC72vSheywZQK5BTlLit55B7r24=; b=XyG+j2J7RmxxEv
	cIDVCdS1I4Gi+CGSCfr/OlpaLtAAAd7S93pzEGRv7BZy66WvGhwUlr4KZvK+cY6twZ2fFXfA24eq8
	rnUEy75FF3wAH2NE5+6sJuH1vR/h1aqF4Xt/MXH1RwMHFQ3LvkPAqw72kZeEMejwjjzRqXFpFDmey
	L2wAm7IGvFlTAccwCyVYS7egAIBnaKkccJON4euxk36AXjAcFMSBkCBTQXkongjKHOTW4GcvgjXEX
	S44VFZAdzjeQILWA5MG2A1T+xaMrPSXPBXbd61x5MZuE4RhBEs00PmNE2DLADR8Me5mGS4XdbvTLI
	X5i1e6B6InG43X4MR73A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4L4-0000wa-Na; Tue, 04 Jun 2019 07:58:34 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Kx-0000vm-9p
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:58:28 +0000
Received: by mail-lj1-f195.google.com with SMTP id a10so15503062ljf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:58:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PvzPUYqH9nK8SbQWAc82SWJDMQ3U5uh7URsnw55J3C4=;
 b=DtcSPpdsvPiVq2pGlJePe/9dTRNLR3b4wNUZZtpPt616ABkBHQcMA9tlh5Z864Azan
 wUTFtMuR87wH8lkL2tIk1b+39XAswa0uw/5i4LB1sn5q+VbL8gZwtcOzhhEzl/AEXHWx
 HReOS/PeEQf2Sr3qeX2CSwrqMqXJ/+87sJgv+N5to2ss2a2b5lH+V5kASdYgw8/LYdZk
 ncaILFuwrgin/UGSzoZ2f82bwCKsxPa/JZTpNz2vzy1GQTfjc9MO43bN7G8J80HDVxRH
 XftSsfJQNqW1FRKukkZLnhoHWqgz1QlOzNuPcROZH/BpTCqJPFwLJYvID8KLU/gSWfH2
 8CrA==
X-Gm-Message-State: APjAAAXi1d+TCrzYDqM0xcWmFta4dYkzog95VjZz7V6nqgUD9iJ/1vKn
 tzj0ggycYasGxs53xKt3BjskAAgo8DtZZZioIsQ=
X-Google-Smtp-Source: APXvYqzyNjeGH9IY0uqaWO3UGMfVzFElxcuWP4iy7hCnJsRP9LUNXru6GUTEAJ+AO84Enqz2+uHzAe5xYgWCrN99H0U=
X-Received: by 2002:a2e:91c5:: with SMTP id u5mr4689510ljg.65.1559635105692;
 Tue, 04 Jun 2019 00:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <1559634891-20075-1-git-send-email-krzk@kernel.org>
In-Reply-To: <1559634891-20075-1-git-send-email-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 4 Jun 2019 09:58:13 +0200
Message-ID: <CAMuHMdVv3OOPFQOOzG2GnSwjnfQF+DajbUGaQK6h-82h5UiawQ@mail.gmail.com>
Subject: Re: [PATCH] MIPS: configs: Remove useless UEVENT_HELPER_PATH
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_005827_337735_93EE89BD 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, James Hogan <jhogan@kernel.org>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, bcm-kernel-feedback-list@broadcom.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 9:55 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>    made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>    [...] creates a high system load") and was kept only for ancient
>    userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>    README: "Legacy hotplug slows down the system and confuses udev").
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
