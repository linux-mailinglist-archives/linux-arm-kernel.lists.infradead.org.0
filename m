Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA9AF6E10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZPC5wqWxQU1rsF8UygBIp122Nyni9lYjmJLYlINAtw=; b=EO7iayR64vuHsK
	2SoJoo0slGsrkmceGTPMjhf3w+VGRM3bivo4a/OASN+Zkz3cDeTXI7FchBfqXEdNP2MkfkA65oXGH
	ZCDuM/9L5SQ+LXKQSi1szDfg1Amtzqy5UK7eioiXb2LQmUg50wuV0CzV2e17feFIxspX2iZTPEsz5
	xs47S4gfU9s1AxLDQT806/IN3mFPHVJFQbST6qHudp03jMXqKApdjqMqSWrfRzq6rKC7uso4NsnFM
	YeZGIYMglPlQkXcpd/y2mgV/YM7/iDD0zz0ReNyTCxDIHxUoSuB5cetjc3qI6XZARLmZgxk+YPPNB
	T8O3hhpIHsyqSXR9+LFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2Do-0001B9-R8; Mon, 11 Nov 2019 05:26:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2Dd-00019q-4q
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 05:26:30 +0000
Received: by mail-pl1-x643.google.com with SMTP id w8so7331656plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 21:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=j+5DoLx/+5d+nBT588P2rdKPpi4fh8lF1dO9cEj8nag=;
 b=Id2pwHg4oT/8rPULgYGnoGFCJ/96XHV7i3So7ZiqX8FDx9xxRUtyw/bMtvMWmQ2M6C
 KZFSXVrxv62Q05jfMm9JFmCUIC4mq4fe1hC4wl8TRyF8hETO54CSz+CeM15rZ6d3/RDp
 wf34F/PGXe6ZDZPEPLXgM2BA067vDkUmtZG5A+oIMopscUboWUo5319m8R6+5+K1Net1
 JLuB2Vuoqgk8OThn3x23hOv8/QgXYFDKTomhC8DIznN9FuDgxq0Q9WmRHY5Y5HVJ5AJF
 diWZWul2JiDpSSJTY36fOyjYArnlcZwGuNan8NN8NPQz6cIrw4f+8nX9VsdMTKHDXfRT
 9dIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=j+5DoLx/+5d+nBT588P2rdKPpi4fh8lF1dO9cEj8nag=;
 b=MI5SPeo3+ekFe7HuPGKiXusf60xhJzJmzp+hr1k7kf2vfRzx4n+ecJtrOEXqmOWAEg
 nurX9Ii7417pEjqVp9fd1k8QxRoufRkLTwLjrn7BhJKpTxbw0Cm7RxqUtF/qK4NFColt
 l5fRLY25jVZpWEltOm9KSL/y3Myv4DSJYZkRlwxv7TPYOM4REja43rOP3IfUY/anQ8Ds
 5sAWnvUM8AGxqdQyaSdxIdRCOdAvoaOEX9VmmQgjEwdFqmKA+GHDuwR/cEB/9z9uzixT
 DuKFhpYurpq6hIbOIWOPflOz2g7xouHYhpgHQJ2WlTGaKiPOumxbA5yNTxeNLVm/AieE
 U6qA==
X-Gm-Message-State: APjAAAVOiwoNmN643AndRTZK8sd6cCrjCjLM6G2QzGNpAKsx+5sNZM8m
 fJ0bwKt8l22tDT0GZvz+a4sj
X-Google-Smtp-Source: APXvYqwmHEbXyu5c91D+UGBVYPGe00SdKoaGJbfYT43txJuTVOANtSTCgCHvRZXN42W57SwBlvskWQ==
X-Received: by 2002:a17:902:322:: with SMTP id
 31mr13803033pld.293.1573449988238; 
 Sun, 10 Nov 2019 21:26:28 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:6309:fffb:304b:b40d:24e5:f9a8])
 by smtp.gmail.com with ESMTPSA id x190sm14427837pfc.89.2019.11.10.21.26.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 10 Nov 2019 21:26:27 -0800 (PST)
Date: Mon, 11 Nov 2019 10:56:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Message-ID: <20191111052620.GA3858@Mani-XPS-13-9360>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
 <20191111052232.GA2842@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111052232.GA2842@Mani-XPS-13-9360>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_212629_216718_56890ED2 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 10:52:32AM +0530, Manivannan Sadhasivam wrote:
> Hi Kever,
> 
> On Mon, Nov 11, 2019 at 08:51:57AM +0800, Kever Yang wrote:
> > Add vdd_log node according to rock960 schematic V13.
> > 

Forgot to mention that rk3399-rock960.dtsi is common for both Rock960
Model A and Ficus boards. So the commit message should mention it clearly.
Otherwise people will get confused that the patch is only affecting Rock960
boards.

Thanks,
Mani

> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > ---
> > 
> >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > index c7d48d41e184..73afee257115 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > @@ -76,6 +76,18 @@
> >  		regulator-always-on;
> >  		vin-supply = <&vcc5v0_sys>;
> >  	};
> > +
> > +	vdd_log: vdd-log {
> > +		compatible = "pwm-regulator";
> > +		pwms = <&pwm2 0 25000 1>;
> > +		regulator-name = "vdd_log";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <800000>;
> > +		regulator-max-microvolt = <1400000>;
> > +		regulator-init-microvolt = <950000>;
> 
> The default value seems to be 0.9v as per both Rock960 and Ficus schematics.
> 
> Other than that,
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Thanks,
> Mani
> 
> > +		vin-supply = <&vcc_sys>;
> > +	};
> >  };
> >  
> >  &cpu_l0 {
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
