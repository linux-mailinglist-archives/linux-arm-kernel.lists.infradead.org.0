Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46BA11ED95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:11:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Poob3/mFh0mwgY2c5WgBL1P5ZoW55XoBWt8AGml87s=; b=jmVCOuIQgg1tOtKoikkh8A9K4
	8o5N3g2vV3s+9g84fbu810F5XdwRUyx3HzL93zNC/CnY3Wx+iLSX05XpkqEmigpNWatQp+rPTCsGi
	SpxM9+mZgYkGRhxCYQ1gahJXoOmCepNpzYdRFAxZEAJ0Z5WT5YWQonaMU1sG0WRf53gDE8IeBQWlo
	2KKHdce1RTJauTxThPgBJt37kMnIj/egxUZ4uNuuC+w6YjoOHfu976fUspRBWktFKJnuHv1dNhC8y
	CIbJo3fkLBXYHOQpJ1OXwqdF7cW8YSY0SB2pPbbDpHb0ja1BJS3NpTIij0iKF42TwhlXIsK/FDgQH
	zjzArYbtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ift9w-0007bC-UR; Fri, 13 Dec 2019 22:11:40 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ift9o-0007aa-VL
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 22:11:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id 2so2174542pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 14:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C+QP07g8UnbrKTlv69LJ7GDz3+K6EqCsH4JenbUk3Kw=;
 b=VVsL5OLBC828OXXGuWkPmeOqE6dl9B1vqgwII2zwTEEOps5suW7Ta8Tre5nO/z2k5S
 KEjA30YWoBPYuMq0CR/TSXZ2C2fut9PjKHddKlOkU9HcshazJrg1NBvXowZX6gVgzA3w
 ye8MHrRio7y68YvHSTR5QBXkxAuT7T+170DLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C+QP07g8UnbrKTlv69LJ7GDz3+K6EqCsH4JenbUk3Kw=;
 b=nIoEyFMUYrrNWuh9ND1aU6WBE1pE5xaEGuxp5x9QixkC3iKTi3spe2SCIqd8+JtQCM
 8DqR6NNxJi/sQnBMn8ZjZgoRHGvd1r3nAn0hbNSBAnbqNRic4SJv6aLLAONDaRjdiKAv
 cOrrKzVpYRv72R3WzCsD5TMi/0nyChRszuuYaciCF/J0/u0gOveXeHALI/X5NmCqDfAT
 s1i6JZiH7KXj/WtexSgRF+1xGD8WTRE4vLSVea27OJRypJHXNQWBSPkk723S1vhxyDK5
 jRPlFIX1rXt5sb2A9GhAGqOIoqwq+tj2tgGmwns78x0bdZavqFo9tSgZevUmCPOxETXW
 d7Sw==
X-Gm-Message-State: APjAAAVv8fD6mXof6ud8OEdNqw2b7ZJ2GXptwQd7jatWutq68nDBK+N5
 zTwqdp7aex9eIFFF/dB/4oFDmw==
X-Google-Smtp-Source: APXvYqwIZlSLDSybVYp++8LzZ91boGCACbVxcoAb9anmR3Fz0rOVecZifUt5x7t7Risgbey7DBgAcQ==
X-Received: by 2002:aa7:8f05:: with SMTP id x5mr1979774pfr.86.1576275089947;
 Fri, 13 Dec 2019 14:11:29 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id d38sm10991179pgd.59.2019.12.13.14.11.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Dec 2019 14:11:28 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: NSP: Use hardware I2C for BCM958625HR
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
References: <20191213195102.23789-1-f.fainelli@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <667acf12-cff3-8955-8849-b99db50375bb@broadcom.com>
Date: Fri, 13 Dec 2019 14:11:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191213195102.23789-1-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_141133_012153_41B83FCC 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-12-13 11:51 a.m., Florian Fainelli wrote:
> Now that the i2c-bcm-iproc driver has been fixed to permit reading more
> than 63 bytes in a single transaction with commit fd01eecdf959 ("i2c:
> iproc: Fix i2c master read more than 63 bytes") we no longer need to
> bitbang i2c over GPIOs which was necessary before to allow the
> PHYLINK/SFP subsystems to read SFP modules.
> 

This is good to hear!

> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>   arch/arm/boot/dts/bcm958625hr.dts | 15 +++++----------
>   1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm958625hr.dts b/arch/arm/boot/dts/bcm958625hr.dts
> index a2c9de35ddfb..536fb24f38bb 100644
> --- a/arch/arm/boot/dts/bcm958625hr.dts
> +++ b/arch/arm/boot/dts/bcm958625hr.dts
> @@ -55,18 +55,9 @@
>   		priority = <200>;
>   	};
>   
> -	/* Hardware I2C block cannot do more than 63 bytes per transfer,
> -	 * which would prevent reading from a SFP's EEPROM (256 byte).
> -	 */
> -	i2c1: i2c {
> -		compatible = "i2c-gpio";
> -		sda-gpios = <&gpioa 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> -		scl-gpios = <&gpioa 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> -	};
> -

So I suppose GPIO 4 and 5 from the 'gpioa' controller are tied to the 
same SCL/SDA pins from i2c0 and they are internally muxed, right?

Is the mux to GPIO done automatically when pins are configured as GPIO, 
and therefore you don't require any additional changes to pinmux to make 
this work, after changing it back to use real I2C0 block below?

>   	sfp: sfp {
>   		compatible = "sff,sfp";
> -		i2c-bus = <&i2c1>;
> +		i2c-bus = <&i2c0>;
>   		mod-def0-gpios = <&gpioa 28 GPIO_ACTIVE_LOW>;
>   		los-gpios = <&gpioa 24 GPIO_ACTIVE_HIGH>;
>   		tx-fault-gpios = <&gpioa 30 GPIO_ACTIVE_HIGH>;
> @@ -74,6 +65,10 @@
>   	};
>   };
>   
> +&i2c0 {
> +	status = "okay";
> +};
> +
>   &amac0 {
>   	status = "okay";
>   };
> 

Change looks good to me.

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

Thanks,

Ray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
