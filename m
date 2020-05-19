Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98DF1D97C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=of1N4ITYUqlcSyY+TaKkvsKQOPsN432hy5J7WXxtX9o=; b=MOAtuJfnQ8X9ON
	jFvgo/yTEBHVSD667oH6nA5YWnouQzd9wW3TX7ii4vAkP+qynJ+Q09cqvmRwtwcsVeJRa+2Sg2wqJ
	liNM6hQTAc1mDBKhUIDSaeMCFki6zNbDLsnH9Zlx88edhFi+k/wTWBXAn3aqDCX4qVe5MzBT6gL/z
	dzb3NYsfM5VoAh8V5Cb4mLtW4PD1M3Ly+5bnaTSshGiZ1uJ8vDYUP3Ao/wPglRgt53ByPxH7keFjb
	rvJQT6MYgrh0cpKHu3Pi+ZrrNzC4zfE34Jawtr+LDC5F7ZL9sASW7S1SrBAo1BuKJWqz3LEnxlKOI
	gKMpE9bC0KTomwOtayzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2K1-0000j8-7i; Tue, 19 May 2020 13:30:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2Jl-0008T6-J5
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:30:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CA4020829;
 Tue, 19 May 2020 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589895001;
 bh=tNCHKvOQltRdjqZGdQsgQweqdTCaMtSK23iuq29pVfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wgRaH1DR+m6WF4pxjMX3N1SuD5kbrNqmTExYo0Bcx6amDNrCM/e/BwwA6rJLccJB0
 cbVWMxfZ01vOzOWD29VHmtamajQfQn/vDmfMQXWm/zrHcurfhsNBd+YrdavsUfe1SU
 p7Y8UxXfzJQv6YLBLHx60bqg573+soYkjmuP5OKI=
Date: Tue, 19 May 2020 14:29:56 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200519132955.GA14570@willie-the-truck>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519132100.GD5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519132100.GD5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_063001_674998_10AB9F01 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 02:21:01PM +0100, Dave Martin wrote:
> On Tue, May 19, 2020 at 01:18:16PM +0100, Will Deacon wrote:
> > For better or worse, GDB relies on the exact instruction sequence in the
> > VDSO sigreturn trampoline in order to unwind from signals correctly.
> 
> Are you sure?  I'm struggling to find the relevant code in gdb.

It looks pretty damning:

https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=gdb/aarch64-linux-tdep.c;h=34ba0d87baaff12f1f9711e777ab15a0a394f59b;hb=HEAD#l361

(and also look at struct tramp_frame).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
