Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DAD9650C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Um+llTmEIUtU1boII9tVsDyDkay+5gZ0G5AIExjX+lw=; b=eIrfJvIb8a9AEY
	MBudHFgbKv2JDZtRJrum5hvIrKmCPfUiymKZTyQuCbsZj6xOywQuVSn+w7BHBWeZvVAkFeP4djcR8
	koOqhPOCjyue2WzLYNdjLAOKbPsiS7EHVHddVnLM2CWEEFBUSao4Hh4irtLiyFUxjlz3W1BGYXMkk
	dqP1k+rfl74AYAwiIirZ2JQj4MeCNSwJhxYdzs5KBVjwOoTzb/l7EOCn+fnL9eN69eeBTXgcrCU6z
	VjcmnCh+4jye6wAz7NOfsfki5P4dnWLATTQRHpBKXZTE7tH+L0v66x2LejnCBSNIOjc3Rc0rbb8h7
	accBmEV7BxfVl4DiPyIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06MA-0000en-UP; Tue, 20 Aug 2019 15:47:35 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06Lt-0000Wb-2E
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:47:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566316035; bh=+WetNuZhgsPVrJpioXtAn4eK1dq+iJ2qVlbpblbtjW4=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=hP54zVonCSbd4zXVtywOUAO5skboSj0IERBMVv++b8InA7BK9VB27HeH7mYCTQuH2
 4Le6mzzhSoXaVM6Dr/19kjLEesxX8WweIzbVQu0I2k75qcV+BB2m//1C81g4tlSYw1
 aCtfMtwX+imflszImRWYPRPZENIcBTQ1VAySnfxU=
Date: Tue, 20 Aug 2019 17:47:14 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 3/6] net: stmmac: sun8i: Use devm_regulator_get for PHY
 regulator
Message-ID: <20190820154714.2rt4ctovil5ol3u2@core.my.home>
Mail-Followup-To: Andrew Lunn <andrew@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20190820145343.29108-1-megous@megous.com>
 <20190820145343.29108-4-megous@megous.com>
 <20190820153939.GL29991@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820153939.GL29991@lunn.ch>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_084717_586223_2D031560 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Tue, Aug 20, 2019 at 05:39:39PM +0200, Andrew Lunn wrote:
> On Tue, Aug 20, 2019 at 04:53:40PM +0200, megous@megous.com wrote:
> > From: Ondrej Jirman <megous@megous.com>
> > 
> > Use devm_regulator_get instead of devm_regulator_get_optional and rely
> > on dummy supply. This avoids NULL checks before regulator_enable/disable
> > calls.
> 
> Hi Ondrej
> 
> What do you mean by a dummy supply? I'm just trying to make sure you
> are not breaking backwards compatibility.

Sorry, I mean dummy regulator. See:

https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L1874

On systems that use DT (i.e. have_full_constraints() == true), when the
regulator is not found (ENODEV, not specified in DT), regulator_get will return
a fake dummy regulator that can be enabled/disabled, but doesn't do anything
real.

This can be used to avoid NULL checks and make the code simpler.

regards,
	Ondrej

>      Thanks
> 	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
