Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAB378503
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 08:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mw5yd/Cr1OyNH/BWQ6kyRHkCJgFDorMGECBNSbqwbQ8=; b=OHeATmn8DWqjQO
	5Oi+Io/m3UwGTle66e/KHEntIXsCIm51SipTYxlWiinCOPbSL97yWUM8yuvzqtRgAt9a4osymlwbc
	/OG3A5mR+1Z9BlF/+uXZ2PtLR5Q8fYAxjudYZ13dDCFG6Pnhe/uw7Md3ob8m5ERcBc595KFG6//Gk
	coAcZdoSl3A3l0R3FLIIeNqkjzZqjiLCQjew259Jp+D3t9XtOzrUeE8ZLokI9OSJoHsqclcP44rop
	vHk7TXPbeYb2WDC13HNBPkVlbVNx9qmVZP2pLnPWSVwifjJJ2+G+/ZJz2jAV4BJgcoLvzTDXotGsU
	w0IPvMEZh4NKoP3aD6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzGz-00043N-Nw; Mon, 29 Jul 2019 06:36:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzGm-000432-Ss
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 06:36:30 +0000
Received: from localhost (unknown [122.178.221.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CF1E2070B;
 Mon, 29 Jul 2019 06:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564382188;
 bh=jbM48Eg7Yx5V9z4igLzOpQybV0ra5WLa7K3ccfFGuMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pH0ozCVJa4iWQkH3dXM5D+1GzWT3ECrY+N3AZwQtUZOKB71Oie7Tb3N3q1Gn9TZxX
 Bhbi4DmxJCaNEpEhvC3z+qqFjyBah+/NUeQIAeLpr9Hoa/xOZmCuMY5j+IhPaxUn9J
 ZvgY0OvpfKIfxSD2EsCEivoIQD5X0D6/tRSNln2c=
Date: Mon, 29 Jul 2019 12:05:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2 0/2] dmaengine: ti: omap-dma: Improved polling support
Message-ID: <20190729063515.GE12733@vkoul-mobl.Dlink>
References: <20190716082459.1222-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716082459.1222-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_233628_950733_833A04A9 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-07-19, 11:24, Peter Ujfalusi wrote:
> Hi,
> 
> changes since v1:
> - New preparation cleanup patch
> - Simplified code for the main patch to be easier to read
> 
> This series fine-tunes the omap-dma polled memcpy support to be inline with how
> the EDMA driver is handling it.
> 
> The polled completion can be tested by applying:
> https://patchwork.kernel.org/patch/10966499/
> 
> and run the dmatest with polled = 1 on boards where sDMA is used.
> 
> Or boot up any dra7 family device with display enabled. The workaround for DMM
> errata i878 uses polled DMA memcpy.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
