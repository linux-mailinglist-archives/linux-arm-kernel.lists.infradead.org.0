Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9538A6E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 21:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXdHCQYLIGBiTDDfDITlowlMMWizWJ2GathhZPaIzag=; b=KsRuj5o+F+cGhD
	wnf9GxMbgwTlRsa0gtowe8VRE24DhvxjDsYpI9hPk7XnYhzStecz48AQucIwv9D75p3sxZipz56j/
	aSUdcz2bOaKTqKwdEGef6XozjQ+TeJKldHL6o2D4HQ9bUxYkm+HEjcyFpuhxAGwRoJpOjMLrY8nt5
	PZWAQhrHiOQaL2GgEsAzed/0bA+Iokty2Yse26t2LKnf9G/84Xnca+B5JiKmDd96K1m/UJ/5uojlb
	kbY7aYpzhFWEJ6QJsHjbwolsQzQY3FweA2LaP/rSzU8cQqeykV1Kc8tsawghU20n0s0ioeHVqusW2
	aqARcex6MjDwOxa4HmYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxFj7-0005zh-3C; Mon, 12 Aug 2019 19:11:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxFis-0005zE-NA; Mon, 12 Aug 2019 19:11:15 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D96D20842;
 Mon, 12 Aug 2019 19:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565637074;
 bh=zGXxYRVN5FWM3TPyMY1MjGb5RqFeMmER7+0sGSVq3TQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bVvmCjxI+kPRG+nJNG4XkRKgxw3Tm4bRcUjOq2ildmS1J/5hfn/ngXlYQvqmCA5VO
 ftcD6Ez9A2x1hDGlfIwOKR7NScXJU1VmmojMEo32y7dszjMlrd7OiuUwAR3T4RVQCF
 JCEhrBCiHDtlJbdBgfbjP8owpJ79pzvpZTcSHDY8=
Received: by mail-qt1-f181.google.com with SMTP id j15so10358728qtl.13;
 Mon, 12 Aug 2019 12:11:14 -0700 (PDT)
X-Gm-Message-State: APjAAAUeRFkVQQe9O6Cex3zp0pQFUYaAP98D0QH4ixhQwap4njfBsTVt
 woYrtFrWE/gRzJuf9xRzXtVcS+wHxJ55uWmlCg==
X-Google-Smtp-Source: APXvYqy53vey6GYtzUmgKLgpgbiBPv+fXnb+bYVHJBev6DG0D+8uR8ZPe/236TEwvcCDWern5cLCJluC0mBiGyCQMWU=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr23691492qtq.136.1565637073361; 
 Mon, 12 Aug 2019 12:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190811230015.28349-1-justin.swartz@risingedge.co.za>
In-Reply-To: <20190811230015.28349-1-justin.swartz@risingedge.co.za>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 12 Aug 2019 13:11:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKpNgVcM-Ou7BKWv0qxvkJx3=NuSHRTHonQ-XSz-NXb1w@mail.gmail.com>
Message-ID: <CAL_JsqKpNgVcM-Ou7BKWv0qxvkJx3=NuSHRTHonQ-XSz-NXb1w@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: add device tree for Mecer Xtreme Mini S6
To: Justin Swartz <justin.swartz@risingedge.co.za>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_121114_775425_74693071 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 11, 2019 at 5:01 PM Justin Swartz
<justin.swartz@risingedge.co.za> wrote:
>
> The Mecer Xtreme Mini S6 features a Rockchip RK3229 SoC,
> 1GB DDR3 RAM, 8GB eMMC, MicroSD port, 10/100Mbps Ethernet,
> Realtek 8723BS WLAN module, 2 x USB 2.0 ports, HDMI output,
> and S/PDIF output.
>
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml          |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
>  arch/arm/boot/dts/Makefile                         |   1 +
>  arch/arm/boot/dts/rk3229-xms6.dts                  | 283 +++++++++++++++++++++
>  4 files changed, 291 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rk3229-xms6.dts

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
