Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D89D60FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 13:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q32JtTdSTxMbCRobgmE8Yiq6DZ8ey4YMvZwEuQu/Ngc=; b=GdY3ZhC0VkGg6G
	dUcVoK+3mYUrYmHozcpiGVWfxHhjX5EMCka+vS2WOyk+gBX15tInbpAIAe7evziS41tLXe/H+84Zp
	yzeKapaMMaGJ2Y1SoOxpC0bm9gV2ILbidssJQ8XxlyV64arJreZvXbckXjq1mBmkdKQ4c+bkZ4SZ0
	A1YMVg2mdyyYowB9GGa9CslcwrZw3IS0f5VBHDakmqUQOJFaiLyBLYYSzzbV9dKvno/GMyHftXuWw
	ztQZnsQw5vquj9z2M+++/r0wj1qpb3lORdkahFkV+2ATzaOOkgs9VeqItFPw9+2YccmE3gVcfCwI3
	1wfG0V3pegyZGTMFRaxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJyEL-0007f5-L9; Mon, 14 Oct 2019 11:09:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJyEE-0007eJ-QL
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 11:09:32 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 912D420650;
 Mon, 14 Oct 2019 11:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571051370;
 bh=IGUjFKwdFvBuHDUBTTMUkHOqWN+qrspmIFd3EP+r5D0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u6lV4BvTYW8QqsNve4UmSk9Z5IRL6ls+Ne+fUJeDqE/2kdCy6p2B3zszdb8a3CGfJ
 zIUWNfhvJGX46ZQKGt0ADXS2mmtAPaMYHIMnAOQtJjH2drVoNnJIyH6+M8bbZA9fir
 CCH+HHdvDRmqPLE15mDMW7UZttO+u5rVp++pF3JE=
Date: Mon, 14 Oct 2019 19:09:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 07/11] dts: arm64: layerscape: add dma-ranges property to
 qoric-mc node
Message-ID: <20191014110911.GL12262@dragon>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
 <20190924181244.7159-8-nsaenzjulienne@suse.de>
 <20191014082847.GH12262@dragon>
 <f6262e61f858c6f50164416f4ea816e203c0704f.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6262e61f858c6f50164416f4ea816e203c0704f.camel@suse.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_040930_879181_3D844455 
X-CRM114-Status: GOOD (  14.16  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 mbrugger@suse.com, robin.murphy@arm.com, linux-arm-msm@vger.kernel.org,
 f.fainelli@gmail.com, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 wahrenst@gmx.net, james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 dmaengine@vger.kernel.org, xen-devel@lists.xenproject.org,
 Li Yang <leoyang.li@nxp.com>, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:00:25PM +0200, Nicolas Saenz Julienne wrote:
> On Mon, 2019-10-14 at 16:28 +0800, Shawn Guo wrote:
> > On Tue, Sep 24, 2019 at 08:12:38PM +0200, Nicolas Saenz Julienne wrote:
> > > qoriq-mc's dpmacs DMA configuration is inherited from their parent node,
> > > which acts a bus in this regard. So far it maked all devices as
> > > dma-coherent but no dma-ranges recommendation is made.
> > > 
> > > The truth is that the underlying interconnect has DMA constraints, so
> > > add an empty dma-ranges in qoriq-mc's node in order for DT's DMA
> > > configuration code to get the DMA constraints from it.
> > > 
> > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > 
> > Updated subject prefix as 'arm64: dts: ...', and applied the patch.
> 
> Hi Shawn,
> these two patches are no longer needed. This series has been superseded by this
> patch[1] 951d48855d ('of: Make of_dma_get_range() work on bus nodes', available
> in linux-next) which fixed the issue directly in OF code.
> 
> Sorry for the noise.

Okay, thanks for letting me know.  Dropped them.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
