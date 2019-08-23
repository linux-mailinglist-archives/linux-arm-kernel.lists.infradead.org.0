Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D762C9AD69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkYdABShnIkIGT6CPilh/4W7wXtZHVkk4v/WRTwU6hE=; b=trRLS/crP2wmDr
	xuGGpTTLJWeN16IEIomHDta/wf7m4NVAYaZKxHy7K9TYH94z+BZ1DsgCAG0paa8/o+N2FIYpOTeKz
	ycf8DEO89zQQsij6EAo0QY7uElG+xWIYS5NfV7nRaWp+7jN93lJRll6xjxW3OxoIPdJjUS/lejVxk
	FDW3lNVRvE1TJ+VGylSJF+YJYWpzss244YKroSvQI3KGS6HcZjraZZ1+U5zc6gCqdAnGLwmK+Wbar
	3FRVefbdGPGs9bKixSVWsOpY8n1IZ7YNRhWUrxLaLw2JpLmqNdrNJ37JcsQlZ0KSo03PWdhezXQgV
	EN/+RbiRFyhUbwO5XN6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i170D-0002Jg-Py; Fri, 23 Aug 2019 10:41:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1706-0002Iy-87
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:41:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1728B2166E;
 Fri, 23 Aug 2019 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566556857;
 bh=51A+Don/bYB8YoXT4UiN6A2Rbpt3pPbplWI5smfQN3k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NCnYvGzj19HNs01xz2iMxNe1fVsfJ/YHRn9zWmXXl924fGmUF21LyEa/DwYeKqnqt
 ax0TFL5ov+hd+kpTwjz8mhYKguieYjb4vch/zxzrzjDd7R5pNR7Row4R1Vl8zNKzT5
 NWSzWRYGSZ5aO7VqhnitIPYS/1IbP8HQyorq2LKw=
Date: Fri, 23 Aug 2019 11:40:50 +0100
From: Will Deacon <will@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Regression in 5.3-rc1 and later
Message-ID: <20190823104050.o6golaa4fmdd7np5@willie-the-truck>
References: <faaa3843-09a6-1a21-3448-072eeed1ea00@googlemail.com>
 <20190823103654.GX13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823103654.GX13294@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_034058_315977_31BC631D 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux@rasmusvillemoes.dk, catalin.marinas@arm.com, will.deacon@arm.com,
 LKML <linux-kernel@vger.kernel.org>, linux-kselftest@vger.kernel.org,
 vincenzo.frascino@arm.com, shuah@kernel.org, linux-arch@vger.kernel.org,
 daniel.lezcano@linaro.org, arnd@arndb.de, andre.przywara@arm.com,
 Chris Clayton <chris2553@googlemail.com>, 0x7f454c46@gmail.com,
 tglx@linutronix.de, pcc@google.com, linux-arm-kernel@lists.infradead.org,
 huw@codeweavers.com, linux-mips@vger.kernel.org, ralf@linux-mips.org,
 salyzyn@android.com, paul.burton@mips.com, sthotton@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 11:36:54AM +0100, Russell King - ARM Linux admin wrote:
> To everyone on the long Cc list...
> 
> What's happening with this?  I was about to merge the patches for 32-bit
> ARM, which I don't want to do if doing so will cause this regression on
> 32-bit ARM as well.

tglx fixed it:

https://lkml.kernel.org/r/alpine.DEB.2.21.1908221257580.1983@nanos.tec.linutronix.de

which I assume is getting routed as a fix via -tip.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
