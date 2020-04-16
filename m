Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AEF1AC11C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/QiCPzrBcq94v6uYdLPeC0NsF3i4YrCxidWPqU+No0=; b=SXRwKtbYTO1db0
	OQxfRxE9iGE5tltqKMxj6FICCLAY9ILnVCni6O3+09HTkNl/2V7GNaj9/ists/RhYKuH9kSCsCovd
	b4BEoMG2hIPGIypXdsZQlJxLG+MV0DkGjMuqinpZuNEvkWvRR7f9wLsT0tp9d1DWSuN1ZEJbwVcBN
	5OdmqIwO097CocigX9VTelBnUJBAzZ8GvdQ2vZIzVaQT8xY6s4qF0cml0asc90Q/5nn6w92wxnR8b
	6x+El8rKYmo4x3/K7oASm65VlkS9zw7IWjtYNh4vPrLDK43wdRKcLfa3AM9NXLMuSZ3W3HWEe6Frs
	3ECcYK3WoBEJnAyilygQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3Xu-0003Aa-Gn; Thu, 16 Apr 2020 12:23:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3Xk-00039V-NS; Thu, 16 Apr 2020 12:22:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7E5B226040B
Message-ID: <d33aef355623a5abd6eec176d33a167c456ed915.camel@collabora.com>
Subject: Re: [PATCH 0/4] media: rockchip: rga: PX30 support and YUV2YUV fix
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Thu, 16 Apr 2020 09:22:41 -0300
In-Reply-To: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_052256_896417_C9A08D90 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

Thanks for the patch.

On Thu, 2020-04-16 at 13:50 +0200, Paul Kocialkowski wrote:
> Hi,
> 
> This series adds support for the Rockchip PX30 SoC in the V4L2 M2M RGA driver.
> It also contains a fix for the YUV2YUV case that was not properly handled.
> 

How have you been testing this?

Thanks,
Ezequiel

> Cheers,
> 
> Paul
> 
> Paul Kocialkowski (4):
>   dt-bindings: rockchip-rga: Add PX30 compatible
>   arm64: dts: rockchip: Add RGA support to the PX30
>   media: rockchip: rga: Add support for the PX30 compatible
>   media: rockchip: rga: Only set output CSC mode for RGB input
> 
>  .../devicetree/bindings/media/rockchip-rga.txt |  1 +
>  arch/arm64/boot/dts/rockchip/px30.dtsi         | 11 +++++++++++
>  drivers/media/platform/rockchip/rga/rga-hw.c   | 18 +++++++++++-------
>  drivers/media/platform/rockchip/rga/rga.c      |  4 +++-
>  4 files changed, 26 insertions(+), 8 deletions(-)
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
