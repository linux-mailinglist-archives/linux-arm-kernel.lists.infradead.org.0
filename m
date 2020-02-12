Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3792F15B4B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75o6VDum7TSjjDd6Zz7KCeBLKL9l3as6YLnPy/yK3Js=; b=a895ab4aAfPhdv
	NmpTVrNPRdSyN9WdnB1ml8s4q1qKgkA9ZGJsyAIHiYK2AUt79dJO+yD+Gz0OP++XiJMWDJl+mI5A8
	Vkjb8sEOdxALDKrxWXQGBZZ27HzBO88LxQbcoLTig8/jbD/AWQxIGgT/nV5mOOVphVp2OFbjhw/nn
	if7yTYDcaI+rfS1bS4K6vMY47MUUU94ULYJzPeagvCmoSFL35oEdUEBgCJbqDStkZcm8WmT2U+OdG
	JGCiIod7HiMvEsGqbL+CMqAO4884vzI4dw9YEh6ZTpn4vgwMxrkdgPrJbRU5R5G1YyPq9NbHuyuIG
	mDtK65wZJj83XHYmIhUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21Sg-0001kZ-Cw; Wed, 12 Feb 2020 23:30:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21SX-0001jx-Uc
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:30:23 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 732C220848;
 Wed, 12 Feb 2020 23:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550221;
 bh=DgeEtztmH8rUblkjsfH84edNl1u66hTKoubiNZqo7/Y=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=adOv6Bv3u1mR3c/TB6Qf4iPFqEhq1uuf4vVr66P//lXF+mXvvakVmYekn1u0CG8gi
 9Brhu/2KLvuHsOz537/lzZ/qxRbEC8OBMiAzB3kwo8FBCreRXIL96GVda+YbbMeKni
 /bMVwVoMIo5aK/A8IoQvZDm0Z7MKGIrR1ZgkET+A=
MIME-Version: 1.0
In-Reply-To: <20200131115816.12483-1-codrin.ciubotariu@microchip.com>
References: <20200131115816.12483-1-codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v2] clk: at91: sam9x60: Don't use audio PLL
From: Stephen Boyd <sboyd@kernel.org>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 12 Feb 2020 15:30:20 -0800
Message-ID: <158155022061.184098.2526430305237294211@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153022_010091_9FB459FA 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 eugen.hristev@microchip.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Claudiu.Beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Codrin Ciubotariu (2020-01-31 03:58:16)
> On sam9x60, there is not audio PLL and so I2S and classD have to use one
> of the best matching parents for their generated clock.
> 
> Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
