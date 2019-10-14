Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA5DD5D82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 10:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUHMgLJC6TSc08cKza92HjCMTVz4TlAKqsZ1UKjt0TE=; b=uPq/ct7kF1uZwv
	lJfcxb1OWnFW6hcn6FYzMHatn5bBS2s1D6nu3qzUZt5FHuIXIWBeb6+SsxZIerKTV0xhMD2x/2tXp
	w5uuxXXB3ZjM4wNngD9TDUpLdx9lMdLqqtwswAo/54XVcmQfj8ld+Hki8V03XycorbVoOdgnBwQi6
	DMtgwtMlZjxiFGo/X+NIzdDMZyrVR7huYKm1BoHKih0B1YwQVEorpFmUSugMs5hvWRTB+ez5UtJ8Q
	r6burIna+4UXiHvujynVDE6hshoyraQeTVOs+SgyEtbGWhEE77Ol1opdL3vhbC1D4kLyugR7NmyO4
	NY6SW5QFiSriNzRMfWMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvkn-0007Q9-Sp; Mon, 14 Oct 2019 08:30:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvkg-0007Ps-Fc
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 08:30:51 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5443B207FF;
 Mon, 14 Oct 2019 08:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571041850;
 bh=p7mjM/EcKkarwYBL8yjO5OkJb2HPOW4/n1CL+uOOlMU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RTnfmVLrzT1mElpLV1XpxtXmAYaHC4vXjDk1D8B2kTsZLHBXEuOXdUn57LgcXb0Ej
 h3mpF2mTZzuwOHBrv9gd3TZkQ4d/61IzyEHJNqi+GNSCzH6D3Q9rxbNjPNVhwsqsHm
 enxUHSuGte972ZNKUuW2YUasfYnn5BuldVKKqFww=
Date: Mon, 14 Oct 2019 16:29:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 08/11] dts: arm64: layerscape: add dma-ranges property to
 pcie nodes
Message-ID: <20191014082924.GI12262@dragon>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
 <20190924181244.7159-9-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924181244.7159-9-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_013050_543949_530981E8 
X-CRM114-Status: UNSURE (   7.88  )
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

On Tue, Sep 24, 2019 at 08:12:39PM +0200, Nicolas Saenz Julienne wrote:
> The bus behind the board's PCIe core has DMA addressing limitations. Add
> an empty 'dma-ranges' property on all PCIe bus descriptions to inform
> the OF core that a translation is due further down the line.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
