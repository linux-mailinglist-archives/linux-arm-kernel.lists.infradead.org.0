Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BF8166B98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 01:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1dxPhhEAO82ugvvcBe8Y7B/JdxGFdXDrkOQJX99VVg=; b=enB+oeQMnXiI6L
	Y/XCtfw5fJvT6f1bwJr9PiWbyVPUHIgQLcJAPXnjXFoNTCsBHENsR0jmED14xKGvQdCMXXsV+xoNK
	MwWmrlKdEe0gU/GQK5WDlvN4gt3yxrmqoquLeHog2BChxqZ7pBK27o2wLiArVERipOfETEYzD8b8m
	xh1GVpYKCj2Wu/obFWTqexSiPqpJMfD04Ci0/Sqq+uEpdpjH7Ix0V0EpTRadGFY9F+7HnnIpxzMFw
	f4Zs4rtOf4tTxCmLl47DXExBpIpjWGfj3m4+qjcPaC44F9mPgO3OImuQhwMycidx8fk4ganDMpGcu
	c7y9cuUPluU6jKvYKAAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wAE-0005TG-54; Fri, 21 Feb 2020 00:27:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wA4-0005Sv-FA
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 00:27:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id i6so276219pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 16:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vlf9e8PCxMy8eGHAA66JnCJwWWqoU2+bIGR18Xk5wUE=;
 b=Mk0CLeyDzct1sX63axT7hMDuzVKps8CcPRH1gOBCgnC7dn6oGylada1Aq+d2q80tY0
 IsrTO0zoWHUIkV7J+5At6YZmXgmlXtk7b3/Atb4YkT3gjxHVOJD4X11a9gW3J9xogMmC
 yZBgYo6tX7Y4rEeYV94pJ3gMaQvTCMue/PkSOzNkDi3wVYc0Imdo+gDWx9lys6yorXP2
 d6/f8BRHjs4lhqKHRWX2KYa9vABy7PeVZWqGP83q3chVv32+JaUjuUhP7LbrHgI0eWz2
 lb7i9Cbef+4fPYScbvO2rLsq4RJVaRPY/sle1TzfSAEKVlNCVpgcPl4xE/r0AtBWBNaB
 ZYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vlf9e8PCxMy8eGHAA66JnCJwWWqoU2+bIGR18Xk5wUE=;
 b=EMfgGoXn/TsZh5I6HTUMxlzjf11UliKX5rvCbGqfKfKkf56/3DwVN/bkc45l1wGMfi
 vcHrtYVYspzzLpEbX++syFYF29e9ID9I/WRDJXl1rx4gDG1f//DofvHb0ZJZ7hfyAjcW
 gl+RQf4aeaR0JTGn8WkVVYENbdyBrzmHZJEGHmugL9B4e+N3SbXpeVz38HQXwo29AhT2
 1sXUla3eV7ItSuaGPOCfMTn5nQDboCbB4rQop4RcX0CUX2KPrumhoasPSmPJ+7wzGzrm
 JXDgqShIm+oegazhyRuvlS6PSzBI21SYkHkw1vH9KlnCOfzKiDvqJ+1E+C5Z7iHPp+za
 DePg==
X-Gm-Message-State: APjAAAX+imHttAAUe0BiClypzUw2AIsP1VTcL/JwScLw9zohQhkuV/SS
 3sp5+oO3+W5M01haPjxm7G0=
X-Google-Smtp-Source: APXvYqyeVIYTi7VwppjFDqFRf+PGuo3qQ+FGi2uyU11/sFnMcwObMpN+4M+7gA1IAJ8rt9kz3zp3MA==
X-Received: by 2002:a62:1883:: with SMTP id 125mr33901467pfy.166.1582244839582; 
 Thu, 20 Feb 2020 16:27:19 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::6:8f30])
 by smtp.gmail.com with ESMTPSA id fh24sm535479pjb.24.2020.02.20.16.27.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 16:27:19 -0800 (PST)
Date: Thu, 20 Feb 2020 16:27:16 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: Re: [PATCH v3 0/5] aspeed-g6: enable usb support
Message-ID: <20200221002715.GC7815@taoren-ubuntu-R90MNF91>
References: <20200218031315.562-1-rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218031315.562-1-rentao.bupt@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_162720_509383_73A275D2 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ben,

Could you provide some comments on this patch series while I'm working on
the other patch set (for vhub descriptors and DT binding document)?


Cheers,

Tao

On Mon, Feb 17, 2020 at 07:13:10PM -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> The patch series aims at enabling USB Host and Gadget support on AST2600
> platforms.
> 
> Patch #1 replaces hardcoded vhub port/endpoint number with device tree
> properties, so that it's more convenient to add support for ast2600-vhub
> which provides more downstream ports and endpoints.
> 
> Patch #2 enables ast2600 support in aspeed-vhub usb gadget driver.
> 
> Patch #3 adds USB devices and according pin groups in aspeed-g6 dtsi.
> 
> Patch #4 and #5 add vhub port/endpoint properties into aspeed-g4 and
> aspeed-g5 dtsi.
> 
> Tao Ren (5):
>   usb: gadget: aspeed: read vhub properties from device tree
>   usb: gadget: aspeed: add ast2600 vhub support
>   ARM: dts: aspeed-g6: add usb functions
>   ARM: dts: aspeed-g5: add vhub port and endpoint properties
>   ARM: dts: aspeed-g4: add vhub port and endpoint properties
> 
>  arch/arm/boot/dts/aspeed-g4.dtsi           |  2 +
>  arch/arm/boot/dts/aspeed-g5.dtsi           |  2 +
>  arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi   | 25 +++++++
>  arch/arm/boot/dts/aspeed-g6.dtsi           | 45 ++++++++++++
>  drivers/usb/gadget/udc/aspeed-vhub/Kconfig |  4 +-
>  drivers/usb/gadget/udc/aspeed-vhub/core.c  | 79 +++++++++++++++-------
>  drivers/usb/gadget/udc/aspeed-vhub/dev.c   | 30 +++++---
>  drivers/usb/gadget/udc/aspeed-vhub/epn.c   |  4 +-
>  drivers/usb/gadget/udc/aspeed-vhub/hub.c   | 26 ++++---
>  drivers/usb/gadget/udc/aspeed-vhub/vhub.h  | 23 +++----
>  10 files changed, 178 insertions(+), 62 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
