Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB9CEDD30
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzO49XK8M53APie3QjagftJQVk3cAuSyL6NpN2Z5MEQ=; b=X6+rbLbNPZA/r7
	0B+2QKh5xnTbfO3VvEHDTNPxQ2CRaPdCQT07T2c+pIX/Gc+CdcQ7tubGPpJe/rFI4O78TpbG+lEN0
	OFkK7aRW4MqXC9SDLanPHXfMPvQl7tZO6DB7O/QEYr6PyvVZWSknff4ak1oli0+ct+TVIi9aovzDu
	wdpSPhSsc3QoW6ZHTX9wH3b2PmGs8t0XYfL0GB0rT8O4t4adxZ2e7GZw2ZSUlhr/SjKX1sBSbTfKI
	3nQEsL5Sxo7FJ2t10zM3d7JKckvzrosEezbU0X58+uuRKmExg+lnpMhX7HEb5i9s5CL4qLnzmyrut
	AJD0zt4gwLcVs2FIl+tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRa4v-0006tJ-VP; Mon, 04 Nov 2019 10:59:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRa4n-0006sL-Ef
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:59:14 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5306221D71;
 Mon,  4 Nov 2019 10:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572865152;
 bh=HUdxCMu6xBUopH6EcbPDSSLqXUxI0M4SppvWvEPfEqs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kJ5Hj/mtkdgzOR3bdrfZhnnr5sFiwZWuPbBF16OhIo0gKg4uerNuOVtWt8Cj4gLZH
 ZFSxzpbAoI37D8a5ZCXnZuXjrlNSvw/SA4sjK9XgRsluGY2ZyMFB8JxZo4LD+ZsDyZ
 5BdL1nCchdXhk772IsIrWEtUDPU+hnGmQHwNaObE=
Date: Mon, 4 Nov 2019 11:59:10 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: stable-rc-4.19: cpufeature.c:909:21: error: 'MIDR_HISI_TSV110'
 undeclared
Message-ID: <20191104105910.GB1945210@kroah.com>
References: <CA+G9fYtoODTuayzXdsv=bFuRPvw1-+dmZxHqQePy6LX8ixOG5A@mail.gmail.com>
 <98f10e13-8ec8-1690-a867-f212bcea969f@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98f10e13-8ec8-1690-a867-f212bcea969f@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_025913_518239_93D9051F 
X-CRM114-Status: GOOD (  10.40  )
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 suzuki.poulose@arm.com, catalin.marinas@arm.com,
 Naresh Kamboju <naresh.kamboju@linaro.org>, john.garry@huawei.com,
 open list <linux-kernel@vger.kernel.org>,
 linux- stable <stable@vger.kernel.org>, zhangshaokun@hisilicon.com,
 Hanjun Guo <hanjun.guo@linaro.org>, lkft-triage@lists.linaro.org,
 andrew.murray@arm.com, will@kernel.org, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 09:10:06AM +0800, Hanjun Guo wrote:
> Hi Sasha, Greg,
> 
> On 2019/11/4 7:22, Naresh Kamboju wrote:
> > stable rc 4.19  branch build broken for arm64 with the below error log,
> > 
> > Build error log,
> > arch/arm64/kernel/cpufeature.c: In function 'unmap_kernel_at_el0':
> > arch/arm64/kernel/cpufeature.c:909:21: error: 'MIDR_HISI_TSV110'
> > undeclared (first use in this function); did you mean
> > 'GICR_ISACTIVER0'?
> >   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
> >                     ^
> > arch/arm64/include/asm/cputype.h:141:12: note: in definition of macro
> > 'MIDR_RANGE'
> >   .model = m,     \
> >            ^
> > arch/arm64/kernel/cpufeature.c:909:3: note: in expansion of macro
> > 'MIDR_ALL_VERSIONS'
> >   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
> >   ^~~~~~~~~~~~~~~~~
> > arch/arm64/kernel/cpufeature.c:909:21: note: each undeclared
> > identifier is reported only once for each function it appears in
> >   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
> >                     ^
> > arch/arm64/include/asm/cputype.h:141:12: note: in definition of macro
> > 'MIDR_RANGE'
> >   .model = m,     \
> >            ^
> > arch/arm64/kernel/cpufeature.c:909:3: note: in expansion of macro
> > 'MIDR_ALL_VERSIONS'
> >   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
> 
> Patch "efd00c7 arm64: Add MIDR encoding for HiSilicon Taishan CPUs" needs to
> be bacported as well, would you like me to do that, or just cherry-pick by yourself?

I need the backport please, cherry-pick fails :(

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
