Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096AE8172E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMxwSq/cEF/y6M8DkVsH1+oog6hWggfRotDYI946b+I=; b=pLqwJ1oSjdXXyI
	chNBUvaDCgsMfEwLrtVA63WYy3N1dbprv0GTkJMIRIlVTs8car4wNaPsy5mwxba5TsEoueNx8ditP
	j6yQo6h3sBWEXD3AKJWiGBp4LHplX0c5GpcTW/nbIg0vExyFuKViMYzjQwtdj+vKRyYy5kJiT8qVK
	OGO3t3ujInH2TZDk7mbdRerZIzHapqIOHtsYKAzF6PWRQomkkfY80txzc+T7Y4dgzbjnuZRJ5PZQM
	7teL3P5CVu3V8q7OuoNct9xoGao3rJdKNxZDqbBJjIUpBm8yWkKSH6jz0jXbUjTpV0C7W3uqWIfM6
	I3AyccqvlM0lvrJrkO9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaLr-00059t-Hq; Mon, 05 Aug 2019 10:36:27 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaLg-00059W-NK
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:36:17 +0000
Received: by mail-lj1-x242.google.com with SMTP id k18so78833157ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WMDXKniohFuBPRLguP0pUUrpe4kGWQLXsJ2UgVzEajY=;
 b=Ja3y/qCciaFzokLgL6u25vb1VO7Jhd9hDVgi831a5t9rj9AH9Un97C+tZ2f0nZEfH6
 4D1vVJRh9qg+tqEo+zKbHUZq8lWz8hQOwwRPR3gomDMkjUS4pRhVtqFhPNrain1SuaOr
 N6vly5/z6MlhpO1oDoBNJG6X5kHjq4Esv3E9SaDVBY9KSAZ2swaRFmzu6u/e+0ZHK7pZ
 k+CX1SeKUVCBajhNjiMExFEk5RgmYg9qiXnYAXCD3PbiKWZnJIZ3tDIm5MESgqVbbjN9
 eLdGt+lPl19J3ik/4xmhMzMB6BUjfJjxYQm15K+vO83/Te5WnuvP+l1NmhkMYq4cUeXT
 Nn9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WMDXKniohFuBPRLguP0pUUrpe4kGWQLXsJ2UgVzEajY=;
 b=S7S2S1VO49wQJuLeQDgfEjrxLtS6jpszXO4JC6Qh5+qZ3IfSkMcd7kkMakg4QeZDge
 1V14I4E9Bo3+rkirUWSM+isMY2G8/BHMZ4wCuaMdobooi/iIgNss2ck1P1rAQyrFtr9e
 AHPF3BQtZbUq9fDj+ijvNz7bAweCeBQA3lC5yE6vtb+2C8wjY/1aMNbRht5BIaSHeoxA
 35wDq4J7MlwK8u7ZSPCze1jTIcNbUd8RPcNeWBkoJYQQzq+7cuWbZWk75u/awhWo8ozW
 ieynUA7c+u5QH3F2rB5QZaz/TAJnEAEsHr9pmycJE29wbbAZp91bgkkR5B3WzZ+FnEP7
 hiLQ==
X-Gm-Message-State: APjAAAXUVTb7dGlxnS6ZuQ8LLxcLLkm+bUrChENXphhksHkAArXZjZIm
 w0YCpiaQDr+U/8mw54mZx7N1i6bTsSWmUkCalYN8mg==
X-Google-Smtp-Source: APXvYqyB/49/aeHh2mx864HdyglYXRLbeplrleopj5uZcs1oTYM9hcI7bKMIk3eFK+kMXyQkKYCUTOCwVkAKT2Az3D8=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16472034ljs.54.1565001375393; 
 Mon, 05 Aug 2019 03:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190728031227.49140-1-icenowy@aosc.io>
 <20190728031227.49140-2-icenowy@aosc.io>
In-Reply-To: <20190728031227.49140-2-icenowy@aosc.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:36:03 +0200
Message-ID: <CACRpkdY65Ob-zbd+c4reUzYtXdk441horQ0ykL08YeBrgXWqQw@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] pinctrl: sunxi: v3s: introduce support for V3
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_033616_794963_5A82B9C7 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 5:13 AM Icenowy Zheng <icenowy@aosc.io> wrote:

> Introduce the GPIO pins that is only available on V3 (not on V3s) to the
> V3s pinctrl driver.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Patch applied to the pinctrl tree.

Ypurs,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
