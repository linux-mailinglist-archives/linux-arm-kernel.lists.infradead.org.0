Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B39198C62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 08:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anHyl9KkomG/e8T9m70Q9o8Bd8oUMqzV9G/S5VlLcHA=; b=Wct5+fwLxMbhuk
	LaBKQhNPiqQ3rEcoxGS8NH8XNlZRf93kMI9HJZihgsY1tH40FrzjbPaU2YldcYecrTW4oS6s0+BIy
	tjeQJnOBVm9dzm8M7KCAYLBS4rF9LqEYftInFdEmCByZVmy/noPS86mi5CRtUorsP8uTE4rqbq6mJ
	r7OI4bKITayTdQVjY8RsaYyp2FoFxvcL7u/+dRVJytmqIMNG6ljozul9rQH93Rjl9AD6J/+BUzo4D
	IY7TGaGO/wZwqzsMhMBDbXJZ1lhawEZuwY3hc5eYG11IV+cvppKfsS0kp5CJ5+Hk21NBuPJ0I+Zej
	J5iEQqmZTdLcm7Oglffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAUX-0001oK-88; Tue, 31 Mar 2020 06:35:17 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAUM-0001AG-C7
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 06:35:08 +0000
Received: by mail-pj1-x1043.google.com with SMTP id v13so662468pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 23:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=P4TjTEWn3ck8x5s4IcpItd1LhZEtYHKZMU09E6GN1j0=;
 b=C4GaVpvEJRwygIyccMeRL35V0FN8wSGmapRh+R8nqP1b9v+NKPKSaAxhaqAG6TddEI
 MQS/IaakuP1sBB1mDwSuoswqLqSJ1jb8NvHi6ilFma/Kgv+e0t9G0hR6dm74ShJuve7c
 JuNLlxRmxRgcbb0iFEk2FrvlNlnB3GMAMJ1QWbm4QzAL25W6WdPazrJhVljnbNH1vK+d
 qsfKhE62EHUGHJHtHuncyvaLQhyKcNEEVsTTPxtjLhW+cXQzVo5Yh28VYidrq2CScpW3
 drve9Ocy7gLxa3uJhen6/FRxwz5Yk35D2DqBrOUZgpO7acMtjQ0jiwWKOFCReiw3IJBu
 Aw5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P4TjTEWn3ck8x5s4IcpItd1LhZEtYHKZMU09E6GN1j0=;
 b=R5olGDI0ii7Y8nAs6/9nOGzJQmRRwH9NTJSajgWUwcc9t4DrYAuMucBautF3/tOg3f
 vIBSoPWv/ay9gvE+9sFx9tnmtpncBbfIfeaagiOPqoqJ7aMKJ2kqMniGqBomUX+E9yXq
 LiCTKoiktA8E3pIyHlpTFJQ6E+yJh1saHfH6ep9l2/qnnaDFI9H9dA39awPgeI/vIlEJ
 EBzPJhJLzn/9tYKWE97vlmrXGxpSXlakBym3t1ABOHXC+jDVo6NYXjAzQOevRLvVDyl2
 fDuPpr9L4jeltxzKNxumY5cun2uB/7dxdfLO92Yu1Gdrb6CMBVXHWxrZRDe05c+cBAD5
 tlHA==
X-Gm-Message-State: ANhLgQ3QooWkb5CXBX/T8TGrU1CHWPY+4vRzuz8R3gKe9PmBl7Vx4HLf
 cF6EbDSGSIIfVSo6+YCX6AP0
X-Google-Smtp-Source: ADFU+vukxyUjWn7YY1yPGxQIcb2AMQPk/vqyb9dJz476TRLfSPnRAU4SpTqzmVeYPO5OvIgxIA3Wcg==
X-Received: by 2002:a17:902:9a42:: with SMTP id
 x2mr17022371plv.194.1585636505008; 
 Mon, 30 Mar 2020 23:35:05 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id q43sm1062783pjc.40.2020.03.30.23.35.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 23:35:04 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:04:57 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 12/22] ARM: dts: stm32: Add configuration EEPROM on AV96
Message-ID: <20200331063457.GA17400@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-13-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-13-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_233506_603264_1E378975 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

On Tue, Mar 31, 2020 at 02:56:51AM +0200, Marek Vasut wrote:
> The board has an EEPROM on the same I2C bus as PMIC, at address 0x53.
> The EEPROM contains the board MAC address.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

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
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index de347453db6c..3dfc51f65709 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -302,6 +302,12 @@ watchdog {
>  			status = "disabled";
>  		};
>  	};
> +
> +	eeprom@53 {
> +		compatible = "atmel,24c02";
> +		reg = <0x53>;
> +		pagesize = <16>;
> +	};
>  };
>  
>  &iwdg2 {
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
