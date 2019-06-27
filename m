Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8E458624
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmQev8YjHGsNWvFPOBDeIlKjPVpppNiUALAzjUlfee0=; b=dGzQvpSs50ISU7
	SxTaV7w7WhkqymKC2X+A/yWrpr7hZCfojtgsE00P9MUfxbFpcPMU5JMiGK49qy4cp6gX99WfgKmSc
	DjSlVxeUy9U891o9E/1YoZlz+VUPnWfwZGh9c7DLkbyx+e8387DXLIiHZzPk3N0P9JMU5vIxlnpio
	K1pv/SXnpa3T4AMpWfyIsHX2U97wE/uzw/M5EBKLcyZ5hS2nLWABXzgrrQQDSl94BE4EolyNmvxRl
	UTcZQ+FNELI/2kM+iwdIdLZPOcsQl/iLHmBzI9xIdr/qj9Gh9JbaTM5h94hwtUlftnoPkaTC6O+Q6
	rWIKwHEKJYm//k/Bodqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWXJ-0007eF-Lc; Thu, 27 Jun 2019 15:42:09 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWTB-0002Vs-MP
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:37:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8AZ7Mo8jXW8J3pJblbsiJvKp6+Q5kxaDs1nceQXCsp4=; b=CYeuElsGDRyZbKI2nhNBEFv4am
 FW8VT76M/pH5efn2vf9F4coi+08gCrUARhpFiuWdBvfE8UbCZZbOjax4/4i/J5tH/rjZLEtKvtTKA
 HLFnYV6SRbMv3hCVFB6DCyrbsA3xpVJRJr6l5WDsTcz7+e38/vY/NYmIDgdFGeRXNVbo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hgWSz-00014z-8c; Thu, 27 Jun 2019 17:37:41 +0200
Date: Thu, 27 Jun 2019 17:37:41 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v4 01/13] dt-bindings: net: Add YAML schemas for the
 generic Ethernet options
Message-ID: <20190627153741.GL27733@lunn.ch>
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <bbda9a50acace27f2fa79af71723e7d3b0111bc4.1561649505.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bbda9a50acace27f2fa79af71723e7d3b0111bc4.1561649505.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083754_346229_2415A485 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Rob Herring <robh@kernel.org>,
 Antoine =?iso-8859-1?Q?T=E9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 05:31:43PM +0200, Maxime Ripard wrote:
> The Ethernet controllers have a good number of generic options that can be
> needed in a device tree. Add a YAML schemas for those.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
