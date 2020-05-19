Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC0D1D9151
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 09:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojweEU35kkgiWH3T02RAASahpIz7v/UE6BM9dgl3p0o=; b=DMnqYeLF54GEP7
	Zo6Y5bQh5foiZ4Ii3ZccYclS+6tvcA9P/VjiBJTmXT9jU7ELK+ujs+IwgDLKOKU4UUfZoJnK5mrby
	WzDuAqE2MiYQdp2NF3rIrFtYuL0EjnQ0+0Ipeu6202b+IkXRFqYAoZNbrEe2xt4zfGF0snpKcOKvG
	yXVaSoPzKeZM10XgLby0OoHFBfXIi4Q7wL3M/ZhBe+sGc50E42wB3iMOyeah7B/cUI7uOaOw9zMKM
	YCCB8cdTV8MB3FPgKdfae7UBXMoLhYj1cqzSBr/6UiXD9OlI3uwEW47CBmAy7G5mSfL5ux40CEW6p
	8MfbmzNvfjh4lHpx6cHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jawzg-0000vF-NP; Tue, 19 May 2020 07:48:56 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawyd-00005B-NM
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 07:47:54 +0000
Received: by mail-ot1-f66.google.com with SMTP id d7so4018094ote.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 00:47:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8p3vf6GZ5DZVKI79akuHpEhdMoiTp10fGCkVAx0njug=;
 b=LYLHg11hvrqYmgPYNrNG1p4hxWovSICXcBHxKqo2V2GRXI6dId1bxdPXoaWZQuDtsJ
 AcPlJhG+AQMlaaiErRwjKm3bHRCzafghggsmptjfG0oe61WTTa68CspMkeIUKhljaYlY
 XhXw5brxwaGjwsvHoPagUWhoupJrqf/d0PT9lEo4y0py33rcOfg3iQVY1YHEQQCi378/
 HG8vy1cDn+HReSINJ74pHxYFEsER1F8dTGRnW4C5AaL2dfPshh5cRo5k78TTHZ2yLuzM
 iVbAWZ5gyw3OsL+8UgNs5VMZDAVXsyQnKRWxjEJkFhXkuHaPasw4qbF0wR9/g3xCFbL2
 ZLvw==
X-Gm-Message-State: AOAM5308kzkN5VvAEReMA7wTHOGDcHqo+v006imQfQlcE5Otxxs0fxQj
 5e+V4k2DoUUcYqvhd2Hs5HFRgpBzObO1RuI3Mo3kPQgv
X-Google-Smtp-Source: ABdhPJyydYXnaBwtgAyVxZtuGSVz6LdgrW7NdPHLamuraQe0SZlGGsVVSGgOga93Yo0YXJJOUwR1CgUSzHkYwOnP6lY=
X-Received: by 2002:a9d:7e92:: with SMTP id m18mr14815041otp.145.1589873971857; 
 Tue, 19 May 2020 00:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-2-andre.przywara@arm.com>
In-Reply-To: <20200513103016.130417-2-andre.przywara@arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 May 2020 09:39:20 +0200
Message-ID: <CAMuHMdXkHF3ioOVzDZQARiO2i1z8rVjdN_Q0VggaVD4Ln7J+Dw@mail.gmail.com>
Subject: Re: [PATCH v3 01/20] dt-bindings: arm: gic: Allow combining
 arm,gic-400 compatible strings
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_004751_772489_51382C12 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

On Wed, May 13, 2020 at 12:31 PM Andre Przywara <andre.przywara@arm.com> wrote:
> The arm,gic-400 compatible is probably the best matching string for the
> GIC in most modern SoCs, but was only introduced later into the kernel.
> For historic reasons and to keep compatibility, some SoC DTs were thus
> using a combination of this name and one of the older strings, which
> currently the binding denies.
>
> Add a stanza to the DT binding to allow "arm,gic-400", followed by
> either "arm,cortex-a15-gic" or "arm,cortex-a7-gic". This fixes binding
> compliance for quite some SoC .dtsi files in the kernel tree.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Thanks for your patch, I was just looking into this issue ;-)

> --- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
> @@ -39,6 +39,12 @@ properties:
>                - qcom,msm-8660-qgic
>                - qcom,msm-qgic2
>
> +      - items:
> +          - const: arm,gic-400
> +          - enum:
> +             - arm,cortex-a15-gic
> +             - arm,cortex-a7-gic
> +
>        - items:
>            - const: arm,arm1176jzf-devchip-gic
>            - const: arm,arm11mp-gic

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/r9a06g032.dtsi#n177
has them in the other order.

What do you think is the preferred solution: reverting the order, or dropping
one or the other?

Thanks!

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
