Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2E61FD738
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JH/JpH2p2yDX/T7UPDKXvsVbn8PgniiXiyLkItW6La0=; b=Dwe5t5ZtNhcbV/
	Od4rJNn27N+62XAdlxmqO3pvknuIeSgtDQissuv2ZmgDQ22kQ//FoYS89QgHb5WDAJppn2D4w7vFb
	5nI0RHlIumeeBLTqDAZjqeB8YY/PfNggzDlVy7pxuP4d2bhVGDFOClc0rntD+OVJpTj6TttOzq/Yw
	8ciZuLvXVWIuuuaZaTjq2HEPk4eNq6K67TDCtFjP97Q6XJ7TTc0o1vJIV6ctORIP7/dRPD6Rslg37
	HQN5FnkCHPGRfE/OewpAiqmlIfLKzYAWw3Fmymd6/JxcrWSNNY63IKwjjBZLAQr/kGBbD8mCRqkCF
	FSyH+Qf12bMoAIOvt4aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfbw-0004ba-19; Wed, 17 Jun 2020 21:28:44 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfbl-0004ae-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:28:35 +0000
X-Originating-IP: 86.202.110.81
Received: from localhost (lfbn-lyo-1-15-81.w86-202.abo.wanadoo.fr
 [86.202.110.81])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0C41D240005;
 Wed, 17 Jun 2020 21:28:19 +0000 (UTC)
Date: Wed, 17 Jun 2020 23:28:19 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH 2/3] ARM: dts: at91: sam9x60ek: classd: pull-down the L1
 and L3 lines
Message-ID: <20200617212819.GE3675@piout.net>
References: <20200615095525.43414-1-codrin.ciubotariu@microchip.com>
 <20200615095525.43414-2-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615095525.43414-2-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_142833_377602_61F0815F 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org,
 claudiu.beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/06/2020 12:55:24+0300, Codrin Ciubotariu wrote:
> The L1 and L3 lines drive NMOS transistors that are OFF with a low level.
> On the SAM9X60 EK board, if the pins corresponding to L1 and L3
> have pull-ups enabled, there is an extra 2 x 30uA power consumption.
> Use pull-downs for these 2 lines to remove the unnecessary power
> consumption.
> 
> Fixes: 1e5f532c2737 ("ARM: dts: at91: sam9x60: add device tree for soc and board")
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>  arch/arm/boot/dts/at91-sam9x60ek.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
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
