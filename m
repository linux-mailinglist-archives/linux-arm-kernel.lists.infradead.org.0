Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA0C1BD306
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 05:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9/2+rlAE/N7lswyqjfkVKMKx3z686P0PrKcwP2h5LE=; b=ZEwFtCEeHGDN9O
	5p3pLK1oTN4VElooRgYj/27fPPE1sRcFpIEupHjJ2jAGl0vrbzcbZKSz6ixrXlzmv9pQ3aAqpdBss
	YsloRXdpAhCRdDGcSdcV+txZQhahiaJC2c11pP2z4cujLUjIw/45pleQV+K1nxY24MM1V9p4uMmGe
	fzPDwiRedeu+KtgrWdYMDmPKJ1blU06s/cl7p0o8jyUe9QH/4JJUJClBBSJLbbyzMS1F6Ah+v9kpR
	pqjugjUpCWnjZUoNYF2DyuoHfKGGdfIe2s0ZG1D9y81i9r7v6eYixZFvtEsELrCI+uWpNEAdC3/Eu
	D1hsgJ7XvcxBXtTKwrxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTdZb-0001NB-8w; Wed, 29 Apr 2020 03:39:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTdZN-0001MB-Lh
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 03:39:36 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D02F7206D8;
 Wed, 29 Apr 2020 03:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588131573;
 bh=orkxRHn+N+RYYxUbCBgUPuZKuerrqDe2irKMLhkSJQ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q6a6hc0yElrC0bJ5rCY7Er66ixPzcpiR6EaPvWIhc24AU5SSdIUbz2abZiPHWU3Ps
 0e9KcK5WXhPio7DZCrLH3DUUDKLQqDfD1yJ1/dHOrvVRAghL17OmBki11Xg+359AWO
 kQ93ju+V1zWFYe4KU5VFY1K5vYanBzAVDdNC2OSM=
Date: Wed, 29 Apr 2020 11:39:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mn: Update VDD_ARM 1.2GHz setpoint voltage
Message-ID: <20200429033927.GQ32592@dragon>
References: <1587817790-21698-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587817790-21698-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_203933_732039_11EAD163 
X-CRM114-Status: UNSURE (   8.36  )
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
Cc: devicetree@vger.kernel.org, peng.fan@nxp.com, horia.geanta@nxp.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 25, 2020 at 08:29:50PM +0800, Anson Huang wrote:
> The latest datasheet Rev. 0.1, 03/2020 removes below constrain:
> 
> "If VDD_SOC/GPU/DDR = 0.95V, then VDD_ARM must be >= 0.95V."
> 
> So, for 1.2GHz setpoint VDD_ARM can use its typical voltage
> directly.
> 
> The datasheet can be downloaded from below link:
> https://www.nxp.com/docs/en/data-sheet/IMX8MNCEC.pdf
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
