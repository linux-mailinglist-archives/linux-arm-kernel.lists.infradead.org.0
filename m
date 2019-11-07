Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB75BF3BD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 23:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kX1aWzPJK2KlWGJELy+RR0xJYhjl+Sk6Zuk+mKilhO4=; b=VoHcAP9k4fJBf1
	b2eiCRsyEksbOgCkWyjS0zRIt6dEx40OGJ5hchhNiddVxlCotSUz3va7IBeiMuxjs1aRzpVZUxrPA
	j9hTQ0hbFOz2y5vejgk2sb4sg06ClOtYl+5bl32uCf1ZUEoxDN9ZzX5wEjE+lvtwsfFpvqikWjMvT
	0MMGeEC+ZoZYTNCkgcqbra5C66crvzVWIL+WCYcxyUoGJ6pRzjsWFSn2YI0r9T2Y1Im/wiPh+fKXI
	IKJFfM99q/3vjfzdTkyQSEx778do16gTe+d/jvzdbSqAYo0pnelKTLRzMY58eRWTOm0hGWAVTrIJT
	H81rvFbD6K9MBwg2bQwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSqh1-00008S-1f; Thu, 07 Nov 2019 22:55:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqgs-00007n-2t
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 22:55:47 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8D752085B;
 Thu,  7 Nov 2019 22:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573167345;
 bh=7zGw+sMZ0nVOb+x0yOBgQB0+CeXv7FHyjZHL4J39OMQ=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=1oYy1ntU3KvDDNlcp2PJZUS3a+EqlTaIfIQOnzOI8iUGS/cT7p8dPD21Yqi00T7kZ
 UvsgFaIIyhtPCRMegpHWeL5kpXQRV04wXglWDHuw6Lo6rAl1+M8gurVzmbw9lpJiZq
 +Va1pfDTLuDo4pfVrPU22DxpuBMN2ZREmdfArNe4=
MIME-Version: 1.0
In-Reply-To: <1573117429-9175-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573117429-9175-1-git-send-email-rajan.vaja@xilinx.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>, dan.carpenter@oracle.com,
 gustavo@embeddedor.com, jolly.shah@xilinx.com, m.tretter@pengutronix.de,
 michal.simek@xilinx.com, mturquette@baylibre.com
Subject: Re: [PATCH] clk: zynqmp: Extend driver for versal
User-Agent: alot/0.8.1
Date: Thu, 07 Nov 2019 14:55:44 -0800
Message-Id: <20191107225544.E8D752085B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_145546_144713_54A092BE 
X-CRM114-Status: UNSURE (   9.03  )
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rajan Vaja (2019-11-07 01:03:49)
> Add Versal compatible string to support Versal
> binding.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---

Can you send this as a patch series instead of a collection of different
patches all sent individually? It's hard to track the topics without
proper threading in my MUA.

>  drivers/clk/zynqmp/clkc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
