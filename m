Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB4A77BE7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 22:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xVQb/LXdvJUmswIPvAY3/hfR2Xtfa7SmHS+E6r9G+k=; b=Jkj5jpfb+xVeED
	a/TpodHBe8DOGba6YFdevM8C915870gbwLA3xtBhBzZHTAZi/y8VxfQ4VTIO2Dk6eqzebuEgc2A7h
	apJ91T+pigFNN9oeLV3XQD18Itw5/QI3Hrk1oOxyHiBkUzqaTFidTy0e8wsCakbqbfnEI8SI0I+vQ
	MfBS5L5GvWzIxf68KdVaRiocEeGKJnQL8LZTx0+5ennsvyOX+d64P1o2UTBXOVh09o4PW6Ogpv+Yp
	jEnl7OgEd/Lc9iUEjQvyqikuDwI/6l0P4re+1dk4kAsKvudhig2VmUy5Kzva/5YOPJC4FOR+RuASf
	k2chZ+qGGOHRxSCIpU2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrTgn-0002MG-H7; Sat, 27 Jul 2019 20:53:13 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrTgO-0002Ga-5b
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 20:52:49 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B24B41534D12A;
 Sat, 27 Jul 2019 13:52:47 -0700 (PDT)
Date: Sat, 27 Jul 2019 13:52:45 -0700 (PDT)
Message-Id: <20190727.135245.191991967753814130.davem@davemloft.net>
To: thierry.reding@gmail.com
Subject: Re: [PATCH net-next 2/2] net: stmmac: Do not request stmmaceth clock
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190726102741.27872-2-thierry.reding@gmail.com>
References: <20190726102741.27872-1-thierry.reding@gmail.com>
 <20190726102741.27872-2-thierry.reding@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 27 Jul 2019 13:52:48 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_135248_292108_F007C17C 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org, jonathanh@nvidia.com,
 joabreu@synopsys.com, linux-tegra@vger.kernel.org, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <thierry.reding@gmail.com>
Date: Fri, 26 Jul 2019 12:27:41 +0200

> From: Thierry Reding <treding@nvidia.com>
> 
> The stmmaceth clock is specified by the slave_bus and apb_pclk clocks in
> the device tree bindings for snps,dwc-qos-ethernet-4.10 compatible nodes
> of this IP.
> 
> The subdrivers for these bindings will be requesting the stmmac clock
> correctly at a later point, so there is no need to request it here and
> cause an error message to be printed to the kernel log.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
