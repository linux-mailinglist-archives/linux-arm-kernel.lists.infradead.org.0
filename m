Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64314186162
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:39:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1nFIIlXy7QkgKxsQRG5IvzFZM8d5RPDTDZwwrq0FwY=; b=UGJaq9+MA1Hnve
	M9/SgbTpKssntP3655PgodqEJiTwGIpf4tXICudz+kOgjh+6jyTz9CXlCELsc8Up5froKQ8NByN26
	oUguE0rCzeoWuZeu8yTIKe5T/vyDVPlq5LTyhUPTXpCJ1z8qwaMIDoMk1Qz5c1Nbyn0g7a7r18jbv
	IWCvHM0bskJR4g7iqvgHK4+5oTZBodWvlAONzUUE9X5b+tfSF8XIDHxp7hmwSPu1uPpMEgn60YBEj
	vfBc/urEhfrPdRMdT+S6UC96OZy6w7SqvcjB+in/i1Gkb0hN5roTBl4Jtr6i4CVs19z1rH+Hkwreo
	jq7cMy3lQ2at191yO2HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDeiq-0000AI-H2; Mon, 16 Mar 2020 01:39:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDeii-00009K-FZ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:39:09 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93F2D20674;
 Mon, 16 Mar 2020 01:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584322748;
 bh=UQapXd6fOtM5aDx3KdLu8z/+f4elL63L3+KVbVHC6e4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LkXlfBOR4O1XMj61sDC9UnxKLuJfK/5j9VbE+c3SzoEZHgzwEx4YiRT/Q5nqGyNhm
 0WeiUtQPcOjK8qpSluQdVDpAijpgRvc4yTH2FlcQ8DG2gQVBk2Do5DPSA10kVcdAdl
 Ou+Vkc8mmGSpWtGxhui2xsPcND60KZFb0SKlruCI=
Date: Mon, 16 Mar 2020 09:39:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-gate2: Pass the device to the register
 function
Message-ID: <20200316013859.GS17221@dragon>
References: <1584115819-17778-1-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584115819-17778-1-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_183908_546906_2BFB2C52 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 06:10:19PM +0200, Abel Vesa wrote:
> The device needs to be passed on to the clk_hw_register.
> 
> Fixes: 1f9aec9662566189 ("clk: imx: clk-gate2: Switch to clk_hw based API")
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
