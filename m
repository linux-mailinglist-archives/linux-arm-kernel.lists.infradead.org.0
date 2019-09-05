Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7EFAA138
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldx8GetkI/xDWZjuLXj4+FIB1LbuPV3afc0W/wP2QgE=; b=syoztRU3OpOzcf
	oqxt09X1jNzzpx7yldnnqERP9vAWwuCPjC1TCBTANdwdUHHFubbkuiv3S2XDEoXsvbaVMyLorS3my
	iBQr7jbt+Kxuyo/Caci73VYGYf3tu+7ssA/SXP7ZqUzMNonmJjBePKuMdgOyyzPIqUOmTrlsNxB50
	4xgmLQEQpMgqzCSyjBwDAwR2uCcii1rzesa6oZZVqLtSlXYgrMcGoqiLf6nMbbPGyfp8r0ZY3M84c
	uln8BpzJuKURQJVVqfEl+GtQob1ufxVrbmwE74KdcKey9bqNZC8SQjdhQ1hxcHxqAmd8ecjyM7EWP
	GAnFkOFUsD7aGdn8NHSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pqz-0003Du-Ly; Thu, 05 Sep 2019 11:23:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pqk-0003D6-HR; Thu, 05 Sep 2019 11:22:52 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1i5pqe-0003VI-2X; Thu, 05 Sep 2019 13:22:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v1 0/3] clk: rockchip: support clock controller for rk3308
 SoC
Date: Thu, 05 Sep 2019 13:22:43 +0200
Message-ID: <8098861.lOb4sKEy6F@phil>
In-Reply-To: <20190903115947.26618-1-finley.xiao@rock-chips.com>
References: <20190903115947.26618-1-finley.xiao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_042250_732690_414AC269 
X-CRM114-Status: UNSURE (   8.15  )
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
Cc: huangtao@rock-chips.com, sboyd@kernel.org, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 andy.yan@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Finley,

Am Dienstag, 3. September 2019, 13:59:44 CEST schrieb Finley Xiao:
> Finley Xiao (3):
>   dt-bindings: Add bindings for rk3308 clock controller
>   clk: rockchip: Add dt-binding header for rk3308
>   clk: rockchip: Add clock controller for the RK3308

applied for (hopefully still) 5.4.

I did change the binding patch to name the i2s mclk inputs explicitly
as you can see in [0] as placeholders in dt-bindings do not necessarily
work that great.


Heiko

[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v5.4-clk/next&id=2d1fb8e983dc0669f276b176142798a228dc0f38



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
