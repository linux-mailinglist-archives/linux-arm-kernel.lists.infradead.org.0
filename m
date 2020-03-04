Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AD0179618
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 18:01:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0PFgbzDVHBeyy3oSxIVJIcOSaiTeg6+5GnP5NikE+w=; b=QxIEk3MXJht8vH
	D74cIUZM6nsEPqEBXC1uSjUJtmz8kLCLGJHBLM4y1wc8erPRkHfd1uDyj9uL18WH01qGlP8zQogHQ
	VkPH0R+DgBJlJPQ/MxDv9T+t9ZKSxGK9559I19kVOr6qAamTKuffvCtBgCV383ZXNpRh0bwNTSUof
	a6ISRO3SBW8FJQVVLxcBpMxLuhA2DUkYEsCYvCXkiL1pEzhrm7FIj7YO5iqkTEPJDBP3FOEg7KGRf
	OYW+aqdik/9LxOegqODAVRVXzS4Cic8caHYwmgiwAEfUO5EDPsbPdcIKAVA7iOnWLIfmxPjTnjk0s
	aN+0FJbFIQAYCNKI489g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9XOG-0005hq-3j; Wed, 04 Mar 2020 17:01:00 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9XO6-0005gT-QI
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 17:00:52 +0000
Received: by mail-oi1-f193.google.com with SMTP id i1so2782326oie.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 09:00:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bvUO0xB3VGYu4Z2CRkBy08hE9OAN6dg9T4shXkHV/8s=;
 b=TGzulzynFDKRipEUZkVX6hn3mnLmqv7cn5ZFS1uh8FT+5NiOTDIYo4cQFKBwvoJEIU
 Xp36FkJ0ms4yxjr50JzW2GuNH5rr6pb2ZsyyP1WH2tZz12xrFHzO49yfaYbN77Qz/ly9
 x9OMHrImMjcswuh0ek2LTuymnaYRu0VAjg3NAp9XnXcwTZvYxBcnemhJ2U13PT4c++ty
 ZFvct5Mx6pJcwCxzsgrmS/lkt4xVott9IEau5vuj7LYHlNjVYfpWwA7eGaUCzWGITSAz
 jmfIU5ujkl7SrfW2xNh/Z29lSywsgRq4XL4/SSPno4jn21IWX0UUt0VXiNqVPoo0xwYX
 Szbw==
X-Gm-Message-State: ANhLgQ0Fl1mxjaG6+jiHvNEKGlzAGM2A3juzzjzpq8mFWcI8xnTRBWmf
 C1niFmtOwGyHShOcp8F1rOpnLFU=
X-Google-Smtp-Source: ADFU+vu5jR7LujK8P5X0FKafcLM7pYgZwcvHPs+Vyd8d91tSDJ6u0F2ruymgkLi6GWrxyPaChe9Qsg==
X-Received: by 2002:aca:4a4b:: with SMTP id x72mr1141376oia.86.1583341247943; 
 Wed, 04 Mar 2020 09:00:47 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t20sm8895859oij.19.2020.03.04.09.00.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 09:00:47 -0800 (PST)
Received: (nullmailer pid 25284 invoked by uid 1000);
 Wed, 04 Mar 2020 17:00:46 -0000
Date: Wed, 4 Mar 2020 11:00:46 -0600
From: Rob Herring <robh@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv2 1/3] devicetree: bindings: exynos: Add new compatible
 for Exynos5420 dwc3 clocks support
Message-ID: <20200304170046.GA25246@bogus>
References: <20200301212019.2248-1-linux.amoon@gmail.com>
 <20200301212019.2248-2-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301212019.2248-2-linux.amoon@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_090050_855425_CEE61064 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  1 Mar 2020 21:20:16 +0000, Anand Moon wrote:
> This patch adds the new compatible string for Exynos5422 DWC3
> to support enable/disable of core and suspend clk by DWC3 driver.
> Also updated the clock names for compatible samsung,exynos5420-dwusb3.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> Previous changes:
> 	Added the missing clock name for Exynos5420 complatible
> ---
>  Documentation/devicetree/bindings/usb/exynos-usb.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
