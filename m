Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3116BD6147
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 13:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3asaKAwX2Ys8vKCUh8fcyfGN6JHomA6EX51qEGD8jmg=; b=S/fyBUv/SO68Fv
	oOFEgblm1yaw1dndtvq08DzGE60vEbVKuYuxSLaSbDi5yy74Yjdom/3MXPAgSEhuffmRD9XVzIawJ
	B0cVNl46vP8diI3/nWq3pwW19X2xdSK1qSjTu93ciOgQqWvd3iABvePxZ9gDQNa5VJ7va9pC43pOC
	tTtlLNoR1kOHn1tk09ZojURUUom1IX9LksZ7tVxEKWpsiU4fUyK0fp7K/a2KKnE4ZEj7hbLw0R8x6
	RPnmr90UEVAdLWjsNV5/qjq02um8LnOUCcHlUckQ7TIcVJnDh71xJ2R6jQgGthXVAj0g+jhMFEhp3
	znf7PzJqCiuQ4t+M3zkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJyWK-00064n-Qu; Mon, 14 Oct 2019 11:28:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJyWC-00063x-A4
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 11:28:05 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E27C820673;
 Mon, 14 Oct 2019 11:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571052483;
 bh=/g4g30a0MH8QiC/8al6h1905rB2c81+BAd/3ru+5no4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A6Jm6xk50F5hvw+poB+ZUbqYUv86aDPsufPT52Xu2bdWNUh+s3ahjQB3gUJeDCjMH
 K8fnALvjJGElgK9R1g/+7hC4AOO2EOabbzM/4oKavcLhWl/gGAp5tUYZMntkcRNlRX
 fPCVMqQjiSJPHFMTzEEEsAzBlB7n5dZfQSwvYgJ8=
Date: Mon, 14 Oct 2019 19:27:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Laurentiu Palcu <laurentiu.palcu@nxp.com>
Subject: Re: [PATCH v2 1/5] clk: imx8mq: Add VIDEO2_PLL clock
Message-ID: <20191014112748.GM12262@dragon>
References: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
 <1570025100-5634-2-git-send-email-laurentiu.palcu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570025100-5634-2-git-send-email-laurentiu.palcu@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_042804_382494_241BF346 
X-CRM114-Status: UNSURE (   7.14  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 05:04:53PM +0300, Laurentiu Palcu wrote:
> This clock is needed by DCSS when high resolutions are used.
> 
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@nxp.com>
> CC: Abel Vesa <abel.vesa@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
