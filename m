Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF2E1B0ED4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeQazrV5XOylhHww/L5t895lrIy7+QJXSsm3TlcF2bs=; b=Uf3j1ysetjTQuu
	4LBKp7Qur/GfQgVQIlcz3wBpJsMNalOiDodx8ihft5cM+sl8n3FmbViYNn2lbopa8QNGF0UJ63+Z+
	cGh/uCwX3mtlIatRXCDybfTuVAmvqo/bO2+uWPWNoFDT5B4zYG2YKMMRI2Xk4wvZy9GGrLXFsbApJ
	Y4BWUQGvktnzxJLtNG1JXAWpquLPsmkWfRmQqCJtXubX37nRTS68h4ZQuXWuaTBLDrGoHke1baD4p
	w/kioTlHBgmPUYd4qUVfbVdT36knIc5SkscbgwD3mMAqj3OlwojJI2HZKAoeqOmketxDo4+5IPu1m
	ONZX2ZEUvMRyKwofusSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXhL-0002Dp-SJ; Mon, 20 Apr 2020 14:46:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXhD-0002D6-Al
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:46:52 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B6C9206D5;
 Mon, 20 Apr 2020 14:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587394011;
 bh=/IPyAGYnCw1gtPtCf3Qro0SLyqMiQcu4OSyyNBu1dSU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RWlOb5rLlNT5NcnsBjC1VII2xSKyaQFU2hwCWHuX6z8/o4g67upM16l0x1kovzmsk
 zVVzxuVIRMaiEVWU2bHcVsGxXt/A03OOLlY/q4volpIQeK4e/f+0pwAf+NibrBOnY4
 HhNjhnXFrleNSewnZPS+xa3D3pNv9/TO+FnxNf+w=
Date: Mon, 20 Apr 2020 22:46:43 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V7 4/4] firmware: imx-scu: Support one TX and one RX
Message-ID: <20200420144630.GD32419@dragon>
References: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
 <1584604193-2945-5-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584604193-2945-5-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_074651_389474_4D606EDA 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, Anson.Huang@nxp.com, s.hauer@pengutronix.de,
 jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 o.rempel@pengutronix.de, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 03:49:53PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Current imx-scu requires four TX and four RX to communicate with
> SCU. This is low efficient and causes lots of mailbox interrupts.
> 
> With imx-mailbox driver could support one TX to use all four transmit
> registers and one RX to use all four receive registers, imx-scu
> could use one TX and one RX.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
