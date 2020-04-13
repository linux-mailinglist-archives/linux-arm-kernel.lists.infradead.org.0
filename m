Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC1C1A6257
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 07:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCxw/vnyghl8XQ+qhqBNtY95Xdaa98QruxOkdafTGbI=; b=rO9UIiXij79N0I
	7WHaYVJ1RDgQ2ERoiCFz6pEVcCQdjZM2eGqPo9L3XEYdn06bFWnCasAERq6qC8+lQ2/ljvxq/eqhB
	WytBk8HM4NCfy0bfHixnr/XouO6e92MC6XYEf01r6MQ3DOBmFyx8GLc/+rQ+VE+a5X6yU5IJ/QUDP
	ZrSH57zNov7XgJrZHi9zUt2uAmQX5tzYWRHMrFYJWew1NAfzm2pP4ZgOJFynzGaG46EnfvwkL0ysd
	/o5YdZ0tDS/2YfWAae7Vnv72cZcpflem5BBa+gQWEcZtOXtwovIIN/RDX3lpOd1aXbfG1NWmSiczx
	ZSv2HOWteKZPepmitXFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNrcO-0001vF-QK; Mon, 13 Apr 2020 05:26:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNrcH-0001uq-QL; Mon, 13 Apr 2020 05:26:43 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5AC4F20731;
 Mon, 13 Apr 2020 05:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586755601;
 bh=RDuc7TIH8NRC/WbymybrwwHyUdyFCCD5uyjfOff9Eag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dea8uqwiyJyiKbRypdML2SpeLc3PwNMe9X33+CmisXEPPv7uHhQti1XqpZRzkKFgG
 vK7h/gWUwgtWfGRW1UWfmZ6uWAjuXXz6qpt2cZv/auuG8rRJ09ce2lO/MCKTGYcQ7c
 jxZ0OgwkD3WWTSZsYwX3r0X4ox3HO+c3xUq5M+qM=
Date: Mon, 13 Apr 2020 08:26:37 +0300
From: Leon Romanovsky <leon@kernel.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Message-ID: <20200413052637.GG334007@unreal>
References: <20200411155623.GA22175@zn.tnic>
 <20200412.210341.1711540878857604145.davem@davemloft.net>
 <20200413045555.GE334007@unreal>
 <20200412.220739.516022706077351913.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412.220739.516022706077351913.davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_222641_874039_EBFDA906 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: thor.thayer@linux.intel.com, heiko@sntech.de, irusskikh@marvell.com,
 andreas@gaisler.com, chris.snook@gmail.com, dave@thedillows.org,
 jes@trained-monkey.org, iyappan@os.amperecomputing.com,
 quan@os.amperecomputing.com, linux-acenic@sunsite.dk, andy@greyhouse.net,
 akiyano@amazon.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 LinoSanfilippo@gmx.de, vfalico@gmail.com, kuba@kernel.org,
 thomas.lendacky@amd.com, jcliburn@gmail.com, j.vosburgh@gmail.com,
 keyur@os.amperecomputing.com, mripard@kernel.org, pcnet32@frontier.com,
 bp@alien8.de, nios2-dev@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ionut@badula.org, netanel@amazon.com,
 mark.einon@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 10:07:39PM -0700, David Miller wrote:
> From: Leon Romanovsky <leon@kernel.org>
> Date: Mon, 13 Apr 2020 07:55:55 +0300
>
> > On Sun, Apr 12, 2020 at 09:03:41PM -0700, David Miller wrote:
> >> From: Borislav Petkov <bp@alien8.de>
> >> Date: Sat, 11 Apr 2020 17:56:23 +0200
> >>
> >> > From: Borislav Petkov <bp@suse.de>
> >> >
> >> > Change the include order so that MODULE_ARCH_VERMAGIC from the arch
> >> > header arch/x86/include/asm/module.h gets used instead of the fallback
> >> > from include/linux/vermagic.h and thus fix:
> >> >
> >> >   In file included from ./include/linux/module.h:30,
> >> >                    from drivers/net/ethernet/3com/3c515.c:56:
> >> >   ./arch/x86/include/asm/module.h:73: warning: "MODULE_ARCH_VERMAGIC" redefined
> >> >      73 | # define MODULE_ARCH_VERMAGIC MODULE_PROC_FAMILY
> >> >         |
> >> >   In file included from drivers/net/ethernet/3com/3c515.c:25:
> >> >   ./include/linux/vermagic.h:28: note: this is the location of the previous definition
> >> >      28 | #define MODULE_ARCH_VERMAGIC ""
> >> >         |
> >> >
> >> > Fixes: 6bba2e89a88c ("net/3com: Delete driver and module versions from 3com drivers")
> >> > Signed-off-by: Borislav Petkov <bp@suse.de>
> >>
> >> I'm so confused, that commit in the Fixes: tag is _removing_ code but adding
> >> new #include directives?!?!
> >>
> >> Is vermagic.h really needed in these files?
> >
> > You are completely right, it is not needed at all in those files.
>
> Ok let's just remove it to fix this.

Thanks a lot.

How do you want us to handle it? Boris resend, me to send, you to fix?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
