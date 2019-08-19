Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6777B94C10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 19:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOtW6KCaB+2vVUP99o8f2kY2DDfnCvyD5XAdjw9OKoU=; b=VWyHqYH7PMNjcx
	uRYui+xTpc+/qbVNaUV9FbFiw984xE0qgJasWnGKNEkalTPpG+uxgRDF6jSiGxADfjeZwfeuQOTDp
	V3LYTvn8IZbp1fGhqVS1qalNHGmvptI+qzP4yrWABOLAbGBBO0DuxU7rweqQU4aJ/nZDMshFPg1vt
	jPOagYySnVyJAFCFX+3IiJ4nj5mlRUV74k7M/OfkO0xCpi3i9lQnZ9itFD5WNY8Z9iM99WHUPU3NG
	eooJspBLSIhEiqRVMpFAN4HkoqvD1YVvH3XgfYlGqvqcCTH6yRQJCFZ8yfyJYYXkDaZe4qvoGpjVa
	MaFhZrMEO7YOMsoproIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzlq3-0003Bp-Li; Mon, 19 Aug 2019 17:53:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzlor-0003AY-Ii
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 17:51:51 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B705D218BA;
 Mon, 19 Aug 2019 17:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566237108;
 bh=+7QKYeUbcMCxsQX0oH5oA7FEOb5oKVFMAqNXEf6W2fs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E7bVdM3yw8O8alVxWgFO84DzblNWStlq5JeZ/F5MZafxNcyO/zdzqv9tXe7ZC63gZ
 eMzO9bLaWrkbKMvQB+kjfCMy3vZkQIq9o1AAI24yFUxUtLPbT/aUHUU9+bsAnNgSgc
 ddjMA6H66raGskUeHeDROSDKxKezHS67GlmxX/Zo=
Date: Mon, 19 Aug 2019 19:51:43 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 5/5] ARM: dts: sunxi: Add missing watchdog interrupts
Message-ID: <20190819175143.g5hilveoeubkbfpk@flea>
References: <20190813124744.32614-1-mripard@kernel.org>
 <20190813124744.32614-5-mripard@kernel.org>
 <CAGb2v66C-Mqdo-xWm4RAw33sFk-gLy-L_YWQ__6BjYU9gcpYug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66C-Mqdo-xWm4RAw33sFk-gLy-L_YWQ__6BjYU9gcpYug@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_105149_648476_EF9336F5 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 12:44:02PM +0800, Chen-Yu Tsai wrote:
> On Tue, Aug 13, 2019 at 8:48 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The watchdog has an interrupt on all our SoCs, but it wasn't always listed.
> > Add it to the devicetree where it's missing.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>
>
> On a separate note, the A31 has four watchdogs in the timer block, and
> one interrupt for each watchdog. Should we expand the node to encompass
> all of them, or add separate nodes for each additional one?

Yep, I guess that's the idea considering the register range.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
