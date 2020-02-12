Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954F515AA29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 14:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECuoXoa26axnbaDPDOWm5iA4Q5dvWgA6lQn2Ub8aHVA=; b=uwmFC7UHoB8gPV
	9Vk9pnWTMoztkleSjQ9rmzYuNlJsMtJGeu6/Mr5iR+AOPnfz+bxfEuuKaxyxZ76UwpYbPBASqQnHG
	jVEEFdNKRcjxbIH0hTNalnGrL4l9IBfEBionNJT7eU3MUNmVlvQnl9OzvlXaI1UTpl4xkaN8MloVY
	xi+iaQQsSeSdQQ1vAImAi21lsbQguEYqxOgVu/FBFdYmgkZGGwsIcwdy0qMOtkbxPtkz7fCcpsy0o
	WX0X3tvTd/c2CjuIDJPSmAD8hq1PayWFVFnwoA89Iyokzwulks1Pv8xjJ3HVLnqkTqrzgcT678+/M
	Z/u5ZLHzH/VVcibEpOyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sE1-0004wf-Ji; Wed, 12 Feb 2020 13:38:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sDq-0004vy-JS; Wed, 12 Feb 2020 13:38:36 +0000
Received: from p508fd8fe.dip0.t-ipconnect.de ([80.143.216.254]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j1sDe-0008KK-20; Wed, 12 Feb 2020 14:38:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 4/7] ARM: rockchip: Replace <linux/clk-provider.h> by
 <linux/of_clk.h>
Date: Wed, 12 Feb 2020 14:38:21 +0100
Message-ID: <7623400.vQJERCBc6Q@phil>
In-Reply-To: <20200212100830.446-5-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
 <20200212100830.446-5-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_053834_792241_2E10BFC2 
X-CRM114-Status: GOOD (  10.71  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Ripard <mripard@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-renesas-soc@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Chen-Yu Tsai <wens@csie.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 12. Februar 2020, 11:08:27 CET schrieb Geert Uytterhoeven:
> The Rockchip platform code is not a clock provider, and just needs to
> call of_clk_init().
> 
> Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
