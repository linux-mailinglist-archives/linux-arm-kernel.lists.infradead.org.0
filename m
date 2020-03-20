Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BAA18DB6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 23:59:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zV+qDwz6j85U8rNeDnOa0aOalFuRyh8I6N80vBy53QM=; b=YqjrNonJF0x3Di
	cjDxElGoAa0CfDl5LS/kZ1s5wg5v0oUlBxRTarba9g1W99hGh6cO9scSlVU9xnNo9CJt8CzwWAGrJ
	TRUAEfiPD0+LKNE8KX9Vi2F2XvFMwUKc4IcTZP++GzqKxGlJt5xTsXU7L7Hsm9LzmMrP/Tuf7n2F2
	eCK8B6N2tX0GQVbdxweEdawQGv9VB42QJznBfFrWtzpfGURL1tJvPN28bLFJuC9IzfG9kmZnPJDvG
	QsnOt3DEzItUolAzAeGy5lg46RcaMaFK5GJYQy1VgHh0GurzC9mQ75OAsitOeor4JuOWj0Va7Btox
	5txh31GMrRkCYIizGfHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQc5-0006UH-2V; Fri, 20 Mar 2020 22:59:37 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQbl-0006Ox-3w
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 22:59:19 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5F7B724000B;
 Fri, 20 Mar 2020 22:59:12 +0000 (UTC)
Date: Fri, 20 Mar 2020 23:59:11 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen Hristev <eugen.hristev@microchip.com>
Subject: Re: [PATCH] ARM: dts: at91: sama5d27_wlsom1_ek: add USB device node
Message-ID: <20200320225911.GU5504@piout.net>
References: <20200318104236.21114-1-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318104236.21114-1-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_155917_305272_7E3561AC 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, ludovic.desroches@microchip.com,
 cristian.birsan@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/03/2020 12:42:36+0200, Eugen Hristev wrote:
> From: Cristian Birsan <cristian.birsan@microchip.com>
> 
> Add USB device node for WLSoM1 EK and enable it.
> 
> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
> [eugen.hristev@microchip.com: ported to 5.4]
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
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
