Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3479B419E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 22:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUuZ0Jw5ONefNXN10K8LxT11s99PNMuZHWuU7l6UBiU=; b=DQ8larjaJ1wvsf
	PUFCEAujvoLg07fwLZ0wTOesjVzq8paytK/lTMacSApf+6TW3OJR+wjwBr7dvX9ObfTzmtLzobiES
	AKFd9L2W/Qt2MXzEFVt9mYeHTnzaX1FL+SALySDuOsqEfr4vG/CSIZk8dLncCgRRUeFHld3wh6XCC
	CJClLsvq81XppN4WDWYhnjpfpC2XhV20q3bkQiNu/pbiA67mpsopK8vazmeBPHTevsjOwuFXtdENx
	o/0XGRsAfl5IWQrhyxNb9OzbH4Blz11MZzEI+0ZCAUCxmT7qZw+8tAMil7+SHaNvF5PoaJBwtMQTM
	Tlb0V/heF7PZWf1bQsgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9xPk-0004B7-DT; Mon, 16 Sep 2019 20:16:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9xPU-0004Ao-Ih
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 20:15:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29BC520665;
 Mon, 16 Sep 2019 20:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568664944;
 bh=IfZPB1lLT7YeN1wvqbbr7rMvQbP3HHxIn8t188n52Uw=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=Y+tiHc3sqmYd6W6rVYLK6Wx+1jPZ7D2jID/2awAYMFomgESxl/P7YiBdjnyE9OufO
 avZkTd+5wrOebkenaN7MoJFydzkwjYfMklwHkdc1upzF3oyahtikMJcdatPBSY477P
 VsMvsvdWIZYfkdX43Mbyd1utI8VVnQV09PzcJkCU=
MIME-Version: 1.0
In-Reply-To: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
References: <1568042692-11784-1-git-send-email-eugen.hristev@microchip.com>
To: Eugen.Hristev@microchip.com, alexandre.belloni@bootlin.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/2] clk: at91: fix update bit maps on CFG_MOR write
User-Agent: alot/0.8.1
Date: Mon, 16 Sep 2019 13:15:43 -0700
Message-Id: <20190916201544.29BC520665@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_131544_638271_DDD73B9F 
X-CRM114-Status: UNSURE (   6.83  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Eugen.Hristev@microchip.com (2019-09-09 08:30:31)
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The regmap update bits call was not selecting the proper mask, considering
> the bits which was updating.
> Update the mask from call to also include OSCBYPASS.
> Removed MOSCEN which was not updated.
> 
> Fixes: 1bdf02326b71 ("clk: at91: make use of syscon/regmap internally")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
