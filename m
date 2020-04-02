Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC6C19BD0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 09:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYkGep5JP86mfTA4jZoPXcyiGDbT0ECy7vpQfiFMHA8=; b=vDfv1xq1nJWuqd
	2GG/SHkZxcySW2U/ert0iMI4pguerB7FRChwPAOiji2btFAqfmWwG0+j8fKqGMwKijzOnTRpsmPHh
	ZPjpwTBQ/WwGOSqcVenUEMEOx+s34M4shtBaxJZqepjJZ4U5SuS9cdunEYucJNlfyus0XAzuorKEx
	giNCyTbinB51STbXq9pdVgvgBYdlWG+EO5NNxAFc07iwUsMh9/urhtQG4cOWAOvB6G7UIHxIqVHBb
	UCiyetRDtQln5PRco9wVdVch/4Y+BHoQArvEVC74S20o2+PEklHC3n8EhCtpbK3O1GxRdqh03cg63
	yhLhrcO69lx51+AMqZ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJubJ-0004Zj-Tj; Thu, 02 Apr 2020 07:49:21 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJubD-0004Wo-0o
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 07:49:16 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A2FC5200014;
 Thu,  2 Apr 2020 07:49:05 +0000 (UTC)
Date: Thu, 2 Apr 2020 09:49:05 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [PATCH 1/5] ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node
 description
Message-ID: <20200402074905.GA3683@piout.net>
References: <20200401221504.41196-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401221504.41196-1-ludovic.desroches@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_004915_199776_B5DB27DF 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Cristian.Birsan@microchip.com, Codrin.Ciubotariu@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/04/2020 00:15:00+0200, Ludovic Desroches wrote:
> Remove non-removable and mmc-ddr-1_8v properties from the sdmmc0
> node which come probably from an unchecked copy/paste.
> 
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Fixes:42ed535595ec "ARM: dts: at91: introduce the sama5d2 ptc ek board"
> Cc: stable@vger.kernel.org # 4.19 and later
> ---
>  arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 2 --
>  1 file changed, 2 deletions(-)
> 

All applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
