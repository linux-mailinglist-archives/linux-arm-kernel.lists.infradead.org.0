Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707392080F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82dWueA2jCFKEuRydtICkosLiHh9LzqRSI7eTwd7qJc=; b=eWwBMjMnuWzAqs
	szu9/iwNKGYuF5qdDVcDPVVKLNr9S0rgSQf3oIHUl1ITW92jv5FGd5HQigrJ3Kqtq6I+1sLj/Utl6
	HCGaogFbkR6OIp869zeivNBJVqDiF3mQjtXBHd1PQq2wOmj7IzOAmVyCM5DrCv0cuC0B7CSkVPwqs
	H7R/ydPeAm01qPwcaXzr1l69JPxBnDdTjMSN2+5ZPqwLcP87EKuTDmP4QpwdU0Z0Ex0/Kd5ZC6y0W
	xYS9Jgw57GCZBDj52/4IVupHhCAQo6873ReijyXJT0BkL722qopq/cy9TkgAsmXlnszRchLdife4V
	7VAILbs16qj4xAkQJ1wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGOO-00022e-Cu; Thu, 16 May 2019 13:25:52 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGNm-0001oY-Sz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:25:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id z1so3101953ljb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T7i74xwX9U5ncTUvzhWe57o2tW8tsCxNGT7kMEIaIPk=;
 b=UZ2HOcb7CW2/11jSTnSPHfiHBasuAf7GrJd1OBF6+iXtAEPjKJR5dDzMbRtLzM4B0l
 /VkhzqF8QqngYjEeMk13keD+R52PQsWlMoV5kTRyWfoAgz9X9IgjKR6nnUSsEwV0mlvq
 y+2K3uxFvkCLSlgMAAxkNqa4ewh01JlutozwHyviQURNfG80lV2yU7d+3oyeWqBazhAI
 kuHMJC9agm5hBYp4WmqgZDYo+Xp7/nQBxPU7o3rG/+09m1MHnx/mOwKZsbFpC+wr6c5S
 sZFsWoZBbHj9rRsvLHsDi9DOijCG62RpIhgTZ5Oe6FQPq/y2Q6YEKijQk72SopivTngI
 oXlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T7i74xwX9U5ncTUvzhWe57o2tW8tsCxNGT7kMEIaIPk=;
 b=UfLA6GEbpQl3fIRX/Fazqys4kXOhQp1eeZ5m79Dfm9r//FUJ7JS6HuORQxg3sU6HC3
 78K2Oi1uokh1Dt7lv4kxSQXyV0N1jcZJiGnQaGPp1wRfJpllAcEsSmYd7hwxpsghG01Q
 2Z3oHbVK2FSVrAJx3FsVqmbUlSE4YzDM33RT2MF6jISgVlgsuruPAsAk9KyPreIZAYA0
 Bkt+DU63ghuFE4/jgFL2fN/BZQwq973hi/xYQJynk3Mc/WDy0f/cfG+BURQyZAoXGT/s
 A7jsxOXz/w3RToitCnZ2z0o4dBl4TLS838HNNSt0feCKcf06FwSRjWjmlQoc1CRUY8Nq
 s12g==
X-Gm-Message-State: APjAAAUlVHSm/BjUlAHI+sXx4j5s6mte3kmSJ4HwIl+AyP4FyfDppl64
 FkLhyW+h1MyFPm+QATvENtY/AXFLdsbwGoYJnUxPkw==
X-Google-Smtp-Source: APXvYqypGlrkwcWpkDZqIzkGCG+DJBLuflw6yusCBeidrQObvNv3EKCslo+yOFvLup20kJPOGzeawHtuUNUjQ5uzhwo=
X-Received: by 2002:a2e:731a:: with SMTP id o26mr21535501ljc.105.1558013113062; 
 Thu, 16 May 2019 06:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190509205955.27842-1-f.fainelli@gmail.com>
 <20190509205955.27842-2-f.fainelli@gmail.com>
In-Reply-To: <20190509205955.27842-2-f.fainelli@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 15:25:01 +0200
Message-ID: <CACRpkdZqAi4bbpGO8sTBq573dDRF-VWg9gE8=uGVJ3Jv0MY5bg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: bcm2835-gpio: Document BCM7211
 compatible
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062515_341741_2CDACD93 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

> BCM7211 has a slightly different block layout and some additional GPIO
> registers that were added, document the compatible string.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Patch applied for v5.3 with ACKs.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
