Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629C7186114
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 01:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxJQVRkuc128cvOUAO11Fl0gDHveSetVcZZK6ViUw10=; b=gjx6v15dZM90H0
	7haXkZxcnfNERIKimRanifNzxPZSDFN8+Xmq3bNN9H3UadEJScT7p+6BDlEv//e+4dzEHDoj3cq51
	fTQlIa+cEKcs68HpDw/dXkESBrdKD6eBPkyHCVIBdUWDG5AtyXCo2qvHXS7TxHqkfohaZcd1g0H3e
	9p/eEfzjXvX23qaANC3MsJ0eO0l8JyG2qOqKB3K0XdLq8rZG1aP+Zec+1t//8kFN7STHawZjEmT5f
	siTVBS1EIuimACIEFu7AYIQA8nyKH+DAFog/wBHhrh5PneIjf0NoZaWzO1xZVm6NaPziHzLileGRh
	lMUJTvet+cgBLVIxCciA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDe4M-0001RL-Ts; Mon, 16 Mar 2020 00:57:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDe4C-0001R4-Cr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 00:57:17 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34375205C9;
 Mon, 16 Mar 2020 00:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584320235;
 bh=3piP5pwtf+r7deloTsJap8LnB9s6iAaXgkUy9VghkTk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rr1rGYjoFDj9IDMh/8RIw+gZbJ37SB9uE87PoOATmk/1vTsIEvFsn/vy4LdYKEDzr
 52Jnymov9DMhIjn+39YU6uDNLUHJLEhuFau2egWy08AdJOCOEprypCsDpnSFUdjovR
 oZtlOwczAsb2ePAGMhHGSNbZps9VhKQ1jJQX9xJE=
Date: Mon, 16 Mar 2020 08:57:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH] clk: imx7d: Add PXP clock
Message-ID: <20200316005710.GG17221@dragon>
References: <20200309161709.30982-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309161709.30982-1-laurent.pinchart@ideasonboard.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_175716_454717_807C9BE0 
X-CRM114-Status: UNSURE (   8.91  )
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 06:17:09PM +0200, Laurent Pinchart wrote:
> The PXP has a single CCGR clock gate, gating both the IPG_CLK_ROOT and
> the MAIN_AXI_CLK_ROOT. Add a single clock to cover both.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
