Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D335D9422
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RL4hyvMb6uStVcReZY7a4bBVhBCAcQN1Uup1lCLz98c=; b=XcAvkn5QPXjaP4
	7bdnCFjQ0F46Usg33fcLzOX28Tq8RO8rA360Ar28z+NvdQR1AVpCBJ1CeroCqr/3wtWp8bfVy9eAq
	KGKDYlZgxVgXIgEzQA6BO215q+dhu7jRT1Svzql/jRwwAd1zSgHODBoxaMfdVGIzZh+zlXOHD874w
	QlvoA46ueh7CHfwNayuEerJWR5HA0kr9qzuwfDeyNKTQVDaC/8pWd8IkcDANGr85ucIHR96bzuX1r
	wNp5lG7uBrYDzuTtv1eD7Irl5PwVlN+0Uq4+OnFDGKJyIGhgmdxR/O+UOCwiaUvnriQ/2IewQAY45
	wFCDJ0cuWmgQaRXGTyCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkU7-0005Ze-0U; Wed, 16 Oct 2019 14:41:07 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkTx-0005Z1-AG
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:40:59 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 54C148107;
 Wed, 16 Oct 2019 14:41:30 +0000 (UTC)
Date: Wed, 16 Oct 2019 07:40:53 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 2/8] ARM: OMAP2+: Drop bogus wkup domain oswr setting
Message-ID: <20191016144053.GC5610@atomide.com>
References: <20191010001224.41826-1-tony@atomide.com>
 <20191010001224.41826-3-tony@atomide.com>
 <20191013150744.GD13278@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191013150744.GD13278@amd>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_074057_389677_FA47E26A 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, linux-omap@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Pavel Machek <pavel@ucw.cz> [191013 15:08]:
> Hi!
> 
> > The wkup domain is always on and does not have logic off setting. This
> > got accidentally added by commit f74297dd9354 ("ARM: OMAP2+: Make sure
> > LOGICRETSTATE bits are not cleared") but is harmless.
> > 
> > Cc: Merlijn Wajer <merlijn@wizzup.org>
> > Cc: Pavel Machek <pavel@ucw.cz>
> > Cc: Sebastian Reichel <sre@kernel.org>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> >  arch/arm/mach-omap2/pm44xx.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-omap2/pm44xx.c b/arch/arm/mach-omap2/pm44xx.c
> > --- a/arch/arm/mach-omap2/pm44xx.c
> > +++ b/arch/arm/mach-omap2/pm44xx.c
> > @@ -137,8 +137,7 @@ static int __init pwrdms_setup(struct powerdomain *pwrdm, void *unused)
> >  	 * smsc911x at least if per hits retention during idle.
> >  	 */
> >  	if (!strncmp(pwrdm->name, "core", 4) ||
> > -	    !strncmp(pwrdm->name, "l4per", 5) ||
> > -	    !strncmp(pwrdm->name, "wkup", 4))
> > +	    !strncmp(pwrdm->name, "l4per", 5))
> >  		pwrdm_set_logic_retst(pwrdm, PWRDM_POWER_RET);
> 
> This is rather theoretical, but if the powerdomain is called
> "corelation-not-causation", do you still want the if() to trigger?

No need to if no writable register bits exists if I understand
your theoretical comment right :)

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
