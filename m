Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A43C14DFCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 18:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6adH2rMq5MF93VPxd0bYh5UIGBjz2r+7R7zSi2Zy/k=; b=XWNvT1uVJEsPDA
	ZxJnlBCPrrSwcdr0C5RY48FQBNwEohFBs8h0gPl7KSt+DhXFOgM8gC+k1sLJLm4lrFIz0zZRDCpHm
	Zb/mCflzJ6LTN9QcAVnq2Tcagery4LpDxuMDhMejQ+XWT324XpihcbB+cvPTiLo8vVXUEckxwcFWf
	dDG7W80Qy/flAyUx2DZ4+8RRk7T7w1QVmg57vvFxsuovaMNW4/ntW+XN1ostZ37YLS1rAy+WGTwmF
	3tGZss8EVG6gnVl4iC0G2MY3eVPMSH9jpyPZL1nfCHNRrGPX+aS/2frWoIyW7I/Me0YLuDAnrRay8
	MJpE23Juc/gwMXuFL7rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDUK-0007O3-Fx; Thu, 30 Jan 2020 17:20:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDTi-0006mw-Fp; Thu, 30 Jan 2020 17:19:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 497AC206F0;
 Thu, 30 Jan 2020 17:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580404780;
 bh=rFDsL3BUlrwi3Q5w/xvsiy0TB0QkGjD2JLhEr2G/vY8=;
 h=In-Reply-To:References:Subject:To:From:Cc:Date:From;
 b=XBrYWZAnXajfFQ063HsnBiHdxazTF/AWneCxmVziiHsqcMMVt4JmKAHZugqEBYU0L
 E+EMOgLu66J0YDf7UrK8jiGHTjdsnXNv8PyndaVigmEvEDtL2qnWjXC6jFeb7dHF77
 GxCAZq9wUMmBNP60D0T+PzZ1zD8mBauS9xC+02MA=
MIME-Version: 1.0
In-Reply-To: <20200129163821.1547295-3-heiko@sntech.de>
References: <20200129163821.1547295-1-heiko@sntech.de>
 <20200129163821.1547295-3-heiko@sntech.de>
Subject: Re: [PATCH v3 3/3] clk: rockchip: convert rk3036 pll type to use
 internal lock status
To: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 30 Jan 2020 09:19:39 -0800
Message-Id: <20200130171940.497AC206F0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_091942_615820_0992DB83 
X-CRM114-Status: UNSURE (   6.58  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Heiko Stuebner (2020-01-29 08:38:21)
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The rk3036 pll type exposes its lock status in both its pllcon registers
> as well as the General Register Files. To remove one dependency convert
> it to the "internal" lock status, similar to how rk3399 handles it.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
