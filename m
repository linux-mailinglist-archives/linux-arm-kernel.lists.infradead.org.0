Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776966F70B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 03:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5MC7dKih7dNP+2IKoKb2w2JsA0GQzAef0NCp4apfJA=; b=U/+hM8kKINAp41
	kHtouPcYZDDnsMO2s5AIDU64K1KMUm4YdZdzBx6WAjvEniWUiBcQ0xV+hOrthAzpwQo4qZDeBNtfH
	ZeK8+vaYmEasGPmICAs/aqVM/K/OoNEKH8L1WXu16HWsjN0ZtV3KUaGMOiiEBriRXSONNfdg4ouuw
	Zf3Ih+YN/bVTeV3NmOsQ6mKH0P99dEBKfC+CNlFXROfbb13TgB67nf0ycAfxhDXoyI4fxXL5/9MAy
	gssJ4Q3WJZwgY9xgaWeqxHZ1bXq9wQQFBAUKCS3E1LSEY448HWhFCCC/B9JnpwTEjqPVLQXtlRPlL
	LdRlfN4KHZ263Ghm1Axw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpNUL-0000qf-P8; Mon, 22 Jul 2019 01:51:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpNU0-0000pm-7S
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 01:51:21 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C7B2218B8;
 Mon, 22 Jul 2019 01:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563760277;
 bh=Ifmw1kwQs1PBl3C/XBm2CuGOQOQuGLamhmGWLqcBvlQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r3axg1iCHjWk3zZNu6E58/7oxdmAxHyfW8pbl617pfU55iT9sbpwBxszDM2LlZYyq
 HOiaN5LfiaDf14u3csRk1tJvv1Jl88RPoJ7y6qiiCJAfCR3gu3Wx8y7mm3uJSsJKmy
 uu/9H7Q2VW5ZDGMI3fbzJcCo+YeM2vvXmk1/WLQU=
Date: Mon, 22 Jul 2019 09:50:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V5 1/5] dt-bindings: imx: Add clock binding doc for i.MX8MN
Message-ID: <20190722015043.GP3738@dragon>
References: <20190619055247.35771-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619055247.35771-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_185120_286143_B985E610 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, peng.fan@nxp.com, ping.bai@nxp.com,
 maxime.ripard@bootlin.com, catalin.marinas@arm.com, mturquette@baylibre.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-clk@vger.kernel.org, abel.vesa@nxp.com,
 jagan@amarulasolutions.com, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, sboyd@kernel.org, linux-kernel@vger.kernel.org,
 dinguyen@kernel.org, kernel@pengutronix.de, enric.balletbo@collabora.com,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:52:43PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add the clock binding doc for i.MX8MN.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
