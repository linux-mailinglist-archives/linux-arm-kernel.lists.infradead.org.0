Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F81C76344
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGbrJ8D4ctUTbDxQfuURu/qpTMZYdxMvFQeW6KFEELc=; b=LRJfJug1vYvl2G
	Jz4IPFUu5uM/LI1g1cgphnklj/8wiCb+qw6DPlVXgWYkHA+7wLIw2+M7RkHigE0BW56a0wvsBKwrR
	lI0gNiaCs+db2GRDZmzulY7r6ttOYNUCp1JSkKSDWgui13k7k89D0TgzfL8iy5CGjz0l0c8L7XJkT
	y5bgZ0CQma3ndum0LCuj/xgOgCBN+54pNuRTZERvQRKyXzXL5/kL4BTsaAmoJq7TTpF6zcIjFiAIA
	+SVRL38rcNCGgLtz65uqi+EVfjpfuLRLUJevJvxiwPeEH64TaTT7fhrBtcm+/wyVdeX1H3eHNm5zc
	n2wXjvdI+xBkIXWD/KAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwsB-0007gD-6W; Fri, 26 Jul 2019 09:50:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwru-0007ex-U8
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 09:50:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACF58344;
 Fri, 26 Jul 2019 02:50:28 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D5903F71A;
 Fri, 26 Jul 2019 02:50:27 -0700 (PDT)
Date: Fri, 26 Jul 2019 10:50:25 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Kevin Brodsky <kevin.brodsky@arm.com>
Subject: Re: [PATCH v2] arm64: dts: fast models: Remove clcd's
 max-memory-bandwidth
Message-ID: <20190726095025.GB11177@e107155-lin>
References: <20190725171215.71801-1-kevin.brodsky@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725171215.71801-1-kevin.brodsky@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_025031_019121_53942869 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
 Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Sudeep Holla <sudeep.holla@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Brian Starkey <brian.starkey@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 06:12:14PM +0100, Kevin Brodsky wrote:
> It is unclear why max-memory-bandwidth should be set for CLCD on the
> fast model. Removing that property allows allocating and using 32bpp
> buffers, which may be desirable on certain platforms such as
> Android.
> 
> Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
> Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
> ---
> 
> Changes in v2:
> - Remove the attribute completely instead of increasing its value. It is
>   optional and there is no clear reason why it should be set at all.
> 
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 8 --------
>  arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 2 --

I was about to ask about the above file in v1, and then saw v2.
I will take this for v5.4. Thanks

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
