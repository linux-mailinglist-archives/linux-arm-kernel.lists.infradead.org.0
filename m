Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE27B17DE32
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqt5N1fc2MyZWwb5STf1kwMw5VGRak4BbvFkXf0/AI4=; b=kXPZko9Uh7aN0Q
	vTw8BW6Yg4Q24hvwtBVfV9P7t2Yksh0MVmgNH33zkilGgSXMfbjanuoO29acqXdvVJ2Eu00xl6DIX
	fIaohsBpCbGyepG00dldIgRE5q+Z5gC4cfl2c/OpgFtUOo+cbYWKxn8j1Y8IiViJGr9/epw2mghvo
	CpEfsKyrYd5w6c2/wfdEEtHXNf5diAx7Cq0QAPrrhfSyjYGEmdMCvkeASJgsbc9cJaD39HcT0/fWT
	irnlN8+0ueq6dyK7a9mXRJ5NuOvRv6wdVQQ3CdUhZ5ltrokOJVEVKrv0V2Q2ILv7jfNBh2bIw5g/0
	oCrzKWT7kLH6EdyHECdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGF3-0004I0-J0; Mon, 09 Mar 2020 11:06:37 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGEx-0004Gs-2g
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:06:32 +0000
X-Originating-IP: 90.66.181.224
Received: from localhost (lfbn-lyo-1-2013-224.w90-66.abo.wanadoo.fr
 [90.66.181.224])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 655FEFF81F;
 Mon,  9 Mar 2020 11:06:09 +0000 (UTC)
Date: Mon, 9 Mar 2020 12:06:09 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Message-ID: <20200309110609.GE3563@piout.net>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_040631_254987_BBDD3CED 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: m.felsch@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-rtc@vger.kernel.org, robh@kernel.org, amit.kucheria@verdurent.com,
 wim@linux-watchdog.org, daniel.lezcano@linaro.org, krzk@kernel.org,
 Linux-imx@nxp.com, linux-input@vger.kernel.org, rui.zhang@intel.com,
 ronald@innovation.ch, linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 arnd@arndb.de, linux-pm@vger.kernel.org, s.hauer@pengutronix.de,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 a.zummo@towertech.it, gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de, kernel@pengutronix.de,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/03/2020 08:38:14+0800, Anson Huang wrote:
> Add stubs for those i.MX SCU APIs to make those modules depending
> on IMX_SCU can pass build when COMPILE_TEST is enabled.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- return error for stubs.

I'm not sure why you are sending v3 with the stubs as we determined that
2/7 is enough to compile all the drivers with COMPILE_TEST.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
