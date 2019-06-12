Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5284252A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7sCjYZYfcY9X+YCX0n2PGJzc6uhYCpe5QJhX/dWom8=; b=UsBfcE0BTSHHZ2
	beUUcvxnuzuz48Rp5Nz6nMLSIt1MLMlziDA7hzDw9yPQDBTr/XCvaNLsGXuDvFZcoDaLaFzHbrGb2
	RydGSu6/Y9wkQ3epoVGhlT1iSxEgokk+/eP7K/QSmVP/Hbylv11PwzyTsnXW3Hzj+k/7LEulhDN5U
	QSI73w29q72vorELAkY5tKPXCjFD3CB0jUWpczLyIY7yJ80gWy33xFhHzA+EKU7OUdG2g5nWWqSs5
	0WfwlmCWaSvIhqqMhUgJkCQAMUgIKyVjLcI4sVdiWlB+u1m4z1Hbkjte1HTm7b1L19bVHIGjdCHqq
	yPWxqRlZLO4vZuZHrrag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb26b-0008TX-S9; Wed, 12 Jun 2019 12:11:53 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb26U-0008Sf-Ft
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:11:47 +0000
Received: by mail-lf1-x144.google.com with SMTP id q26so11913115lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 05:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Duu79dpq4xQ4GqJnetl02QLC2/nvLqahgO6AyVV2eW0=;
 b=i68wzTyTJMBYZeU/Uf8aHN3gFbC7lSoRCAZqZl+xhx72QGrEg3gqZ5/y1WcXz+vc9z
 FL6gxN8vFOSjCuJqXkAx9zVf6miod5Aahafo/JHI2RJw/2eez0ZDr7jeu/PJ79VymTvj
 3zzQbwQP5OZnLmuRwfuojhikVBJT1vGDYJSI9c/3KFaes0wXblo5dELdA/xtyE1gFn9z
 FRZcIDktNxleExVJgqFoQYntcptFTRamGrwaCQol0FxU7gCy4pyW/dnBjS+U71GaRy1b
 KNoRbWZNvqk5Vk3nntGu8CUDBKyEVszeEt4R72o/hqK3l8zTzt8VFBhODmKgqk6+COSf
 AAPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Duu79dpq4xQ4GqJnetl02QLC2/nvLqahgO6AyVV2eW0=;
 b=R+auLjBtwsDSL9A1KDq81v+Wz3MqoFBh5eewVSJkz5v5yLraA8JSmzvE4UYoDBUzjq
 uuzDS7/bKFK7Yb6dD6KtmBOumCK3DU9WjvTqG7O2gBi14AO7ZTrhFLADEiqaPNPK/Ugc
 GNw+9EoeiZOOhJpPuhe9OsX1BApTOGeITz458oUw3ycLmxaakIQmSyR8gRroB9E+GU0A
 K3QpBXFY1hGEu34HCpobQ1kf9k3Og/qvMUXAzESDjaZKJQ8l3nfdO5E10qjg3iLsQue1
 6ZgCgefL9mF/nnCklRAD0dqsAGOuG6ZpcfHO8LAHsFZY/A3vxxLibIhjjHfIQ4xeBkv6
 5W/w==
X-Gm-Message-State: APjAAAXBziyoSRe5onSZUCdqM9sj2XCoICflyj9nHkc20zTpfULGc3rY
 KnZfQl+rnKGSfjVWTnNzHWWtvuKqM4Xgu4ZfXjethws6
X-Google-Smtp-Source: APXvYqxeSw1G1TV/Mz5WMMi5ca+pxpZ1Zqv2pYg8vcbT68h3rpCYOTh6UCtYKXmOybD0IJolLu2MDJSxPI1hB0SKH8g=
X-Received: by 2002:ac2:598d:: with SMTP id w13mr39539109lfn.165.1560341504411; 
 Wed, 12 Jun 2019 05:11:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190611140940.14357-1-icenowy@aosc.io>
 <20190611140940.14357-2-icenowy@aosc.io>
In-Reply-To: <20190611140940.14357-2-icenowy@aosc.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Jun 2019 14:11:31 +0200
Message-ID: <CACRpkdaj-VkHaENpSqW32gFYBuLDErzqoKZ-aD4W4htORN_SiA@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: pinctrl: add missing compatible
 string for V3s
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_051146_598520_952BC024 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 4:10 PM Icenowy Zheng <icenowy@aosc.io> wrote:

> The pinctrl driver of V3s is already available and used in the kernel,
> but the compatible string of it is forgotten to be added.
>
> Add the missing compatible string.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes in v2:
> - Add the ACK tag by Maxime and the review tag by Rob.

Patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
