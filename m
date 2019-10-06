Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7713ECCDD9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 04:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSvrEhoeuFo4wW9d+bzByQeOAzcscLlLk+v/v16CTK4=; b=uvASiVYKR3gh6B
	uni9/raKNOm8G70l5hy1L/tuPx0YP/ggWWXBuv4VZ6/yqTSihJAYpkXc4ad2dHEGUkpovq1PO9drI
	CNLjFVmuAjFpXxdW4tv2XYwv4c5DYfgoGYiiF+em8/95gcfhCFnuu48RyvBxhk0b4HUOKAhWX5dB/
	MU4RlGJGLYzmxrFyAUupVMfgIQbpfoiF9CfgpgUvBg2/cacVDO8hIDvQ2kWU3lhBsZS+o0mEk7hrD
	LeYzNhwvV0kmqEotYMV37WdZKDcB0On9m9rxFA6DzXy8L95kOE8mhlgI+fYMSoUEiAmkP1IWjYxdv
	fF4ym2sQNQRy+L31fN0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGw6f-0000Ay-0v; Sun, 06 Oct 2019 02:17:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGw6Y-0000AR-RI
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 02:17:04 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3727222C5;
 Sun,  6 Oct 2019 02:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570328222;
 bh=08IWgsYtfYEQoxuJKerHwdwPvgltMNLMDmtbgmWVK1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IPpRYsJjzqd4LI8VNtqPHCqhhWF0MhM+wSbYfyvzxudK2sz+pwQsuZGizutKVDKHy
 BBbis6GY9iz7IWs6e79EW3rfUP4pEy6Lh5jkw7Nnk9YJk6Y78+v4EgseYblCQA6QH0
 aEJmeXKgO77mBDEu9gTLIif5z0Ar0WZrTAQfuNsQ=
Date: Sun, 6 Oct 2019 10:16:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure
 to common place
Message-ID: <20191006021632.GM7150@dragon>
References: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_191702_905500_812CBD63 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aisheng.dong@nxp.com, shengjiu.wang@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, sfr@canb.auug.org.au, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 l.stach@pengutronix.de, chen.fang@nxp.com, leonard.crestez@nxp.com,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, ping.bai@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 09:34:05AM -0400, Anson Huang wrote:
> Many i.MX8M SoCs use same 1443X/1416X PLL, such as i.MX8MM,
> i.MX8MN and later i.MX8M SoCs, moving these PLL definitions
> to pll14xx driver can save a lot of duplicated code on each
> platform.
> 
> Meanwhile, no need to define PLL clock structure for every
> module which uses same type of PLL, e.g., audio/video/dram use
> 1443X PLL, arm/gpu/vpu/sys use 1416X PLL, define 2 PLL clock
> structure for each group is enough.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
