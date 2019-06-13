Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDE543217
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 03:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pks7h8KuJbIkPcAJPaSkJeqYk7pONsv12wtcbsuvb90=; b=auNT/VJvUHUmhk
	Zw1EiqYeO55jbZF8GWXsoPW60mVPflR5XosZMhOlbVy7lA1FM94erO26pNjTiifgCJa3SWUV9XG0m
	FErubmRxBChVrldckks8XxzH4nOjuyxYg6h9VNjKBB5dEQDrHg0hGyJOfw4EAqgcvZn+FXRHLuZZM
	Z45kYj6bmu5M1Diklw6+wtRKQ+PQkCEOYUNfYW3+u6AZOI9+0V42OBSbVX2UUW9derp4D7iWOAyza
	4+5Yg5uMsDF8783TVtZgA72v5y4yXHa56Sq3ENc8DMSyD6nHBfCnGtY56k27iF5fWA9iYei1Gcyzh
	x6mhT5qPzXlLSXXjghfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbEi7-00058c-Bs; Thu, 13 Jun 2019 01:39:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbEhp-00058A-Ao
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 01:39:10 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59E1520B7C;
 Thu, 13 Jun 2019 01:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560389948;
 bh=E3BVSamBEJXWxz5OabhY2ueDy3SNwdh0BFD9+FBsprM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rxQ1w6A2RQZRn7b7ecknRx0Tz6fy2EaASij1/HQZci8yLHrzeuqzCkPKS2yn9QJEN
 nK8YNrAuZ2hBU4KK+VbD874D5qOGlu97wBEGAwClolQhR8FDBmoSBTZWEWX4arbYZ2
 +Y/MTKIdfKPfrpKHr7UTrB2d2B5BCjattasT3JrQ=
Date: Thu, 13 Jun 2019 09:38:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: Re: [PATCHv3 0/2] Variscite DART-6UL SoM support
Message-ID: <20190613013830.GC20747@dragon>
References: <1559839624-12286-1-git-send-email-oliver.graute@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559839624-12286-1-git-send-email-oliver.graute@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_183909_393818_2C737065 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 06:47:00PM +0200, Oliver Graute wrote:
> Need feedback to the following patches which adds support for a DART-6UL Board
> 
> Product Page: https://www.variscite.com/product/evaluation-kits/dart-6ul-kits
> 
> Oliver Graute (2):
>   ARM: dts: imx6ul: Add Variscite DART-6UL SoM support
>   ARM: dts: Add support for i.MX6 UltraLite DART Variscite Customboard

It's already v3?  I did not find previous versions.  What's changed
since previous versions?

Shawn

> 
>  arch/arm/boot/dts/Makefile                         |   1 +
>  .../boot/dts/imx6ul-imx6ull-var-dart-common.dtsi   | 458 +++++++++++++++++++++
>  arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts    | 209 ++++++++++
>  3 files changed, 668 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ul-imx6ull-var-dart-common.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
