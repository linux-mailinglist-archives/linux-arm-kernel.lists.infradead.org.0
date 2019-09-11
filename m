Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5177AFB89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 13:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPIfIeHuzi1cWCU8ZNySSBGEk1aVfnIif9DdJ5pvCPs=; b=BWxINfTIvx4qq0
	JbXCFrY1MAJf+qzr/PM+Xo52TSzjdg4p5ftEv7416t/g/yFIx3quh2pQb/wxwC8Xq+0cdOgJApSI7
	Qc/Iy+ztgMh9WzH1aWQc7EUlC6wLFlsf5D168JrHgce/deswlr6rU3DmVtKpq8Uyc3FUyfDS58suh
	YpBpQ/T7GeUqu+t24bs9BHNe9+q50W2n8HEy8ctgsVlaituQcgid0nr9yTM+ySs2BLpplwwtuUaaw
	67BFO69VO0ee5guYp4Z8vzuUIjF7E0yo99Fq08cRuHxUGVcyoaqwE1ZapAN2OnduHe696pjmiYoXU
	OtxUZ1UrLLeIpkaLy7zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80xs-000686-Aj; Wed, 11 Sep 2019 11:39:12 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80wB-0005Xx-NJ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:37:31 +0000
X-Originating-IP: 148.69.85.38
Received: from localhost (unknown [148.69.85.38])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id A61EA1BF20A;
 Wed, 11 Sep 2019 11:37:15 +0000 (UTC)
Date: Wed, 11 Sep 2019 13:37:12 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Tudor.Ambarus@microchip.com
Subject: Re: [RESEND PATCH] memory: atmel-ebi: move NUM_CS definition inside
 EBI driver
Message-ID: <20190911113712.GI21254@piout.net>
References: <20190906150632.19039-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906150632.19039-1-tudor.ambarus@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_043730_056690_D9F7A6FB 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ludovic.Desroches@microchip.com, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/09/2019 15:06:41+0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The total number of EBI CS lines is described by the EBI controller
> and not by the Matrix. Move the definition for the number of CS
> inside EBI driver.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/memory/atmel-ebi.c              | 6 ++++--
>  include/linux/mfd/syscon/atmel-matrix.h | 1 -
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
