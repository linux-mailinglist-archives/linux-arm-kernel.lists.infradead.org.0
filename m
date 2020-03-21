Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E18818DCB2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 01:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jd2QC4aP6Vu1agXxX1+SpBP9XrGn647Jexbz+XmV88s=; b=ZmXT8rErRENbB6
	qD66mlMBGXMVWR+JvuzaTs8g0dS7FLtqEw+MUA5Ux0RhJRWYA/W4E0C3qWl/c58CRpGDmbB+dCZP2
	baslePVXr/wm++4ZbW5TbkTayv81RkeRWKvidkcu9rX4SwmIN+xAHESXjY1Z+n/bQnjQU+NdQ7QQ8
	DkIs3zRTdKYUPzjSzbXOf59UUM48lwjYdBS9SoVS+TRCiLkyGmxO/B1OdHw/efNTzV0ZWExNGLrt/
	Fb3nospvYcbCCyeTvQKTJeTtvjW7JOnAKfO65QibqyZKzehleoLC6gfkrY4G5ME8YEKrQBz/uH32n
	6QkGzbb6oTDaTgcb49uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFSHN-0001fy-1o; Sat, 21 Mar 2020 00:46:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSHF-0001fg-AT
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 00:46:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E44BF2070A;
 Sat, 21 Mar 2020 00:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584751573;
 bh=/JcfAMvxxLAjC67oF8WIwUtc3/I5GfMcGDCtdaVAHiU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=1j3WiPvM5MEcdeeN3OSQ8boz7u+tX5tty1iyQKkouH0Au5dKbNrK+veUkiIcQbsc6
 YSGgUwKQSlQJyvnoBYNey8njDfiAx15T18riLjQe9UGhaDaSH1tlursoX8vy86/nAm
 TQBKjmrU1mrViYNCgLhRkqoFclzNKaLEp5JhVhQw=
MIME-Version: 1.0
In-Reply-To: <1583226206-19758-6-git-send-email-abel.vesa@nxp.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-6-git-send-email-abel.vesa@nxp.com>
Subject: Re: [RFC 05/11] clk: imx: pll14xx: Add the device as argument when
 registering
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Peng Fan <peng.fan@nxp.com>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Date: Fri, 20 Mar 2020 17:46:12 -0700
Message-ID: <158475157216.125146.12954744026833185927@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_174613_383506_14006AE5 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2020-03-03 01:03:20)
> In order to allow runtime PM, the device needs to be passed on
> to the register function. Audiomix clock controller, used on
> i.MX8MP and future platforms, registers a pll14xx and has runtime
> PM support.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
