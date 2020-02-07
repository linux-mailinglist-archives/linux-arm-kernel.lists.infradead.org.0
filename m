Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CBB155C35
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAI2KZBscPYgnOXXG2JKoGAU4FncXf50pXjABf4zdVU=; b=L/t1Kyhu0LQv+Y
	HoI+UjaQl/+1PWPeDjbP2O8lnCONTuKfkGZcN63ZnnyywmUqely73lMAi1HQPW4Az3Bta2RALKCx1
	hrGBnlP/Vsdku3lGn91xEZ5BfgBfEZSm99fpra6nlrv/NU+5QazNb7ZqEqjTCIk2szfEpuySg+2tN
	yKYmKlgGvT2KUVkmvXhva5Sng+IPONpJY8r/EqIJhfrzf5Qwuo0+Pk4/YzpDYTFCjspJ8QYrJmXTK
	UgpLG31n+fzIK0DJs1Z6ZXn0x+5p1aSww9uvXMMzGVkcVt4nXl4XwX2Rf2WQG2/ElrX47OprDeZUU
	fztG7yfur9jrVtdcTLuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06t8-0007jG-Sl; Fri, 07 Feb 2020 16:53:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06t2-0007iz-MI
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:53:49 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8E9188047;
 Fri,  7 Feb 2020 16:54:31 +0000 (UTC)
Date: Fri, 7 Feb 2020 08:53:44 -0800
From: Tony Lindgren <tony@atomide.com>
To: Merlijn Wajer <merlijn@wizzup.org>
Subject: Re: Nokia N900 on 5.4 and 5.5
Message-ID: <20200207165344.GB64767@atomide.com>
References: <79b91017-b52a-8aff-4b9c-913ae655f7bf@wizzup.org>
 <185CD173-C13C-4D56-B3DE-9A8D7784963C@goldelico.com>
 <20200207163623.GA64767@atomide.com>
 <da14d6bb-f241-2dd4-8e94-886217a40ed7@wizzup.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da14d6bb-f241-2dd4-8e94-886217a40ed7@wizzup.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_085348_768433_4BEFAE68 
X-CRM114-Status: UNSURE (   8.20  )
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

* Merlijn Wajer <merlijn@wizzup.org> [200207 16:47]:
> On 07/02/2020 17:36, Tony Lindgren wrote:
> > 
> > Looks like there's a regression in general for appended dtb booting that
> > was caused by commit 9f671e58159a ("security: Create "kernel hardening"
> > config area"). With that change we now get STACKPROTECTOR_PER_TASK
> > selected by default with Kconfig.
> > 
> > Merlijn, care to try to disable STACKPROTECTOR_PER_TASK in your
> > .config to see if that helps?
> 
> Yes, this makes the kernel boot.

OK good to hear. My guess is that having STACKPROTECTOR_PER_TASK
selected causes changes to include/generated/asm-offsets.h that
appended dtb booting does not like. But let's see what others
think.

Regards,

Tony



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
