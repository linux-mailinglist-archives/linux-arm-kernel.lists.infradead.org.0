Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200E534911
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQFxxcxQR9UHXQgUwcIy3KaU/IVID73eYBdXQqs58M4=; b=hLUchiCAI2jxfm
	9TF9TKDwYiQs0qJMEdbczlvrb5589mA7jdBIvUsco+GHDo2qXmwr7REdp0iaylPNxazv6eue18PGk
	qPVVBfm/hwkeEoEM9uFgLFXQneChIs1vwvG+mAEJK6Et34j/eXCMRn9OPf5TmCfxA6uVSQOS9PfbI
	1HPOLo3MDZph+g50BhPd7dfr01oPuGL20Ixnje4AI3nEHlJcV7N3AsrAT7S9tKtQCHCzzp31Xrp4n
	UNSpo9CvPI789b6R/9t7v6j9oEJ/WXj0/41/wppI90scjOGYlmWmLePDO8wAeMWaUjhDOq+e+fDYf
	N9++aJ4usjmltqjS4VDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9fB-0001m3-0K; Tue, 04 Jun 2019 13:39:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9f4-0001kh-1n; Tue, 04 Jun 2019 13:39:35 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hY9ew-0001Qf-Fe; Tue, 04 Jun 2019 15:39:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Akash Gajjar <akash@openedev.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4
 board
Date: Tue, 04 Jun 2019 15:39:25 +0200
Message-ID: <1697100.2SMvg6TTVp@phil>
In-Reply-To: <20190528184705.5240-1-akash@openedev.com>
References: <20190528184705.5240-1-akash@openedev.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_063934_238333_5247B331 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 28. Mai 2019, 20:46:58 CEST schrieb Akash Gajjar:
> Rock Pi 4 has a on board AP6256 WiFi/BT Module. enable wifi and bluetooth
> support on Rock Pi 4 board.
> 
> Signed-off-by: Akash Gajjar <akash@openedev.com>

applied for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
