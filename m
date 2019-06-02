Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE64323E1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 18:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEJINxvwwzBhivbbKuGl4rYrRoeDE8pLvgPms02naT4=; b=I6N3uffHblKr49
	joaZEHOAM/F9DYf4UOfZ3aiWjXuOJlS8Oq/tEWjhIE6pY2szzbo49ZNoymeKqAGXxR0eDNUhL+VTL
	B/3qlz1FHiSB69w2PvMJ3TuuAPwkJruzRMinsYOIAO5+XgSOSNmxYML2zZ8+FxssBgHoA51AAcUZT
	QekHT5x8H4ee8l81xp1Dzgc+TK/tFA5M0aqk5EORmH0fYrGQmOmqCRZHJFr1oBb013Ns85wXu0isn
	B3QUnrQ6EMba4wwttJ31BhwG/l8f4hVmdMD9cVN2tOePP1OPot8YKjfaQ7ZI84Zpdjb/D3ECYsHEv
	nYDpZtSLpCiURTxiW9Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXTSe-0002Gr-1R; Sun, 02 Jun 2019 16:35:56 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXTSX-0002Fo-AB
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Jun 2019 16:35:51 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id E74AF5C13F9;
 Sun,  2 Jun 2019 18:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1559493339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TLPIFtw8wW5Uo7zTBt1EGjS3mHTdYvG1RP4d99oqY1k=;
 b=Ns2Y8lqdIvcdhIyuckIZwJ4ao1UebMtbGultA9s+Oqd4ibbZsli9+xMYVU935rmTtDMLj7
 5WU9x7SfGvuXUEdnd2F5KixEes/5ypLmw6mTVPaSRbLDxS7qXzmOIRcL9HEr8tTVjEx0ia
 HK8fW42HsJpV3bD86r4KvNeHAO8al64=
MIME-Version: 1.0
Date: Sun, 02 Jun 2019 18:35:39 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nick Desaulniers <ndesaulniers@google.com>, Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH v4 2/2] ARM: OMAP2: drop explicit assembler architecture
In-Reply-To: <CAKwvOdmsHxyPU2O1vZ-Mah-E5vTtEWKHStp2EQCiE4A55D8xDQ@mail.gmail.com>
References: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
 <5ead0fe96f7e5729e4a82f432022b16cb84458a6.1558996564.git.stefan@agner.ch>
 <CAKwvOdmsHxyPU2O1vZ-Mah-E5vTtEWKHStp2EQCiE4A55D8xDQ@mail.gmail.com>
Message-ID: <fa06b27eeea796f70f1e243096b86117@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_093549_504955_22A63AA1 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew@lunn.ch, mans@mansr.com, tony@atomide.com,
 Rob Herring <robh@kernel.org>, f.fainelli@gmail.com,
 gregory.clement@bootlin.com, Russell King <linux@armlinux.org.uk>,
 krzk@kernel.org, arm@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 sebastian.hesselbarth@gmail.com, jason@lakedaemon.net,
 Arnd Bergmann <arnd@arndb.de>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 rjui@broadcom.com, ssantosh@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, sbranden@broadcom.com,
 nico@fluxnic.net, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, kgene@kernel.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30.05.2019 22:02, Nick Desaulniers wrote:
> On Mon, May 27, 2019 at 3:41 PM Stefan Agner <stefan@agner.ch> wrote:
>>
>> OMAP2 depends on ARCH_MULTI_V6, which makes sure that the kernel is
>> compiled with -march=armv6. The compiler frontend will pass the
>> architecture to the assembler. There is no explicit architecture
>> specification necessary.
>>
>> Signed-off-by: Stefan Agner <stefan@agner.ch>
>> Acked-by: Tony Lindgren <tony@atomide.com>
>> ---
>> Changes since v2:
>> - New patch
>>
>> Changes since v3:
>> - Rebase on top of v5.2-rc2
> 
> Hi Stefan, looks like both patches are ack'd.  Are you waiting for an
> explicit reviewed by tag to submit to
> https://www.armlinux.org.uk/developer/patches/?

This should go through arm-soc, it missed the last merge window, see
Olofs message:
https://lore.kernel.org/lkml/20190516214819.dopw4eiumt6is46e@localhost/T/#u

Should be still early enough to make it in this merge window.

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
