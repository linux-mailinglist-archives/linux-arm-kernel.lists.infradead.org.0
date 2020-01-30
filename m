Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4646214DFC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 18:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C19NnEyzCgOSDNWf/zkcl8daES7EaHDi+j28ILYPYfk=; b=VlL4xE9XCaqxev
	uu6uVJwjZqzx74gOXtu2PrvWnShkuRz4MtDr89f2aWob4xpA+sVYWB/A3eZ3Yx4g3xd4OpSYvQy2L
	0FaahGD+LHBAuslUt2o8eScfn41o2izVctu6FmU5PS404MSz2Jwxkge0hNmXrzPKkQjoFScU1FTZ2
	v0/kN/h1Ij1YQ/lKumJ3o/TjeS2SFwJQ2f6VxfA2r/BIbXX1Q9eIepoCVWa5yvrH1FmclixKGvzsJ
	Jw4TfMcBIPsBvuy8pD1EzTBIgl40TDDZUSnKA6Cotx0TW7jBnTarPrcL/HH1MS70EIiZx2+rn519U
	wFplrft/vUHWs/Twc3ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDTv-0006m4-Ch; Thu, 30 Jan 2020 17:19:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDTa-0006fG-Rv; Thu, 30 Jan 2020 17:19:36 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CCB920707;
 Thu, 30 Jan 2020 17:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580404774;
 bh=mQPgzbEOHhaYspRP78UUrq/Qaj0u6VZJGThPXWLnSHY=;
 h=In-Reply-To:References:Subject:To:From:Cc:Date:From;
 b=iK8+443QAwMPpiop0hXq0ubpjolSZrcbUh7mtbQykgaG1gmKQUEzDBUC/8BSTD6mQ
 D8o4opy8HvAFdM4KvFk/LriCjnLyo1E/gn5eVINliW397E7upAPYVbW6BKmFpvc+IP
 XezUIg7rsNgIDFmvBdG/OHAveWUK8a9AGKHRhuq4=
MIME-Version: 1.0
In-Reply-To: <20200129163821.1547295-2-heiko@sntech.de>
References: <20200129163821.1547295-1-heiko@sntech.de>
 <20200129163821.1547295-2-heiko@sntech.de>
Subject: Re: [PATCH v3 2/3] clk: rockchip: convert basic pll lock_wait to use
 regmap_read_poll_timeout
To: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 30 Jan 2020 09:19:33 -0800
Message-Id: <20200130171934.0CCB920707@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_091934_953786_D961FE97 
X-CRM114-Status: UNSURE (   7.99  )
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

Quoting Heiko Stuebner (2020-01-29 08:38:20)
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Instead of open coding the polling of the lock status, use the
> handy regmap_read_poll_timeout for this. As the pll locking is
> normally blazingly fast and we don't want to incur additional
> delays, we're not doing any sleeps similar to for example the imx
> clk-pllv4 and define a very safe but still short timeout of 1ms.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
