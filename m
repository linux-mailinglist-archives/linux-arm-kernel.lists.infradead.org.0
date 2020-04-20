Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A344F1B172E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 22:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6Ox5VI1HH+b9LGR1lKqzw8ybREW79VywHhCiaUo/7k=; b=PlOpg6ea0ys+pW
	Z/rYMyTLSxnTneZxe/3CjJZivIPuTFCjIzW11TOJkLW+e5rPw4ciX7i1K885N/oHSbLu5QuRFig4K
	cHI4JGZmFRUISs3A82mH8ydIVeLsQiZGbtdjUIOa45EHXUEC4pPYMLoi1CACttaDSQQR9DwIWpCeP
	0lVpJY9Zts4/dX5BxeiIO4fKSsdMhxfvy3NZ+FHGW+0fZzqr+72enIG8G7i+KQA/uAWK60ZF1AnEr
	D+1RcCcXUQ2UusC/+O/yIUqnvVE6WpS8n57eKB2b/TeTYHv6eSzm0gO0a13Nev+kXjGCMEYdtYLER
	EzB3GpUWWnDPjTEmQ3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQd6N-0006EL-MS; Mon, 20 Apr 2020 20:33:11 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQd6D-0006BV-Pc
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 20:33:03 +0000
Received: from plaes.org (localhost [127.0.0.1])
 by plaes.org (Postfix) with ESMTPSA id 9908240086;
 Mon, 20 Apr 2020 20:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1587414749; bh=d7Hj4YSM+ItexsFnRjVlbilf+LuV59x0yxXoLaqX6Yw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JFgTz9qeJUl4IMms8a8wL9ia7zEMfStVPbGo86s1wI8zOPvSdr8d3OOQkfKBSAKa2
 2cyrCGrrRn18La96SdTgeMAZqOrq4Cm8h7v0CZcLoni8T45VywhEg8K29lcGkgFJRz
 VDVzf5hlkhZyrDEf9NvIz1s7v9EFg+f1U66S+v8m27pLm1AT3OzZ3m0foBRqjtatQ0
 lsYGWr4yFX81V18wzG9BBopi6FfRWZmaUapt/PuABevjh/BaD0UzLsgWMWYTl/ypcW
 fthldSfIuKzT93ot591XlVkUUDKrFD65Z7YSDIWOytaMLrQ16pj8ddeugFDuVU5UsX
 FZU4gbRdhOXTg==
Date: Mon, 20 Apr 2020 20:32:28 +0000
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/4] clk: sunxi-ng: a10/a20: rewrite init code to a
 platform driver
Message-ID: <20200420203228.GA4734@plaes.org>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-2-plaes@plaes.org>
 <20200420124935.asfbgv7envb2af55@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420124935.asfbgv7envb2af55@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_133302_056947_2AD1112F 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 02:49:35PM +0200, Maxime Ripard wrote:
> On Sat, Apr 18, 2020 at 01:17:27AM +0300, Priit Laes wrote:
> > In order to register regmap for sun7i CCU, there needs to be
> > a device structure already bound to the CCU device node.
> > 
> > Convert the sun4i/sun7i CCU setup to platform driver to use
> > it later as platform device.
> > 
> > Signed-off-by: Priit Laes <plaes@plaes.org>
> 
> You can't relly do that though. We have timers that need those clocks before the
> device model is initialized.

Ok, I'm somewhat lost now... are these the affected timers on sun7i following:
- allwinner,sun4i-a10-timer (timer@1c20c00)
- allwinner,sun7i-a20-hstimer (hstimer@1c60000)

Any ideas on what approach I could actually use?

Also, similar timer dependency would affect then sun6i-a31 and sun9i-a80
platforms too...

> 
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
