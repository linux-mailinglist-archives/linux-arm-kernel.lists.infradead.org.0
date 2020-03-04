Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0831787CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 02:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ppNSFdXpCkReL7FSgUE02SYGcYcRUXLV6QiYQkdl6M=; b=EZCy9yWe36yPfl
	rq9/oSNP5BBZbssqjfrNoHz5r5vpIjiMy/SUS5RNAwC/D8VdJ5s8R8qt7yf3XksJUyu5Ut7tbLlw6
	ar+UBZOgQ3G6VtVtt3twNiuRWR40lBfeOctZLZNx45LIQWL41EIIK4m+i37DgBdadTd8mnXvQuyoQ
	maKmQ9zhZaoCaOfTDt6fVkhWszDhe1cw+u+f0JP/OmmS+q+fYbqFCtaP0twCKADgvQwmhR9vO/8yH
	RwacHsuL2c2jceicG9KntTZYQhc3xp6ylCthuo0nqMxC0teREAbA5vQV2+gOlmS0uCiRtLhVzAXBi
	xZh3QXE4guZyEh1Pqsqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9JG2-0004op-Ca; Wed, 04 Mar 2020 01:55:34 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9JFv-0004nd-3E
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 01:55:28 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 90AF515AD9731;
 Tue,  3 Mar 2020 17:55:18 -0800 (PST)
Date: Tue, 03 Mar 2020 17:55:17 -0800 (PST)
Message-Id: <20200303.175517.2166029762450403219.davem@davemloft.net>
To: leon@kernel.org
Subject: Re: [PATCH net-next 00/23] Clean driver, module and FW versions
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200301144457.119795-1-leon@kernel.org>
References: <20200301144457.119795-1-leon@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 03 Mar 2020 17:55:20 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_175527_140689_C0A057B3 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ajit.khaparde@broadcom.com, madalin.bucur@nxp.com, kda@linux-powerpc.org,
 prashant@broadcom.com, _govind@gmx.com, somnath.kotur@broadcom.com,
 vishal@chelsio.com, GR-everest-linux-l2@marvell.com,
 pantelis.antoniou@gmail.com, leedom@chelsio.com, opendmb@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, kuba@kernel.org,
 linus.walleij@linaro.org, sgoutham@marvell.com, pkaustub@cisco.com,
 aelior@marvell.com, ulli.kroll@googlemail.com, sburla@marvell.com,
 fmanlunas@marvell.com, leonro@mellanox.com, claudiu.manoil@nxp.com,
 f.fainelli@gmail.com, sathya.perla@broadcom.com, michael.chan@broadcom.com,
 linux-arm-kernel@lists.infradead.org, rvatsavayi@caviumnetworks.com,
 GR-Linux-NIC-Dev@marvell.com, fugang.duan@nxp.com,
 sriharsha.basavapatna@broadcom.com, linux-parisc@vger.kernel.org,
 siva.kallam@broadcom.com, rmody@marvell.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, hsweeten@visionengravers.com,
 rrichter@marvell.com, dchickles@marvell.com, linuxppc-dev@lists.ozlabs.org,
 skalluru@marvell.com, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leon@kernel.org>
Date: Sun,  1 Mar 2020 16:44:33 +0200

> From: Leon Romanovsky <leonro@mellanox.com>
> 
> Hi,
> 
> This is second batch of the series which removes various static versions
> in favour of globaly defined Linux kernel version.
> 
> The first part with better cover letter can be found here
> https://lore.kernel.org/lkml/20200224085311.460338-1-leon@kernel.org
> 
> The code is based on
> 68e2c37690b0 ("Merge branch 'hsr-several-code-cleanup-for-hsr-module'")
> 
> and WIP branch is
> https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log/?h=ethtool

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
