Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF781BBB2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKu9H9iYlcd4YrIPlGsKcVqxffi/D3C88FMOmmcrXPU=; b=WglK6pvYV7UcDZ
	baNoeyJkytSNp1B5Np0e2KIQqw6A/tAIfsNeJjdvmAcazjCmq2Qpj5SAm0Lrly4vtRjz3trvK6Zk7
	DrIV9WI5aNUkBc+JY9Ez4om1rKy75twN7L/ap+dvyrilla9TBXRtxBrugchMY4SL1maA5TA7wDuzH
	k/Ck5q70WafCJfH75Okwr+woSDZ69LJfkbXZfPQ7UM0GR+MUJmXIQGWQNbs+22DT9CvhkpUe4dMQN
	DnsvP3JUNA2GHDcJRrp9X78B+jcex9pvHIkfHcOdLsq6LzmJOFgq5QYcKpvZdlkAEerIVSrblqcwV
	Rr+d43E8mLw0zIXo4hMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNRO-0001TC-N0; Tue, 28 Apr 2020 10:26:14 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNRE-0001SZ-Ea
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:26:06 +0000
Received: by mail-ed1-f65.google.com with SMTP id d16so15968646edq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 03:26:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=D19EgHm/8BStTYYiX33bzJpL0gjuVR6x68nTLwLkEok=;
 b=hkaTAIs+bjUx96qmMenw7h2fzqOsTS/iKxbx6XzpdX8iBENwweL8fQ+FQPqcMDPo9z
 oiGZUabHWJPjaYJt6pKZEzvryn0zjX38EFOzW7TiX0n1noUhScoQEJksCeV7O9Yu/Ib2
 d3RzGvMD/9+ba4omsvi3pscMyUcBfT4rEoY2IwD+CwdUGBhb/Lg7meDV8hYmzCpmfHMN
 h/SjY/40TlMvYG9frA3jn7glbQcOZ6PfzH88RfmRWm28myr47ppyPsFwiWZM6DCHQNfq
 GeVpjhXU/gHX53n1wIki/DwlsEm4XTreffQta7Huy0Qmv1OVXI1DIOaJ0m2X5hzdKFPM
 WwUw==
X-Gm-Message-State: AGi0PuahVn0H440xaFTvQNgTWXDDA/SL7Tr0xvALCZ+qUbJyNekVrxDi
 4RQj6l6n8tW38gk/gq9yr5A=
X-Google-Smtp-Source: APiQypIySyRRLgxTsKOJvhiqPdeQHDwTqC6HW2bn+FZyDWntLyruBapInnwMX7MdEj+FvFYclV5ZOg==
X-Received: by 2002:a50:ec0c:: with SMTP id g12mr22967324edr.140.1588069562934; 
 Tue, 28 Apr 2020 03:26:02 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id r4sm407418ejz.28.2020.04.28.03.26.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 03:26:02 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:26:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH 09/13] arm: dts: s5pv210: Add an ADC node
Message-ID: <20200428102600.GC23963@kozik-lap>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660AAB00F5D36E2FEE22DE8A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660AAB00F5D36E2FEE22DE8A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_032604_487247_C9DD8696 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 11:36:00AM -0700, Jonathan Bakker wrote:
> The exynos-adc driver now supports the S5PV210, so add the DT
> node so that devices can use it.
> 
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> ---
>  arch/arm/boot/dts/s5pv210.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
> index 2ad642f51fd9..b3b6ad2889f9 100644
> --- a/arch/arm/boot/dts/s5pv210.dtsi
> +++ b/arch/arm/boot/dts/s5pv210.dtsi
> @@ -159,6 +159,18 @@
>  			};
>  		};
>  
> +		adc: adc@126c0000 {
> +			compatible = "samsung,s5pv210-adc";
> +			reg = <0xe1700000 0x1000>;

reg does not match the node address.

Run "make dtbs W=1" and be sure there are no new warnings.

Best regards,
Krzysztof


> +			interrupt-parent = <&vic2>;
> +			interrupts = <23>, <24>;
> +			clocks = <&clocks CLK_TSADC>;
> +			clock-names = "adc";
> +			#io-channel-cells = <1>;
> +			io-channel-ranges;
> +			status = "disabled";
> +		};
> +
>  		spi0: spi@e1300000 {
>  			compatible = "samsung,s5pv210-spi";
>  			reg = <0xe1300000 0x1000>;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
