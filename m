Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A49E17EB19
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 22:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IqetSk+CSa/YyXrflmBkNfQM1rYlSzSHXOxtvoD9uo=; b=hAJ3Kmw16RxDNN
	kkIm6ldzW/s5a6bCPmaEcQ5XllNe0E7+6rf8/RTvv+LVVsuSlLbR9xiFiTJ0I2gGUtPYS1bTqovJc
	lbWbkvRM0XJz6lTTrn5JC+Bu0LYFxxz1zuOuLeEpr+TtHsc85NuPV3st8lDQCzBkSZxZsQAvbdE10
	1dPJpkoIFFIaLPXgsrMWrEEspyPDyPELsN63IjCdS+Uo3yjtujqnX+0ZP5rZoxE1ZqaomT9DAAikz
	YmoL5WIwEzEZ20IIdVhoFwHoM13+Ecwukq+uugDyLbtrlQpUaPWlmNzEG43y7KF2Whqmp2++5uwMm
	nCBd8qW0iJN3b5+WSEMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPq4-0001Vz-Sq; Mon, 09 Mar 2020 21:21:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPpc-0001G9-9E
 for linux-arm-kernel@bombadil.infradead.org; Mon, 09 Mar 2020 21:21:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Nq14faoyQXoi+0BuThfaKkcGTJy95nls/V40xhkA2LI=; b=mscgsnKhbh9wy/Fmtv/s/wnt+a
 6nEUF/GJLBR38P6gpKISQNtNSIEC83/leDhF0/4OHIW9ef/wIJD8aPEVM9bHp4sBN5p0CZYH5Vk6O
 z9fCZluAEd1BycuyAjJhTa1uwiD6SBrp8P59NVi2JYTgunfzHPgj89xXuuo0fYV+DCy+qX0QfdE/V
 aZK4wWviI3YfmbiSJstIcOV0wW/JYleKthe95S5jNBrkbZM4cENVF5nORsnYoQomlposZmvPMB46p
 /5xRvJN4EjJLkN8NwRlT1LT8Z4tL0q3Y0QvmKqDLtGwVMjvaXSuaoBLAsh47mE/yahd819gsioSTJ
 gho85M9Q==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPpY-0005nQ-5f
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 21:20:58 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C1363240003;
 Mon,  9 Mar 2020 21:20:05 +0000 (UTC)
Date: Mon, 9 Mar 2020 22:20:05 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v4 2/4] ARM: at91/dt: sama5d3: add i2c gpio pinctrl
Message-ID: <20200309212005.GI3563@piout.net>
References: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
 <20200225155012.22764-2-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225155012.22764-2-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_212056_351505_0C3CF0EF 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Kamel Bouhara <kamel.bouhara@bootlin.com>,
 wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux@armlinux.org.uk, peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/02/2020 17:50:10+0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Add the i2c gpio pinctrls to support the i2c bus recovery
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> [codrin.ciubotariu@microchip.com: removed gpio pull-ups]
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
> 
> Changes in v4:
>  - added Acked-by tag from Ludovic;
> 
> Changes in v3:
>  - removed gpio pull-ups;
> 
> Changes in v2:
>   - none;
> 
>  arch/arm/boot/dts/sama5d3.dtsi | 33 ++++++++++++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 3 deletions(-)
> 
Applied after modifying the subject, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
