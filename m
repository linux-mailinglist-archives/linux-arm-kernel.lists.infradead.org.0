Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EAD1B1C7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 05:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVya9Kn+6RZvOme03aBe2gkmfMQYAnvdImv+5sBI6Xs=; b=upzS0WMvKXHe05
	lsRLqWYcCHAjsqCzFzODfhY3ep7yFUxupoMy8RpQDXmpkaq+16M6/NjGvM8e7WwTkPBP7X/duo6cV
	ldxpSW8Ml2PlOgG2/D4Kv5EebCAwpfrgz8830ZYVqiaUS/oEeCowq3wQtL0RdhI1jnSTwdklP7HnG
	2klMwCz5xhbXMb4YtgAH44dYVyDjDaChF7qIr/CDVq2BE+zm0P+YRsMXJYO7Izpiv0aKZ3tBjQERM
	KAJoT5AYFXrbYL1Xv3T9CXDl0ogos5EvFKGas+3bt+ApdxsJ/EmMtmft8Bof82sw3WEt7hfX1JgGu
	kUcp4DjJrSToPDk64NCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjR5-0008SF-GP; Tue, 21 Apr 2020 03:18:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjQx-0008RK-SY
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 03:18:53 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20D1A206D9;
 Tue, 21 Apr 2020 03:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587439131;
 bh=A9V9TrneZ8ZRVB+8+GcheUZWdyndQEn3TxUujMilcuY=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=MYlhkF1SV8CPe7Y70OYKhCYImer/XsACZJ45XE13K1yWwA+K1QhyLme5csPN6oTE4
 4VTO3ybEvi0R3qV1iPdhJdH6Wd9P7RsnJfb09b2km78UOM6OHWRUOdLmLZ942xoWEb
 sAm5sL2OkSn1dzcL/0YRMEwBq/4l97qG6mhnxwko=
Date: Tue, 21 Apr 2020 11:18:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: Fix leftover entry-methods for PSCI
Message-ID: <20200421031843.GC8571@dragon>
References: <20200322115846.16265-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322115846.16265-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_201851_942315_E9DFA827 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chunyan Zhang <chunyan.zhang@unisoc.com>, soc@kernel.org, arm@kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 12:58:46PM +0100, Linus Walleij wrote:
> These two device trees were either missed or added after
> the commit correcting the "entry-method" from
> "arm,psci" to just "psci" as per the binding.
> 
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chunyan Zhang <chunyan.zhang@unisoc.com>
> Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks: if this is fine just apply it to the
> tree where appropriate please.
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-

Acked-by: Shawn Guo <shawnguo@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
