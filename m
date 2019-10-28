Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538ABE79F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brzEDvFholoi1U6Z91i6KZfKQHXkgjpYZ5k/rI5imVc=; b=n4CdX9Hfd/koVN
	gUd5if6FbD59eQnbcTEh9Gb91QTgw2dfyEmaNasIh67nDqa7txy+u2UA/LgIngijq75P1CaRIYU4y
	FHQ1St9LXUPZsvaYRG3ydcXURdRItYh91yN6FSSJQKtOLL+3FSQ1m9f/PSUBlcOK4ZglJTyfSYVA6
	GHu3GGcZO4VS4suS/YRnGUy91Ff8uzFCkZwBUv/rKtjvCex3OU+feAVgsUxA6kcqpVXZLQ4F/jwqd
	Hb9NI8lFD84AH2Nu6cmWjVa9mHAGJFhSe3km8a3UvJBVOUU+r0CzFjmXmADY0DgL6FSO4Uidhf8vc
	Nz5Fp7QcIwnHzTyM1y2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBUV-0003rq-9a; Mon, 28 Oct 2019 20:19:51 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBUK-0003qj-3C
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:19:41 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d17 with ME
 id K8Ka2100B5TFNlm038Ka97; Mon, 28 Oct 2019 21:19:35 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Mon, 28 Oct 2019 21:19:35 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 10/46] ARM: pxa: pxa2xx-ac97-lib: use IRQ resource
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-10-arnd@arndb.de>
X-URL: http://belgarath.falguerolles.org/
Date: Mon, 28 Oct 2019 21:19:34 +0100
In-Reply-To: <20191018154201.1276638-10-arnd@arndb.de> (Arnd Bergmann's
 message of "Fri, 18 Oct 2019 17:41:25 +0200")
Message-ID: <87v9s8mxm1.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_131940_419081_6F7D5ECA 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> The pxa2xx-ac97-lib code is the last driver to use mach/irqs.h
> for PXA. Almost everything already passes the interrupt as
> a resource, so use it from there.
>
> The one exception is the mxm8x10 machine, which apparently has
> a resource-less device. Replacing it with the correct one
> enables the driver here as well.
>
> Cc: alsa-devel@alsa-project.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
