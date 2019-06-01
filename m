Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B7D320C4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 23:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2c+WL65zRdzie5E7uYVPYBBcHPGJzrqH+nm2x7QsGIg=; b=smgjl5S5vy6rA/
	eKQ7iptLt5NPOnSCqwdAmUXOAJVWpoIuGEThNCPwTh1QVXa63k1aUaziHXRDLHocB5PwQQgJ8G90q
	SV3jArliCPFm+8Tp2j8ajplAnkgImZSvOhLoQQg4a8OdfcJWz5RQrLlNpvS6GkHMsnGXNmZH046xR
	3KaEg7fl/3yzYmyT3zv7h8AGqHLcniSJKod/ROSfle198oYTg7YszwG/k8NiOoxASYAfBYL4n1ERB
	+FJV9DVqgqZwdzRCAljWuj1scRq5z+2AaBVAZu2AewCSW5oDxOsuC64qpoqALhbYewBUth30T7khf
	9XTT3yrs7RgCwZt607yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXBOa-0005Bk-CJ; Sat, 01 Jun 2019 21:18:32 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXBOT-0005BM-Q3
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 21:18:27 +0000
X-Originating-IP: 82.246.155.60
Received: from localhost (hy283-1-82-246-155-60.fbx.proxad.net [82.246.155.60])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AC846E0009;
 Sat,  1 Jun 2019 21:18:19 +0000 (UTC)
Date: Sat, 1 Jun 2019 23:18:16 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V7 4/4] rtc: imx-sc: add rtc alarm support
Message-ID: <20190601211816.GF3558@piout.net>
References: <1554785675-8090-1-git-send-email-Anson.Huang@nxp.com>
 <1554785675-8090-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554785675-8090-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_141826_003706_6415FA17 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/04/2019 05:00:07+0000, Anson Huang wrote:
> Add i.MX system controller RTC alarm support, the RTC alarm
> is implemented via SIP(silicon provider) runtime service call
> and ARM-Trusted-Firmware will communicate with system controller
> via MU(message unit) IPC to set RTC alarm. When RTC alarm fires,
> system controller will generate a common MU irq event and notify
> system controller RTC driver to handle the irq event.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> Changes since V6:
> 	- add comments to .read_alarm callback function to explain why it is an empty function;
> 	- improve irq notify callback function name.
> --
>  drivers/rtc/rtc-imx-sc.c | 87 ++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
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
