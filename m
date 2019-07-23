Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC487118F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 08:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsDLG7yAWfAPdOW0PLckmdV4VWo1A/1W4TfGKpppops=; b=h+q7WcUEHRWZO+
	Qk3PDErbuOV/oGCq9O6h//UEGvmHioVyApRyUcH3J0QPdXnhodCazOmNLC1Jgsc3JATaCYnznUPPc
	tZhWY7q+UPUVQfMn1kE5cMaSbfXkLxoApNIfTpZfkbZQ1FzIsnYvEEOyJwvHUGHqaON9HIjanKgfo
	T4aQeqrNPcdpGtqe7VbzHiGpC07gbKgIePaYAgYb/zE9eSyzgS6r4F1JHTbxCdpJdZghaLKw4JDU9
	NYW3hSN7ClNHTUym4wfY1YNjKMWcTPjit3g3rc+nGCJJuixiKA/1Tpzh1VSjx39Nw4P4PKqrb+F8q
	Ir9dnoETb9TuwjP1mGeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnv2-0007xj-Mv; Tue, 23 Jul 2019 06:05:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnun-0007xO-Kn
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 06:04:46 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15F9F2238E;
 Tue, 23 Jul 2019 06:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563861885;
 bh=Mm3Vz9R+MUEOKGw4W48eF2sSL9ar6mvwh95P89DqCDY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ovk8fvelatWPB3VUtfuOgrbXqj1vcjTGg0KNwhUTFc5H3gBDudJMob0BibAYoI9cK
 HQsJclBH3ZfaVogl602muiCNMB1FfKGrTdx1wKhG9FhIyAA30TGvRBfSYDmIRh06e/
 wZMEopx/d6YxB0FxH3i+NPdqlIHLmgAx1TidFiHY=
Date: Tue, 23 Jul 2019 14:04:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH] clk: imx: Remove unused clk based API
Message-ID: <20190723060415.GS3738@dragon>
References: <1562857910-29501-1-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562857910-29501-1-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_230445_702891_AAEFC651 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 06:11:50PM +0300, Abel Vesa wrote:
> Now that the i.MX6 and i.MX7 clock drivers have been switched to clk_hw based,
> we can remove the clk based API that is not used by any i.MX clock driver.
> 
> The following APIs are going away now:
> - imx_clk_busy_divider
> - imx_clk_busy_mux
> - imx_clk_fixup_divider
> - imx_clk_fixup_mux
> - imx_clk_mux_ldb
> - imx_clk_gate_dis_flags
> - imx_clk_gate_flags
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
