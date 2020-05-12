Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628FA1D0083
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBbygu0PNhm8jYeit9zbG0cg60NdrKjKHz93nubP3do=; b=h1I2Rr0uVP2gDP
	5K/ogzZPCOjynPORSc14nUK4rCZMsBVt6bZ8pqXN2OBGn0gQp47ZtpcHu85dmxgGC8UesLNhby0di
	/pLdZeHxIWLtszT2XiPML+LbyJCZ7fqPHP5D/sJ3BANMtolo50bm2J9Kyk0JJrsdKsW1q6XnNCCov
	PsFle8u8+tfJ0HhBxglHgiSimcnpXpwE77VahnqBPt0ciyodeOlcNzfCEb9Bgvjv2Fa0D9eHzNIgC
	qayUqQc+gb7IlXa0Zh4q31lHMLDxe9TvA+BvEZtpxI2hUp97A6S1jsZ8RNY6flQoK4iTJu9jv12bd
	ZvSkQfSzDjYxppD471Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcEh-0007cj-5R; Tue, 12 May 2020 21:14:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcER-0007aS-Hu; Tue, 12 May 2020 21:14:34 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67FBD205C9;
 Tue, 12 May 2020 21:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589318070;
 bh=x1ykHtB8kdv43MjNrYv9yTL3vvMHxeEtb7SiOF0zGCU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Pv5FECfH4MEL49Ziffkh69EhmYLpg5SWgUrcrg5TL9PAbMKVc6QCiub6LH4mfUgIr
 ZDxGTDKrNNEq6JhDZ6qngawYA+caVw7TiI9gUe+6vBP4Vg9Ye7eHDISQHuzA3ztOs9
 5YsNSYlb7LOt+sXP1pogE+NbKZEaJTYvCiOFDubQ=
MIME-Version: 1.0
In-Reply-To: <20200506120204.31422-1-geert+renesas@glider.be>
References: <20200506120204.31422-1-geert+renesas@glider.be>
Subject: Re: [PATCH] soc: mediatek: mmsys: Drop <linux/clk-provider.h>
From: Stephen Boyd <sboyd@kernel.org>
To: CK Hu <ck.hu@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 12 May 2020 14:14:29 -0700
Message-ID: <158931806972.215346.15226593152103612182@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_141431_636692_EA354E61 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Geert Uytterhoeven (2020-05-06 05:02:04)
> After the split, the mt8173 MMSYS driver is no longer a clock provider,
> and thus does not need to include <linux/clk-provider.h>.
> 
> Fixes: 13032709e2328553 ("clk / soc: mediatek: Move mt8173 MMSYS to platform driver")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
