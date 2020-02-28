Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD6617327D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 09:13:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZb9IJhQ40fskAb9CaBHXWFe8ZVKFvd74k947uEjFmI=; b=XtAjVDBe/6I9Ay
	R6JBG0svU2tieYIqH6BwNBYNIWR/O/4fOIWit8fFHz9XGYX75+2M9vEkq3jdGCKho9YnJcv3rgFbN
	Uqbfpd/QZgoy3P8QljznF6ramccSJVQKncREW2qPKZPrVLYYcFyFEIXqm/Yxq3Qgm7/VhjYlEdR/F
	6+fEYT//60vJz4kNFfzxURRFbar+B5CyxTBjLivxCyl9Y1X1QZ+OrWNAHvWXMm2mt52gUiQY9XzPS
	Z6MVK8lvLyPLFwUS6Jt5E9XhnqARpHZbBamajgDwijcecQVkFK8fw4ruGDWDQRnx60UjCO+yisJGH
	gZsQvS7f0osVaVcz6eAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7am7-0002Kj-LO; Fri, 28 Feb 2020 08:13:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7alt-0002Js-Ju
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 08:13:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so1332513pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 00:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1XeAZdDEEMWPSRFSSrigFDHZjIaWywrJrDOcCv/SctI=;
 b=BclSCGD/+Gp7pLCK+Yfq+IH0orWklytTcUNiFna90KwERemW3y0lq2SFGwBTScn/ZR
 SOnMFpFra//MK4i1yP2XSWxhSB0AmtyVADIvnaixDjHOEilFGfAtxn96llpXGSu9w6x9
 cnYc7x7sgEcbB4wEdoWPyc1hRhVj/x1T1b7yJp/3L1qebJXpWiZZcerMA4aKUSTSJzOu
 +EJL716Ez9KnsOA3AUIXTOEjEYftKhDFAE4pxRa3OfvNhxlaMqYrOmYwyXYyNJdP0BwU
 JH+Jb4ugNll/M3AjCQdCwSJWKoNoHs8e/biyVduULpYiHq+u7xkE0FG316miHyBgMLPu
 3vmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1XeAZdDEEMWPSRFSSrigFDHZjIaWywrJrDOcCv/SctI=;
 b=eScpiLvpcKEhXiSSs9LCh3RE9z7yj/34+LiwkZcALsdnAZjbQh2l0ug5TWJQwkR4Fh
 fFNm70r0NiwAi/tYI6BeaMResveU1PITsI6sgkyrWAYthEc5AyFT0CgtzIVN56ar/crG
 BTnmbuh2cvT37aDjvvs57oha5cauewXCOpn0STrvTEP/Hw7IJWf4xtAxmGyJKrJcgoym
 yweEhHPl01JmVx1F7bPmx+0ut9R/dBQdW76Tz6iK1u6L4uRaG23E7uRbVtxpQhXTPnLg
 cehJ6Veun0+1Vig7LCaDPQXwjLYVeXg8n+/hVj8UrjsQZ4QQsTMgh+kktaikGeBfuEME
 vYWQ==
X-Gm-Message-State: APjAAAVJc0QVktd7F3l0GZ5aTjmK+eyvxOi0JTPVHqzZHNHhdDSTZlQY
 t/uQNIkrM9jjK14uSpPqJew=
X-Google-Smtp-Source: APXvYqwaScFWt2pSZw8deGePN2rW5lckHptMxbrEKDdWitX5+l+202jKgzn654xFzxvUIwznQHDJHQ==
X-Received: by 2002:aa7:93a6:: with SMTP id x6mr3341479pff.72.1582877599463;
 Fri, 28 Feb 2020 00:13:19 -0800 (PST)
Received: from taoren-ubuntuvm (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id c18sm8717917pgw.17.2020.02.28.00.13.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 00:13:19 -0800 (PST)
Date: Fri, 28 Feb 2020 00:13:11 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v5 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200228081309.GA4531@taoren-ubuntuvm>
References: <20200227230507.8682-1-rentao.bupt@gmail.com>
 <20200227230507.8682-8-rentao.bupt@gmail.com>
 <3150424b9e9f5856c747a0fbf44647919f49209d.camel@kernel.crashing.org>
 <20200228010444.GA19910@taoren-ubuntu-R90MNF91>
 <2676013663fc8c53e02a5fdaafb1b27e18249b80.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2676013663fc8c53e02a5fdaafb1b27e18249b80.camel@kernel.crashing.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_001321_682007_8E634992 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, taoren@fb.com,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 02:02:28PM +1100, Benjamin Herrenschmidt wrote:
> On Thu, 2020-02-27 at 17:05 -0800, Tao Ren wrote:
> > > Also long run I think best is going to have a child node per downstream
> > > port, so we create a matching linux struct device. This will make it
> > > easier to deal with the other device-controller in the ast2600 which is
> > > basically one of these without a vhub above it.
> > 
> > Maybe a dumb question: what would be the proper place to parse the child
> > node/properties when they are added? For example, in some usb_gadget_ops
> > callback?
> 
> No. What the vhub would do is when it probes, it creates a platform
> device for each "port" child node that's linked to the DT node.
> 
> The driver for the device then attaches to it via standard DT matching
> and checks if it has a vhub parent or not, and based on that, operates
> as a vhub child device or a standalone one.
> 
> (For example, it might have different functions for EP selection since
> standalone devices have private EPs rather than a shared pool)
> 
> They can both be in the same module or they can be separate modules
> with cross dependencies.
> 
> Cheers,
> Ben.

I see. It's to describe these downstream devices (such as configurations
and according functions) in device tree, which is similar to defining a
composite device and linking functions/interfaces via configfs. Thanks for
the clarify.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
