Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9516817EB16
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 22:21:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6Se+t9kdNwApiio36azP+hf5lpqaA7oCrJmBWDQNtw=; b=OiW+v96G93v9QR
	z+/Gfhv9tk1QHL57JaB4KqDczeD8MNSKeoPOOs2yoVaFS5FCKykhpZ7ENjlUgk1YL4GwN4tEdTHeC
	Qgri5DAynLwKetDyyE0HPrkNNVJAfCsxPZCAEkFTBQ7CI7cR3cGmwKCItTFwvconofkAxcBhM4FE6
	VeBWYcVTzZ74WZy/y3b9bKeDOEdIQe5ncWS9Ut/xxQaggtRMZByWq5VvMZiWJmEwy7Ky1RfmAn/1a
	daNXAXOYU5lfXk2ooUpLjf+AvrX10FQiOVz9ZJJ8/sHz8QQN2RDagUlc3BTabzQtlXE/zNsRVytCb
	7UU9HZ/AT7nc5UwUhg7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPpS-00013Q-G5; Mon, 09 Mar 2020 21:20:50 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPpJ-00012V-WC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 21:20:43 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 4ED35E0006;
 Mon,  9 Mar 2020 21:20:38 +0000 (UTC)
Date: Mon, 9 Mar 2020 22:20:38 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v4 4/4] ARM: at91/dt: sama5d2: add i2c gpio pinctrl
Message-ID: <20200309212038.GK3563@piout.net>
References: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
 <20200225155012.22764-4-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225155012.22764-4-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_142042_174055_F40C2B22 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Kamel Bouhara <kamel.bouhara@bootlin.com>,
 wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux@armlinux.org.uk, peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/02/2020 17:50:12+0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Add the i2c gpio pinctrls to support the i2c bus recovery
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> [codrin.ciubotariu@microchip.com: removed gpio pull-ups]
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
> 
> Changes in v4:
>  - added Acked-by tag from Ludovic;
> 
> Changes in v3:
>  - removed gpio pull-ups;
> 
> Changes in v2:
>  - new patch;
> 
>  arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts   | 33 +++++++++++++++++++--
>  arch/arm/boot/dts/at91-sama5d2_xplained.dts | 33 +++++++++++++++++++--
>  2 files changed, 60 insertions(+), 6 deletions(-)
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
