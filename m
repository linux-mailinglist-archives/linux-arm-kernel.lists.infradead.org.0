Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4A712D3BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 20:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjoYwuL1uWcdT5mPwEG+kAjkeRx6ZX6XTJJczhpCxLY=; b=ZQ8ItNEMhc1yBF
	KX+D/EtlI8YHJAuEEbYGuvGbnzE268qgA6VRbf4VQ2SRG/L6ObcHW00dcK6adJdooXYgGe5gYSjXK
	BVbI8pEy8T+40asyleA+wOrp709H7P7GLWs3fHgvMBdktK9oYS3mP4pqA5fBcYLR2DF2LgZFLRw2B
	PnKMBV4aBK+ZiLsG5gZr2JY0lO3W72jH/+iEpQdJN19C/W9OpUto98T2cs8gVOhGIigdcAfqb2iPJ
	wjQbBvgywpsFhzifgn8oWHA7VzXep1/mxmFGnSRNKZZ7y/Zdi1z6RW/FKkrpIglAO91vWJi2pQciX
	1wXt2CccyerE5mHepNQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im0Nf-0006ab-4l; Mon, 30 Dec 2019 19:07:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im0NV-0006Zn-HX; Mon, 30 Dec 2019 19:07:00 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 869962053B;
 Mon, 30 Dec 2019 19:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577732816;
 bh=amHJ3V8VY49awvnFzBQckNdcZQlngO4oOAhvrvKvXvc=;
 h=In-Reply-To:References:From:Cc:To:Subject:Date:From;
 b=QCYOal0vGfypOs41/Of7RCc1ZfFTPz69uWYRGfbYSTb6gPqDOytdtlWbft3JAO1Qf
 Cy25zqMi+/U2DMQ/cTYGyCq/D4wdKDQORHw5aMW9bus2nwdbL4xBBNa6NXo8oo+t0i
 vo69H0jz2y/pMZ6jGZKaSjoJPur8Q+zoMZSdh6PI=
MIME-Version: 1.0
In-Reply-To: <20191204081859.19454-5-zhangqing@rock-chips.com>
References: <20191204081859.19454-1-zhangqing@rock-chips.com>
 <20191204081859.19454-5-zhangqing@rock-chips.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
Subject: Re: [PATCH v4 4/5] clk: rockchip: add pll up and down when change pll
 freq
User-Agent: alot/0.8.1
Date: Mon, 30 Dec 2019 11:06:55 -0800
Message-Id: <20191230190656.869962053B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_110657_599359_0693E28C 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Elaine Zhang (2019-12-04 00:18:58)
> set pll sequence:
>         ->set pll to slow mode or other plls
>         ->set pll down
>         ->set pll params
>         ->set pll up
>         ->wait pll lock status
>         ->set pll to normal mode
> 
> To slove the system error:

s/slove/solve/

> wait_pll_lock: timeout waiting for pll to lock
> pll_set_params: pll update unsucessful,
>                 trying to restore old params
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
