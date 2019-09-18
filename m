Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86689B5BA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 08:08:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGYrJpzKp6635Q502BsZ865ebtqrs0JQN1wQkcvzkeQ=; b=YcpgjtoLHyWZhV
	5wLKRKAckfwEGFvM9LY1mddIP8JMS3Qv71IPtzmOBHDG1dchqn70qQYRgZjc26HNGN7UNXPBPIgz9
	3+M/CJhZhe2gb/R6+/313OCPAXPDCpqP3squvzq8Dv+ic1nJPZ8tghiN6nd7+7U+OGVFWbQYW0qGJ
	vXJcJ+ZL14MBQxApN2+CWNFlBoS0TXnFpkDPhjjhoikpkUq8IzU0Hw0CzNipuPPcDXxv/sYhxIrk/
	Wym84BWXl0/9qw3e7Sx4fizrz/JDl6+9fP9R3HyUXX3Z7uxlB1rBrz3g61tzm0RjGOV5yepJntM8S
	6HBmnu/rEAu9sQ1zVYIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAT8O-0007tO-RB; Wed, 18 Sep 2019 06:08:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAT7j-0007XK-GP
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 06:07:32 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A60220856;
 Wed, 18 Sep 2019 06:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568786851;
 bh=jNhbz67CJr/g2fdjXe+N+K8ckAY7k1eWl83twN0NrXA=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=i2K8gJQM0HbM2ZNZSIwPgK+a8ru9cYl2eYOub+t5Aa/Mll4ya7fal7MFOxBo3K1dg
 pdLVcFKnMNOcHv4rPXBY4N8/rM/YuFsCVOZ0vr/m37Lcis9s47eUYJ2fcQdBGS0Hl5
 qXtjMqa4X5+nBV7I8vdwJIESc5HPNhuRphWFOQIc=
MIME-Version: 1.0
In-Reply-To: <1568043491-20680-4-git-send-email-peng.fan@nxp.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
 <1568043491-20680-4-git-send-email-peng.fan@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V3 3/4] clk: imx: imx8mm: fix pll mux bit
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 23:07:30 -0700
Message-Id: <20190918060731.1A60220856@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_230731_753909_461D3C1D 
X-CRM114-Status: UNSURE (   7.88  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Peng Fan (2019-09-08 20:39:44)
> From: Peng Fan <peng.fan@nxp.com>
> 
> pll BYPASS bit should be kept inside pll driver for glitchless freq
> setting following spec. If exposing the bit, that means pll driver and
> clk driver has two paths to touch this bit, which is wrong.
> 
> So use EXT_BYPASS bit here.
> 
> And drop uneeded set parent, because EXT_BYPASS default is 0.
> 
> Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
> Suggested-by: Jacky Bai <ping.bai@nxp.com>
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
