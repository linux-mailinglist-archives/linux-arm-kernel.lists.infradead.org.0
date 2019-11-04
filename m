Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20CCED6AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 01:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PSbusU/INCygoDljcjI0BDPNnU/xqo31F8Bj1mO5lS8=; b=KOwS42JtAkRUUgrGPWYS6mTLK
	fqsb/MYsDQx7QRLPmaZZR1vFwIl+HvmRNqK35UeZ8lxhoLgrPpdSO3vv9vv6sDHCS6UQEQq1JKJOg
	l8YnJjwGhoxiyiIXVhIB5rWEe6no88P+O45j+at/9zoP8D5BbppYdl+lZjJykbYcYgw2clBFG6bmc
	16E5ZAwW+oWMiakpr/3kpox1dRM/EYbIQFOY2pNc7yWPmvbOHCF6WPtsWN+eooAvLqWwJyjgoaKE3
	hX/sUrXEtV+Fvciv73dbHvQFP6IBA/Q88dtg9jE5ZRpfrMWhP3jAecb/pS8wsXWZ5gHt/YyOp0j5a
	umxAcUFXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQQu-0001Ya-Mx; Mon, 04 Nov 2019 00:41:24 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQQn-0001Y1-Rr
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 00:41:19 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 479E1790CD7605B36A71;
 Mon,  4 Nov 2019 08:41:07 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Mon, 4 Nov 2019
 08:40:58 +0800
Subject: Re: [GIT PULL] Hisilicon driver updates for v5.5
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
References: <5DB95DC1.50900@hisilicon.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5DBF7399.60309@hisilicon.com>
Date: Mon, 4 Nov 2019 08:40:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <5DB95DC1.50900@hisilicon.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_164118_071095_39EB6B64 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, John Garry <john.garry@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>, Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM-SoC team,

Sorry there are some build failures for this pull on the parisc, hexagon 
and alpha architectures.
Please ignore this pull request.
We will fix them and resend.
Thanks!

Best Regards,
Wei

On 2019/10/30 17:54, Wei Xu wrote:
> Hi ARM-SoC team,
>
> Please consider to pull the following changes.
> Thanks!
>
> Best Regards,
> Wei
>
> ---
> The following changes since commit 
> 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
>
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
>
> are available in the Git repository at:
>
>   git://github.com/hisilicon/linux-hisi.git tags/hisi-drivers-for-5.5
>
> for you to fetch changes up to e9541b372b229f6babd93afcc623e5428b4026a3:
>
>   logic_pio: Build into a library (2019-10-28 20:46:05 +0800)
>
> ----------------------------------------------------------------
> ARM64: hisi: SoC driver updates for 5.5
>
> - check the LOGIC_PIO_INDIRECT region ops at registration instead of
>   in the IO port accessors to optimise the lib/ligic_pio.c
>
> - add the hisi LPC driver to the build test for the other architectures
>   by updating the hisi LPC Kconfig and adding a dummy PIO_INDIRECT_SIZE
>
> - clean the sparse complains of the hisi LPC driver
>
> - build logic_pio into a lib to avoid including in the vmlinux when not
>   referenced
>
> ----------------------------------------------------------------
> John Garry (5):
>       lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at 
> registration
>       logic_pio: Define PIO_INDIRECT_SIZE for !CONFIG_INDIRECT_PIO
>       bus: hisi_lpc: Clean some types
>       bus: hisi_lpc: Expand build test coverage
>       logic_pio: Build into a library
>
>  drivers/bus/Kconfig       |  4 ++--
>  drivers/bus/hisi_lpc.c    |  9 ++++-----
>  include/linux/logic_pio.h |  4 ++--
>  lib/Makefile              |  2 +-
>  lib/logic_pio.c           | 14 ++++++++------
>  5 files changed, 17 insertions(+), 16 deletions(-)
>
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
