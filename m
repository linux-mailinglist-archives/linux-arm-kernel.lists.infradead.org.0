Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568B916A03F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:43:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Wyok94k4V9FF/sbyYOOCiGX8YuXEC89PpkHNzdD+sI=; b=KmZPHYU8MwIQPP
	n1p4xlGqpSEkP44qmy/y13lSA6RVIKtDptcZqXVVcEl6etQ9Qvtjs9pirTEQvw3TVsIuLatKygrnj
	3LClGbSJsgnzL3y1N1XwIrutG5zcNWu97KnQz7QfsAzI8gO66G8KSGTQrc3hEa7xgUHjkKptx8ffh
	t7xbvPvcMId1aeyiClqwKd+Xvu1oF22IsPOwDLW1M/xMH8SNYHi1QdrqBmuCvFawy5L/60eva+qCw
	1EJNI0MKW7t1u5Qljd84ggsLGyJfUktPPMklQqNvuwISgD/z8nRvkWg0kb+b+aiiTt/2mKXQiRWbL
	vLF+nMe7FKpRSh11Oi4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Kp-0001aa-1g; Mon, 24 Feb 2020 08:43:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69Kf-0001aD-Vb
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 08:43:19 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 543AB20661;
 Mon, 24 Feb 2020 08:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582533797;
 bh=9veiwHQ321Wt5pyHqEi/01Nw1+0zBBW21SsYQPjAqOc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U0n5WXGRRH/yQhjuQyGKM/mRikRUbqKQ4zz6qfsZ+Gowv69j8/VHm2lzuTmD9hJvn
 /kSOKy0zDgzWKceEvlzewW3AnxCtUEaQKmNAjGFnbeHsgsAY+AfCxD9MOMPm+D4G/x
 4Y6PxQOrEdSh8ieKEQVtvoGvSkQCfIglQ6GLai5k=
Date: Mon, 24 Feb 2020 16:43:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v6 2/3] arm64: dts: ls1028a: Add PCIe controller DT nodes
Message-ID: <20200224084307.GD27688@dragon>
References: <20190902034319.14026-2-xiaowei.bao@nxp.com>
 <20200224081105.13878-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224081105.13878-1-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_004318_037736_E6533C8E 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 xiaowei.bao@nxp.com, roy.zang@nxp.com, linux-pci@vger.kernel.org,
 Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 minghuan.Lian@nxp.com, robh+dt@kernel.org, mingkai.hu@nxp.com,
 bhelgaas@google.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 09:11:05AM +0100, Michael Walle wrote:
> Hi Xiaowei, Hi Shawn,
> 
> > LS1028a implements 2 PCIe 3.0 controllers.
> 
> Patch 1/3 and 3/3 are in Linus' tree but nobody seems to care about this patch
> anymore :(
> 
> This doesn't work well with the IOMMU, because the iommu-map property is
> missing. The bootloader needs the &smmu phandle to fixup the entry. See
> below.
> 
> Shawn, will you add this patch to your tree once its fixed, considering it
> just adds the device tree node for the LS1028A?

The patch/thread is a bit aged.  You may want to send an updated patch
for discussion.

Shawn

> 
> > 
> > Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> > Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
