Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801125F166
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 04:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYCLUl5vZLEYr4ww9OTixVN6Rbkxl2RyrodqTOdU4T0=; b=ZcMtFmGFqI8p30
	YNTMvpNQ+TSvKMEyIim7QbQDqMAL65SwD87dtzss/yIR+0dfyZ8CJM1RvxWozk8S8Fa26TUaIAdh/
	tsADNVb8uA0IOe7KCEbCiUa9mi4KWvERn5ioaWh9fPrYLlJxW0JVlNJx+748F9iaK2J0CLJ3EU4Zd
	ClbKo0q5NNYY7TOSNeeQuSXQ3tVPvOwfmp64boODTdaRhqPwKe3jltdXrsrvXHCL7Do4tiAtOhERk
	SAaldJv8rnRQPK8ZKjsIVWIyhohlraNs6K4dWliXLwgaC4rKU+YxJvGcRrIvhjfBNR4TO7yPC+fkQ
	dKvmEZhVodhcj2TV9Kiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hirPR-0006DI-JJ; Thu, 04 Jul 2019 02:23:41 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hirOx-0006CP-Nf
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 02:23:13 +0000
Received: by mail-lf1-x141.google.com with SMTP id j29so3097456lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 19:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+J4G3+w2a6rqwsRd6naD6kRP3PZ6p5YJ6mI8owInsUY=;
 b=pnCXRsvCD/RtzrcOSH9XKM3pNpuZOmeLWIatc8U7JlkVMu98m1tFHyX9W8gckaXPfe
 b17ruB40N/kd408MIOehV98cOnIGdS2i5T85oAKHFtbQungZe4RQZXnoR3DvdoUOY49T
 A8Qralpdl860WzVeFgeSpieoUbth90cEXEwDDfG2ufwTCrsWhxFOKEEtU/VdnRP/Ma1P
 crPt3nVPNZZP45KVGlF3FSxFbEvNPhhYU+4eKXQyZkt8EnoLeDvdkLNiM9WDsGZxLtVf
 vkQFJrmKD9kDeXJtME/5Hl5v6hn8fG8k5HTT33wk8Phx9tWBoUoQbHDcM06FR4ZmfGpB
 MiQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+J4G3+w2a6rqwsRd6naD6kRP3PZ6p5YJ6mI8owInsUY=;
 b=KkbFQpKqtlTL6EW69KtttpYCddS0rZb6ZvabheQkglR0ea1N1ZI/fknIl/yfSd2mTi
 u5m3M6/qZUFWjAnk2J3kaXOUhAm3UGDEy5iTnOmYYPiPccQoN3rd4zRCERSGJchsGpOX
 X7pcxh2NeRt2q/k3HnH7l+AgGQijctYaWM/QzXD15zBLwy9UP4uZZVzM/IAWos/pKk3x
 Cdfavqau/UmKBDtClnUJu9ySH0zPNzcSU9VJz/h0EXTgX5m4mej1S8z1TLiJzwFY71/Q
 ai22LOQGPzO7p+QE0XJ5/yZkZTlOhVzCo3Oab4eGL8GoRho8Vp5rB6xMsI/6G3CtZqIX
 BJyQ==
X-Gm-Message-State: APjAAAXIh4ENDp70mys8suCHZB1j4IVso6tu+gxc4r8IrKUBwRwXEzsy
 W5csk5nnyYT5on7mehgHeFcb+A==
X-Google-Smtp-Source: APXvYqwF1IDr3Zsnm8ndisg8PoI+GaRFZUtCxu7aZqBri2om9izSF5ZXvmOqrvAsLWKwdQBn04FOlA==
X-Received: by 2002:ac2:4351:: with SMTP id o17mr297792lfl.100.1562206988730; 
 Wed, 03 Jul 2019 19:23:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id o11sm635357lfl.15.2019.07.03.19.23.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 03 Jul 2019 19:23:07 -0700 (PDT)
Date: Wed, 3 Jul 2019 19:20:43 -0700
From: Olof Johansson <olof@lixom.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] soc: rockchip: work around clang warning
Message-ID: <20190704022043.gwcwasi6jni2qctm@localhost>
References: <20190703153112.2767411-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703153112.2767411-1-arnd@arndb.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_192311_928104_F055662C 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Heiko Stuebner <heiko@sntech.de>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 05:30:59PM +0200, Arnd Bergmann wrote:
> clang emits a warning about a negative shift count for an
> unused part of a conditional constant expression:
> 
> drivers/soc/rockchip/pm_domains.c:795:21: error: shift count is negative [-Werror,-Wshift-count-negative]
>         [RK3328_PD_VIO]         = DOMAIN_RK3328(-1, 8, 8, false),
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/soc/rockchip/pm_domains.c:129:2: note: expanded from macro 'DOMAIN_RK3328'
>         DOMAIN_M(pwr, pwr, req, (req) + 10, req, wakeup)
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/soc/rockchip/pm_domains.c:105:33: note: expanded from macro 'DOMAIN_M'
>         .status_mask = (status >= 0) ? BIT(status) : 0, \
>                                        ^~~~~~~~~~~
> include/linux/bits.h:6:24: note: expanded from macro 'BIT'
> 
> This is a bug in clang that will be fixed in the future, but in order
> to build cleanly with clang-8, it would be helpful to shut up this
> warning. This file is the only instance reported by kernelci at the
> moment.
> 
> The best solution I could come up with is to move the BIT() usage
> out of the macro into the instantiation, so we can avoid using
> BIT(-1).
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=38789
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks, queued under arm/drivers now.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
