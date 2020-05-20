Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406191DA730
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGHPnmCeznDSt5lRGhkcmeL1mVWNGt9HtDghNJmBsVc=; b=BtKPXa0DD+Lyyb
	EYrxziXZpJUOp77PpieQBM3D1NnmBWwUtcykR0BHAQbx4QFsryoPsoJqRQAoGD+llKiN35+Yo2Nv+
	MD0nMqbQQ49p4HL67rNF8EccNENf+rUrX0697SjEx2L4s1cIq0MklH5OtkbmhTp6CzzhcT6XzVfAH
	Verkzhq+ZTm+KKJysDjpGj3pEpnG+KceeCeO2DgJV17WG/h18NwvdwHC9Q0BzQfsLw2GPazwoV1jv
	RLQtQw7PGN/cC4rQA2+cR2rgFppxq/B8yXpXeRkt3OVTyvM9dopauxGoKP1ONkZCimxTtQs53pKnQ
	5GWakZMp+enK82kShp5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDWr-0003qw-K2; Wed, 20 May 2020 01:28:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDWg-0003qJ-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 01:28:08 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8517207C4;
 Wed, 20 May 2020 01:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589938086;
 bh=yaMpbg/CqIf6nS95IhGjsX1jBrk4yx1tjQoacauEKM8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QoUNqcK649U1kMFA8EAx6Mqn6NBCNVbih/trnWoHHfzaGMojBkRiHOmQj3XJ6o8HJ
 LvOvm0VxpaKwySo3YFYwUUIPTDLMOnaFBVfOyJ+dvQTEze8wbKBZ+DFb3GFNGdDWuT
 njJJG3akXFzjrqa7jkwBaBIMhSDg7+NXA1cbpURA=
Date: Wed, 20 May 2020 09:27:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V3 00/10] clk: imx: fixes and improve for i.MX8M
Message-ID: <20200520012758.GJ11739@dragon>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_182806_938387_7E1C08FE 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 01:56:09PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Patches rebased on for-next
> 
> V3:
>  Add R-b tag for patch 1-6,10
>  Use clk_mux_ops in patch 7, explain more details in commit log
>  Boot test on i.MX8MM/N/MQ/P
> 
> V2:
>  Patch 7, drop wait after write, add one line comment for write twice
> 
> V1:
> Patch 1,2 is to fix the lockdep warning reported by Leonard
> Patch 3 is to fix pll mux bit
> Patch 4 is align with other i.MX8M using gate
> Patch 5 is to simplify i.MX8MP clk root using composite
> 
> Patch 3~5 is actually https://patchwork.kernel.org/patch/11402761/
> with a minimal change to patch 5 here.
> 
> Patch 6 is to use composite core clk for A53 clk root
> Patch 7,8,9 is actually to fix CORE/BUS clk slice issue.
>  This issue is triggerred after we update U-Boot to include
>  the A53 clk fixes to sources from PLL, not from A53 root clk,
>  because of the signoff timing is 1GHz. U-Boot set the A53 root
>  mux to 2, sys pll2 500MHz. Kernel will set the A53 root mux to
>  4, sys pll1 800MHz, then gate off sys pll2 500MHz. Then kernel
>  will gate off A53 root because clk_ignore_unsed, A53 directly sources
>  PLL, so it is ok to gate off A53 root. However when gate off A53
>  root clk, system hang, because the original mux sys pll2 500MHz
>  gated off with CLK_OPS_PARENT_ENABLE flag.
> 
>  It is lucky that we not met issue for other core/bus clk slice
>  except A53 ROOT core slice. But it is always triggerred after
>  U-Boot and Linux both switch to use ARM PLL for A53 core, but
>  have different mux settings for A53 root clk slice.
> 
>  So the three patches is to address this issue.
> 
> Patch 10 is make memrepair as critical.
> 
> Peng Fan (10):
>   arm64: dts: imx8m: assign clocks for A53
>   clk: imx8m: drop clk_hw_set_parent for A53
>   clk: imx: imx8mp: fix pll mux bit
>   clk: imx8mp: Define gates for pll1/2 fixed dividers
>   clk: imx8mp: use imx8m_clk_hw_composite_core to simplify code
>   clk: imx8m: migrate A53 clk root to use composite core
>   clk: imx: add mux ops for i.MX8M composite clk
>   clk: imx: add imx8m_clk_hw_composite_bus
>   clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M bus clk slice

Applied 1 ~ 9, thanks.

>   clk: imx8mp: mark memrepair clock as critical

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
