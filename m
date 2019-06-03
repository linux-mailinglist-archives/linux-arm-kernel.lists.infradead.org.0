Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEFE33BC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 01:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vn+BgmuUIx4lGa4UVqwWIfohyUTzKKHgLUs2TsLTqes=; b=HJaPPeWacKO4ZV
	qcA+bhfNvnp5SdHEm8deCCMUIdhHReZf+Mqi62yxTh2vhO56qmDwocRoUbevZLvhKoZg05nZZJJb9
	iIoG/fM4iLzqtn9WJ10SduftbK+iNwOAxkDPsQqk/LPt5qxpIGLSIDbTjobpLb5/nkl2LjxpPnQ5x
	ffovnSfY38ct/n3kvt6UUyRK1cvX0lsp4K0zr0sHPz9hp0s5gRKW/+jR+vj26TnpfrwynKsXi5kEt
	ay31/pNyTirV1vUNNudNgQrxx1VqeVVzQsZLONZJJTniRjCJs5Tk2QLlLVOB7KFaj9vgW4Rewc5D0
	1gPfEOmUSCwBZuDMuM6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXw3g-00032Y-RJ; Mon, 03 Jun 2019 23:08:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXw3Z-00031n-AH
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 23:07:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id m15so9546146ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 16:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9NFfbp/l7iiiVWginEhWa3ckd/womtHkaNdf8Bm+794=;
 b=WnjU0E/rAfa9vZPRfObu2NgpsAHWsZFHvUV69mxl3ei5E4u3wUqLrcOWCZxid+etwI
 idPmXKgOnv9LyIDizXMxnkZQ+rv8mvDL6cTXNKkn9o9jIgCoa8xNvnMpVupFnH/DBubR
 z7Bbbdf/rBN4ueBDUCIbsmCasr1uaK8BDfV164NMFB9nXdq4W5H6ci7QmylT47TohsdZ
 UhPArasjBBa8E/NXknmNzB6UoToQJo50DzNz5SA86P600icvEf8/0jXCnibqqjJHvO8X
 B8hbGJOYCQTjKJyEJew5yq44nQGuynbzdgtPWt1JdD7FsKL6iZSbeNyy+BXMW8o2lh3H
 3xSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9NFfbp/l7iiiVWginEhWa3ckd/womtHkaNdf8Bm+794=;
 b=uHZbYmsDi18PSu9eR/hqLx8F94Fb2dXdNUz3dQJiGDsqhiTFIoWLJcK4yBv9TMsthD
 BiEzDEQ5x3wbyGxBpQNoH/+UxmeGp9n7qFIGpB3HOTId+COGuqsJxmKzG+2hz+5utsXa
 2V9khFfQtwzfmSMDu345YIxyCZ6Q0n2aHtgPYuY0+xfc4qf9O3epqwUVP1b740KS+F+N
 XBlgSegnhqiQUUYtE3JBHE9V2/X2Sen4SiFL37b5a6L1xhqvevQ/4eQhBpvy5V/xGl47
 HaUW9E05Mt2fvzxVAfB9lUdrZt8rkqLbo0vf1lJ95AfYS4qbvAAHEsbdRbVonyaNKl5m
 X9dg==
X-Gm-Message-State: APjAAAWxhLBPNrCS/EjUbaJF8UDUM9yURS4IdGTm7u6kZKfTwSb+OTM6
 Qs8A3APeAiKNZeq4lCsHu5/r4Goj45rJF4I6eer/4g==
X-Google-Smtp-Source: APXvYqx/DD8LnqDfO9YJiKsu3INvZtWWGhNNb2rLcK1MCFxZlVhpM9tSmP7auz1Iw4f1nXvHBAfBzZXk3RUmWeEQt6U=
X-Received: by 2002:a2e:9018:: with SMTP id h24mr8048502ljg.165.1559603272528; 
 Mon, 03 Jun 2019 16:07:52 -0700 (PDT)
MIME-Version: 1.0
References: <1559601789-27121-1-git-send-email-hongweiz@ami.com>
In-Reply-To: <1559601789-27121-1-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Jun 2019 01:07:41 +0200
Message-ID: <CACRpkdYPHw994Ov0xCfK6tCg60tiuWrRwTcYpMSfOr4G0VKu_Q@mail.gmail.com>
Subject: Re: [PATCH linux dev-5.1 v1] ARM: dts: aspeed: Add SGPM pinmux
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_160757_364251_82B1BF88 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hongwei,

On Tue, Jun 4, 2019 at 12:44 AM Hongwei Zhang <hongweiz@ami.com> wrote:
>
> Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
> supporting SGPIO in AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt | 2 +-
>  arch/arm/boot/dts/aspeed-g5.dtsi                             | 5 +++++
>  drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c                   | 4 ++++

Please try to separate out the change to arch/arm/boot/dts/aspeed-g5.dtsi
into a separate patch that goes through ARM SoC.

Other than that it looks fine to me.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
