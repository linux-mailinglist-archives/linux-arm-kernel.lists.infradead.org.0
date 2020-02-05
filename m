Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2078E153104
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hswXj9BB6jIOmZGhe7krK7qln8Vxln2rP/P2RZMyA6U=; b=s3xm8NXWDX3nJLEEvRib85jl5
	h2h1wxvcvpOEpR+EQQuhvqb6TR+Cv1nDAutoNDNUH0//Y9yI53Hf17ZpStWm+9BAsE6V8QOXeNmbY
	de5bMWWDXMHotynpNJNOrwBqdgOHFbJ/hhwqzuIpnAchO3Zf9pZJs+PdlVsdfGIOFSYA7x4ocwvCK
	FtroQCOpbmUjJTCke7ZTOAnllLeq1yrMRtyztKrI6qVWbxGNAJsjWM8cHmMsFYe9LgTtxKIIpViB/
	KUtfRjL+AxPseGiY/yBb5m8Sf0Klq4HpHQZuAUj/A3PAqs8EddhDRReH+phEYEXf01FyyQQ9XAsWz
	hZKtjxgNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izK4r-0001jf-47; Wed, 05 Feb 2020 12:46:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izK4k-0001iz-3O
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:46:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E6FC20702;
 Wed,  5 Feb 2020 12:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580906797;
 bh=GfGSMXXeXChdHY2rFyfqEnWPYUrl7k3y4PXuksqSPxo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MMo0yvYVxHW6Ixw5DBnn9oa1n/Z6efinNp30im/8hwmaiqSxnnz2ll2SgDS2KifNh
 SpqDffeu0rM2ygdSsyGGqC/wnOcfv28oW/XLzPxC4VpH+UnWWAfRJhWzOcVRkKJezh
 KQDjqqsYfIdPBc+UZa49K//qIZGwFqxl+vBcqCqc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1izK4h-00388J-VA; Wed, 05 Feb 2020 12:46:36 +0000
MIME-Version: 1.0
Date: Wed, 05 Feb 2020 12:46:35 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH 0/5] irqchip/gic-v4.1: Cleanup and fixes for GICv4.1
In-Reply-To: <20200204090940.1225-1-yuzenghui@huawei.com>
References: <20200204090940.1225-1-yuzenghui@huawei.com>
Message-ID: <004ca9ea2d525d5b1bcf1d78f10c61ba@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 tglx@linutronix.de, jason@lakedaemon.net, wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_044638_164786_B4A5359A 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-02-04 09:09, Zenghui Yu wrote:
> Hi,
> 
> This series contains some cleanups, VPROPBASER field programming fix
> and level2 vPE table allocation enhancement, collected while looking
> through the GICv4.1 driver one more time.
> 
> Hope they will help, thanks!
> 
> Zenghui Yu (5):
>   irqchip/gic-v4.1: Fix programming of GICR_VPROPBASER_4_1_SIZE
>   irqchip/gic-v4.1: Set vpe_l1_base for all redistributors
>   irqchip/gic-v4.1: Ensure L2 vPE table is allocated at RD level
>   irqchip/gic-v4.1: Drop 'tmp' in inherit_vpe_l1_table_from_rd()
>   irqchip/gic-v3-its: Remove superfluous WARN_ON
> 
>  drivers/irqchip/irq-gic-v3-its.c   | 80 +++++++++++++++++++++++++++---
>  include/linux/irqchip/arm-gic-v3.h |  2 +-
>  2 files changed, 75 insertions(+), 7 deletions(-)

Thanks a lot for this, much appreciated, I'm quite happy with the 
overall
state of the series. If you can just address the couple of nits I have 
on
patch #3, I'll then queue the series and send off to Thomas together 
with
the rest of the queued fixes.

Thanks,

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
