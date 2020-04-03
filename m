Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BD919D57C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joeKtpDhRGWMjOEUB4se7gg97mwxFa5Gg8YpRRDZwAQ=; b=hdJHn+wmPZVjNU
	aFDmxnJrMNZBzl3j9+QaeFeD6i63MV4h9h+iE7uKoNySLRaJzxki+z1s8Zj7Zx0LlUyPcZhLUaqZZ
	JgI15tJpen/NSVPzCUtuM43spJDw9a5NOb3mrHR433qAq5slD8E/HscIw3s5hGpKvN1Yegc5EM2TL
	mMuIF+TOwtk+/93tjKEFXAIOBhxtPxVaJQzoEFu1IYF0W+amwabQ7iM/dHIdrfXr4VjbOv/BR0jOF
	bFcB2Owj5HlIake1QSsuOPlbJzijfIeq/8hz3/m57GEeZBbOQbQFhKSmH092WFDv04SXQh61zbpOY
	IpAT2zgENdQ3vHEGLIUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKAU-0000vZ-Pw; Fri, 03 Apr 2020 11:07:22 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKAM-0000v8-Uw
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 11:07:16 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 03 Apr 2020 20:07:13 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 966C960057;
 Fri,  3 Apr 2020 20:07:13 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 3 Apr 2020 20:07:13 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 4F8381A0E67;
 Fri,  3 Apr 2020 20:07:13 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 2DC7112013D;
 Fri,  3 Apr 2020 20:07:13 +0900 (JST)
Date: Fri, 03 Apr 2020 20:07:13 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 0/5] Add devicetree features and fixes for UniPhier SoCs
In-Reply-To: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
Message-Id: <20200403200712.7A13.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_040715_211362_65DA492D 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry for the mistake about the following changes because it was confused
with the other mail. Please wait for xdmac node patches to be reviewed until
the dt-bindings fix patch is available.

Thank you,

On Fri, 3 Apr 2020 10:43:02 +0900 <hayashi.kunihiko@socionext.com> wrote:

> This series adds new features that includes XDMAC for each SoC, ethernet
> aliases to inherit MAC address from u-boot, and stabilization for ethernet
> on PXs3 ref board.
> 
> Changes since v3:
> - dt-bindings: Exclude from this series
>   The alternative patch fixed by Yamada-san has been applied.
> - Fix size of xdmac register region
> 
> Changes since v2:
> - dt-bindings: Consolidate register description for xdmac
> - Spread the size of xdmac register region
> 
> Changes since v1:
> - dt-bindings: Remove extension register description for xdmac
> - Remove extension register area from xdmac node
> - Fix commit message for ethernet aliases
> - Remove RGMII setting for LD20 global board
> 
> These patches in v1 have already been applied:
>   ARM: dts: uniphier: Add USB3 controller nodes for Pro5
>   arm64: dts: uniphier: Enable spi node for PXs3 reference board
>   arm64: dts: uniphier: Add nodes of thermal monitor and thermal zone
>     for PXs3
>   ARM: dts: uniphier: Set SCSSI clock and reset IDs for each channel
>   arm64: dts: uniphier: Set SCSSI clock and reset IDs for each channel
> 
> Kunihiko Hayashi (5):
>   ARM: dts: uniphier: Add XDMAC node
>   arm64: dts: uniphier: Add XDMAC node
>   ARM: dts: uniphier: Add ethernet aliases
>   arm64: dts: uniphier: Add ethernet aliases
>   arm64: dts: uniphier: Stabilize Ethernet RGMII mode of PXs3 ref board
> 
>  arch/arm/boot/dts/uniphier-ld6b-ref.dts                |  1 +
>  arch/arm/boot/dts/uniphier-pro4-ace.dts                |  1 +
>  arch/arm/boot/dts/uniphier-pro4-ref.dts                |  1 +
>  arch/arm/boot/dts/uniphier-pro4-sanji.dts              |  1 +
>  arch/arm/boot/dts/uniphier-pro4.dtsi                   |  8 ++++++++
>  arch/arm/boot/dts/uniphier-pro5.dtsi                   |  8 ++++++++
>  arch/arm/boot/dts/uniphier-pxs2-gentil.dts             |  1 +
>  arch/arm/boot/dts/uniphier-pxs2-vodka.dts              |  1 +
>  arch/arm/boot/dts/uniphier-pxs2.dtsi                   |  8 ++++++++
>  arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts |  1 +
>  arch/arm64/boot/dts/socionext/uniphier-ld11-ref.dts    |  1 +
>  arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi       |  8 ++++++++
>  arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts |  1 +
>  arch/arm64/boot/dts/socionext/uniphier-ld20-ref.dts    |  1 +
>  arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi       |  8 ++++++++
>  arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts    | 18 ++++++++++++++++++
>  arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi       |  8 ++++++++
>  17 files changed, 76 insertions(+)
> 
> -- 
> 2.7.4

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
