Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011F03001F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61tG5sv89caPTWcGo/5y+jJcb6/U+3FeEP1CQr46kVk=; b=Eiq4SdkirAtBx5
	KdspuKgmG7XJFrtkZkuzYJx4M1Qb7l88X8CCzuk7epuoSlszd+Xqwzfn4xqjtDZvpHlrwtMY4QZWw
	vgAYp1rkGvJyuoIr2ZmRwKM/XFMDMdIW2+NtqrFs0psgzNLQ9BerG5Chvx+nuFQApyPljki/k7XwJ
	EMtHPpGxNMvdugQ+ygeYlod9dCIGpd2i98d29iQG1BKh+vZTNkYHPjHozVbksUDq/YEwpbCAQ6pNt
	XBnQldUTYl1soW5/PkjvoUoa58SG+J6w26WEsfcylptKh9SaJvXHIaa92qFo91HSi6LjnhHLZfItz
	sFwSqFOmFWtB7fT2svWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNpS-0003wS-9D; Thu, 30 May 2019 16:22:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNpK-0003tJ-QQ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:22:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3kgTdo02E09r0Og/xJIfjwXUfONzBeGtXYyX4dAdahU=; b=GvpSLRjWIZcMSQnSrU6NlCPkd
 4GgdrNg1JUKpxUmF0KRYP+9AIO6S0jfabyoLT/MO4nUiaJaxhoDocAjahPovhRCK783KHto5H+I3L
 YeRWs3S0B1UnWxn7SZ9OvQaOOkcOA049rMEVHFOQOFZXehZ8zf+JvQfeCrpBJiOWL0LZ6xHtNd/ts
 e1b+xLNcjxKU8f3wIGWMKXseLrbe5UOkEj58WUzf0QOaVkpok/qUTQwqcBw6h46DuV72hPgRIoQkS
 86dKC5355W1BSaOKY/AKXO+Galfvburird4v78S41JPneh5Fmc3XTqQcNfEQXTWl6tcJsVlFTdrnS
 HD/jgHkRw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52716)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWNos-0003sF-QT; Thu, 30 May 2019 17:22:22 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWNop-0005Y0-Ja; Thu, 30 May 2019 17:22:19 +0100
Date: Thu, 30 May 2019 17:22:19 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: l00383200 <liucheng32@huawei.com>
Subject: Re: [PATCH] Stacktrace in ARM32 architecture has jumped the first 2
 layers, which may ignore the display of save_stack_trace_tsk.
Message-ID: <20190530162219.dtooagpeyczfaazb@shell.armlinux.org.uk>
References: <1559228799-84473-1-git-send-email-liucheng32@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559228799-84473-1-git-send-email-liucheng32@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_092250_868100_D80E878C 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: peterz@infradead.org, gregkh@linuxfoundation.org, tglx@linutronix.de,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:06:39PM +0800, l00383200 wrote:
> Without optimization, both save_stack_trace_tsk and __save_stack_trace
> will have stacktrace information in ARM32.
> 
> In this situation, "data.skip += 2" operation will skip the first two layers,
> which may make the stacktrace strange and different from other architectures.
> 
> A simple example is as follows:
> In ARM32 architecture:
> [<ffffff80083cb3f8>] proc_pid_stack+0xac/0x12c
> [<ffffff80083c7c70>] proc_single_show+0x5c/0xa8
> [<ffffff800838aca8>] seq_read+0x130/0x420
> [<ffffff8008365c54>] __vfs_read+0x60/0x11c
> [<ffffff80083665dc>] vfs_read+0x8c/0x140
> [<ffffff800836717c>] SyS_read+0x6c/0xcc
> [<ffffff8008202cb8>] __sys_trace_return+0x0/0x4
> [<ffffffffffffffff>] 0xffffffffffffffff
> 
> In some other architectures(ARM64):
> [<ffffff8008209be0>] save_stack_trace_tsk+0x0/0xf0
> [<ffffff80083cb3f8>] proc_pid_stack+0xac/0x12c
> [<ffffff80083c7c70>] proc_single_show+0x5c/0xa8
> [<ffffff800838aca8>] seq_read+0x130/0x420
> [<ffffff8008365c54>] __vfs_read+0x60/0x11c
> [<ffffff80083665dc>] vfs_read+0x8c/0x140
> [<ffffff800836717c>] SyS_read+0x6c/0xcc
> [<ffffff8008202cb8>] __sys_trace_return+0x0/0x4
> [<ffffffffffffffff>] 0xffffffffffffffff
> 
> Therefore, we'd better just jump only one layer to ensure accuracy and consistency.

Why do we want to log the function we called to save the stack trace
_in_ the stack trace?  What useful purpose does it serve?

I've always taken the attitude that if we want a stack trace from a
certain point in the function, then that's the point that the stack
trace should start.  It's entirely sensible.

> 
> Signed-off-by: liucheng <liucheng32@huawei.com>
> ---
>  arch/arm/kernel/stacktrace.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
> index 71778bb..bb3da38 100644
> --- a/arch/arm/kernel/stacktrace.c
> +++ b/arch/arm/kernel/stacktrace.c
> @@ -125,7 +125,7 @@ static noinline void __save_stack_trace(struct task_struct *tsk,
>  #endif
>  	} else {
>  		/* We don't want this function nor the caller */
> -		data.skip += 2;
> +		data.skip += 1;
>  		frame.fp = (unsigned long)__builtin_frame_address(0);
>  		frame.sp = current_stack_pointer;
>  		frame.lr = (unsigned long)__builtin_return_address(0);
> -- 
> 1.8.5.6
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
