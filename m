Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61068CFC4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tPmNyReuySK+waW7VVQ+7bJBtNNLSS39FrS2t+zrmc=; b=GzkCu6kHVXtVMs
	slltu3Pu6XLQpxFsYrxNnpHa5220pu/miZHN7cgHbITsWswjHEgrjz10Ziisgdk1BRl2qN/2CZsWw
	xLPU+lZmYAs7/CeVKtrPF7YU491Zjv3NKYjcBtNwppDYf7YX61DwjgoE6uUjFvfbkiOKT4apgSYl/
	bSqyEpBI83A5nppJ2nQXTLKp8IK7i2q8+3PJCNLmmEIOi81fzvcVUKoYUT11u6XPL3ciQrGeC9wQg
	e7Is6o9Y/dgoUt8nzZy8AsLKpRuzTvgLFU3zlzygjiZUrx094OfCl2Qvh8+3774DUEDYer5lheM5N
	aGcS7wLp1+MGjA1YDHVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqOi-0000Eg-2V; Tue, 08 Oct 2019 14:23:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqOX-0000Ch-21
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:23:22 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iHqOJ-0007ME-4O; Tue, 08 Oct 2019 16:23:07 +0200
Message-ID: <1570544586.18914.9.camel@pengutronix.de>
Subject: Re: [PATCH v3 0/3] reset: meson: add Meson-A1 SoC support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Xingyu Chen <xingyu.chen@amlogic.com>, Kevin Hilman
 <khilman@baylibre.com>,  Neil Armstrong <narmstrong@baylibre.com>
Date: Tue, 08 Oct 2019 16:23:06 +0200
In-Reply-To: <1569738255-3941-1-git-send-email-xingyu.chen@amlogic.com>
References: <1569738255-3941-1-git-send-email-xingyu.chen@amlogic.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_072321_114743_937EBA92 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xingyu,

On Sun, 2019-09-29 at 14:24 +0800, Xingyu Chen wrote:
> This patchset adds support for Meson-A1 SoC Reset Controller. A new struct
> meson_reset_param is introduced to describe the register differences between
> Meson-A1 and previous SoCs.
>
> Changes since v2 at [1]:
> - add comments in header file to indicate holes
> - reorder the Signed-off-by and Reviewed-by
> - remove Jianxin's Signed-off-by
> - add Kevin's Reviewed-by

Thank you, I have applied patches 2 and 3 to reset/next.

regards
Philipp

> Changes since v1 at [0]:
> - rebase on linux-next
> - add Neil's Reviewed-by
> 
> [0] https://lore.kernel.org/linux-amlogic/1568808746-1153-1-git-send-email-xingyu.chen@amlogic.com
> [1] https://lore.kernel.org/linux-amlogic/1569227661-4261-1-git-send-email-xingyu.chen@amlogic.com
> 
> Xingyu Chen (3):
>   arm64: dts: meson: add reset controller for Meson-A1 SoC
>   dt-bindings: reset: add bindings for the Meson-A1 SoC Reset Controller
>   reset: add support for the Meson-A1 SoC Reset Controller
> 
>  .../bindings/reset/amlogic,meson-reset.yaml        |  1 +
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |  6 ++
>  drivers/reset/reset-meson.c                        | 35 ++++++++--
>  include/dt-bindings/reset/amlogic,meson-a1-reset.h | 74 ++++++++++++++++++++++
>  4 files changed, 109 insertions(+), 7 deletions(-)
>  create mode 100644 include/dt-bindings/reset/amlogic,meson-a1-reset.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
