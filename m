Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDE96C50E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 04:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6UlqNyPyQXYDgP9i44/6pL7KPEjLywSG+WAka5PrFg=; b=cOORNUShi5PKzN
	yu/rfFRnVDyfb7yD64wD3g8fGdP040AnRdw0E+6mWRoOCqNA8b+7xkSvnCmPSAXv3MY8+MvSY71Az
	ql3javQ95UjTHdwV8J8voTEgpQ+P5A9aPxH5fRi1FB2oIP9HUP1q+xf5eD0pD+O4lFMfKnLop6P9A
	dfWnHZ2+RUVMzhcYGHyi2CI6ESg5BL2hTaA1Rr/Mtk+8NaAgIoA1KVoINyw3u1xhBW4LMoy12yT3Z
	KdRQ5xNJhQg1pFJtS3fJqBVAcPLkmHn6TdN8qi6Ff0h1rPnt5M1ms6PUDqf61uspdYFZNpsGEnls5
	2kmWnw0I4JeNhdX4Tbgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnwUJ-0005qk-2r; Thu, 18 Jul 2019 02:49:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnwU8-0005qM-NC
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 02:49:33 +0000
Received: from X250 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B76E5205F4;
 Thu, 18 Jul 2019 02:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563418172;
 bh=jdNPPY/nagQO4z4SbeSxOZ2+EDMQori7e6umb/X7wII=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2scJcYPaWEnC8O4BuYyROLVOluc2QUVDfFyzDltCMUOGU1YaYhJXRkUz6OdZ/MFIh
 tseMR2zXmwtg2wmQ+eP+MnVB1t+R6+CHVD+Og6kauZA4tWLC1cBk5JnS1SBMfQ5hsT
 V6tnMol1y6TXf44Mb9hc2xH6I9DoPfIRwsPgefFU=
Date: Thu, 18 Jul 2019 10:49:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v5 6/6] ARM: dts: imx7ulp: add edma device node
Message-ID: <20190718024920.GC11324@X250>
References: <20190625094324.19196-1-yibin.gong@nxp.com>
 <20190625094324.19196-7-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625094324.19196-7-yibin.gong@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_194932_771338_C5FCF205 
X-CRM114-Status: UNSURE (   7.87  )
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
Cc: mark.rutland@arm.com, robh@kernel.org, angelo@sysam.it,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 05:43:24PM +0800, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> Add edma device node in dts.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
