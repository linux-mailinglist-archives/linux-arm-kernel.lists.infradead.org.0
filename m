Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C92162DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 13:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+nyWO6q4byY+76GgA47L7JXc2Se0Y4Iv+LlkYdOg4k=; b=l9S3oS87LiUSiN
	Qhf9yBxF4utu2CX/d/sH6oql3gOsEdyldf+U+a8NaGMtanMBppZCIVmnej2ukVakryug/K/0cmIHy
	T66awgD28VGTr4y6AD+HoZLzE4+qVAG8FkMPxtMeBLXvA1hA5eb/KW4isRDGhR4QxZDSS7Ntgzc2o
	iNMpVMhuEpnWbvVs0sPxYuf9s5T/0uB1L8mq9HgMgPEwFqD+XXf6VZVBFN53tg+oyvmARkXX6Wjb3
	6a8yI4NvIJNCysnsOG6brcm116+X3tEvFoEJSWo8ZVifixlx7kHLtvbsY2kdlDX7Ui+orFbvpxUX/
	TEr4EWEbkUztD5vBnlXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyM8-0001us-QQ; Tue, 07 May 2019 11:33:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyM0-0001tm-Nt
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 11:33:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id e6so8169281pgc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 04:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sR5BpYMQqvU33+qKoi/MmdBbUlBWeD3X1bsZEIF3QFw=;
 b=fhC9+A8r0mSbiTlAYOPbaxaHR1YL8JghQMh+MjGsndpuB6jiMcbihqosl7SqrR9Bg4
 eJHhAE0+cxTlbttRzHm3WxGeN6cKlprzV5wVVJNbblxJvdhzyJQSCl7//+UbdSAf6nvg
 gCoefUxDiFmCGsr2NcvUePitEJFz5LwVkvbwB2DM6+nS1hcw6OAOZrJqlh5Rse3Glnpy
 fEdYulBRxsoqZj4BR0KKihU330+fKteuIQyFbJeIp8MY4TtIbt4iTe2vV28NjA2yAZXf
 DD2MiUAjg3Tj45FdV+s6ymLE7zzPNib9GR7zpj+3EOOWxxDbjd9L1OBHlSGsmJcO9T6D
 svAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sR5BpYMQqvU33+qKoi/MmdBbUlBWeD3X1bsZEIF3QFw=;
 b=q6TJMJwmy2Fv63Vg8LwgNSECoLyzNOWU/Z2R62YS0zQ8U6xBDCpo8qQwKCpYQOqfJ0
 y2Ol1+doL0YPWb4YPjbj5WqBYHzMlSeXGekHrR5sOuF/MUnUQ+hZo7MkWxxb1G/DZbB4
 e3y4TXHyTjub84p1fv1pUiahtwahxT4ieEYp2n2jeOAk0qGLaQ39C+SBz/LuCQnW7WbX
 EWPNz/XhXli1vSBIB9pDvyH2yEDxVXZR5LP+XmRLIWoDy6dI/TCpm9fcscZ/S0Vkes5o
 tfTzX3gpVXGalhChy8/MFHlziHA10Sb22tRy51Jbp8Cz/z5I6oiJHw1cidJ2wlUJIs4T
 0d6g==
X-Gm-Message-State: APjAAAWlAGuMC6SNsAg1p3SlXoL4cyCVxmq8UQtKFyzBG9av6BZwnKgi
 LpFpppns1XxyrBwl+421GX5IxLTBdA==
X-Google-Smtp-Source: APXvYqyAKJZP4RUcj4/+fM77Hhrfsi/pdsboySmMz+0IE4qjVjtfRycKA+OR92PXBDkgcqkej5fGkQ==
X-Received: by 2002:a63:5516:: with SMTP id j22mr36851432pgb.370.1557228826789; 
 Tue, 07 May 2019 04:33:46 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:99e:34fe:41ce:b81d:ca3c:de5])
 by smtp.gmail.com with ESMTPSA id 8sm8279543pfn.158.2019.05.07.04.33.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 04:33:46 -0700 (PDT)
Date: Tue, 7 May 2019 17:03:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Message-ID: <20190507113339.GA309@Mani-XPS-13-9360>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
 <3484838.jBNMtg6mRV@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3484838.jBNMtg6mRV@phil>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_043348_775193_B77B7A0B 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

On Tue, May 07, 2019 at 01:17:10PM +0200, Heiko Stuebner wrote:
> Am Montag, 6. Mai 2019, 14:04:57 CEST schrieb Manivannan Sadhasivam:
> > Enable SPI0 and SPI4 exposed on the Low and High speed expansion
> > connectors of Rock960.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > index 12285c51cceb..7498344d4a73 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > @@ -114,6 +114,18 @@
> >  	};
> >  };
> >  
> > +&spi0 {
> > +	/* On Low speed expansion */
> > +	label = "LS-SPI0";
> 
> where does the label property come from and what does it do?
> It's not part of the rockchip-spi / general-spi binding.
> 

It is not part of the binding but I thought it will provide the users
the information of the SPI bus as per the specification when they
look into devicetree.

If it doesn't makes sense, I can remove that!

Thanks,
Mani

> 
> Heiko
> 
> > +	status = "okay";
> > +};
> > +
> > +&spi4 {
> > +	/* On High speed expansion */
> > +	label = "HS-SPI1";
> > +	status = "okay";
> > +};
> > +
> >  &usbdrd_dwc3_0 {
> >  	dr_mode = "otg";
> >  };
> > 
> 
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
