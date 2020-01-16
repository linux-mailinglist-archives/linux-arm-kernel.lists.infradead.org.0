Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5DA13DCC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMo7OntDjgOXQoPhqUCyGiOFMKu9So1maE9KBTtlU4I=; b=IvXgzjA04h/tZ9
	hx9LD9eVeBBUJS5SR+4rCKuWBVwgfs8MT0XUcn1OyH5iFwVDxy13bV44YVvkbQevBtiZ3TC77slJO
	B/xlRQ0PEHou2Y1VxM5aMCCtyWs07zFct3bDF1PWW63Y0ZojdnsJy3vPJfG9Qeu/US0fkS6AO6Ylw
	duE9HKA6lGyPxur3nR7XDHmzwxYGVcD4FCdV8viynSssWcAyXKEvM9ykpGxmJ6E5uOnhPzrrL1Lml
	4OROnP3YcW2PwtnJEyg160Z7iayF2MWCuPfljYEUbgpu/ErdYoBjsU1CKFP7t1vKk/1xhCFlnf8e7
	vomePPaed1JSpUJdqINg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5gX-0004Ex-IU; Thu, 16 Jan 2020 13:59:45 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5gJ-0004DD-KI
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:59:36 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 94863240019;
 Thu, 16 Jan 2020 13:59:12 +0000 (UTC)
Date: Thu, 16 Jan 2020 14:59:12 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v4 4/5] ARM: at91/defconfig: enable MMC_SDHCI_OF_AT91 and
 MICROCHIP_PIT64B
Message-ID: <20200116135912.GH100374@piout.net>
References: <1579085987-13976-1-git-send-email-claudiu.beznea@microchip.com>
 <1579085987-13976-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579085987-13976-5-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_055931_798021_68A12BFE 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, devicetree@vger.kernel.org,
 richard.genoud@gmail.com, linux-kernel@vger.kernel.org,
 radu_nicolae.pirea@upb.ro, linux-spi@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/01/2020 12:59:46+0200, Claudiu Beznea wrote:
> Enable MMC_SDHCI_OF_AT91 and MICROCHIP_PIT64B. These are necessary
> for SAM9X60.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  arch/arm/configs/at91_dt_defconfig | 4 ++++
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
