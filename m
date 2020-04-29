Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929C81BDDBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kz2S2LsLiz6ZHKTAEzvo4MU5tAQdpweR67ZVorxAemo=; b=Ja1AATpPPP/uF0
	+zpUPZGAf5VWB9KHRMQPa/JjAjM2IiYsXeM/TXeYcUifdP5Xt0qxLDLhpy9Yyl0Lo1BqnV6yY8N7K
	zerM93K/zTjwHoNvcoErGeQEil1Oens7Zu5Ornl+Ukc+QE01VhYtH5vgYtZnCxptnT1ZBgTZzWFVP
	Cq/seDdTVNvXxJDgFUig6OmkKznmtD1NMUo1xOAh+E7XOcxgs77MZQFG8aPv8uS3RvX6ntMW+1CH0
	Q2esucMRP74BAGRLehBa+kS6UtANuBP+VNH7HsK0xFhO8AHI6NmEC6sky8XYBA/wnPoFu3dlWpTdX
	D61jWjbt/f6Z5DGU/Zxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTms6-0005Dy-H4; Wed, 29 Apr 2020 13:35:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmrw-0005C0-MW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3tROvqtlLIi2o+RSP+jyp7tId3DmJ3ljzBXYvMBHEjM=; b=SW+FIFOIi/vh1yH3OFKw1kBfR
 NKALhZ7C9TqBNc3CWk0ERY4iQy2NDkI2kFaA+LhitjqWi4dUnO+PCFCwo3ifoXWISbr5r69aqYKRy
 RxesRtxTQZXegALW99+h/RsjReo1dYPoVAvONHckrDyASsXFf99FGkdepjGLOYVlBkHCAqGfRByX5
 Fs/NUZ1exmVJM+9WSH09rqtZRskoSpJhuQmO5ZlwImJ0k/cq+cWMOVBkUhDjJRYlCLLLHdFRn88FK
 eOAepy8KTmbWahz1wdjv9j22GBxlVokvUDbR9gRm5zLkukYB71vZ5tJoRMWbtDsymaZ6dsBGTzVs5
 PND73RCGw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33798)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jTmrp-0007rI-8F; Wed, 29 Apr 2020 14:35:13 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jTmro-00016y-Bm; Wed, 29 Apr 2020 14:35:12 +0100
Date: Wed, 29 Apr 2020 14:35:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] [v2] ARM: oabi-compat: fix epoll_ctl build failure
Message-ID: <20200429133512.GE1551@shell.armlinux.org.uk>
References: <20200429132349.1294904-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429132349.1294904-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_063520_737029_E6D018F6 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-api@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:23:24PM +0200, Arnd Bergmann wrote:
> Two functions are not declared or defined when CONFIG_EPOLL is
> disabled:
> 
> arch/arm/kernel/sys_oabi-compat.c: In function 'sys_oabi_epoll_ctl':
> arch/arm/kernel/sys_oabi-compat.c:258:6: error: implicit declaration of function 'ep_op_has_event' [-Werror=implicit-function-declaration]
>   258 |  if (ep_op_has_event(op) &&
>       |      ^~~~~~~~~~~~~~~
> arch/arm/kernel/sys_oabi-compat.c:265:9: error: implicit declaration of function 'do_epoll_ctl'; did you mean 'sys_epoll_ctl'? [-Werror=implicit-function-declaration]
>   265 |  return do_epoll_ctl(epfd, op, fd, &kernel, false);
>       |         ^~~~~~~~~~~~
>       |         sys_epoll_ctl
> 
> Replace the function with the sys_ni_syscall stub in this case.
> 
> Fixes: c281634c8652 ("ARM: compat: remove KERNEL_DS usage in sys_oabi_epoll_ctl()")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: use sys_ni_syscall() instead of removing the function body
> ---
>  arch/arm/kernel/sys_oabi-compat.c | 2 ++
>  kernel/sys_ni.c                   | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm/kernel/sys_oabi-compat.c b/arch/arm/kernel/sys_oabi-compat.c
> index 85a1e95341d8..2488c69242cf 100644
> --- a/arch/arm/kernel/sys_oabi-compat.c
> +++ b/arch/arm/kernel/sys_oabi-compat.c
> @@ -249,6 +249,7 @@ struct oabi_epoll_event {
>  	__u64 data;
>  } __attribute__ ((packed,aligned(4)));
>  
> +#ifdef CONFIG_EPOLL
>  asmlinkage long sys_oabi_epoll_ctl(int epfd, int op, int fd,
>  				   struct oabi_epoll_event __user *event)
>  {
> @@ -264,6 +265,7 @@ asmlinkage long sys_oabi_epoll_ctl(int epfd, int op, int fd,
>  
>  	return do_epoll_ctl(epfd, op, fd, &kernel, false);
>  }
> +#endif
>  
>  asmlinkage long sys_oabi_epoll_wait(int epfd,
>  				    struct oabi_epoll_event __user *events,
> diff --git a/kernel/sys_ni.c b/kernel/sys_ni.c
> index 42ce28c460f6..9ee6a46b1795 100644
> --- a/kernel/sys_ni.c
> +++ b/kernel/sys_ni.c
> @@ -68,6 +68,7 @@ COND_SYSCALL(epoll_create1);
>  COND_SYSCALL(epoll_ctl);
>  COND_SYSCALL(epoll_pwait);
>  COND_SYSCALL_COMPAT(epoll_pwait);
> +COND_SYSCALL(oabi_epoll_ctl); /* ARM OABI specific */
>  
>  /* fs/fcntl.c */
>  

I know what Chris said, but do we really want to be polluting generic
kernel files with arch specific stuff like this?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
