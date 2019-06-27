Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7B1580A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 12:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLYkBMdCr6kMejcUBhGRu2IOg1+EoAxX0TLxrY0EB+Y=; b=XJTzFF0ST+qrZm
	NLfIlX//9zlvrUL9NWO3NFkDHrFBXvVzrbVUXE3nFhb8xREaUcuxRCXzTHGjB+4LVdOgT5sPqb41c
	wrQK1ppThzzVyzAiNsqwOs831P74BRVNwNUhhYPlrPLw/o3FsX8J8PHUt/qUbUPPWpTA+ODnfF0rH
	KnvBnGXExOy5TOAqHLirTg3LxMKgep6iZov/Bs+renB6XMqBvTIJMi8hT9kg7WwZHG4rWNQBmcxc9
	0CZXgrq2KY5RHrWoBaksmObKXpTFBXAO78j5shf0MFjtazblTv9WZ+s9xhYl26NgfAtm32onaSG2D
	GJRe99dpeIydEIpSw1CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRpn-0002KV-Au; Thu, 27 Jun 2019 10:40:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRpU-0002Hy-0e; Thu, 27 Jun 2019 10:40:37 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1hgRpQ-0007QZ-3N; Thu, 27 Jun 2019 12:40:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/4] hdmi on rk3229
Date: Thu, 27 Jun 2019 12:40:31 +0200
Message-ID: <1889663.L4fA2jsj6U@phil>
In-Reply-To: <20190614165454.13743-1-heiko@sntech.de>
References: <20190614165454.13743-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_034036_284333_6B1338EE 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
Cc: justin.swartz@risingedge.co.za, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 14. Juni 2019, 18:54:50 CEST schrieb Heiko Stuebner:
> The hdmiphy needs its clock reparented to the actual hdmiphy-pll
> that gets generated in the hdmiphy itself.
> 
> This incorporates adapted versions of Justin's original patches
> and also the needed clock adaptions to make it possible to
> reparent the hdmiphy clock.
> 
> Heiko Stuebner (2):
>   clk: rockchip: add clock id for hdmi_phy special clock
>   clk: rockchip: export HDMIPHY clock
> 
> Justin Swartz (2):
>   ARM: dts: rockchip: add display nodes for rk322x
>   ARM: dts: rockchip: fix vop iommu-cells on rk322x

applied all 4 to relevant branches for 5.3

Cheers
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
