Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720891A66D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 15:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWkqgkENJC9t6HrHRDJ+ZLFIptu50uEFNigJM/1lh5M=; b=huVPtKcZk9r2eE
	jnKDOF3py7GMUp8Dl5xzqGA4yCPgd/kZ3SUDWoOzB5nONK88g4lFLJxvSy9Dv27TVQi+D5+baEaug
	9ayZcNvgsefQBi+DKSyjApB1o0IS0ixR/LChcRTo30ttCdqCAsbI8hNuJuBkFNyIH2P0vQVx322J0
	AJyEUbCNfYEQXTXgABztnGUuhBw2m27Zjwo6+zS5J/35w4OIZhUP4W5OJYQhbdR4GEe+xexGaxGM2
	hxJf/OQuodn17mKu8bli78FBnOOl5YcWpNbk2/nepcJIJli8Bs3kBkFiqsNx1nMzpKeZLpmulE2zE
	rsgu4S4q/g5MflNdd4Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNz1T-00065Q-7E; Mon, 13 Apr 2020 13:21:11 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNz1M-00064n-3a
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 13:21:05 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EBBD9200006;
 Mon, 13 Apr 2020 13:20:51 +0000 (UTC)
Date: Mon, 13 Apr 2020 15:20:51 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: cristian.birsan@microchip.com
Subject: Re: [PATCH 0/2] ARM: at91: Add initial support for SAMA5D2-ICP
Message-ID: <20200413132051.GF3628@piout.net>
References: <20200410164320.7658-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410164320.7658-1-cristian.birsan@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_062104_281983_DBF56EA5 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/04/2020 19:43:18+0300, cristian.birsan@microchip.com wrote:
> From: Cristian Birsan <cristian.birsan@microchip.com>
> 
> This patch series adds initial support for SAMA5D2 Industrial
> Communication Platform.
> 
> Codrin Ciubotariu (1):
>   dt-bindings: ARM: Document SAMA5D2-ICP
> 
> Cristian Birsan (1):
>   ARM: dts: at91: sama5d2-icp: add SAMA5D2-ICP
> 
>  .../devicetree/bindings/arm/atmel-at91.yaml   |   7 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/at91-sama5d2_icp.dts        | 797 ++++++++++++++++++
>  3 files changed, 805 insertions(+)
>  create mode 100644 arch/arm/boot/dts/at91-sama5d2_icp.dts
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
