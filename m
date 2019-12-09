Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABFB116B0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjQqG0nWzMftqF39afVyxpo/4a+tXu13f2CfiW7YmpQ=; b=I/g3FBTnCH4jPx
	Dd60IID98zhzMJGXu89WoSqkDOT/dSR+UU2pJqtOu/7+VUJebf3A4VvC1jTVgzHqjNphwMM9SGNar
	ihOErrksRaYTMVxjX/7ZO/Hl+zsqmf4gszgxL66nCFCTjgODhEUCH5I2/mmi1Aa8SMszqDjpU/YBV
	K9ijvTwx/FSoG7jXbaMreXXYazUKRGY78ytr4Hw+oIfW0NBCRZPXJogdhK/g0oEc+wdMtBhadHnsE
	ySpuTYnUhCyPEmUon7MPrsIH92qB5UTCEQWe3I5fMwxpIXT6CoL89N30PlSDOR0R5SqrgRjNQKXGJ
	AZcw1nFw3BTyArCgzWxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGK5-0002kS-LA; Mon, 09 Dec 2019 10:31:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGJy-0002je-Pn
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:31:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FB62207FD;
 Mon,  9 Dec 2019 10:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575887476;
 bh=gafekmb4KwDK0GFglr1pIqczrJdYTdFqnQ7Hxp+1pNk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y7CL2LY2P0Wt4SWbIonQ4EPnbdkoSkwr6PVzFh7izIJbM3ClApk9TBkeWb1EuINKC
 XYINiL8nP5MJkyBbbtJIp3hfFwqLDd+ygIMRa1+j2IRSJ0X/sWm19KFUZMBRmZKnyT
 B2MT2ZBN/nHWBQJqibdl+yX6hEB2qFeb9A+J7xnM=
Date: Mon, 9 Dec 2019 10:31:11 +0000
From: Will Deacon <will@kernel.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 3/3] arm64 cpuinfo: implement sysfs nodes for arm64
Message-ID: <20191209103110.GB3306@willie-the-truck>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-4-trenn@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206162421.15050-4-trenn@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_023118_864286_3FC85EA5 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, gregkh@linuxfoundation.org,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, fschnitzlein@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 05:24:21PM +0100, Thomas Renninger wrote:
> From: Felix Schnizlein <fschnizlein@suse.de>
> 
> Export all information from /proc/cpuinfo to sysfs:
> implementer, architecture, variant, part, revision,
> bogomips and flags are exported.
> 
> Example:
> /sys/devices/system/cpu/cpu1/info/:[0]# head *
> ==> architecture <==
> 8
> 
> ==> bogomips <==
> 40.00
> 
> ==> flags <==
> fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
> 
> ==> implementer <==
> 0x51
> 
> ==> part <==
> 0xc00
> 
> ==> revision <==
> 1
> 
> ==> variant <==
> 0x0
> 
> Signed-off-by: Thomas Renninger <trenn@suse.de>
> Signed-off-by: Felix Schnizlein <fschnizlein@suse.com>
> ---
>  Documentation/ABI/testing/sysfs-devices-system-cpu | 22 +++++++++
>  arch/arm64/Kconfig                                 |  1 +
>  arch/arm64/kernel/cpuinfo.c                        | 55 ++++++++++++++++++++++
>  3 files changed, 78 insertions(+)

I don't understand why we need this on arm64 and why it's an improvement
over all the other schemes we already support for identifying CPU features.

Given the pain we've endured over the years exposing this sort of stuff to
userspace, I'm relucant to add more just for the fun of it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
