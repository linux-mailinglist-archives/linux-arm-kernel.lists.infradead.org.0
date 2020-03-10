Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78B218069D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOoXRoW/TzIje1n6XGZM2DfvVIF8YYeBGlWP7TYTWO0=; b=Me20xwHby2kMC+
	Wvb3KEMnCz6Pvn9PAP1ct7F2/lOHamboNd2I9+xlf8hF7BAymAJ4kJLaFSiZdWNuy+5aj0D3TqMDl
	FibziUbq55MtOdJsW15DqO+qxWXdpJTx0HVBasuCbHUHSu1J1rb1rXIvSn3589oIARU+t39BtSOo1
	ZZVPFAeeub9P5qMlQr9XzHdD25KLEtvIJjD4FfiBNtQ2gZf8Mc6mUc/LAwnqXrt4yzt1Ggscs+q3m
	hjzAlVmvgvkkR8mF41/2uQbbvjTEG7YdPoHX1JxY/IzVBBBv+H5hqsoOxZWsqY5PJo6wtrGscnF9k
	jSBc3YMghQb/4EtT+Jiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjhg-0006lA-Vw; Tue, 10 Mar 2020 18:34:08 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjef-0003wt-QO; Tue, 10 Mar 2020 18:31:03 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2DBFB24000B;
 Tue, 10 Mar 2020 18:30:46 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, vigneshr@ti.com,
 miquel.raynal@bootlin.com, han.xu@nxp.com, richard@nod.at,
 mripard@kernel.org, wens@csie.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: Re: [PATCH 4/7] mtd: rawnand: sunxi: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 10 Mar 2020 19:30:46 +0100
Message-Id: <20200310183046.18314-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227123749.24064-5-peter.ujfalusi@ti.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: d33252c1486699b6d1fa8b44b950a03e011fd137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113102_020712_EA76048B 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: vkoul@kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-02-27 at 12:37:46 UTC, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Acked-by: Maxime Ripard <mripard@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
