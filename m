Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B936518E62E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 04:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7hkVQY7SP512AOnw9nfXbJhT5Fx0QWxtTySkwOLXDw=; b=Qe7DLrHSikFXST
	aXEo0j97rSoWPkR9CfUW2M1Whb8MERF+kd0GxkAxuCHv2ulOFVuBmgxHyk0QTIDnh3LZQK6Gh6zuv
	/alGgpCn9/0xI8EHkKw5ZDKimfen+I6Aqa5OeqLMpEAB6APgm+5JlzAbWT3ivp5AOOO915PBmMnAU
	g7BcVlWihPdaOy4cpNDGkbuCQkW0X6MH9zXoHxNKTNHTwhsDbY8CZn9jZSvjW2N9EYN0o9B3Dj1SM
	Pi4q3TS94KJVZ30w83HRRfFuEmurBoz2ECtTo2G79ZCmD7DRfHhH4FCB3+YCxJ56jTonakX/QKuh0
	xjrIVaFiLRpuyjGCKNTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFqqS-00009S-Vy; Sun, 22 Mar 2020 03:00:13 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFqqC-00008x-8I; Sun, 22 Mar 2020 02:59:58 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1990E15AC0C0F;
 Sat, 21 Mar 2020 19:59:48 -0700 (PDT)
Date: Sat, 21 Mar 2020 19:59:47 -0700 (PDT)
Message-Id: <20200321.195947.2027395800786640789.davem@davemloft.net>
To: kernel@esmil.dk
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix error path in rk_gmac_probe
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200321143619.91533-1-kernel@esmil.dk>
References: <20200321143619.91533-1-kernel@esmil.dk>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 21 Mar 2020 19:59:50 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_195956_294522_06E4FDAD 
X-CRM114-Status: UNSURE (   4.96  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 joabreu@synopsys.com, david.wu@rock-chips.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Emil Renner Berthing <kernel@esmil.dk>
Date: Sat, 21 Mar 2020 15:36:19 +0100

> Make sure we clean up devicetree related configuration
> also when clock init fails.
> 
> Fixes: fecd4d7eef8b ("net: stmmac: dwmac-rk: Add integrated PHY support")
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>

Applied and queued up for -stable, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
