Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C091BBA96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SS/0lMCeYFzHJRcZ2dWsvgK2AH6l7YCliq33VVDelac=; b=kTcuKFUnDp1vPw
	bs8Uw3sQczVOhn/xY3o5c7N+Akc1H8SpAbymexV348qqsA8th46vWgF/JJkoGmYu6PVGNBQPa4vuJ
	MtsihR3e267p5nJ0/OL/SdFli0in0E2+Nwobi0VVjkFfMUtAradK00GWIWgtLdsenxqRItJHA2nK1
	YB669M0Gqf4AbWcFhOMSj/eejbGkZ1HBjc5B40DO37FCBHxBg8wCw/MH03CP3syitUK1Cn0U5woXs
	SVUCqvD/jWrIE/Lzn7CMVKS2289nC7BWCOvddKyeArylgDL+VH88jKHT1LWxQFpMsFkhBo6/70wLt
	kJZMilHFT7TxmKDZyEoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN4v-0007Q9-Ow; Tue, 28 Apr 2020 10:03:01 +0000
Received: from mail-ej1-f66.google.com ([209.85.218.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN4j-0007PO-Em
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:02:51 +0000
Received: by mail-ej1-f66.google.com with SMTP id re23so16789136ejb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 03:02:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FdgTZhQz7Q5QmkJw9fgTQ4qIxRdbshIzbPzMNz/iR0Y=;
 b=ueFNJkt35YShABuzfS+YVr0D9LJ9+gb02m9IdU4Plc0q4OqmVMrN0AeGHlSfetKqTU
 3W5/C8CrHtoE7ZpCxjUK3RKBB8aqvmgW+81PdY4e0pbqHUhb7QbMxDHxIVandnbhQDf5
 RXBUD0hZXmj1gW3cjVBshFKw6uh9Mah/TbO3DVGBl7HDYIYnM0atsQJUfknKLj/y7I9V
 UHHbr4LFBeYBXVkEjstnYoOUmNF/52NAnihBcX17eDl4cdNpbX3cBeAZeMRCXeA6E0zA
 6x2SYHxIh0PuP1Twivo0R4Q56QknMWkd3LtIxkim978EvTjqWq0wDl9kBjyDnYhXwEoL
 IpPw==
X-Gm-Message-State: AGi0PubeBHTXeoMagaVexfNXT3FnyFdQzs9A/FNgIFxoy0pRi83fIFxc
 jQV0nft9hsFcLXZoMTNmids=
X-Google-Smtp-Source: APiQypLNHR35H8mMj7YM6wlGtmknjJpqsf8ucJzMlAVC6jgxX/rMDRMP53hjmGcXj1nX3rrXkSLHYQ==
X-Received: by 2002:a17:906:a39a:: with SMTP id
 k26mr22838875ejz.172.1588068166900; 
 Tue, 28 Apr 2020 03:02:46 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id ks10sm402601ejb.89.2020.04.28.03.02.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 03:02:46 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:02:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH 02/13] arm: dts: s5pv210: fascinate4g: Add sleep GPIO
 configuration
Message-ID: <20200428100244.GA23963@kozik-lap>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660532FF97089208CCEEB2AA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660532FF97089208CCEEB2AA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030249_502547_08E40043 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Sun, Apr 26, 2020 at 11:35:53AM -0700, Jonathan Bakker wrote:
> In order to minimize leakage current during sleep, set a config
> for sleep GPIOs.
> 
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> ---
>  arch/arm/boot/dts/s5pv210-fascinate4g.dts | 242 ++++++++++++++++++++++
>  1 file changed, 242 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/s5pv210-fascinate4g.dts b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
> index 07a8d9bbe5b8..94dcb9b64b9a 100644
> --- a/arch/arm/boot/dts/s5pv210-fascinate4g.dts
> +++ b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
> @@ -36,3 +36,245 @@
>  		};
>  	};
>  };
> +
> +&pinctrl0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sleep_cfg>;
> +
> +	sleep_cfg: sleep-cfg {
> +		PIN_SLP(gpa0-0, PREV, NONE);
> +		PIN_SLP(gpa0-1, PREV, NONE);
> +		PIN_SLP(gpa0-2, PREV, NONE);
> +		PIN_SLP(gpa0-3, OUT1, NONE);

I would be happy to see some reasoning why certain pins have disabled
pull down (e.g. they are not connected or you use the same configuration
as running one) and why you set them as output.

> +		PIN_SLP(gpa0-4, PREV, NONE);
> +		PIN_SLP(gpa0-5, PREV, NONE);
> +		PIN_SLP(gpa0-6, PREV, NONE);
> +		PIN_SLP(gpa0-7, PREV, NONE);
> +
> +		PIN_SLP(gpa1-0, INPUT, DOWN);
> +		PIN_SLP(gpa1-1, OUT0, NONE);
> +		PIN_SLP(gpa1-2, INPUT, DOWN);
> +		PIN_SLP(gpa1-3, OUT0, NONE);
> +
> +		PIN_SLP(gpb-0, OUT0, NONE);
> +		PIN_SLP(gpb-1, OUT1, NONE);
> +		PIN_SLP(gpb-2, OUT0, NONE);
> +		PIN_SLP(gpb-3, PREV, NONE);
> +		PIN_SLP(gpb-4, INPUT, NONE);
> +		PIN_SLP(gpb-5, PREV, NONE);
> +		PIN_SLP(gpb-6, INPUT, DOWN);
> +		PIN_SLP(gpb-7, OUT0, NONE);
> +
> +		PIN_SLP(gpc0-0, OUT0, NONE);
> +		PIN_SLP(gpc0-1, INPUT, DOWN);
> +		PIN_SLP(gpc0-2, OUT0, NONE);
> +		PIN_SLP(gpc0-3, INPUT, DOWN);
> +		PIN_SLP(gpc0-4, OUT0, NONE);
> +
> +		PIN_SLP(gpc1-0, INPUT, DOWN);
> +		PIN_SLP(gpc1-1, INPUT, DOWN);
> +		PIN_SLP(gpc1-2, INPUT, DOWN);
> +		PIN_SLP(gpc1-3, INPUT, DOWN);
> +		PIN_SLP(gpc1-4, INPUT, DOWN);
> +
> +		PIN_SLP(gpd0-0, INPUT, DOWN);
> +		PIN_SLP(gpd0-1, OUT0, NONE);
> +		PIN_SLP(gpd0-2, INPUT, DOWN);
> +		PIN_SLP(gpd0-3, INPUT, DOWN);
> +
> +		PIN_SLP(gpd1-0, INPUT, NONE);
> +		PIN_SLP(gpd1-1, INPUT, NONE);
> +		PIN_SLP(gpd1-2, INPUT, DOWN);
> +		PIN_SLP(gpd1-3, INPUT, DOWN);
> +		PIN_SLP(gpd1-4, INPUT, DOWN);
> +		PIN_SLP(gpd1-5, INPUT, DOWN);
> +
> +		PIN_SLP(gpe0-0, INPUT, DOWN);
> +		PIN_SLP(gpe0-1, INPUT, DOWN);
> +		PIN_SLP(gpe0-2, INPUT, DOWN);
> +		PIN_SLP(gpe0-3, INPUT, DOWN);
> +		PIN_SLP(gpe0-4, INPUT, DOWN);
> +		PIN_SLP(gpe0-5, INPUT, DOWN);
> +		PIN_SLP(gpe0-6, INPUT, DOWN);
> +		PIN_SLP(gpe0-7, INPUT, DOWN);
> +
> +		PIN_SLP(gpe1-0, INPUT, DOWN);
> +		PIN_SLP(gpe1-1, INPUT, DOWN);
> +		PIN_SLP(gpe1-2, INPUT, DOWN);
> +		PIN_SLP(gpe1-3, OUT0, NONE);
> +		PIN_SLP(gpe1-4, INPUT, DOWN);
> +
> +		PIN_SLP(gpf0-0, OUT0, NONE);
> +		PIN_SLP(gpf0-1, OUT0, NONE);
> +		PIN_SLP(gpf0-2, OUT0, NONE);
> +		PIN_SLP(gpf0-3, OUT0, NONE);
> +		PIN_SLP(gpf0-4, OUT0, NONE);
> +		PIN_SLP(gpf0-5, OUT0, NONE);
> +		PIN_SLP(gpf0-6, OUT0, NONE);
> +		PIN_SLP(gpf0-7, OUT0, NONE);
> +
> +		PIN_SLP(gpf1-0, OUT0, NONE);
> +		PIN_SLP(gpf1-1, OUT0, NONE);
> +		PIN_SLP(gpf1-2, OUT0, NONE);
> +		PIN_SLP(gpf1-3, OUT0, NONE);
> +		PIN_SLP(gpf1-4, OUT0, NONE);
> +		PIN_SLP(gpf1-5, OUT0, NONE);
> +		PIN_SLP(gpf1-6, OUT0, NONE);
> +		PIN_SLP(gpf1-7, OUT0, NONE);
> +
> +		PIN_SLP(gpf2-0, OUT0, NONE);
> +		PIN_SLP(gpf2-1, OUT0, NONE);
> +		PIN_SLP(gpf2-2, OUT0, NONE);
> +		PIN_SLP(gpf2-3, OUT0, NONE);
> +		PIN_SLP(gpf2-4, OUT0, NONE);
> +		PIN_SLP(gpf2-5, OUT0, NONE);
> +		PIN_SLP(gpf2-6, OUT0, NONE);
> +		PIN_SLP(gpf2-7, OUT0, NONE);
> +
> +		PIN_SLP(gpf3-0, OUT0, NONE);
> +		PIN_SLP(gpf3-1, OUT0, NONE);
> +		PIN_SLP(gpf3-2, OUT0, NONE);
> +		PIN_SLP(gpf3-3, OUT0, NONE);
> +		PIN_SLP(gpf3-4, PREV, NONE);
> +		PIN_SLP(gpf3-5, INPUT, DOWN);
> +
> +		PIN_SLP(gpg0-0, INPUT, DOWN);
> +		PIN_SLP(gpg0-1, INPUT, DOWN);
> +		PIN_SLP(gpg0-2, INPUT, NONE);
> +		PIN_SLP(gpg0-3, INPUT, DOWN);
> +		PIN_SLP(gpg0-4, INPUT, DOWN);
> +		PIN_SLP(gpg0-5, INPUT, DOWN);
> +		PIN_SLP(gpg0-6, INPUT, DOWN);
> +
> +		PIN_SLP(gpg1-0, OUT0, NONE);
> +		PIN_SLP(gpg1-1, OUT1, NONE);
> +		PIN_SLP(gpg1-2, PREV, NONE);
> +		PIN_SLP(gpg1-3, OUT1, NONE);
> +		PIN_SLP(gpg1-4, OUT1, NONE);
> +		PIN_SLP(gpg1-5, OUT1, NONE);
> +		PIN_SLP(gpg1-6, OUT1, NONE);
> +
> +		PIN_SLP(gpg2-0, OUT0, NONE);
> +		PIN_SLP(gpg2-1, OUT0, NONE);
> +		PIN_SLP(gpg2-2, INPUT, NONE);
> +		PIN_SLP(gpg2-3, OUT0, NONE);
> +		PIN_SLP(gpg2-4, OUT0, NONE);
> +		PIN_SLP(gpg2-5, OUT0, NONE);
> +		PIN_SLP(gpg2-6, OUT0, NONE);
> +
> +		PIN_SLP(gpg3-0, PREV, UP);
> +		PIN_SLP(gpg3-1, PREV, UP);
> +		PIN_SLP(gpg3-2, INPUT, NONE);
> +		PIN_SLP(gpg3-3, INPUT, DOWN);
> +		PIN_SLP(gpg3-4, OUT0, NONE);
> +		PIN_SLP(gpg3-5, OUT0, NONE);
> +		PIN_SLP(gpg3-6, INPUT, DOWN);
> +
> +		PIN_SLP(gpi-0, PREV, NONE);

No such name. Did you mean gpgi?


> +		PIN_SLP(gpi-1, INPUT, DOWN);
> +		PIN_SLP(gpi-2, PREV, NONE);
> +		PIN_SLP(gpi-3, PREV, NONE);
> +		PIN_SLP(gpi-4, PREV, NONE);
> +		PIN_SLP(gpi-5, INPUT, DOWN);
> +		PIN_SLP(gpi-6, INPUT, DOWN);
> +
> +		PIN_SLP(gpj0-0, INPUT, NONE);
> +		PIN_SLP(gpj0-1, INPUT, NONE);
> +		PIN_SLP(gpj0-2, INPUT, NONE);
> +		PIN_SLP(gpj0-3, INPUT, NONE);
> +		PIN_SLP(gpj0-4, INPUT, NONE);
> +		PIN_SLP(gpj0-5, INPUT, DOWN);
> +		PIN_SLP(gpj0-6, OUT0, NONE);
> +		PIN_SLP(gpj0-7, INPUT, NONE);
> +
> +		PIN_SLP(gpj1-0, OUT1, NONE);
> +		PIN_SLP(gpj1-1, OUT0, NONE);
> +		PIN_SLP(gpj1-2, INPUT, DOWN);
> +		PIN_SLP(gpj1-3, PREV, NONE);
> +		PIN_SLP(gpj1-4, PREV, NONE);
> +		PIN_SLP(gpj1-5, OUT0, NONE);
> +
> +		PIN_SLP(gpj2-0, INPUT, DOWN);
> +		PIN_SLP(gpj2-1, INPUT, DOWN);
> +		PIN_SLP(gpj2-2, OUT0, NONE);
> +		PIN_SLP(gpj2-3, INPUT, DOWN);
> +		PIN_SLP(gpj2-4, INPUT, DOWN);
> +		PIN_SLP(gpj2-5, PREV, NONE);
> +		PIN_SLP(gpj2-6, PREV, NONE);
> +		PIN_SLP(gpj2-7, INPUT, DOWN);
> +
> +		PIN_SLP(gpj3-0, INPUT, NONE);
> +		PIN_SLP(gpj3-1, INPUT, NONE);
> +		PIN_SLP(gpj3-2, OUT0, NONE);
> +		PIN_SLP(gpj3-3, INPUT, DOWN);
> +		PIN_SLP(gpj3-4, INPUT, NONE);
> +		PIN_SLP(gpj3-5, INPUT, NONE);
> +		PIN_SLP(gpj3-6, INPUT, NONE);
> +		PIN_SLP(gpj3-7, INPUT, NONE);
> +
> +		PIN_SLP(gpj4-0, INPUT, NONE);
> +		PIN_SLP(gpj4-1, INPUT, DOWN);
> +		PIN_SLP(gpj4-2, PREV, NONE);
> +		PIN_SLP(gpj4-3, INPUT, NONE);
> +		PIN_SLP(gpj4-4, INPUT, DOWN);
> +
> +		PIN_SLP(mp01-0, OUT1, NONE);
> +		PIN_SLP(mp01-1, OUT0, NONE);
> +		PIN_SLP(mp01-2, INPUT, DOWN);
> +		PIN_SLP(mp01-3, INPUT, DOWN);
> +		PIN_SLP(mp01-4, OUT1, NONE);
> +		PIN_SLP(mp01-5, INPUT, DOWN);
> +		PIN_SLP(mp01-6, INPUT, DOWN);
> +		PIN_SLP(mp01-7, INPUT, DOWN);
> +
> +		PIN_SLP(mp02-0, INPUT, DOWN);
> +		PIN_SLP(mp02-1, INPUT, DOWN);
> +		PIN_SLP(mp02-2, INPUT, NONE);
> +		PIN_SLP(mp02-3, INPUT, DOWN);
> +
> +		PIN_SLP(mp03-0, INPUT, DOWN);
> +		PIN_SLP(mp03-1, INPUT, DOWN);
> +		PIN_SLP(mp03-2, OUT1, NONE);
> +		PIN_SLP(mp03-3, OUT0, NONE);
> +		PIN_SLP(mp03-4, INPUT, NONE);
> +		PIN_SLP(mp03-5, OUT0, NONE);
> +		PIN_SLP(mp03-6, INPUT, DOWN);
> +		PIN_SLP(mp03-7, INPUT, DOWN);
> +
> +		PIN_SLP(mp04-0, INPUT, DOWN);
> +		PIN_SLP(mp04-1, OUT0, NONE);
> +		PIN_SLP(mp04-2, INPUT, DOWN);
> +		PIN_SLP(mp04-3, OUT0, NONE);
> +		PIN_SLP(mp04-4, INPUT, DOWN);
> +		PIN_SLP(mp04-5, INPUT, DOWN);
> +		PIN_SLP(mp04-6, OUT0, NONE);
> +		PIN_SLP(mp04-7, INPUT, DOWN);
> +
> +		PIN_SLP(mp05-0, INPUT, NONE);
> +		PIN_SLP(mp05-1, INPUT, NONE);
> +		PIN_SLP(mp05-2, INPUT, NONE);
> +		PIN_SLP(mp05-3, INPUT, NONE);
> +		PIN_SLP(mp05-4, INPUT, DOWN);
> +		PIN_SLP(mp05-5, OUT0, NONE);
> +		PIN_SLP(mp05-6, INPUT, DOWN);
> +		PIN_SLP(mp05-7, PREV, NONE);
> +
> +		PIN_SLP(mp06-0, INPUT, DOWN);
> +		PIN_SLP(mp06-1, INPUT, DOWN);
> +		PIN_SLP(mp06-2, INPUT, DOWN);
> +		PIN_SLP(mp06-3, INPUT, DOWN);
> +		PIN_SLP(mp06-4, INPUT, DOWN);
> +		PIN_SLP(mp06-5, INPUT, DOWN);
> +		PIN_SLP(mp06-6, INPUT, DOWN);
> +		PIN_SLP(mp06-7, INPUT, DOWN);
> +
> +		PIN_SLP(mp07-0, INPUT, DOWN);
> +		PIN_SLP(mp07-1, INPUT, DOWN);
> +		PIN_SLP(mp07-2, INPUT, DOWN);
> +		PIN_SLP(mp07-3, INPUT, DOWN);
> +		PIN_SLP(mp07-4, INPUT, DOWN);
> +		PIN_SLP(mp07-5, INPUT, DOWN);
> +		PIN_SLP(mp07-6, INPUT, DOWN);
> +		PIN_SLP(mp07-7, INPUT, DOWN);
> +	};

What about gphX?

Best regards,
Krzysztof

> +};
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
