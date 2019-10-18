Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0105EDCEFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEWvD7HWIKAHr2AVWyufWQsgSvAs0yF3AwGZoF/HaiI=; b=qwpErXtcwRHEcW
	B7Dckv7gMtKvN48yQnOh4Nfx0zQzM3qf33ogAimKsa5CUfAZdp9lUIlg441aUx0OONxG5EcucjT5f
	3kNG3xSDpiS8onqpzgjCpTUKKz1APO72doiHp25Kp7y1ny9vyH7tZqdlC04aa4wvdLVaaGyIIlkv4
	T2gh81MWpqhlbfqnGpzzqFCTAQmI3ofSqmS22JWuUufJ4EItMKMGuVSHh52iTdtEa7IlyZAy9hcs+
	Fbqqb6F9q88jiNyhvhB0TN6dHLEBmSbnaw8yMUmnpZw2N7wMCzP23GT24Gysod2Sc8JJhxr3rqgLW
	gAwCsIahBSfVw+ElplRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXY0-0006PA-OF; Fri, 18 Oct 2019 19:04:24 +0000
Received: from smtp04.smtpout.orange.fr ([80.12.242.126]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXXq-0006Ml-5u
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:04:16 +0000
Received: from belgarion ([90.76.41.223]) by mwinf5d27 with ME
 id F73v210054otT8A03743BP; Fri, 18 Oct 2019 21:04:09 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Fri, 18 Oct 2019 21:04:09 +0200
X-ME-IP: 90.76.41.223
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 00/46] ARM: pxa: towards multiplatform support
References: <20191018154052.1276506-1-arnd@arndb.de>
X-URL: http://belgarath.falguerolles.org/
Date: Fri, 18 Oct 2019 21:03:54 +0200
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de> (Arnd Bergmann's message
 of "Fri, 18 Oct 2019 17:40:52 +0200")
Message-ID: <87v9slg9k5.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_120414_516786_DE463368 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.126 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-ide@vger.kernel.org,
 linux-mtd@lists.infradead.org, Daniel Mack <daniel@zonque.org>,
 linux-leds@vger.kernel.org, linux-input@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> Hi PXA maintainers,
>
> I'm in the process of getting the old ARM platforms to all build
> in a single kernel. The largest part of that work is changing all
> the device drivers to no longer require mach/*.h header files.
>
> This series does it for arch/pxa/.
>
> As with the omap1 and s3c24xx series I sent before, I don't
> expect this all to be correct in the first version, though
> a lot of the patches are fairly simple and I did exhaustive
> compile-time testing on them.
>
> Please test if you have the hardware, or review!

Hi Arnd,

Would you have a git tree I can pull from ?
That would make my life easier than applying manually 46 patches...

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
