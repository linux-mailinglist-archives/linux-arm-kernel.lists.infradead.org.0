Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6888715B739
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 03:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmMHQJwgp3hs4G808nfQVZEuyqbJHxL9yjtXibpkH3E=; b=QMbNCqWHrDX0E0
	mClQL0GLS0XPsQBHXGEVtFS8E1bQSqCAfKR/MqGOXD/1dUGdB3aOxmdOb8yR9i1x96x9VzkpzVfYt
	nDVKTp3rmJQD6+0GI7cY/rRGLLfJZ3PrjSvA2YQciAqZDqZbR3xQQ9zme3IQDMR8+zw7XCBfaj+Xy
	UuTKB45FT9pA7aCzVcDF/qSBG5n8EOv1OMC9dtUue/ZRwp2ArCoYVEUoEXYBo2356kynbh35mawYu
	R3Olo9hGLVNqBXpnXkRVRNukHuPVonjQEwaoSKRrRViONs61RdH7SLTj/oc8QWU14hbib2KffHh8r
	JeoBgnF7/acp7j2KaspA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24Pz-0001xO-RZ; Thu, 13 Feb 2020 02:39:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24Ps-0001x2-7g
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 02:39:49 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2595220675;
 Thu, 13 Feb 2020 02:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581561587;
 bh=7njdiHZdpjT/lY2sGX+b1AjE8LpOct8cmEhxr86H+H0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cdbfpW4cX8rjgZx83+WfTpViLrn4dTfOaEDb9b9FzB9JAx+TlY22M3DcgLZcDwsxI
 o4GgcTT+kBK6W79scynMcewukOj70s451PUNDrFOOt1gEzExCe6YjYEC4fJW7bBPlD
 FvBznO8Q269xQWKNVchNybuyoPrJ6mgJK/xbK/Ds=
Date: Thu, 13 Feb 2020 10:39:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx: use generic name bus
Message-ID: <20200213023330.GK11096@dragon>
References: <1579156408-23739-1-git-send-email-peng.fan@nxp.com>
 <1579156408-23739-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579156408-23739-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_183948_295717_42B6477B 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 06:37:57AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per devicetree specification, generic names
> are recommended to be used, such as bus.
> 
> i.MX AIPS is a AHB - IP bridge bus, so
> we could use bus as node name.
> 
> Script:
> sed -i "s/\<aips@/bus@/" arch/arm/boot/dts/imx*.dtsi
> sed -i "s/\<aips-bus@/bus@/" arch/arm/boot/dts/imx*.dtsi
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm/boot/dts/imx25.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx31.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx35.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx50.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx51.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx53.dtsi   | 4 ++--
>  arch/arm/boot/dts/imx6dl.dtsi  | 4 ++--
>  arch/arm/boot/dts/imx6q.dtsi   | 2 +-
>  arch/arm/boot/dts/imx6qdl.dtsi | 4 ++--
>  arch/arm/boot/dts/imx6qp.dtsi  | 2 +-
>  arch/arm/boot/dts/imx6sl.dtsi  | 4 ++--
>  arch/arm/boot/dts/imx6sll.dtsi | 4 ++--
>  arch/arm/boot/dts/imx6sx.dtsi  | 6 +++---
>  arch/arm/boot/dts/imx6ul.dtsi  | 4 ++--
>  arch/arm/boot/dts/imx6ull.dtsi | 2 +-
>  arch/arm/boot/dts/imx7s.dtsi   | 6 +++---
>  16 files changed, 31 insertions(+), 31 deletions(-)

We may want to cover Vybrid family (see vf500.dtsi, vfxxx.dtsi) as well.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
