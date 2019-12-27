Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAED12B5C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 17:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdSt6uThSAvybOvt5zCgg7jYNCqkbINyflucZMylYVA=; b=bQHtnzRWXA6F9O
	ciKo2GXbPhweyz8VYMXT+kNVG4lC0lPuhJVCYzwzv6aPra6nEU1yNrnmVdLvKhSkZy6hRyZa3qWSh
	j5ReTRQ8lsznilOrumKj36EKy5X5mTAiXsMHKQr6qjzfqn6neRd/5wmx+sMjqojWheJqLiLqxjwTW
	blgPSLUpObref5qaZhmoHM5gctwCd7wh+z31gcS19ROgcyIBw0oQEEe/XD2QKZwKNoI17qd0GEq7B
	mR3r77Yp3ttp51whWMOfUznjiaFxNjisOnhc+UyhqvC4dd7nhggfO47lOzCPZWWN4Hu0ZK1uzjSrk
	q3E2f0NGPNspe4+CDO8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iks3z-0007II-PZ; Fri, 27 Dec 2019 16:02:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iks3r-0007HM-2h
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 16:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oC1oWMRNSivJvaHH6O8/h96cNGNhL9U+Xzh7qNQOqwE=; b=KWOOycTeiM4eLSlZofOZDcCjb
 ZXnWKSozQ8RV3OcmKTHktUd8FSpUfMbmc+bfk4CCR0W1c1IDfzT/x3JXjikjx/XaKbnJAPSo0Ka0/
 EXG5Pm5AS6CnhCxBFbo1zVve3r6Cq69QUW/YP/NivR4wL+IjEyoazDP72+sKyO0L+KFrS4VAXLPrI
 0irnNFgsslxCSLJheD77hRnFe4svwvyRiQxLM3gEjedlae17f4oLt56uywQHGUu6RYSaT5+Ut8cHz
 9e4VkGSxeD/6Aitv1R+iG7LLyLGM/YF5PGw+/7aPw8vdPJ3uH092lX/FNz/MfLlJ4KkcB2dvR0qxC
 NTjWdsYVg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58690)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iks3d-0002RL-Ao; Fri, 27 Dec 2019 16:01:48 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iks3b-0004sG-0o; Fri, 27 Dec 2019 16:01:43 +0000
Date: Fri, 27 Dec 2019 16:01:42 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Gen Zhang <blackgod016574@gmail.com>
Subject: Re: [PATCH] board-dm644x-evm: fix 2 missing-check bugs in
 evm_led_setup()
Message-ID: <20191227160142.GW25745@shell.armlinux.org.uk>
References: <20191227023921.GA21233@zhanggen-UX430UQ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191227023921.GA21233@zhanggen-UX430UQ>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_080159_567139_F3B8C76E 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bgolaszewski@baylibre.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 27, 2019 at 10:39:21AM +0800, Gen Zhang wrote:
> In evm_led_setup(), the allocation result of platform_device_alloc() and 
> platform_device_add_data() should be checked.
> 
> Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
> ---
> diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
> index 9d87d4e..9cd2785 100644
> --- a/arch/arm/mach-davinci/board-dm644x-evm.c
> +++ b/arch/arm/mach-davinci/board-dm644x-evm.c
> @@ -352,15 +352,20 @@ evm_led_setup(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
>  	 * device unregistration ...
>  	 */
>  	evm_led_dev = platform_device_alloc("leds-gpio", 0);
> -	platform_device_add_data(evm_led_dev,
> +	if (!evm_led_dev)
> +		return -ENOMEM;
> +	status = platform_device_add_data(evm_led_dev,
>  			&evm_led_data, sizeof evm_led_data);
> +	if (status)
> +		goto err;
>  
>  	evm_led_dev->dev.parent = &client->dev;
>  	status = platform_device_add(evm_led_dev);
> -	if (status < 0) {
> -		platform_device_put(evm_led_dev);
> -		evm_led_dev = NULL;
> -	}
> +	if (status)
> +		goto err;
> +err:
> +	platform_device_put(evm_led_dev);
> +	evm_led_dev = NULL;

Please look again at the above change very closely. You will want to
send an updated patch.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
