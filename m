Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BFA1C55DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfLl6lNz+GAI11bTcDGaUPUCg3a+sEymNc4debzT0rQ=; b=BgTcBrE7y+nsV2
	0087Ax177z0qnJnTA+TQx28xNIbHJ8mbOTo0QMfWhtN3azqwqMabi2ZNdcclkwrTCo0zj6AuHSKCF
	rOeA+3RXjUB+CzMCC4AKxMWijGslJAvgSvdgeGD4ur2XngHh218gfNEr0+S5bJpnXbK6x41zoC1CN
	Bh0IZWYAdaEGGyjjcKhmdU3kzV10HQKgguHeEbQQjk4UaqIHXj1JjTEKVny10/XGOzsY75Ak+jX42
	CfOGHA983GjAdh7Obm7FH8msQxgsFrbU+rGVFAIhI6vVnjuZYeTpyiehZGtfp16YEJQPGXcugXeWk
	FBR3P99hfpsI/ZY7TvLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVwvz-00078V-O2; Tue, 05 May 2020 12:44:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVwvt-000765-41
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 12:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dvJVZ8RaVIi9fnToKXnkX3dzcg5kxNHYNYxAapFHQiM=; b=Z6As9OSnXP7R1PgeHS8atsvEh
 hLe9hBYBd2mlauOWcHMD6Ppt8ksXA4zT5pCu95JLgHTv8BqWcvUTPf+TjKHPYgQCmjkeabNOKU5SA
 Mz+jtCDU+7y7l4RsKJXIfyrICMUKqEFvYf7ItoIH03J5B2csZqs22QZirlcPkitBGTiOtuK9/sLRT
 vESzIpaStT5/bEK99pjNTMPlrSioAbYfknpLuc16wzWinZ3enyzfKzBNgbtwKVlrlKu9qJl3qGNbx
 QuJRM5cacbxBkvYJFDFQKbDdUQvR8xHD/k2OeyTA6zr4wcoCu4UOnNHG+ZSKyH/gqloIv/vky1Ma8
 L2RxiadHA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:54024)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jVwvZ-0002Ps-7W; Tue, 05 May 2020 13:44:01 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jVwvP-0007A5-9U; Tue, 05 May 2020 13:43:51 +0100
Date: Tue, 5 May 2020 13:43:51 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will@kernel.org>
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
Message-ID: <20200505124351.GF1551@shell.armlinux.org.uk>
References: <20200504153214.GH30377@arm.com>
 <20200505104454.GC19710@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505104454.GC19710@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_054421_160589_30AA3BED 
X-CRM114-Status: GOOD (  10.80  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 11:44:55AM +0100, Will Deacon wrote:
> Michael has been nagging me on and off about that for, what, 10 years now?
> I would therefore be very much in favour of having our ptrace extensions
> documented!
> 
> We could even put this stuff under Documentation/arm64/man/ if it's deemed
> too CPU-specific for the man-pages project, but my preference would still
> be for it to be hosted there alongside all the other man pages.

Stuffing random things into the kernel tree is painful for some people.

For example, if you cross-build your kernel, then the stuff in the
tools/ subdirectory is totally useless (I think everything except
perf) because you can't build it.

Let's stop making the mistake of constantly shoving stuff into the
kernel source tree.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
