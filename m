Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25471EA52D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 22:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUsb2IvsrWc4DLNScJr/aLNklmVYrzGgM4BJeV/O/bA=; b=p6X/qpfQ3h4B9+
	JHiGfuexLmTJE/hcSKoCt3y/4ArffuAqoZs9XdrHdXFPyMpuUg7Dtubwt9KpOPHJpcxnhsu1EvY1m
	EEwbUwr8L7peGVGkdIQVYZKgcr8rQGj+eu3a7aWqNnQoDalAoc9f2YiyzLvGbdm8wyHuj6kH2fX4Y
	Hp2T0hJ1NkgEG0munw1mBT3BVpsI8gQGktLrvaOqDczc9MiipkQeqN5YtbEc2n1MPCnbQJUdkyl0+
	BnA3TM/wHgA8Cxu8M/dqmtulMzlwBNDH9d7vo6DEZVMQFhCpSFdwwYsmSG+9fTTn/XEXtrSsMQjtX
	/z+M9qQcxzGXxTU+weiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPvFA-0006wy-1y; Wed, 30 Oct 2019 21:11:04 +0000
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPvF0-0006wW-Iz
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 21:10:56 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d15 with ME
 id KxAo210045TFNlm03xAoN2; Wed, 30 Oct 2019 22:10:52 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 30 Oct 2019 22:10:52 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 38/46] video: backlight: tosa: use gpio lookup table
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-38-arnd@arndb.de>
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 30 Oct 2019 22:10:48 +0100
In-Reply-To: <20191018154201.1276638-38-arnd@arndb.de> (Arnd Bergmann's
 message of "Fri, 18 Oct 2019 17:41:53 +0200")
Message-ID: <87h83qlz1j.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_141054_907858_036F76EF 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.130 listed in wl.mailspike.net]
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 dri-devel@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, linux-fbdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> The driver should not require a machine specific header. Change
> it to pass the gpio line through a lookup table, and move the
> timing generator definitions into the drivers itself.
>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Daniel Thompson <daniel.thompson@linaro.org>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-fbdev@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> ---
> I'm not overly confident that I got the correct device names
> for the lookup table, it would be good if someone could
> double-check.
Ah the I2C and SPI devices querrying GPIOs ... unless someone does an actual
test, this will probably be very regression prone ...

Anyway :
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
