Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E2E1ABA4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7uw5UkzMLry8pql7jR7raFShsHK9wuXb3uUqN7LtgE=; b=TdyZzogZmtSYa5
	W8h3BnUBC4DlanxzVWgvU6suxJNOboBZBR3z5/BJBM5SFJmRLu30t/2cgQsiOcqmFOyrXhSsYIwpb
	2nOiEJ78Uk2Gu4cxSCFWuNIeJNTz1zw/goLtqUD7sHwGHkFWVU+Q3K9UELkAgRp9CdxMTyb0Urp0j
	lCA/VASv4Zj4/p6R46naIvy/V7PhIKIQBeZDPhFrK0qvmOqhMUr3BELVYcIOdc0uXzmlWMYMP8JeI
	9RNPwViU4r/flWIFfY1Q0ptkC+d402LxXkyXyOmgepl8NLnf1LcwHT9gANGGcJaz1OGRopSqYW0jY
	GX3ZlQISqokp22HyL9wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzJd-00063V-E4; Thu, 16 Apr 2020 07:52:05 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzJO-0005x5-ER
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:51:52 +0000
Received: by mail-lj1-x241.google.com with SMTP id e25so247622ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 00:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=loMCxNASFvkfTDCyeUmtP2u+gte7x5OtiG/cQmRKcuQ=;
 b=xMUW3PGeSrw4ARkL9VDfzWDbSGxC6xcX4Ki7j9FBIb94zY/nyX3c8swn8+2K2eXQWf
 u5I0kwTaOMKF60tm8Ybb4RI83J/5chP+BKkJGzpCt4Njp+d5eKgO+RHGsvNhseRCUr0A
 kxzkYeOwrVdKr3ln53f3UvwS5CL7sp7ao9UeUyT58VwwdOmE7hQ8XnRCvvbD0t3FKapJ
 oJRfgQsGirpJkwaZ7IV8kGn4+8QNBvxXn8FYrLA5QKLO3da7dEJHYdfloWOUGYngvefF
 kPv4d618uycUv1TdFu4hKJ4ZeXV264Nmr2hjONIdx1CDO9GlIQy4qphT6PWNZXnRrTaf
 KZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=loMCxNASFvkfTDCyeUmtP2u+gte7x5OtiG/cQmRKcuQ=;
 b=sBSu43Wa5mUX1smH+PGeMolkv/dIzBNo2XL890H7riNoutoNkLhiqw8rzzUusZb8mS
 LYpBzoTZ+4kecHjbZjOxwYGOJ4s4EzKoN/Fh2ct0dd9IiiSrqAKH6ol1L+5TXHXh9nq4
 gSY1wBw14Qyxf6lOAzVTxf5AGISz4I5A++RQA9SBLDxs4xMMlEhoACHlfF5YVyPMI17R
 5vKkmH17JsR0INpkNBj8Tio9zJf3xuS3N7cRwreHtfJEkbNbcUncwO/1fuTT2xahH0Hy
 cdIUy0Um4phSH9ROzA23trajBzkYzAeyL3CpZgPaAUiuN9xcY6ElhjeFMVmjUJFOqF3Q
 BVfQ==
X-Gm-Message-State: AGi0Pub/fjIFK0OKgtnq5nyW1RWFH7AgNGE4T7xOp/s1LLvJ8E9RleBa
 ucTfgkcn+e91QdFP7an69wEKLKjEuRykvPJ8Oy1fwg==
X-Google-Smtp-Source: APiQypJ3hmhHjH4xlCLoz3/xbW/q0EWD5I/m1MGIq4yanefRacOTieYBUa0MrvrxoWyMyTHM8e3D7N8MbRBPt6Mds40=
X-Received: by 2002:a05:651c:32e:: with SMTP id
 b14mr731003ljp.277.1587023508445; 
 Thu, 16 Apr 2020 00:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200329104549.GX25745@shell.armlinux.org.uk>
In-Reply-To: <20200329104549.GX25745@shell.armlinux.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 09:51:37 +0200
Message-ID: <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_005150_559781_6A89B68A 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Gregory Clement <gregory.clement@bootlin.com>,
 linux-pwm@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 12:46 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:

> This series adds support for the fan PWM output on the Clearfog GT8K
> platform, and can potentially be extended to the Macchiatobin.

The gpio changes all look fine to me +/- fixes for review comments.

Could the MVEBU maintainers provide some feedback?
Curiously the file is only listed as a PWM driver in MAINTAINERS
so formally Thierry & Uwe review it (and Uwe did), but surely
the MVEBU platform maintainers should take a look too.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
