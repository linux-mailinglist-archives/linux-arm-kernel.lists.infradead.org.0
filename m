Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE741DC29C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 01:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QYIDj6+XeeuL3EoCCeUK+Bj/X2bFQ7hjiLtfW0/maY=; b=E9Lfv2Ov0vzwlg
	HvqTbSYg2xTk+B4MjCZl6McYjw6lGgdyVItpWE6DPGHukvCgXoud8UBaAzehx31hIlogryQFsFm/+
	vt+DearGI8QzII4iAYg+xmEXHnx6/dsfrSUn92EBzhyTxMPUq9QqqarmrWVuugjwvir934PK7EZ61
	QzizKJeMzxUV4dz0QefOSpwJb1V6FcyRwC0P3YzeSH31dLxIpWIDH0mXnCrK+ZZoIhDDar+/DbOF1
	C+AWjpgAJrrW5iSuwzodhwlwKQyr0c2WDsOrhJNt+bGKpu4e0u6NYZuP3u1MjO5M2JSdsI3PsUvci
	R02kAnGp0CbXcMeYubYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbXi4-0006lm-Rj; Wed, 20 May 2020 23:01:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbXew-00024p-VF
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 22:58:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id 145so2300492pfw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 15:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ULnNxAULnm08KMTqxK0q2nOBlQyYCP0dCYh4spm6zVM=;
 b=Dr9rxmLADUgdZL1PoHo0clKCjzaj6oamURTG9OrpWd0MYV1ljIuPHElz5NqwFovi6o
 7CoMv2RH5/AhH6feYtvXPz+Q1uqvqSRHlbKoxI2WOjjJwWB9LvqFY/RBBz/EXoLZzc5B
 O6m9KtSxBqsATeOI7djfbO/oK/lTrcun+bAiNImAY72ZF3c49GTRsshit8E9HUEE/k13
 X4s4SCXoLYxwQ1SNGg42hFHStOsjYFO8nu9ePNM6KBvA68MAz9MwLOvKxhyV8dYC2E3K
 z9IR3QMGy6SI027IjKYr9dWCIs7VMWd+qipDRDM97MNcvMroQAwXBaye3EswIJck7CDO
 heKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ULnNxAULnm08KMTqxK0q2nOBlQyYCP0dCYh4spm6zVM=;
 b=WFmxpsTI/50zHeNPxg7yYK6HgvOiW+sD2EDu1mcJ9uAxXcp4TolhWKQ0SNKmRDC356
 wEWXyjELrCz3j1mnkIkNAWpMceGNZTXcO8hVW+yZpl89EesZKECnARCJijFl51c7qyAM
 VpljzgqnkpjdaBnvG8Eh6Y4jEvY91/D+rG8iKsKj1yjhrAoeQgmk/6t01cm+Mnf0btxH
 N8jJY0c9yycy94d5OWFvpQyhyaRUh6dgfrK5MP7pDZp3rim6LVbwsCClRwMA1ti2DYit
 Jepa9aPHdNs3bAHGvwlBIMo1tH1HS9aBJndzFfUT33Z27gqlyEiRMg08gwv40hZMoJrT
 UoDw==
X-Gm-Message-State: AOAM532wg+UeZnp3wZSvu2q6v3Dk4ZRPy56Uo6tg//MtrkENYs8hwI1K
 atj8LL0pfzp/hOhrr4cC3iAG9w==
X-Google-Smtp-Source: ABdhPJxXH0T8WaTu1eJ5ORL2AsB6RhmcGww0UQ0dm3mlKd6WDFFbRzUDT5J1CZeXvTo1WWs5nikpOQ==
X-Received: by 2002:a62:ed14:: with SMTP id u20mr6701504pfh.69.1590015477511; 
 Wed, 20 May 2020 15:57:57 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 30sm2528107pgp.38.2020.05.20.15.57.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 15:57:56 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH v4 0/5] arm64: dts: meson: add W400 dtsi and GT-King/Pro
 devices
Date: Wed, 20 May 2020 15:57:56 -0700
Message-Id: <159001518290.37678.8702046398403083549.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200520014329.12469-1-christianshewitt@gmail.com>
References: <20200520014329.12469-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_155759_353703_D5DBAAD2 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 01:43:24 +0000, Christian Hewitt wrote:
> This series combines patch 2 from [1] which converts the existing Ugoos
> AM6 device-tree to a common W400 dtsi and dts, and then reworks the
> Beelink GT-King/GT-King Pro series from [2] to use the dtsi, but this
> time without the offending common audio dtsi approach. I've carried
> forwards acks on bindings from Rob as these did not change.
> 
> v4 - rebased against Kevin's v5.8/dt64 branch
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: meson: convert ugoos-am6 to common w400 dtsi
      commit: 3cb74db9b2561a25701b9024b9d5c0077c43e214
[2/5] dt-bindings: arm: amlogic: add support for the Beelink GT-King
      commit: 3a90ef281f852db9900024116e8ea93a49115df9
[3/5] arm64: dts: meson-g12b-gtking: add initial device-tree
      commit: c5522ff9c7299f9845df3fd521d51a1ef7617ac7
[4/5] dt-bindings: arm: amlogic: add support for the Beelink GT-King Pro
      commit: 8d4b8772296f88e0b6bf5d091ebf25a54e51882c
[5/5] arm64: dts: meson-g12b-gtking-pro: add initial device-tree
      commit: 0b928e4e412b1eb9e79e02cf3580b9254d338aae

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
