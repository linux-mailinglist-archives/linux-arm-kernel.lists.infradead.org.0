Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572573713B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBSYhaGTJIqp+8JLEXtMiZDVkjr1z81gcve1DwU2u7s=; b=cMMkWG7bgWAmld
	dgshfyKVtsm0kYzlC+k1aIUTpgoCR7souqz6eOdY0Qf9ysi6aJQj7/jxtXVNoPtmwPSIMskqMUVKY
	Nrcq7RIqTUc4DnEorBO9CJW5VWJ+BH+bHWVqAL0NYxqoGJ5VGHFrb5gQgnUee/jRpFRy5NoiISgzs
	PJ9vscXofv35AExNQJgTVFmTjqdbqX/sESmz9aLidDgPPX1dYqpcW+UcXZmclTZiD5tbhxbf5a4TV
	A1/etYmWQa6rTZSmPYkqDKzPPtjL+VGexodqMLL+WpfCW0X8wlbQlVHg0OdHqH85rw60bbVvayyEZ
	GglsMB6i8wSsMmNOyV5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpFq-000719-BY; Thu, 06 Jun 2019 10:04:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpFj-000713-Df
 for linux-arm-kernel@bombadil.infradead.org; Thu, 06 Jun 2019 10:04:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vyZRcp+Va+ViLGLM59YeypYH4p7PD6zFbaJVHPCAupE=; b=g/dVn12UEmIgqKrf2HLJTPzLQ
 Da+ZojQfGmY2Cui7eJ3MpSvOPwthMIhR4ltxQLFqUvtP3S6onFQqZ79ReNPmSvf5Kwn7D8HkfF2lN
 ldNR+nBCSDEK3tGyhD7gyVZlxSHu6UMnnYsT3zKnS1BqyoQzkl+7Bnh3IWlu5Y9ocEVguXdFlqIKV
 /lal6uZ6veH64cM1rjmMffoa20qxl0+3BcnTU2Lna1fyWczfjx+GIV2ze0wIy/m2b3z95rQdQBtIP
 qrpW+t8gWBFnwJ1MDW+QWH80XyjVhRaUUu+6Nfagpf43o3KFvN/cueyUgtreJaBjJgpP8IfnPy8vb
 95lwU6PvA==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpDj-0004mW-22
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:04:09 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7E9F0240023;
 Thu,  6 Jun 2019 10:01:33 +0000 (UTC)
Date: Thu, 6 Jun 2019 12:01:32 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: rtc: Add YAML schemas for the
 generic RTC bindings
Message-ID: <20190606100132.GB5168@piout.net>
References: <434446bc5541d7dfe5823874355c7db8c7e213fa.1559075389.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <434446bc5541d7dfe5823874355c7db8c7e213fa.1559075389.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_110407_449605_D121EE68 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/05/2019 22:30:31+0200, Maxime Ripard wrote:
> The real time clocks have a bunch of generic properties that are needed in
> a device tree. Add a YAML schemas for those.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/rtc/rtc.txt  | 34 +-------------
>  Documentation/devicetree/bindings/rtc/rtc.yaml | 50 +++++++++++++++++++-
>  2 files changed, 51 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/rtc/rtc.yaml
> 
Applied 1 to 6, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
