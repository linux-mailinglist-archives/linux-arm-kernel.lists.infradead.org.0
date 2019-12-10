Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F48C1185AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:58:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQ/4/HrZM3ix19VPQCMaNkOVpB1LYzZjusQBK80hp4s=; b=g8lVKYtFF2mUd1
	KAD+Q7l0bWRMt464NU9OcheR2diBzQcGaIaOFdTo3TuttfeEKhzvK3UB5b+S66ybVKj4WEJ08JBgI
	mN2Zgm3Bz7yw6OjGK+fZrVNTj2edFBgG94eVvk2y131y2WHW8lkp0kUHStXgdLvHCf2u3nRMDyOLl
	zKwDWYZtsE6Q7Sp1HQc9Qh2XKjnYunSjJn6Ki749H9zZh6olW3M0A5gIKSmOXPwfEz8j1DkHR7TtP
	CK2gJy8BVosJE6a1Rs6ZVwUccL8HUrqw8zheOmpiGTbLO12NipkARzKa855qUNKJRlatKWqC4q/3k
	nf+izOBqnnuxTFhDAy3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedE6-0001Ot-Gv; Tue, 10 Dec 2019 10:58:46 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedDk-0001ER-8u
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 10:58:25 +0000
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 583F310000D;
 Tue, 10 Dec 2019 10:58:22 +0000 (UTC)
Date: Tue, 10 Dec 2019 11:58:19 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH] ARM: dts: at91: sama5d27_som1_ek: add the
 microchip,sdcal-inverted on sdmmc0
Message-ID: <20191210105819.GG1463890@piout.net>
References: <20191205113604.9000-1-nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205113604.9000-1-nicolas.ferre@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_025824_474471_A7A61D82 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/12/2019 12:36:04+0100, Nicolas Ferre wrote:
> Specify the SoC SDCAL pin connection that is used in the
> sama5d27c 128MiB SiP on the SAMA5D27 SOM1.
> This will put in place a software workaround that would reduce power
> consumption on all boards using this SoM, including the SAMA5D27 SOM1 EK.
> 
> Uses property introduced in 5cd41fe89704 ("dt-bindings: sdhci-of-at91:
> add the microchip,sdcal-inverted property")
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>  arch/arm/boot/dts/at91-sama5d27_som1.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
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
