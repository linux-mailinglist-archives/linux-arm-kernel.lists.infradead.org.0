Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E685DF40
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtMPpUqGPdooIWehcuFP9xIKf/m7naxk6dn/OVvTVIM=; b=fUevmPNKgm04MO
	g0tM7vmUPWWpdPHZOeATM9ad0mnAWCFDXJqWcBs8EzS7WWS4vCyF5P76gINdh/X0S6ep/kOMSyeDl
	vpNZSHuCuLrM/QZLl8Y56ftUi9iA9zuJztmzay5ztEvhR4yzJlRcx9HTAo+RsbD4zIqxotTvkE8A7
	wCtQoPVS55Wo1wdSEGnyZM27zKN/r9c4Y3vmmhRVYpg5+qcsh0yo+OgOHNgUMm6Zod4Hp1AdficSg
	tmdgEPI1NO0kbIQQWrZMkAaKBMPCvgiQFHgGreybPdDe5ocqDJ3e9+8a3pt3Skpk4FOMHUnqeaPhz
	3q6Tyi2BTLRx0mMKhnqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaDV-0008IS-CG; Wed, 03 Jul 2019 08:02:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaDF-0008HX-KE
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:01:58 +0000
Received: from localhost (unknown [122.167.76.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C812D21897;
 Wed,  3 Jul 2019 08:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562140916;
 bh=ThdOqIlE3tUWkIZCcSvGSfnftygpU4mdRMsrGkRB824=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GYWQ75vkqGkJRXZ6dih6ItEgb92wHdF8ZCCOyuF3axygjOhqHqmTIb2jAg4FJQyMO
 MrWvaEwr1wH1x6qy3E1kg8mRdmo6Z75vwTE4+AMN4bcaxafhH/uYvWc70hiwxTZnlX
 O8X88LouQrPToBR47ovMX8nPVzJBtNteMfpzquKY=
Date: Wed, 3 Jul 2019 13:28:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v5 0/6] add edma2 for i.mx7ulp
Message-ID: <20190703075848.GR2911@vkoul-mobl>
References: <20190625094324.19196-1-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625094324.19196-1-yibin.gong@nxp.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_010157_694896_52210C9D 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, robh@kernel.org, angelo@sysam.it, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25-06-19, 17:43, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> This patch set add new version of edma for i.mx7ulp, the main changes
> are as belows:
>  1. only one dmamux.
>  2. another clock dma_clk except dmamux clk.
>  3. 16 independent interrupts instead of only one interrupt for
>     all channels
> For the first change, need modify fsl-edma-common.c and mcf-edma,
> so create the first two patches to prepare without any function impact.
> 
> For the third change, need request single irq for every channel with
> the legacy handler. But actually 2 dma channels share one interrupt(16
> channel interrupts, but 32 channels.),ch0/ch16,ch1/ch17... For now, just
> simply request irq without IRQF_SHARED flag, since 16 channels are enough
> on i.mx7ulp whose M4 domain own some peripherals.

Applied patches 1-5, thanks
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
