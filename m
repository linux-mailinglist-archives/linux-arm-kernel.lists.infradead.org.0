Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFF4E9A7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNYEW1YARtoPM+KdKHu8c6YTgjADI9Mab3oapotdb9A=; b=jpa2nJjuaZEJpW
	mN675QtKDtSBypr0zp4vP1Jivg+mz9Ly8Hj+Ux+6peGaK15K2YINsGH5xyodBBntm7pcK3R/Qi9SJ
	3jKWtS6AxAtYtPuCP7dNs4KZLQejw0AL+v59gA1JZEWzHh+6GnY6Lwac8ZfZaxTyCFsPQHZR4DF7E
	sgKP14sRqjgK9dgiiqqXW7G+tUoRhswn3S3w+RZsuajxqQ6t3kJtbdloeeNZ5hhVX3PexCZnEs3K5
	x3JecHZOhsdWAHzy+k9R0bPiRPVNgET9SdAUVKMibIbKzL9GtQbpCrTydUV/tSS5llGwoitje7sZA
	G/der8jTnQaB3tVZxhxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPleW-0006Qp-JV; Wed, 30 Oct 2019 10:56:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPleC-0006Dx-T2
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uIegkZQzkn1zcqdyq67bNlxNwZqbG1dPi+BTChwc7jw=; b=Toq0Mv2v84YfwvtbALBytVUt2
 tVFOKbqj5yElqIGud8SkSy5s0ilJ9aeo7zs3Yfcn4dVVHqjmP4hXHVYNOZ6ouyr9OSwR2oybr895m
 oDsyqNEcS8AkLyA44zjEkH62Hxv6LZu6rkCp9FQ7M46IpkAl9U4K46IDC+NNIPAyDIfwe9aZRDxlb
 g9qe1+h0Ai4OtVpFj7zm1fr+/fkuxZj52NhnBUAhDIhysi0Q6Aum7izpBQpCDomhfzZ6VE0ibOFUW
 iDZZlot+hHl8yhVo7WjSfEdQjZAj5UkzOQVgxedpGwKP7zAr/wGg9vlQMie/5RcdG7asheA0JWQFR
 7VXrEswKA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:56890)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iPlds-0007ur-Rj; Wed, 30 Oct 2019 10:55:56 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iPldp-0005So-HG; Wed, 30 Oct 2019 10:55:53 +0000
Date: Wed, 30 Oct 2019 10:55:53 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: linux-next: Tree for Oct 29
Message-ID: <20191030105553.GH25745@shell.armlinux.org.uk>
References: <20191029180731.2153b90c@canb.auug.org.au>
 <CADYN=9+aqqHVP8tKFFCTKi_zzSt=PW5JVyU2sdaThgrHpYSjzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADYN=9+aqqHVP8tKFFCTKi_zzSt=PW5JVyU2sdaThgrHpYSjzQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_035616_976666_85F7C99D 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 linux-trace-devel@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please trim your replies; there's no need to force everyone to page
through 500 lines of Stephen's email to get to the content of your
message.

On Wed, Oct 30, 2019 at 11:25:19AM +0100, Anders Roxell wrote:
> When I'm building an arm kernel with this .config [1], I can see this
> build error on next tag next-20191029 and next-20191030. Tag
> next-20191028 built fine.
> 
> 
> $ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -skj$(getconf
> _NPROCESSORS_ONLN) O=obj-arm-20191029 zImage
> arm-linux-gnueabi-ld: kernel/trace/trace_preemptirq.o: in function
> `trace_hardirqs_on':
> trace_preemptirq.c:(.text+0x2a0): undefined reference to `return_address'
> arm-linux-gnueabi-ld: trace_preemptirq.c:(.text+0x2dc): undefined
> reference to `return_address'
> arm-linux-gnueabi-ld: kernel/trace/trace_preemptirq.o: in function
> `trace_hardirqs_off':
> trace_preemptirq.c:(.text+0x468): undefined reference to `return_address'
> arm-linux-gnueabi-ld: trace_preemptirq.c:(.text+0x494): undefined
> reference to `return_address'
> arm-linux-gnueabi-ld: kernel/trace/trace_irqsoff.o: in function
> `start_critical_timings':
> trace_irqsoff.c:(.text+0x798): undefined reference to `return_address'
> arm-linux-gnueabi-ld:
> kernel/trace/trace_irqsoff.o:trace_irqsoff.c:(.text+0xed4): more
> undefined references to `return_address' follow
> make[1]: *** [/srv/src/kernel/next-testing/Makefile:1074: vmlinux] Error 1
> make[1]: Target 'zImage' not remade because of errors.
> make: *** [Makefile:179: sub-make] Error 2
> make: Target 'zImage' not remade because of errors.

Known problem with one of Ben Dooks patches, which was dropped very
quickly when Olof's builder spotted the issue... though it looks like
I didn't push it out.  Ben doesn't seem to be responding about his
broken patch though...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
