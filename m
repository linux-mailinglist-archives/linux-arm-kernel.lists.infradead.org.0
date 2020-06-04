Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5180A1EE860
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 18:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSchmW9Mr0mzVmPN2kdoApcJk7516+YF5jZM5U3H9yY=; b=mQ6bFpLcTKX4dQ
	RLVyp93h9FarMGbnoZdmnM/SJn6y811Vux/lyhHCYgDT3wqGfMDxZ7xm5C6lGlGExg4+h46S6fc1D
	WqXdwrYMllF6J3E0cDVTnnAXG5KgeVMhJH1TPLeZdoztKRbAnqUxMivCaY6JfIjZaiFM9yFz+gk5M
	XJEhqHq6zNKuTcd4Mp482KTcaTvH5SsL2kLsCgNlQ9E4vZF8l68/MVKs8oFw/QGn27yvbjhRJSxP7
	kTw+A9GdRheyZ6/9MvFYMRbl9i8/RY8JxJ/9El63s22X67Ra9WtDX/uP7ovcTZw1vvgFNDi+gYMsA
	OjQjGsCizGwaRcDspmSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgsVa-00080s-AZ; Thu, 04 Jun 2020 16:14:22 +0000
Received: from smtp4-g21.free.fr ([212.27.42.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgsVS-00080E-IN
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 16:14:16 +0000
Received: from [192.168.1.91] (unknown [77.207.133.132])
 (Authenticated sender: marc.w.gonzalez)
 by smtp4-g21.free.fr (Postfix) with ESMTPSA id D6B3219F5E1;
 Thu,  4 Jun 2020 18:13:26 +0200 (CEST)
Subject: Re: [PATCH v5 0/2] Small devm helper for devm implementations
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rafael Wysocki <rjw@rjwysocki.net>, Suzuki Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
References: <e8221bff-3e2a-7607-c5c8-abcf9cebb1b5@free.fr>
Message-ID: <217b892d-678f-8c32-b9ab-a3dd238c197a@free.fr>
Date: Thu, 4 Jun 2020 18:13:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <e8221bff-3e2a-7607-c5c8-abcf9cebb1b5@free.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_091414_754380_90479F56 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.27.42.4 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.27.42.4 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like this series has fallen through the cracks :(
Greg, you would be taking the drivers/base/devres.c changes?
As mentioned in patch 2, "This patch needs testing on a platform with many clocks."
(I've only tested using a trivial kernel module)

On 10/03/2020 11:11, Marc Gonzalez wrote:

> Differences from v4 to v5
> x Fix the grammar in devm_add comments [Geert]
> x Undo an unrelated change in devm_clk_put [Geert]
> 
> Differences from v3 to v4
> x Add a bunch of kerneldoc above devm_add() [Greg KH]
> x Split patch in two [Greg KH]
> 
> Differences from v2 to v3
> x Make devm_add() return an error-code rather than the raw data pointer
>   (in case devres_alloc ever returns an ERR_PTR) as suggested by Geert
> x Provide a variadic version devm_vadd() to work with structs as suggested
>   by Geert
> x Don't use nested ifs in clk_devm* implementations (hopefully simpler
>   code logic to follow) as suggested by Geert
> 
> Marc Gonzalez (2):
>   devres: Provide new helper for devm functions
>   clk: Use devm_add in managed functions
> 
>  drivers/base/devres.c    | 28 ++++++++++++
>  drivers/clk/clk-devres.c | 97 +++++++++++++++-------------------------
>  include/linux/device.h   |  3 ++
>  3 files changed, 67 insertions(+), 61 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
