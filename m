Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0599F8CD66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3CMPT2y2Wxp4JAejqe+UiwHegedQX43JMGY5ykYdQc=; b=uyCA1s2KblUvtI
	wP/tabZpk5nEdj0kIvpULRxwnF6DIUAnnxIsFlZYmYn3Yr9cxg6yrvtqUFhVyWZSMilJokizCVDBI
	0mKlhe8tbE5B0HukaFqTRWBdgqkYaUGX6l/DzwEIP0ygQUfZxAP2GE2v7drgIVFhLCwA1N7Ebs58V
	/ROSAd53vharZsvCWpJdpeZceaEL1XgdEr9RPtQbBUNXfO1480uIuC+ZczE2oLOQv2FxuSgXQpI2r
	vBPOux5+kJ5bv3edDjgG3AVm5C+jhac2fWJo0/c97b4b2tkcGaYJv0LHt+nEYDcYwQkNB027X/uu4
	3x/njCwARBD8NL0oRq3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoCY-00083Z-6R; Wed, 14 Aug 2019 08:00:10 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoC0-0007xq-EF
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 07:59:37 +0000
Received: by mail-lj1-x241.google.com with SMTP id t14so1688083lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 00:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vktWgJym3yCRgx3u45+g969459no7O3RZoGUxegUaEA=;
 b=vv74GiiskJwY6lBYmg6l4Zu9bHeALT4JI0bsJH4KFIuDlc1IIX6AEDJZ50lghMVEX9
 WKFFLzL6FyE3/Rs/Tf1xpXrnZanOyGWbjge1UfMjdE3r9+SVchOzBvMZFj18Zvih5p2z
 nncsdqMtWCBV2cMJxXNWcJzLzD5rgb3Y8SujIq/WjWvCRb0VaSFSiqYGIDUhgva3k6Li
 tC8RsunDocuTF/tvfbMzW6gazz1TVpdAWr4aCsEYOOwSmqwb9ukuI3vLqpnJvDEwCxpK
 Q61KnvPx9eCK8RsiX4fD7sKaYovdCd/FEf7RZ5l+HOwc3mlUsK/wRWSb1So/EgnyAI9L
 xSBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vktWgJym3yCRgx3u45+g969459no7O3RZoGUxegUaEA=;
 b=REIm4mnEI4sIb6ek6i+icAI5ZpZU32SBq6khTWAITT9VcU4Yu7OS3Ka1WNibjrW/Vb
 hfd5L58AVpuWMXsiAjqYGvPCHbO8AU13SZY4+VGWUJkjZkAQ9jZFBOHfoUqbkyfrJgH6
 irSrisZD5UDjts3tn4U4InCeocEzNEHi3N0GhSfnL8PQ5VLtDXOi1dB0ijg1qy8aFK2Z
 /dU5oTEkhL2FNNOWpbcuh8NKw5+7eJDyK1sCQo6Yedz79rs17LDhkJ5T/vWTBoMpdd52
 Ew+aeEKQeRiw1A8z5rQcx5onECVHrHur1qTtGAWJvtlMInbCIecP1c9Kw3AtWF8kGr5i
 WG+w==
X-Gm-Message-State: APjAAAWiP09B4no9LtznAwDVGRca5ccWisva7EMCXUvX+ba9vk3T6l0C
 AqhF4MaTOzVdScYJa6/bqxIBiSRSNrXPe3r/9EyJTw==
X-Google-Smtp-Source: APXvYqyu0HbKHviVbPJdDWFqmy4PxLilmJoLtCGqXaaggcm5lCdH90/gDgxNiL8hStl1RMJZCYuS/NRIVXNAMlY2Kq0=
X-Received: by 2002:a05:651c:28c:: with SMTP id
 b12mr18693136ljo.69.1565769574230; 
 Wed, 14 Aug 2019 00:59:34 -0700 (PDT)
MIME-Version: 1.0
References: <1564603297-1391-1-git-send-email-hongweiz@ami.com>
 <1564603297-1391-2-git-send-email-hongweiz@ami.com>
In-Reply-To: <1564603297-1391-2-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Aug 2019 09:59:22 +0200
Message-ID: <CACRpkdaGe4G17Pv0+X=zcgfwikv8sr+m55NZNZu5JMtLOYjaAQ@mail.gmail.com>
Subject: Re: [v7 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_005936_511777_EBF32E41 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 10:01 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> Add bindings to support SGPIO on AST2400 or AST2500.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> Reviewed-by:   Andrew Jeffery <andrew@aj.id.au>

OK timeout for further DT binding review. I adjusted a bunch
of things like whitespace and referencing other files when
applying.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
