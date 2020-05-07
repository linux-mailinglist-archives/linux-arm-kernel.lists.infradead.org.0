Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C091C971E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvFd9eP4ERfFCpDG36LhhJ92QlOXidOnhrooKZ4o9co=; b=efVIj+ZfEjxCb2
	yTst5/To6a4s/ytaCKeUSohshkEzEhJQORwUIbEoUkmkzDOmP9yq6bsYYbunChZc7ZC7wWJQl5nqb
	o4ttM+PqJc44d/MQjZImlSWsje4FsFTaOjqSwHn68UVezTI5k4qhxKFHQ4VO1VdTLQLg0TgGmHmAY
	zzIcfApr+2onSACqjduh0sI3vXSB+45dUfeDavuobNbpTQBqAM1RdMAQWh4DDnilvrxwreQPImzhi
	RpoUHIOAeZBfAE5vZjOYkT6UqwK9vCPwWIW0I9034Qqh11i+eM/51DDpQKMF7pUfWwqJz2xCSL7MQ
	pvrgVO5jKK9Fhk2yFiXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjzG-000878-1k; Thu, 07 May 2020 17:07:06 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjz9-00086F-A5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:07:00 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 33CB5CFAE7;
 Thu,  7 May 2020 13:06:56 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=wsB7vfwmQfdBokqb0x4yo5jSkDk=; b=NGFtjf
 PF8iI8LkJM1oGKJNXHmpUaxSscVhfGP4CyphTSRz25tl6tVfm0qNsuyHwCSRgP39
 eyyQ4Qaygn3vN/G8l6/2a4W7DD/qo/vHI0SM0RvYJheztPy/TYTdPyScs+udQ9Um
 jyRDZnhtUG5G8uGbgHyB2BMQhE2185YWfSSmc=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 2B4D2CFAE6;
 Thu,  7 May 2020 13:06:56 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=zKz7M+6uQ/pPg0SWSMwNYVJfJIK1Jf19NKAW3730+7A=;
 b=MaPw6LnUNT/1OPZ8V7dDe4Mv0sHLDdugvCG3zlBCHU/KBBVsqNeEd8SwcICbdadJGjNgtHdbnDlY85ID+CFfcnVe4RqbQJ2MZsCsIuX0k7AfH0lg25I/H1eX9T1GlboGuM/tk72lwu2wwUiWCASgEOCR9vjpOxCVLDz37yAN+tc=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id F067BCFAE5;
 Thu,  7 May 2020 13:06:52 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 0E4B32DA0CE1;
 Thu,  7 May 2020 13:06:51 -0400 (EDT)
Date: Thu, 7 May 2020 13:06:50 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH/RFC] ARM: dts: rza2mevb: Upstream Linux requires SDRAM
In-Reply-To: <CAMuHMdXgpR6HDQs_NS4W2C8NxqJp3g1DjR2VneUF5Rvun-L4jQ@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.77.849.2005071303480.5637@knanqh.ubzr>
References: <20200507080528.547-1-geert+renesas@glider.be>
 <nycvar.YSQ.7.77.849.2005071056450.5637@knanqh.ubzr>
 <CAMuHMdXgpR6HDQs_NS4W2C8NxqJp3g1DjR2VneUF5Rvun-L4jQ@mail.gmail.com>
MIME-Version: 1.0
X-Pobox-Relay-ID: 25F3FEEA-9085-11EA-B169-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_100659_410607_902D7391 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Magnus Damm <magnus.damm@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020, Geert Uytterhoeven wrote:

> Hi Nicolas,
> 
> On Thu, May 7, 2020 at 4:58 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> > On Thu, 7 May 2020, Geert Uytterhoeven wrote:
> >
> > > As upstream Linux does not support XIP,
> >
> > What?
> 
> Not for an ARM v7 platform:
> 
>     config XIP_KERNEL
>             bool "Kernel Execute-In-Place from ROM"
>             depends on !ARM_LPAE && !ARCH_MULTIPLATFORM

Of course this is an artificial limitation.

You can have XIP on ARMv7 if you want. It requires some kconfig 
tweaks though.


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
