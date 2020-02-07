Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5F1155C5F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 18:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tp2z/dX3LA/tqp7GYe7E2xi1qZrmADTCXylFdxJ9ujo=; b=ELp4R2L0yD5S9q
	JoILWFYxGYkxvtKw2o8+eGWuAIkrs6E3UdWxAmQGu4S+c5GVoCry58y9QjDudhfu3Ovv2hX8gXZC4
	dpA5jh2iuh0l3cA1Kiva1KdmHRgxaz0KnVbSG+pLuIyXZ+lYIjoIukCRNbmcfqknAOfAJUOCpXIEU
	Key24aabPV99AEdHYfUrdBLBG9XI3tEUoCJlElcEOzDWeWLq2z0hguAXKPIbVAdoZbvidD9DMGqfk
	ttU3p63Lyb12Uw6ZKmE37XwyucXkwrpaG8crsf8RnEP4oLFoMuXqvf5f5Hmz3mEAvslry2A3ecwW0
	HD8qY7FxqtX98DTn9XdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j070w-0002Tx-GP; Fri, 07 Feb 2020 17:01:58 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j070r-0002Tg-9b
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 17:01:54 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id C6C358047;
 Fri,  7 Feb 2020 17:02:35 +0000 (UTC)
Date: Fri, 7 Feb 2020 09:01:49 -0800
From: Tony Lindgren <tony@atomide.com>
To: Merlijn Wajer <merlijn@wizzup.org>
Subject: Re: Nokia N900 on 5.4 and 5.5
Message-ID: <20200207170149.GC64767@atomide.com>
References: <79b91017-b52a-8aff-4b9c-913ae655f7bf@wizzup.org>
 <185CD173-C13C-4D56-B3DE-9A8D7784963C@goldelico.com>
 <20200207163623.GA64767@atomide.com>
 <da14d6bb-f241-2dd4-8e94-886217a40ed7@wizzup.org>
 <20200207165344.GB64767@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207165344.GB64767@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_090153_374586_0C8AB9CE 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Kees Cook <keescook@chromium.org>, Nicolas Pitre <nico@fluxnic.net>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-omap <linux-omap@vger.kernel.org>, "Arthur D." <spinal.by@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200207 16:54]:
> * Merlijn Wajer <merlijn@wizzup.org> [200207 16:47]:
> > On 07/02/2020 17:36, Tony Lindgren wrote:
> > > 
> > > Looks like there's a regression in general for appended dtb booting that
> > > was caused by commit 9f671e58159a ("security: Create "kernel hardening"
> > > config area"). With that change we now get STACKPROTECTOR_PER_TASK
> > > selected by default with Kconfig.
> > > 
> > > Merlijn, care to try to disable STACKPROTECTOR_PER_TASK in your
> > > .config to see if that helps?
> > 
> > Yes, this makes the kernel boot.
> 
> OK good to hear. My guess is that having STACKPROTECTOR_PER_TASK
> selected causes changes to include/generated/asm-offsets.h that
> appended dtb booting does not like. But let's see what others
> think.

I don't think this is an issue of CONFIG_STACKPROTECTOR + CONFIG_SMP
booted on UP machine as it only happens with appended dtb it seems.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
