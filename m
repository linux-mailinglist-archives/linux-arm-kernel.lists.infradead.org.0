Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3FC170F75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 05:11:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwaMKr8oahe6+tQ4MlviFI+3Aq+vitdDWxAubObdFcY=; b=YY5eegTqEMG/G8
	iZiWdiTcZ7inihHSdXcqSmMAtYfETpMXBxD+y25bAuTvP0vC5Xb1M2FOOxEgopGMd2rh+6x3Q681Y
	ia09YdNO8yITKzTp4TBnofQVlmencHtVPYXE3I91iaAjuy7HP7JvMBEuKB1Q8Q1l6LLlwfzlLSE6e
	cNQHobLOiKioTb8qYH73ihcOQwtcu3B8NJa0Sa8HsIcPTBdUmSueQan65AJGb6LkHFlCxJ1lamozE
	i6IHY8gFuJbVggHuD8jJjLQaosC+EZwYcT2TNf8AOhdT/mttmgEdmgh79yvdViPcqH+BXKVoIZNut
	+hUx+DV1guzQ3ZcBz/MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7AWO-0005fC-5L; Thu, 27 Feb 2020 04:11:36 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7AWC-0005en-At
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 04:11:25 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01R4Avj6022505
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Feb 2020 22:11:00 -0600
Message-ID: <83d7b817234f99c92272f7950129c56a58f4de54.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 6/7] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: rentao.bupt@gmail.com, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>, Stephen Boyd
 <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 27 Feb 2020 15:10:55 +1100
In-Reply-To: <20200226230346.672-7-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-7-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_201124_561764_078C6E41 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-
> endpoints"
> properties to describe supported number of vhub ports and endpoints.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>

Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>


> ---
>  No change in v2/v3/v4.
>    - It's given v4 to align with the version of the patch series.
> 
>  arch/arm/boot/dts/aspeed-g4.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi
> b/arch/arm/boot/dts/aspeed-g4.dtsi
> index 807a0fc20670..8e04303e8514 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -164,6 +164,8 @@
>  			reg = <0x1e6a0000 0x300>;
>  			interrupts = <5>;
>  			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> +			aspeed,vhub-downstream-ports = <5>;
> +			aspeed,vhub-generic-endpoints = <15>;
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pinctrl_usb2d_default>;
>  			status = "disabled";


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
