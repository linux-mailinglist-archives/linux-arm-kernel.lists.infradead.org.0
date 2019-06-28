Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9874059F6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMhBPRBxSYWNsXYHkyNo7q27diHphBblfcLdRDC260E=; b=UAN0rGkHQkmt1G
	Z5wB1S6QVgJZV7J7ZGa44j0dK+yySTnr0IO7dvPUQQ9lveAbxEGd/801ywy13Y21XgHGt0rv1MfIX
	0b3rA3ht5dxFFRiHXlQTpwr9mXBAPjNY1d8+izU9OUSKLTUHe7jBix1MgLJ0Nms1cShQj7czG9Mxm
	SLAyPw68gqvC8/y5hL6DyUoBz6B6PJQk/rNDMeD8HioODLTFRdrkr7YswNuMtTAcY5Lm59GmpDvmd
	ihSyFqeoEgiz/U7IH0myK+f+ZTfOPbPi4YcQS27LJUyZWlMl3lYcS9rM+rWxLVMmIhZzT/s4wYryn
	098gErgTv8DMNSsBuFMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgt6p-0000cy-S2; Fri, 28 Jun 2019 15:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgt5h-0008H5-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:47:11 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43192215EA
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561736828;
 bh=IvQrseI2FT7GlH+2IVTYalj+9dZqPkQ+umge7Io8BYs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qiBPRUh2Rl/4JkSewXW0u5fTbCvxhNAiAvyoKPvWUekoyPQH5NWCaeHqoHo8wrx/z
 +F+dnsHWd+I11+gyHYSrt7TBj0HOf3gNZZL6EP0gSEQayXinWtxuzoeLJlLC3Nqneu
 JmWm7oUz6pJSL2mRKcrxq7zpVd4D504DPYgODGcs=
Received: by mail-qt1-f174.google.com with SMTP id w17so6769387qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 08:47:08 -0700 (PDT)
X-Gm-Message-State: APjAAAU0fYJU1JPKXmCqG369wxIVKc7PKrE3D+uslyixgBJ9tw+nMnj8
 raMqO5ACvN3omNOwfZGr3QeMiSupr8FfmVH/Aw==
X-Google-Smtp-Source: APXvYqzI7nz1Eud6yl97g4IKf/vW5/y3ZQY7AiYHNAFU5cp6XG9kpOIjyOkxG/G+hIZCgCZpbktv/2gOhf4y7pIKPB0=
X-Received: by 2002:aed:3f10:: with SMTP id p16mr8736951qtf.110.1561736827529; 
 Fri, 28 Jun 2019 08:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190628023838.15426-1-andrew@aj.id.au>
 <20190628023838.15426-3-andrew@aj.id.au>
In-Reply-To: <20190628023838.15426-3-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 28 Jun 2019 09:46:56 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKjDyuDjeBBqhF=2ceG2h0WiJC6QKtHJ-=yL3XqxXF0Hw@mail.gmail.com>
Message-ID: <CAL_JsqKjDyuDjeBBqhF=2ceG2h0WiJC6QKtHJ-=yL3XqxXF0Hw@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] dt-bindings: pinctrl: aspeed: Convert AST2400
 bindings to json-schema
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_084710_151438_9C639473 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johnny Huang <johnny_huang@aspeedtech.com>,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 8:39 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Convert ASPEED pinctrl bindings to DT schema format using json-schema
>
> Cc: Johnny Huang <johnny_huang@aspeedtech.com>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> In v2:
>
> * Enforce function/group names in bindings
> * Move description above properties
> * Simplify specification of compatible
> * Cleanup license specification
>
>  .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 ------------------
>  .../pinctrl/aspeed,ast2400-pinctrl.yaml       | 81 +++++++++++++++++++
>  2 files changed, 81 insertions(+), 80 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
