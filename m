Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D72E87C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Cy6sUmDyfdNBJRDtPC1h/tEOVAZCa4GAmPPvWvGep8=; b=oSdnSSJoY/YtGn
	mNZfH+c500yFSAy6ehcSs1kjFvzWslkkmimS74dmVNbs5D1DxYlrHelAPgkaROwpy8VOImzbdmhAP
	+er1qlCAJLXT4kMDq47eiY4AtRUBbkk7svla5+9g3foyW3+sl+Ut8QhO4KeFvJxZDvS/yyjWXJkmq
	sQdMd5tchaQ23IFDXOaJ9+ZrKchmf+pdSmfgSIvi+2Uj4enHDPSXUteW0aubXa7iAkB60Eb95qhl6
	nNmr8LZVwiWDq1yToJ1cvfhCu2YKcNv5la8UfatgiWXkK8tPT3hvSvjaxEITJUxc3iIpHJ9DY+rjN
	xgjqAgl0xBjvHhHcc3Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9oy-0000Go-QR; Mon, 29 Apr 2019 17:12:04 +0000
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lN-0003TW-TQ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:54 +0000
Received: by mail-lf1-f67.google.com with SMTP id t30so8466531lfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QejXsB3OpdlM5+EAoMeXmfcyX8s/pStU8O6CJTM6QI4=;
 b=s1XyFM7kyEwQquPHfVSgIEMOWA0as3+wH5hv8HjWmIoDXz8LKRgBwwZx5aWB5I0qNJ
 SlLSSHj6P6KSpomhR56f034oBlle+WEZOZ812jT52b/s9V/xn/Xlxq9zSX1DVYN8Wyby
 UzEmf8ZfJHJIe+VTSojaKVT8xkjtaUMX7KKHln+it70jvCqsiQZPBLRpMqzBj3VXO62y
 1Rhgbr1pbnQRgiSklQTQi3DP1XxQXsC6nDy1Wi7Dmp9PZqqARtnQRnxtdPd3nxhVUnQ/
 /scJ8o0dOOLy948Wy+bUfWpRTsQV40kWeLgTjb3NvJnHtdsY7toC65tPDSe7XSBF5fJ6
 6UlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QejXsB3OpdlM5+EAoMeXmfcyX8s/pStU8O6CJTM6QI4=;
 b=JoYthmgmC5vSR4myYoNLbFdL8Tg1u6HxLtWWkXajrYOrzugwlBFOVVb7btdrVmvnJz
 6CB9feTY3k1V9Isg+L5ogBnO6sbkDsaSCeQ+hl8E1q6LTmY3du1X0U6nTrfqn0qA/OHJ
 Ca+9HToQqGkMxWQzEvJpeKjVSZ0GBqwYaKH+Jdr859Nedi7xklcxa4RiWEc9yywiaHXf
 MDV6tQDeUlR6C9W1Q6C7N2wZn1LN7JsYiKLbFMlqM4en5Q4gqka7nc9W+5mj6RjgaCGs
 7jnC6DjWm33Vi/KdZRWy198WDxHqjxYio4moWA2g7z15PfENZZ4T1pE3geGZwCRmCaY6
 AurQ==
X-Gm-Message-State: APjAAAWt262tyAygWit6OslS0sMfHlPWdRh8Ost5ftsPA5OlRAcUGNBn
 dEkI3CYfV4xn5lK0CTrENWZaww==
X-Google-Smtp-Source: APXvYqxap6GI99Zesmk+YqvGST2YvWZHO+CEpUfcGKmaQ0eu1IiN1ndNYGrloEwMQmHH4yliSNTLpw==
X-Received: by 2002:ac2:43d8:: with SMTP id u24mr32873699lfl.94.1556557699512; 
 Mon, 29 Apr 2019 10:08:19 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q12sm7390269lfa.37.2019.04.29.10.08.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:18 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:56:51 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 4/5] Rockchip soc32 updates for 5.2
Message-ID: <20190429165651.r6ox3tbombvvu2mv@localhost>
References: <3379363.gjmLGbHmEH@phil>
 <4142453.kQgcn4UVYa@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4142453.kQgcn4UVYa@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100822_326412_66B6F7C7 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.67 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 07:59:18PM +0200, Heiko Stuebner wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-soc32-1
> 
> for you to fetch changes up to fbd7af041586a15f5dc15b9ec051d25aa5ebe00a:
> 
>   ARM: rockchip: add missing of_node_put in rockchip_smp_prepare_pmu (2019-04-23 19:52:37 +0200)
> 
> ----------------------------------------------------------------
> Missing of_node_put and some added __init contants.
> 
> ----------------------------------------------------------------
> Douglas Anderson (1):
>       ARM: rockchip: Mark pm-init functions __init
> 
> Wen Yang (1):
>       ARM: rockchip: add missing of_node_put in rockchip_smp_prepare_pmu
> 
>  arch/arm/mach-rockchip/platsmp.c | 1 +
>  arch/arm/mach-rockchip/pm.c      | 4 ++--
>  2 files changed, 3 insertions(+), 2 deletions(-)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
