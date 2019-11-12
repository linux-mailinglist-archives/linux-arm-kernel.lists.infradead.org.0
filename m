Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4883F8813
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 06:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1wZLsGTVqPPHPkyqe/w+a59AQKTNKT4+ejZf7+hdp0=; b=mI48HAsj6opTz7
	czW27yHxq92PPg52ffNu50Qk3y6j0Ypxphmxo/W0t7MIkiUWh12jgQpTbr/f0vmeLbiqVLvycg02v
	ul/8J+WR1lmiam4r45YtFerG02CK7mPM5TTzr+fyUxOfadpSc9WRbx0zybKZRO/Ng3WIKofnFfPoJ
	/s5KTD96KVwA12KKOHD1hjit7JKcki8lnt/Gsh2ermZJjAfoA4DmZc1DMtNq/HEM8J1lx1uwGdTGr
	bD7iwm8F0HJURQUmG2/4mIU+VOH6zruHbbqMqyHGspUDC5+gm5t4Vetb3XUar2T/Q0ndhGF2St8Vt
	cNxJ+PgD+HSqFvIcqtcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUOqv-0007hx-Or; Tue, 12 Nov 2019 05:36:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUOql-0007hO-5b
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 05:36:24 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 492902084F;
 Tue, 12 Nov 2019 05:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573536982;
 bh=CW4sS9ZPA3e9y0ZdHYZKfrs0TKR4gsGmIeBwQhd1j90=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wtI1maEd82Pp6yDxs99RQuT5aQA5mTHES/PlrMy6wHbRHwuJIFX98qqnxkPPon1Dv
 5VOv3lteVsN4LPCXlVKTRhUB0etdtWUlQ+Bqvu6Uq3vi/JJYxuzfjphx3P6PltT4I7
 yQwC9Q2b0zcBkMtkizz9cZG4zLyuwZewl36MMDr8=
Date: Tue, 12 Nov 2019 06:36:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH] ARM: ep93xx: Avoid soc_device_to_device()
Message-ID: <20191112053619.GA1210104@kroah.com>
References: <20191111223722.2364-1-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111223722.2364-1-afaerber@suse.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_213623_230737_4EC13871 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 11:37:22PM +0100, Andreas F=E4rber wrote:
> ep93xx_init_soc() uses soc_device_to_device() to return a device
> to ep93xx_init_devices(), where it is passed on to its callers,
> who all ignore the return value. As this helper is deprecated,
> change the return type of ep93xx_init_devices() to void and
> have ep93xx_init_soc() return the soc_device instead.
> =

> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  arch/arm/mach-ep93xx/core.c     | 12 ++++--------
>  arch/arm/mach-ep93xx/platform.h |  2 +-
>  2 files changed, 5 insertions(+), 9 deletions(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
