Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2863EE55B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6sD8T0ElELRea/K8hcFMZnx0/G6d6MA2P7hYR2BTVU=; b=oyHjIeMshOeia2
	i565OjQuGqz799YX1fosmRFZr1OwX6J9O/J94RnY8b9JVjg5fkUd9FbkSx2NA8D4bjjsiZ9yNWzu4
	fj/Vh24h6dm54liNesTA8VEQBRB4Ne1z+uPi38KdSB2rIoENPwmXUY/9ffvzF6IUUiUe9W6MmIApB
	kfy8eBsaxNR4YMbMqZBkbKVQAAKMyMkzPOxc3X9rRCtojaUAfPqpdLUFhy7q5wkJzVU0pEYToeWMX
	RXsbEc1MCAJsPkY05k6vgS6dpFRpDGJmwnaGZkWVsuIUKfV7Qh3grSC6+1Zk9lG2oIogC687sIzN1
	QKVORXCvOxF+lVPcNtjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6u8-0001K9-6R; Fri, 25 Oct 2019 21:13:52 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6tw-0001JG-Qu
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 21:13:42 +0000
Received: by mail-oi1-f195.google.com with SMTP id s5so2502956oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 14:13:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YsHXnqwoM7wQXF0uPaovfdPHuECAxo/T6mEqOx5c+dY=;
 b=OOyRyU3QmxJvg7x1ZaDME4WF8HbozxZmF7CGHIFiDxxHK53lDOz72EAiRb0Jvh1xT4
 VzkfCWMyDvXHedzQzOiu7BFJsZ0Zz0i6tgDycdjeH1dBEUotiuN1dAXKFokkB1LS7vTE
 /9dd1cZSdiJk50QwO0P0ebDFoyksZOoYmPAKnxc+eSVkjWuZwG3zzTaiWKRLw54OGfmY
 sVDFC+DfFrazGy1971dXXWSB8+w7evIP2bjxO+Lrbvb3g63Uv6bO8L4i4vgQ/YLlMn5u
 cULKEgB1JVLA6rwdbPOpBGXsOy1Xs8L7ppbX2RJwngPAdNoCY5hoFzq4DeCRCON48QCG
 BlfA==
X-Gm-Message-State: APjAAAWDp/MqH3/5USAeuIhA3Hlxby9P06ECLQG30ZtZnJZ2fGy0yWb1
 v2Un6GgjOtKeSlYYXM9c8w==
X-Google-Smtp-Source: APXvYqwE4WNyEIPHUmWISUbe3EXRa308MBi5x/EUd8BbYKV1jvLUEmP2vAxDgTjVnSwi+WqgYLFnXA==
X-Received: by 2002:aca:1e0e:: with SMTP id m14mr4801375oic.72.1572038019693; 
 Fri, 25 Oct 2019 14:13:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n4sm875917oic.2.2019.10.25.14.13.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:13:38 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:13:38 -0500
From: Rob Herring <robh@kernel.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v2 01/11] Documentation: dt: wireless: update wl1251 for
 sdio
Message-ID: <20191025211338.GA20249@bogus>
References: <cover.1571510481.git.hns@goldelico.com>
 <741828f69eca2a9c9a0a7e80973c91f50cc71f9b.1571510481.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <741828f69eca2a9c9a0a7e80973c91f50cc71f9b.1571510481.git.hns@goldelico.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_141340_871493_BCBE5529 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 linux-wireless@vger.kernel.org, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 linux-omap@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 John Stultz <john.stultz@linaro.org>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, letux-kernel@openphoenux.org,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 08:41:16PM +0200, H. Nikolaus Schaller wrote:
> The standard method for sdio devices connected to
> an sdio interface is to define them as a child node
> like we can see with wlcore.
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> Acked-by: Kalle Valo <kvalo@codeaurora.org>
> ---
>  .../bindings/net/wireless/ti,wl1251.txt       | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt b/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
> index bb2fcde6f7ff..88612ff29f2d 100644
> --- a/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
> +++ b/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
> @@ -35,3 +35,29 @@ Examples:
>  		ti,power-gpio = <&gpio3 23 GPIO_ACTIVE_HIGH>; /* 87 */
>  	};
>  };
> +
> +&mmc3 {
> +	vmmc-supply = <&wlan_en>;
> +
> +	bus-width = <4>;
> +	non-removable;
> +	ti,non-removable;
> +	cap-power-off-card;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc3_pins>;

None of the above are really relevant to this binding.

> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	wlan: wl1251@1 {

wifi@1

> +		compatible = "ti,wl1251";
> +
> +		reg = <1>;
> +
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;	/* GPIO_21 */
> +
> +		ti,wl1251-has-eeprom;
> +	};
> +};
> -- 
> 2.19.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
