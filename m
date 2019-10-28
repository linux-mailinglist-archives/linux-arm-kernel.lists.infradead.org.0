Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BA1E7A15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hprf64ZzYJKhpB1F2UWAv4g5gQF7HuwTWJMLo+2lWI=; b=t6Y15wR9xQeqbg
	ADVxe5pyUK2q7U+747PvVg/Pw4kbx/+61CkR7T4bz/rdx4d4rAUB99lwQhKi/8ALlSDWUt2zIaQe1
	ulb+VsnQOjxREsj01kZipyDbgQkulfJvkVCi7Aq5HXgIIrw9QWdJHSFl4D/BXXGNvqTgVgsNwbZSR
	FfMMO2KLAwwA9Cnu6uCKqrnwVMQ8XtbNQuIvNMLAi8UhawY2tWxKduHOLjZoYm1y+Ej0HhbZqsuDn
	5mVSTRt07Av2243S4d0HQ7b5hl3GqrVNwa/Xv6Bs3bUehR3GpDPrCWbCeUfaUIColeXENCH0Sjk3P
	aK/zlVn5Yo7nTNSBHtbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBcJ-0008Si-Nu; Mon, 28 Oct 2019 20:27:55 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBc9-0008SF-FX
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:27:46 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d17 with ME
 id K8Tj210075TFNlm038Tjba; Mon, 28 Oct 2019 21:27:43 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Mon, 28 Oct 2019 21:27:43 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 12/46] ARM: pxa: make addr-map.h header local
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-12-arnd@arndb.de>
X-URL: http://belgarath.falguerolles.org/
Date: Mon, 28 Oct 2019 21:27:43 +0100
In-Reply-To: <20191018154201.1276638-12-arnd@arndb.de> (Arnd Bergmann's
 message of "Fri, 18 Oct 2019 17:41:27 +0200")
Message-ID: <87mudkmx8g.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_132745_800257_863DFB36 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Philipp Zabel <philipp.zabel@gmail.com>,
 Paul Parsons <lost.distance@yahoo.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> Drivers should not rely on the contents of this file, so
> move it into the platform directory directly.
>
> Cc: Philipp Zabel <philipp.zabel@gmail.com>
> Cc: Paul Parsons <lost.distance@yahoo.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Mmmh for this one, my jenkins is a bit grumpy :

Bisectability test results for configuration "pxa_defconfig,arm,arm-linux-gnueabi-"

Failed to build patch #12: 15fb575e5d52 ARM: pxa: make addr-map.h header local
Configuration: "pxa_defconfig, architecture arm".


In file included from drivers/pcmcia/pxa2xx_trizeps4.c:23:
arch/arm/mach-pxa/include/mach/trizeps4.h:14:10: fatal error: addr-map.h: No such file or directory
 #include "addr-map.h"
          ^~~~~~~~~~~~
compilation terminated.
make[3]: *** [scripts/Makefile.build:265: drivers/pcmcia/pxa2xx_trizeps4.o] Error 1

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
