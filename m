Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A16A5198B5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSUC/oDvx7aiBYPtPL99YMiAJS8xnbbaQqKyUWlGPEE=; b=qQuMOnAYHch3fo
	1tshyRP0rKVCoxQ969hrYpPpvp6/J3oLdF0CvRcPNi3Y2Yj1DYKP4gDhpwM562DoqJc5lPIpp5B+x
	GA9mobG9g37VdD14A24jfeQjmK1WPR2wea1GLkWTYnwrVu1C8AMyX7z3VAbugUCmda3Ij1xvibooo
	N0//Q/ZrWeIsvL9hwjbGkIhwo2T5t59cOv7kJTLLGo12YGitYuDYnTHWKWFGgjIoT4VZxT7COumgu
	DPdAnZMi/dxf1WIYeyAVwuyGnT1BQ1aqxzICV1O/C9qzb21Im1mxq8syk/m+Gt+UgsEv0z3hFRTVb
	r7g+EpnvUA9xU9FdJNQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8dv-00015d-1U; Tue, 31 Mar 2020 04:36:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8dk-00015K-7m
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:36:41 +0000
Received: by mail-pg1-x544.google.com with SMTP id x7so9778704pgh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZePJ6gF3l6jA5xPHqluqpOczdHl6/t615VhrfHAgMe4=;
 b=Uifxm67MlSIdTzbTDENp/is6Uhp9Fv1gHIUuCvDde1wMd5t5sjX4lWes0EFOJcfPxR
 woVMa2yKrqMD1KXLh9e3rcy9j+75qoJ15erxtOM5zkn0ZkbrqNdouNo96qc03j9b8gIT
 Bab2JZ7grhxPjf5tD4eeglhwKpLkTp2h10oqt81t6cyx5CRPfXBWkZ1dBFhqewphwqBS
 s/03Pgb+4arRtZAiv2um5UUPeMtrlxcVI8B6cXgjz1wZtpDJPF0n2YDk0FpOBv9nGIzr
 RwVBXPTPJ/ZPHxS7o6woON2rH8nqMpz1xGW+XmBivUvdgN8m6UCuGxSoWzx5eODRPO88
 ljMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZePJ6gF3l6jA5xPHqluqpOczdHl6/t615VhrfHAgMe4=;
 b=gyUCYq0i8hrr6IsyfEZoYoFbHAZb5hDpuqCQtu4BiTHUj92rOu/l/ZlBDJ2XfiZBWx
 Cgx9dPuvPRNxg+6A2pHVPp6OaWbQDu/kCmJ4fmgU/wBr9nLdGPRw5SgnwZZQo5Pmo6zw
 bOgW0c4eXtN6oBuLXJfECb8Vfgi//eXbPqgHmU3/hMxESoADOR0Yj7TYrFUzn0N7IOTj
 7cAqzjG/SBezj/S+OoZxC5KyaBo3rKgl3/SSWRO+0PQq+X1Ndkj9uqoNmMBbUGtwhCYV
 9GMFl6cwKcgCHFE3+v8PHZOhCp/0bQ6004XulcK75unA9ql9IwiBh3oxp5Z/gF9P7j5m
 OD+w==
X-Gm-Message-State: ANhLgQ2yA94TeOfxqe+Gjc9fnB3bsqtyRzO0vgI4Nq+FUKvjaszJN4eR
 TP26yDMW+0ggqABIooRL5D29
X-Google-Smtp-Source: ADFU+vuABsMzcs+3bgdTq7M7oj4+j90hTyn6BzihSaf9D4S6Qt/+7ZRsgYisjIgTuC8qTFyZDhQSoA==
X-Received: by 2002:a63:ea4e:: with SMTP id l14mr15741062pgk.431.1585629399496; 
 Mon, 30 Mar 2020 21:36:39 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id e7sm11476211pfj.97.2020.03.30.21.36.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:36:38 -0700 (PDT)
Date: Tue, 31 Mar 2020 10:06:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 07/22] ARM: dts: stm32: Add alternate pinmux for
 SDMMC2 pins 4-7
Message-ID: <20200331043632.GI14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-8-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-8-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_213640_291357_433A8F84 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

On Tue, Mar 31, 2020 at 02:56:46AM +0200, Marek Vasut wrote:
> Add another mux option for SDMMC2 pins 4..7, this is used on AV96 board.
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
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index 8ac534c5bdf6..ec3621e0ff08 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -1062,6 +1062,27 @@ pins {
>  		};
>  	};
>  
> +	sdmmc2_d47_pins_b: sdmmc2-d47-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
> +				 <STM32_PINMUX('A', 15, AF9)>, /* SDMMC2_D5 */
> +				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
> +				 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
> +			slew-rate = <1>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	sdmmc2_d47_sleep_pins_b: sdmmc2-d47-sleep-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
> +				 <STM32_PINMUX('A', 15, ANALOG)>, /* SDMMC2_D5 */
> +				 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
> +				 <STM32_PINMUX('C', 7, ANALOG)>; /* SDMMC2_D7 */
> +		};
> +	};
> +
>  	sdmmc3_b4_pins_a: sdmmc3-b4-0 {
>  		pins1 {
>  			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
