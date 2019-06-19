Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA59C4BC5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ap3if3oTFjREFsaSBqm2AI69+aGngQqTQ67i7f6CbVc=; b=f2u/j6lK99Rzap
	dmem0F5FWc8yaZczUnyK7XHr0bJzWFT9SZsh29cMi4b8504U31+Cd7HHFvVamlgk9GCFpJ/+0I9gz
	pR6yQo9Zxr4daIDeigrVjeK/8s1LuF9wvtfGgtW7J59lfWOQE/755cI7tJfxVRWuBl90ibg1r63sI
	Yhb3yF0e/UWtdciAC3EO1iL80KFcC1UCtoDuoTUs1OUyu4zIEzuuaOT+eezyvQu8cmkVnCpm+9wAP
	nX1owRO2FJ4Oe7niF+De8PuIsCUDgmtvbBNy/7ysAen+EvC+57NJwU0ryuwzeJ/FpuISRc3LWPFeK
	VNhBubwHmACMHk+2fueg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcA1-000273-4Q; Wed, 19 Jun 2019 15:06:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdc9p-000268-Bv
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:05:54 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so3604906ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/la8YhxZ2cr5zsG/Mj3bf2KoRNJCvpbpOWf93KaGA8M=;
 b=n2Rcmy/bvTvujq0Mp0NgQKBCE14/CMC0O4fTI+A+a4Kvj4+M50RkihtSc9uRfk8Z1w
 /mveI+IdabqrlEOJE+jEoSSpQkBHb6VyAKB7JcK8o2xixedM8kCsl6Fk6MUwMMuZQG5z
 TlOTnbmuCaPaFaXBuKMUNFE1QlmI1nXMVlK0Dg1gkQK0qFAh8SnJFPUh5xKa+PBdpJeI
 UrOUDg7RfSI4cAEsRYH3a9ZtlwCJBGphcOqDZRoGHhrglqoJmzzFsTVlR/CNbrJrkReH
 dnG7kL0wcOBxSymEJRCdlhyM724zEicdRxWhlrUwwsyftCxRCTtA+HSZMqPszi0d7Zpa
 4MXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/la8YhxZ2cr5zsG/Mj3bf2KoRNJCvpbpOWf93KaGA8M=;
 b=GBqiwXjx6cONHXyClquUIIlHjsjCrzaB8ouVYJuLOW5S2mj3a8iuqO/nVxnjVHCU3E
 HuMX7XNjrWF6fX0PxuZZk/PpiuMfag2Avmk/BNpNVveBANWV8g8cDYgfW99bNlvoMtNB
 0guE27zEbu+FuIaYUfnI6v/27yL+8YssnoJkCBw7KXC66Bp2CjYoueGkYloOTP7zU0oY
 6X31NaBv3GlgZ3du6nc9gZ+BR41HOu5grqR09VzVCwlC+5aR7KE9RaGLmDjQlT5h7r0i
 iNmssBJS56X3OSgkb3McJThIIrNShXblTgALmD8x5M58vKPlYJ9e1Kuz8ET51IbCg/7n
 yrcA==
X-Gm-Message-State: APjAAAUsWVNL7VLm9vK9ymAX7Vz8orE33eLvBEAR1ty/5dHQNYjXgtq/
 X62UQyjzwCB2vQ8ER3ocqCtAAQ==
X-Google-Smtp-Source: APXvYqxJ83jJylZF4/0OSKRawqgT1V4DMOOY2IfhVDxokK2wW4QaZ/7KhrJCKCQaKHgjSaTQiMvx/w==
X-Received: by 2002:a2e:9685:: with SMTP id q5mr18130200lji.227.1560956751539; 
 Wed, 19 Jun 2019 08:05:51 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p76sm2628684ljb.49.2019.06.19.08.05.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:05:50 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:02:32 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] ARM: config: Remove left-over BACKLIGHT_LCD_SUPPORT
Message-ID: <20190619140232.hkhrq63ly4mlb3yi@localhost>
References: <1559633061-28003-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559633061-28003-1-git-send-email-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080553_473140_1AA4808F 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 Alexander Shiyan <shc_work@mail.ru>, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Russell King <linux@armlinux.org.uk>, Vladimir Zapolskiy <vz@mleia.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, arm@kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-omap@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 09:24:21AM +0200, Krzysztof Kozlowski wrote:
> The CONFIG_BACKLIGHT_LCD_SUPPORT was removed in commit 8c5dc8d9f19c
> ("video: backlight: Remove useless BACKLIGHT_LCD_SUPPORT kernel
> symbol"). Options protected by CONFIG_BACKLIGHT_LCD_SUPPORT are now
> available directly.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>


Applied, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
