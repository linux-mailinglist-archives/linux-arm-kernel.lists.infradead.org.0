Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B5C1BB92B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80OhNvqle+MZM+l9aX76dSC74JsBl2ByRdS25J4rIjs=; b=XTi/XaYLvFpxSQ
	NvKRHxSlOGHDa8zIYxdV2V//0kpXGI1uXilYrpXuF/tsPC8maGPGN7KS1vzwZDZDl7/zX9AlHch1n
	xvbhuhwQ8dYLVS/j3n9GGsP9/EW42JJLbwc2IE1xNaJUg+RoAM1ApJI9Hzfr1SCeYot3ymLRCtJMo
	4aNarwTACKnJOPBPp3zql9GM8d5cakfqBOwSFbUb7YAWFw2pZZWD+TbTTgzpEy9uSE4xdxAbyajlw
	9fXk8AGSr9JqnTKqGlBB11V/ta7JlXn/YLUvCFIcYvZk1sXsJtHxWEnXQY95Ipcc5DAB7hDvIhGLK
	erSr05E1XeoBDVitTE5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLx0-00032l-Fl; Tue, 28 Apr 2020 08:50:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLwq-00032F-27
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:50:37 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB15F206B9;
 Tue, 28 Apr 2020 08:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588063834;
 bh=hLMWpEDI26F/FaYQHonyCM62/7WmXicw7oJ3Vyoy5fo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0c2FJkRrQFDS+eqYj4OIKpDHN/O+HVTEJuLSvCdyLuc1A3nYBOXz9vpoQIK/u6aH/
 akSB8tH0MdvandMDGmov6mAnJFVwbBamzXgCziHAqvtGnufLTAAnbqo9ih/6AS3FXh
 GU27XxgSGI/wGzP4ikZxl/VPyFaZ0uPpYOCY5T3E=
Date: Tue, 28 Apr 2020 16:50:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 2/2] arm64: dts: imx8qxp: support scu mailbox channel
Message-ID: <20200428085019.GB32592@dragon>
References: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
 <1586870668-32630-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586870668-32630-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_015036_124977_A4661509 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Anson.Huang@nxp.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 jaswinder.singh@linaro.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 09:24:28PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> With mailbox driver support i.MX8 SCU MU channel, we could
> use it to avoid trigger interrupts for each TR/RR registers
> in one MU, instead, only one RX interrupt for a recv and
> one TX interrupt for a send.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
