Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99B35C55
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDbz6xq6trFmj2QfrRiWPC096xLAY1kPzS/U4+YYJns=; b=iiT0PIZlYWG6RJ
	Tns6M0hBsbK4GAvt8BcuxrNRoqNeDFvYfgX58F9g/5sQOjZ++LGHVidNSs20ZRxwSh7R2B9HGTYqR
	w1BFB3NnyukNSBBJ/h3/ibYf1x5ibJ2Ugxy3AiotzUXMvUpJ+a8h6pbVLlewmncHnVJuDc9jxtnge
	2HNKoT8M92STUlJMG4JOXs7hVPl2PG0BCj70uMXVhe+VIv/09lOQ9HPzSzvHc9tL+zK/A/B7TcGd0
	4YWvw8Pu/H6DtkyoZYePxxY2KxDck3qm1ir0GbZCzWW20l18K/auhWAwNScOqNBKj07XBJZGlzNqR
	Eh/J1PVQ/XHJh5VVjC4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUk8-0003RF-CS; Wed, 05 Jun 2019 12:10:12 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUjy-0002cC-By
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:10:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E52680D;
 Wed,  5 Jun 2019 05:10:01 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69E483F5AF;
 Wed,  5 Jun 2019 05:10:00 -0700 (PDT)
Date: Wed, 5 Jun 2019 13:09:57 +0100
From: Will Deacon <will.deacon@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: smp: Moved cpu_logical_map[] to smp.h
Message-ID: <20190605120957.GH15030@fuggles.cambridge.arm.com>
References: <20190603231830.24129-1-f.fainelli@gmail.com>
 <20190603231830.24129-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603231830.24129-2-f.fainelli@gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_051004_421832_13C3FD7F 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, rmk+kernel@armlinux.org.uk,
 open list <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 04:18:29PM -0700, Florian Fainelli wrote:
> asm/smp.h is included by linux/smp.h and some drivers, in particular
> irqchip drivers can access cpu_logical_map[] in order to perform SMP
> affinity tasks. Make arm64 consistent with other architectures here.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  arch/arm64/include/asm/smp.h      | 6 ++++++
>  arch/arm64/include/asm/smp_plat.h | 5 -----
>  2 files changed, 6 insertions(+), 5 deletions(-)

Thanks. I'll grab this as a fix in an attempt to save you having to wait an
extra cycle before you can rely on it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
