Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8254A75918
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 22:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHr3EcIu1SnYXZia4KOgv7lAtGg2MTuVUytJ4CqK3fU=; b=ZZed/9XnG1xkNI
	vLknb86ymg3XTQS8Zp5HgtnD10E72ol6tcwJgRpgP4+OYHs4TGWAfaTDkkgqp0jH/aNjQ/+z0c0In
	6FtNaqllAoceC3mdpmja3Qt1D6+pIL/9dpxdkj0h8iIYQVxUI3kQDghyXy7JrMwEkgMEBzUUWHSLj
	xmfZuhHCxd3lYA8VUFN7ATKpv1Rkz9gAGi5tcR0F47AINKiwAf2YaC1OwPCAk5kYnLMvpeT/ZmvY5
	HDwxI2VMWl6wjWGq2CUAcI2UotEf6LMdnAFYALBpd2vAXkGynx9iUpdxM7GIGiYpq+doKJCjmIoe/
	5VAMsXFSo4K8zhZC4srg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkdR-00029p-2a; Thu, 25 Jul 2019 20:46:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkd5-000246-Kw; Thu, 25 Jul 2019 20:46:25 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqkd2-00020C-9t; Thu, 25 Jul 2019 22:46:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v3 2/5] ARM: dts: rockchip: consolidate veyron panel and
 backlight settings
Date: Thu, 25 Jul 2019 22:46:18 +0200
Message-ID: <3741084.UeuVJec2DR@phil>
In-Reply-To: <20190725162642.250709-3-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-3-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_134623_848691_43228F0E 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 25. Juli 2019, 18:26:39 CEST schrieb Matthias Kaehlcke:
> veyron jaq, jerry, minnie and speedy have mostly redundant regulator
> and pinctrl configurations for the panel/backlight. Consolidate these
> pieces in the eDP .dtsi.
> 
> Also change the default power supply for the panel to
> 'panel_regulator', instead of overriding it in all the board files.
> pinky is the only device that uses 'vcc33_lcd' (the prior default),
> so overwrite it in this case. pinky doesn't have a complete display
> configuration, to keep things as they were delete the common nodes
> that didn't exist previously in pinky's board file.
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.4

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
