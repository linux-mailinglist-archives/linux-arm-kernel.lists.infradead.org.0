Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730D390778
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 20:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9Qs/oiwKPVSEl5IicgGiSiPhxJJSemzLZq27pIj+D4=; b=AwhikGEuhBj23V
	Cwtf1eCA7P9q/O6uEYaFj45cNkzfLLt4G7WHHdKcKVxTX1cBs6bpfhD4WZKDV7KV+AZSiDqd/wvPJ
	gGrP0I5LLgo/waNYzUSDkcye5OeqtGLAv+mYqb877gqEuX/rnIGjDCkg90w42f1OZgVCqrfBao/B4
	gCynsl0rTtyvYx388+UyzqAZeMq42E1iwFPnGWm/fmxoViqRY/4j8F7m5qiwAgtEb1DDHn2PT9PH3
	KWqzSg2yIyGEZsL9OR7CcVfbBdtUL8P979xb+vBg6b3uA0lYEnTDbJtI69WU/QTre4/BTAaHyO4K+
	xg+WHbzmf8nRicc2FIqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygcI-0004EY-Dn; Fri, 16 Aug 2019 18:06:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygbx-0004EG-MK
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 18:06:02 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 427BC20665;
 Fri, 16 Aug 2019 18:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565978761;
 bh=QASmlY4ON4/9px2oPd+HIdAz8Fff0k2LsKxJXsxM21Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=oKyvzPF6SEO2Hyb1P31lHqJQ0RCDAW+ExZE524oWyY0eKm+1NEzXvsO+IJEtgKxKX
 WEcmUyALJDXuQ0z+TucDNe0xcEUxTtoeHBDp4YFE+GX+Jed3ElDBZrWaA2ID+Ha8vo
 MZSAC6QdFQSS5l8finFeul3EEp5TdM3Zawk10oxY=
MIME-Version: 1.0
In-Reply-To: <20190809093158.7969-15-lkundrak@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-15-lkundrak@v3.sk>
Subject: Re: [PATCH 14/19] ARM: mmp: add support for MMP3 SoC
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>
User-Agent: alot/0.8.1
Date: Fri, 16 Aug 2019 11:06:00 -0700
Message-Id: <20190816180601.427BC20665@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_110601_749191_64FA4466 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2019-08-09 02:31:53)
> diff --git a/drivers/clk/mmp/Makefile b/drivers/clk/mmp/Makefile
> index 7bc7ac69391e3..deb069a4e4215 100644
> --- a/drivers/clk/mmp/Makefile
> +++ b/drivers/clk/mmp/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_RESET_CONTROLLER) += reset.o
>  
>  obj-$(CONFIG_MACH_MMP_DT) += clk-of-pxa168.o clk-of-pxa910.o
>  obj-$(CONFIG_MACH_MMP2_DT) += clk-of-mmp2.o
> +obj-$(CONFIG_MACH_MMP3_DT) += clk-of-mmp2.o
>  

Maybe make a Kconfig variable in drivers/clk/mmp/Kconfig that builds
clk-of-mmp2.c and is selected by MACH_MMP*_DT?

>  obj-$(CONFIG_CPU_PXA168) += clk-pxa168.o
>  obj-$(CONFIG_CPU_PXA910) += clk-pxa910.o

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
