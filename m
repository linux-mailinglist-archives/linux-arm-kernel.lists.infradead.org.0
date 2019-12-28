Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0136D12BD9F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 14:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sCAmuikBxloAHverIRkQZdSK49cDgUHnuOxBSKUf4o=; b=OFKstzYEQoncjv
	tHGC9QKE+IGLytkfSuwEUPNgC+ZQ65n7RDnZB/7zYWWWQzwIC7gan28ZcJPjjQQac7lqOh5bq/48r
	ep7P+MEqXWUk/+2o8dXoSd5LWa1qrdHuaMEV/meg4SuooBgVZDE3D82ToBGG3+X2zV5urk52ENUyW
	gOjJUUo8g+KZLtX4o5qxbvipDhsBYnoP6saa4QdZeuY/iRg8JOLdJE77HTpvHxq3aYunzD75xEicQ
	JMACgiAkuhw4swSE84sizAgDUf4twzbjTlmhkSz3u4x++f9IcVk9VVXMwzQfCmiboOqnNYtIUYoHm
	ftOTfXKwaIN7MKWZd9fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilC0L-0005jU-HR; Sat, 28 Dec 2019 13:19:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilC0B-0005j9-RU
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 13:19:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so28487558wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 05:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mROGrVXLEQzNF7njXXU2HOGRKW7Iu6ci6QJQxa/5Pug=;
 b=LljBa/7Vc+Pv+w8r0wajVxDjHPY9o1ACGA5bUuCUTKnVPF9MFXlFz7rQCXWQ9Zw2Md
 DVBJPvdjgL9fnpycXMsu6+6FOit0rpWwV3e8RBteLCmvavOmr4DI6bhs6O2Qpmlxqops
 yvu3Vbm2VxRrYmzeDsDRwqRq19f161xRoBC7QMUKUdjInj/cKgkuylPkOngboekCkcD3
 rlbxI/0un3M9QwN1xkX0HyZb1Tm7Dp2WAzJ7cad8KGd0IO4AehX9OUx52k0gHD3IijdL
 wSLcbi4jddnbmW1jg9fmcxLXo3ogZNMBlvMJagJCyexbCcBA7CjW0/aTjHgg9xBEyCj5
 UvTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mROGrVXLEQzNF7njXXU2HOGRKW7Iu6ci6QJQxa/5Pug=;
 b=bi3gdKR0W29zExxbaARwtQSlsAX1Sv07Ji90WRe/kCak6ZkrJtD6SkjHKFob3G6oAZ
 gK1E55oyEW16gAWAXRZf8ff/P7lsjCxmUYDgFrlSZvtRQlmXwrzZnXlR8lVqJmsrn0TJ
 akPTY9FtMHli3ndBGNwxilghhDB65Y2hrMrb7CdZA3w0Xm8Dj/a41kWETZK1wv2JaSIo
 rJTzfXyWkK2Ykf/I3p+How9XSLhcD2B/w282BDSiiX14apnWSrhpCV+NtqS0o0K7IZxI
 nT5FUasGygWWYg7WWOYwRW4qBxXzRM9Ht3jvPTIdmekX/wCxseGMtBNqCMmCHW4BTFe/
 UIsw==
X-Gm-Message-State: APjAAAVNxR/Nq3xHqzZ0HCsQKKOgeQdSabiAa8ei+HW3IvUMXnVUEz7B
 ROk2xobdnAtAE01C4kNKE36BexKB4R4=
X-Google-Smtp-Source: APXvYqyeZtp0u4nqd2az6FFSTsGN6tOBc76dqmqvtmVQhd7ZRlATk1x+LzDOLY39GnKg6d0zp+W0IA==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr54659377wrm.210.1577539168956; 
 Sat, 28 Dec 2019 05:19:28 -0800 (PST)
Received: from zhanggen-UX430UQ.lan ([95.179.219.143])
 by smtp.gmail.com with ESMTPSA id o16sm15264205wmc.18.2019.12.28.05.19.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 05:19:28 -0800 (PST)
Date: Sat, 28 Dec 2019 21:19:30 +0800
From: Gen Zhang <blackgod016574@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] board-dm644x-evm: fix 2 missing-check bugs in
 evm_led_setup()
Message-ID: <20191228131930.GA7214@zhanggen-UX430UQ.lan>
References: <20191227023921.GA21233@zhanggen-UX430UQ>
 <20191227160142.GW25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191227160142.GW25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_051931_914882_E6BBB51A 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (blackgod016574[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (blackgod016574[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Dec 27, 2019 at 04:01:42PM +0000, Russell King - ARM Linux admin wrote:
> On Fri, Dec 27, 2019 at 10:39:21AM +0800, Gen Zhang wrote:
> > In evm_led_setup(), the allocation result of platform_device_alloc() and 
> > platform_device_add_data() should be checked.
> > 
> > Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
> > ---
> > diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
> > index 9d87d4e..9cd2785 100644
> > --- a/arch/arm/mach-davinci/board-dm644x-evm.c
> > +++ b/arch/arm/mach-davinci/board-dm644x-evm.c
> > @@ -352,15 +352,20 @@ evm_led_setup(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
> >  	 * device unregistration ...
> >  	 */
> >  	evm_led_dev = platform_device_alloc("leds-gpio", 0);
> > -	platform_device_add_data(evm_led_dev,
> > +	if (!evm_led_dev)
> > +		return -ENOMEM;
> > +	status = platform_device_add_data(evm_led_dev,
> >  			&evm_led_data, sizeof evm_led_data);
> > +	if (status)
> > +		goto err;
> >  
> >  	evm_led_dev->dev.parent = &client->dev;
> >  	status = platform_device_add(evm_led_dev);
> > -	if (status < 0) {
> > -		platform_device_put(evm_led_dev);
> > -		evm_led_dev = NULL;
> > -	}
> > +	if (status)
> > +		goto err;
> > +err:
> > +	platform_device_put(evm_led_dev);
> > +	evm_led_dev = NULL;
> 
> Please look again at the above change very closely. You will want to
> send an updated patch.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

Thanks for your reply. You mean the if (state < 0 ) to if (state) or
anything else? Please point out directly.

Best,
Gen

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
