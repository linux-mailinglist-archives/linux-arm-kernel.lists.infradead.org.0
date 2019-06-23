Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3F54FB8E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 14:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3e1iNNfRbnx+uEGKw17dVeeK2aoc5vtBihS5WUkqbLc=; b=o5aDlx38D4Febf
	p/hX4QGi973YrY82ZidCmzGB0BDiz5esPoVLo4wBNUThj4gwo9JIUTyz//SWt/y+jMFWX5LlXMSJw
	EA4/NtcVHf4G4dxPps3OtzUBj6UfdYEq471fNJYD9ZUycVSbhI6WB1y1KHAgRS4cZfiWZRwwE7Isg
	6h+oX8OHqfuw5RiRldEz/H3c8JCrItzZPIYWIjTTu2OJL9Khs1yaeg8YFRU1U07Nz/QTMIhB+D2D1
	7WtSEN1ppZXFdELum/YEJh7eFkMqplRUk6mk8zELFfImgif+BE9oMI59R+O6FByqOtA7M6NE/TObO
	7LPhW5tv0dba00qNmpHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf1RY-0000n8-SC; Sun, 23 Jun 2019 12:18:01 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf1RJ-0000m4-I5
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 12:17:47 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hf1R6-0000UV-Ml; Sun, 23 Jun 2019 14:17:32 +0200
Date: Sun, 23 Jun 2019 14:17:31 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 2/3] clocksource: imx-sysctr: Add of_clk skip option
In-Reply-To: <20190623120434.19556-2-Anson.Huang@nxp.com>
Message-ID: <alpine.DEB.2.21.1906231413110.32342@nanos.tec.linutronix.de>
References: <20190623120434.19556-1-Anson.Huang@nxp.com>
 <20190623120434.19556-2-Anson.Huang@nxp.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_051745_749217_640FCD91 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, angus@akkea.ca,
 abel.vesa@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 festevam@gmail.com, s.hauer@pengutronix.de, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 23 Jun 2019, Anson.Huang@nxp.com wrote:

Again the short summary could be more informative. Instead of 'Add foo' you
could say:

    .....: Make timer work with platform driver model

That sums up the real meat of the patch. 'Add some option' is pretty
uninformative.

> On some i.MX8M platforms, clock driver uses platform driver
> model and it is NOT ready during timer initialization phase,
> the clock operations will fail and system counter driver will
> fail too. As all the i.MX8M platforms' system counter clock
> are from OSC which is always enabled, so it is no need to enable
> clock for system counter driver, the ONLY thing is to pass
> clock frequence to driver.
> 
> This patch adds an option of skipping of_clk operation for
> system counter driver, an optional property "clock-frequency"
> is introduced to pass the frequency value to system counter
> driver and indicate driver to skip of_clk operations.

The comments to the changelog of patch 1 apply here as well :)

Hint: 'This patch'

Thanks,

	tglx



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
