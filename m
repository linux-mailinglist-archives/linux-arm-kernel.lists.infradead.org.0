Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1523AF9D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+J4sBldJch1kdQeFn64puIA3umSUCVnX3Kw0N/wZm4=; b=OMGRc8unqlV4Xp
	TgT0aub2Oqy6piVsvZ1XRCUjXnfMMAYc3UxX7u38qC/WdGEFYsteIuyeWngCc38BqV+KhX1FbTEMJ
	5qVRmkRj/4pgsV2CJ0+eS5HKc0tdQSzoDccmt/2rIJxLOBR6J4IG8ZlRM6N0JI12l0k+EB2/5NiZo
	XNA4Hks42dZQKRQOq1IQeZ9UMUt1Tq7hySZiAKpclowQr06Tq7KFreZl3aEuQoup5g11xXL4HnBwF
	qi6zRG/Dn3sa1ATWNGj+7w735MmZT+577wB+glS2hjDV73DyVuWclk2n+sggmhxVvbU1NbSeD0gA6
	30lXvQLANOmvsh4/tX6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zUA-0003Io-2g; Wed, 11 Sep 2019 10:04:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zTw-0003I3-A4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:04:13 +0000
Received: by mail-lf1-x144.google.com with SMTP id r134so15935091lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 03:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hUrALqLYIp3tenV9WPlX+wrIGiFW2sjaAtprRGLAeEM=;
 b=p2jaID0PK0kDp5GpJDQQkIXhcRDJG0tyKs3M8dW00A0nTmYl4XPzPDxiiXVVHMrvt+
 3r7lWYb3E1VbxJKjCFl4T/s7r/GjKdCpMsYFGhPYq40CrLVtcwphRVLlOz4Mi1abAmc6
 gb7WEzvYMYxI1T0Yv1JJQMukj1kqEswd1th8aKqcRAHTLbfy8nsrMproykhpVp2apyq1
 YZAJxHMjH/FKf0pJw40wEhiG4GATCpQy1rgKrv+b1JNb++7VFgOOXTCNwIkKecduNXL3
 gwOiiQuJzd/9zYidBIhoUcbKtFgICCtV1yeLL8Sdtn6e6RFujjx3Wf2pnscLkru96m90
 vHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hUrALqLYIp3tenV9WPlX+wrIGiFW2sjaAtprRGLAeEM=;
 b=W2yGZMCCK6trzdt4D5Y0fiuQx5ZCpk/OfehhmqRAomyxnHqWw3OwhqUxPGfnbKxEEP
 HF88Exa3pvdlEpK2zPtWWv+bH9CfBbBZUzT1YEd+J6tkcAW2bnoUnOllkaAdR7Q6doag
 5mp0nnreUxWSh2us2I37doUhYabpUYd7V1sKGoySa40CZ6j4g1Ilnxm+sxcs4UpVUJg9
 m/R0ArOFjoFKhtCYh0aade3XZeyywHIwJr1iVzP0RTOUimLaN5sag0fAZDxz8covY3QF
 SlpgOXVbsmw6147X8QY52QPgHXdQX95HfgQOS/DVH4qEm4mGBn0oTP2/hhHcME6g+k3z
 4Cfw==
X-Gm-Message-State: APjAAAUSbrl5a3FhAZfTJycl7bYkvo7ZACmFQP1NE9cXc0EkCvml0P9E
 AGE1a1n1N7YFFErBgO77wTrJR3VCMPVT+qsob+SNZQ==
X-Google-Smtp-Source: APXvYqzngoeZ/r34ebfHnHn3MkbXp29HvsnciD2vYxTBkFVS7UiQq+i0mLCv1JJKPJCI91Pa7RHozJe5TicykUeAq+0=
X-Received: by 2002:a19:14f:: with SMTP id 76mr22938921lfb.92.1568196250647;
 Wed, 11 Sep 2019 03:04:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190906062547.13264-1-rashmica.g@gmail.com>
In-Reply-To: <20190906062547.13264-1-rashmica.g@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 11:03:59 +0100
Message-ID: <CACRpkdY1Rk6vPihZkpKC9hya9ixQcqg9PG9rEpM3kSY0kxwsjg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: gpio: aspeed: Update documentation
 with ast2600 controllers
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_030412_356228_942E28EE 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT" <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 7:25 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:

> The ast2600 is a new generation of SoC from ASPEED. Similarly to the
> ast2400 and ast2500, it has a GPIO controller for it's 3.3V GPIO pins.
> Additionally, it has a GPIO controller for 36 1.8V GPIO pins.  We use
> the ngpio property to differentiate between these controllers.
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

The changes are uncontroversial (uses just standard GPIO
ngpios and adds a compatible) so patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
