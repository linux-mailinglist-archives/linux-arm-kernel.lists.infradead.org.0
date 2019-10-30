Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AA7EA509
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 21:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbfJ2tKx6tUdO0ERaXb9ep0wiMwIPBEFoPrZTE1gYaM=; b=FBJJcm8fid2uxM
	m1KPmRoZDiVI9VDFDMyaAQHo+W0fV5nOKRxnj97NhSGg78+28IhA7ZX1trYU2mpQ2akSJH5FPlvHq
	LxTg/ZZDFoJA4CKwoHx2NVKtmzqiXIg/oTURxdfYgc+hEOKKNfEBQbRz6oIxzFDoZedhZO87Pa9ez
	KmJesoDj0U7Lekiv/PwedwNn5+182V0K4FfO257kSOYtrF773JdKZtU3KRQIE+V+3Pyf5q1GAJmrU
	9BtRhZShd/Xfd6U51qRlvKGbwT8MddBu4mUf7Qs9VvG3J/mN9CyplhCAtMpKl1X5JgrVWpeLFCPe9
	Z4YqP/FiFZig+NhvNK6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPv20-0000Zk-Jd; Wed, 30 Oct 2019 20:57:28 +0000
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPv1q-0000Yr-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 20:57:19 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d15 with ME
 id KwxF210025TFNlm03wxFig; Wed, 30 Oct 2019 21:57:15 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 30 Oct 2019 21:57:15 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 36/46] ARM: pxa: move smemc register access from clk to
 platform
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-36-arnd@arndb.de>
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 30 Oct 2019 21:57:15 +0100
In-Reply-To: <20191018154201.1276638-36-arnd@arndb.de> (Arnd Bergmann's
 message of "Fri, 18 Oct 2019 17:41:51 +0200")
Message-ID: <87pnielzo4.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_135718_389838_1EC354FC 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.130 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-clk@vger.kernel.org,
 Daniel Mack <daniel@zonque.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> The get_sdram_rows() and get_memclkdiv() helpers need smemc
> register that are separate from the clk registers, move
> them out of the clk driver, and use an extern declaration
> instead.
>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
This patch bothers me a bit.

The idea behind generic.c is that it's a file common to all pxa2xx, pxa3xx
platforms. Yet with this patch, someone without history will believe that
calling pxa_smemc_get_sdram_rows() on a pxa3xx platform is perfectly valid,
while it is not, because DRAC2 doesn't exist on pxa3xx (bits are not defined in
MDCNFG).

At least I'll rename the function to pxa2xx_smemc_get_sdram_rows() if you don't
have a better idea.

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
