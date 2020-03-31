Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72DC198AFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIIbSrmB2v2v07V3w7tKoyesd41y40yyZZjGXmeCQHc=; b=OvJrxvRDe810fF
	a9qnC0HVsT/sNFFcdleWYykLm8CGDJI+qM9dP6QktPJQK8A+74bKm1LelBLjLA1aNJSNAih/N9tVp
	7FHEi+W+xT3ahU1ZgTZzXQ4WrUQZdqEVTnCH1LcNaDLvw0PQlqnvtEpWnF07WZfi0X6PFwMDiddHy
	pDiROlR6R40jVKoc9Cs3x4DkEJnwbHAFw5awVKJj9LEfhZdlycu3PuWv7F8AByY/tS8qA1BNFsEKG
	bW2WT1o6DZ5WC1pNRA5aH7khHjAlbwC2xEr0GX4NOxmkH97/holaBT/x+gVuzX9+54SibpRjm4ete
	2OvifwsntJwewinF/+ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8Ej-0007Pf-6U; Tue, 31 Mar 2020 04:10:49 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8De-0005YG-Gq
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:09:44 +0000
Received: by mail-pj1-x1042.google.com with SMTP id fh8so525206pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ob7R2tyj6Le9Ag0UNt/tDhzAJi2KJtq2sjdVNkJwIEk=;
 b=j4b8WaDIvsftb0lwtK4le7R/u+VUpClHpWO56JPV3PMUz4RMn18487PRG3URvvNDt7
 5JvbIm6+qWZjhAqzT46p6S285lS+01Ila8n8so4C5U4pHYyzGNkqDKHhxXqQoWecF6Vx
 wNGnnRGA0TJgKKH7qDxOVYEvo1fkg/m56mglkQlncTUMoogBsRQizmQ517KfVUicxXWu
 kFc962zpvKQfmj0bUbyv1JtZWuDlKc2kvE0Osd4xlBamJefrQ6Kp+E2xbgGX5NvOlMlR
 J2Jskom4D0YagXX7Mhh27LCHjFZR+VQadCCVD2hF/cjgzMXCcPojTKr22H/LKIowYLn5
 JOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ob7R2tyj6Le9Ag0UNt/tDhzAJi2KJtq2sjdVNkJwIEk=;
 b=LRyI2sPcsclXdyeEsxWiZ0JXOS2uVKr9tq1X7raLGWj7b9iuC8Y3u+e5BIgpJ8k+P/
 YszkgcA2KwwlENSvVVe35r2OP7V0FmBEgdNTtqu84L3EY1Ib5QDic2IEKkwxBVe9Qvt/
 hCSmH6fx99gFXBonqNWHPyTIUdTaActgLur07POrKBAefeb/Osx/Xhi45gRbdCiGZ1LY
 l7wwshz5oz6rwNqqHhio/OuuiBNjBrnCWzGD+LbopZNbOsGY8vH/CkT2wFC+ID8Lic7v
 QmESjvnKpQpV1QauKPHuNpGAs8t98Q+leeHU+5lbBXPe1bvMJZP2u/pKfVDMRLD6xPPM
 CSMw==
X-Gm-Message-State: AGi0PuZyxjvtQ1nc0/SK9Qb7FMiDLr+uw5dSyvLO2fmZWfJYKbXwuWR7
 LeNVueXKe5sIBwK8IVr/o2P6
X-Google-Smtp-Source: APiQypLh0XhUTHvCgvzJXfbCv95toTr56iDmTAVPFVwF1XuqI/P2vEGs0oilL2j7wT2xaJ3hsnXyQg==
X-Received: by 2002:a17:90a:1a03:: with SMTP id
 3mr1625344pjk.136.1585627781350; 
 Mon, 30 Mar 2020 21:09:41 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id y9sm11891159pfo.135.2020.03.30.21.09.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:09:40 -0700 (PDT)
Date: Tue, 31 Mar 2020 09:39:35 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 22/22] ARM: dts: stm32: Rename LEDs to match
 silkscreen on AV96
Message-ID: <20200331040935.GB14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-23-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-23-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_210942_574371_A800D582 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 02:57:01AM +0200, Marek Vasut wrote:
> The LED labels do not match the silkscreen on the board, fix it.
> 

Yikes, sorry for missing this earlier.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: No change
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index b6cb3b2d8c78..4291a97cc05f 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -55,21 +55,21 @@ memory@c0000000 {
>  	led {
>  		compatible = "gpio-leds";
>  		led1 {
> -			label = "green:user1";
> +			label = "green:user0";
>  			gpios = <&gpioz 7 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "heartbeat";
>  			default-state = "off";
>  		};
>  
>  		led2 {
> -			label = "green:user2";
> +			label = "green:user1";
>  			gpios = <&gpiof 3 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "mmc0";
>  			default-state = "off";
>  		};
>  
>  		led3 {
> -			label = "green:user3";
> +			label = "green:user2";
>  			gpios = <&gpiog 0 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "mmc1";
>  			default-state = "off";
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
