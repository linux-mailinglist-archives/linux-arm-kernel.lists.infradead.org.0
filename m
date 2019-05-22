Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05D42624C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5Bm3eAqp+y4k6ay17/xbiaNvrlft6b7HyQ6ex1ywYE=; b=NDKirX1M+Edjhd
	rTgNBj6Nsgk1gDNJkGnZKqTza8V8wSmeU+7FOV8y5UyUGNCbkJHYI40jIBFkhJ70plbJZg//Nfuua
	2qF0frt5uuITn7ydC13IC/Z7wtgTBYD21Cs3tjZiR8+qjs6PX3hNhr/obliDNSvz0cEpWzSas01U8
	+eMqAeI6f1Z43wwLJnj/BroN+QZI+4AEZXDcefjZJ7HU3MlMCyvvWh0nTzdPua+K1bUxPhz9mMmPV
	2PKiW2opbQ4OsNPUURYgy2JXusBXS+qZ51zGEj85Ai6YmrZWBJVvc6fXSJLja1NDotl0VKIbO0MJM
	FvnNgV73Fwg9b8Oft3nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOqO-0008WI-Hu; Wed, 22 May 2019 10:51:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOqG-0008SQ-Qq
 for linux-arm-kernel@bombadil.infradead.org; Wed, 22 May 2019 10:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/k1Y0b+Um/pM/hq16DW1Tj8j0EIsco2Y29kYrb3m6GQ=; b=VFJhUntgRzlQ5y1olwYTwFh1A
 9+qCUe9o1nvnou7/s3JKlowQOOamS8mRpqkNlOJ+vVn2WqHz8nQjDr/ka/PnCnQIHN7X3l4ZcwjQD
 Zb/a64dgNDjuWNg1fdKhr043EFkeFqcHpjhQGyAovx9a0m3By6x0XtW3sHr1YOChc6aI+WfkRkXeP
 HjS1uyWgAX5vPT5L25q90cNNYJa3vTvVLU1hmQUlIgwv5QDTaTFtqBm3G09Hp7G88ih46Cv+2/Czb
 8npLWVYRqEKrydvv+wdK9SQJX2VP5rukHUcy4ZG9VyIg/HeZ8lMI8JWzzEUG1gYVUgIh834Ld9+Rl
 moKRctQjg==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOhw-0006vL-9Z
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:42:54 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 666F2240009;
 Wed, 22 May 2019 10:42:27 +0000 (UTC)
Date: Wed, 22 May 2019 12:42:26 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] spi: dt-bindings: Convert Arm pl022 to json-schema
Message-ID: <20190522104226.nwcvx33akt6q576m@flea>
References: <20190521212325.16639-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521212325.16639-1-robh@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_114252_350368_21478998 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Tue, May 21, 2019 at 04:23:24PM -0500, Rob Herring wrote:
> +allOf:
> +  - $ref: "spi-controller.yaml#"

You're using a different construct on the spi-gpio binding you just
sent (/schemas/spi/spi-controller.yaml).

Is that on purpose?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
