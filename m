Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 745651EE92D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 19:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PJiM22gDUWJ00vyfbCX0GlptZhzQUd4+R3kK15gWnc=; b=p9tf9bAKP6z1x1
	55RFCp1crhuKxIJcg0Nb1yhKqnqd7atKVv39RQUC01thgG0wcuHarG1gxeoEkjw9zDV9sg4Nn5g4L
	8ryA88eQPePTg3jedSIVB7LUAn2XDAMBIsrbIDvGSRg2FVBP8uHTih8lGkVqVEMMG0g9ERpYBW+sg
	3KoSwAi3efIiYzzvy8s8vm2hxBAQWlCkKBAGBCgtwqfJgInPjPSNKLXZuFhO7kvJ8ovjTC/OJ3nnB
	YlwAInxWYMSHrVM69hQg1iPL32gA807p7HHzRT9favR7ym2I0lTZRvS814okxMZjCnAnvGT/Oqgvm
	iejOYvJkNCaCIO7tOuPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtNw-0001lU-Ns; Thu, 04 Jun 2020 17:10:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtNr-0001kn-6V
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 17:10:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2D38206DC;
 Thu,  4 Jun 2020 17:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591290626;
 bh=M/AuFpehGusNMSeUle1JrJaPhNJMg0l6uzzIe1fZvf4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WfHy09iha5d2FDQtM8Dmu3HCYtV8wZdBvaIZ38Ay4pFyvLsmz5hG40mq2P8pU/gBG
 q+l+cKQJFDh5UcjfmgX5sOcB4H0GJ5+Ya8yTe7kZOsWNC2fGUeKqJEERK/4LJ+/Czl
 rPTjU+PPOhvYWFhW/MTP422CNGV63zyYHMWe4JuY=
Date: Thu, 4 Jun 2020 19:10:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v5 0/2] Small devm helper for devm implementations
Message-ID: <20200604171024.GA1073292@kroah.com>
References: <e8221bff-3e2a-7607-c5c8-abcf9cebb1b5@free.fr>
 <217b892d-678f-8c32-b9ab-a3dd238c197a@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <217b892d-678f-8c32-b9ab-a3dd238c197a@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_101027_266326_4C94DE67 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 06:13:21PM +0200, Marc Gonzalez wrote:
> Looks like this series has fallen through the cracks :(
> Greg, you would be taking the drivers/base/devres.c changes?
> As mentioned in patch 2, "This patch needs testing on a platform with many clocks."
> (I've only tested using a trivial kernel module)

I can't do anything during the merge window, sorry.  Please feel free to
resend it after 5.8-rc1 is out and I will be glad to review it then.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
